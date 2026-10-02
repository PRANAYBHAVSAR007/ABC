class Student {
    private int id;
    private String name;

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }
}

class Practical11 {
    public static void main(String args[]) {
        Student s = new Student();
        s.setId(101);
        s.setName("Krishna");
        System.out.println("Student ID: " + s.getId());
        System.out.println("Student Name: " + s.getName());
    }
}
