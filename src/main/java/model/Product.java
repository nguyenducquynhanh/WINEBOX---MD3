package model;

public class Product {
    private int id;
    private String name;

    private Category category;
    private String urlImage;
    private long price;
    private int quantity;

    private boolean deleted;

    public Product(){
    }

    public Product(int id, String name, Category category, String urlImage, long price, int quantity, boolean deleted) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.urlImage = urlImage;
        this.price = price;
        this.quantity = quantity;
        this.deleted = deleted;
    }

    public Product(int id, String name, Category category, String urlImage, Long price, int quantity) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.urlImage = urlImage;
        this.price = price;
        this.quantity = quantity;
    }

    public Product(String name, Category category1, String image, long price, int quantity) {
        this.name = name;
        this.category = category1;
        this.urlImage = image;
        this.price = price;
        this.quantity = quantity;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrlImage() {
        return urlImage;
    }

    public void setUrlImage(String urlImage) {
        this.urlImage = urlImage;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public boolean isDeleted() {
        return deleted;
    }

    public void setDeleted(boolean deleted) {
        this.deleted = deleted;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }


}
