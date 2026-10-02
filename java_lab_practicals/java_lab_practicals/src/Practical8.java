class Practical8 {
    public static void main(String args[]) {
        String str = "Java Programming";
        System.out.println("Length = " + str.length());
        System.out.println("Uppercase = " + str.toUpperCase());
        System.out.println("Substring = " + str.substring(5));

        StringBuffer sb = new StringBuffer("Hello");
        sb.append(" World");
        System.out.println(sb);
        sb.reverse();
        System.out.println("Reverse = " + sb);

        StringBuilder sbd = new StringBuilder("Programming");
        sbd.insert(0, "Java ");
        System.out.println(sbd);
        sbd.replace(5, 16, "Language");
        System.out.println(sbd);
    }
}
