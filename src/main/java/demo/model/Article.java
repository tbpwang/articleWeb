package demo.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
public class Article extends BaseModel {

    private Integer id;
    private String title;
    private String abstractString;
    private String content;
    private String date;
//    private int userId;
}