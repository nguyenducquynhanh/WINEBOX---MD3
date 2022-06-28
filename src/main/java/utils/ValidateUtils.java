package utils;

import java.util.regex.Pattern;

public class ValidateUtils {
    public static final String NUMBER_REGEX = "^\\d+";

    public static boolean isNumberValid(String password) {
        return Pattern.compile(NUMBER_REGEX).matcher(password).matches();
    }
}
