package models.validators;

import java.util.ArrayList;
import java.util.List;

import models.Report;

public class ReportValidator {
    public static List<String> valitate(Report r) {
        List<String> errors = new ArrayList<String>();

        String title_error = _validateTitle(r.getTitle());
        if (!title_error.equals("")) {
            errors.add(title_error);
        }

        String content_erorr = _validateContent(r.getContent());
        if (!content_erorr.equals("")) {
            errors.add(content_erorr);
        }
        return errors;
    }

    private static String _validateTitle(String title) {
        if (title == null || title.equals("")) {
            return "タイトルを入力してください。";
        }

        return "";
    }

    private static String _validateContent(String content) {
        if (content == null || content.equals("")) {
            return "内容を入力してください。";
        }
        return "";
    }
}