class OriginalStringsController < ApplicationController

    def index
        @original_strings = OriginalString.all
        render json: @original_strings
    end

    def create
        @original_string = OriginalString.create!(string: params[:string])

        render json: rot13_converter(params[:string]), status: :created
    end

    def rot13_converter(string)
        rot13_dictionary = {
            "a": "n",
            "b": "o",
            "c": "p",
            "d": "q",
            "e": "r",
            "f": "s",
            "g": "t",
            "h": "u",
            "i": "v",
            "j": "w",
            "k": "x",
            "l": "y",
            "m": "z",
            "n": "a",
            "o": "b",
            "p": "c",
            "q": "d",
            "r": "e",
            "s": "f",
            "t": "g",
            "u": "h",
            "v": "i",
            "w": "j",
            "x": "k",
            "y": "l",
            "z": "m"
        }
        @rot13_string = ''
        string.split('').each do |i|
            # if the key exists in the dictionary
            if rot13_dictionary.has_key?(:"#{i.downcase}")
                if i == i.downcase
                    @rot13_string << rot13_dictionary[:"#{i}"]
                end
                if i == i.upcase
                    @rot13_string << rot13_dictionary[:"#{i.downcase}"].upcase
                end
            else
                @rot13_string << i
            end
        end
        return @rot13_string
    end
end
