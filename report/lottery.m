x = 1:1:100;
y1 = [1, 2, 2, 1, 1, 2, 2, 1, 1, 3, 1, 1, 2, 1, 1, 2, 1, 1, 1, 2, 3, 3, 1, 1, 1, 3, 1, 1, 2, 2, 2, 1, 1, 1, 1, 3, 1, 3, 1, 1, 1, 3, 1, 1, 3, 4, 2, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 2, 2, 2, 1, 1, 1, 2, 2, 1, 2, 1, 1, 2, 2, 1, 1, 2, 2, 1, 2, 1, 1, 1, 2, 3, 1, 4, 1, 4, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 1, 3, 2, 1];
y2 = [2, 1, 4, 3, 3, 4, 4, 2, 4, 2, 2, 4, 1, 2, 3, 4, 3, 3, 3, 3, 1, 1, 3, 4, 3, 1, 3, 3, 3, 1, 3, 2, 3, 4, 3, 2, 3, 1, 3, 2, 4, 2, 3, 3, 4, 1, 3, 2, 2, 2, 3, 3, 4, 3, 1, 2, 3, 3, 3, 3, 2, 3, 3, 3, 3, 3, 4, 2, 3, 1, 3, 3, 3, 3, 4, 3, 4, 2, 3, 3, 3, 6, 2, 1, 2, 2, 3, 3, 1, 4, 4, 3, 3, 3, 3, 2, 3, 4, 1, 3];
y3 = [3, 3, 1, 2, 2, 1, 1, 3, 2, 4, 3, 2, 3, 4, 2, 1, 2, 2, 4, 1, 2, 4, 2, 3, 2, 2, 2, 2, 1, 3, 1, 3, 2, 2, 2, 1, 2, 2, 2, 3, 3, 1, 2, 2, 1, 2, 1, 4, 3, 3, 1, 2, 3, 2, 3, 3, 2, 1, 1, 1, 3, 2, 2, 1, 1, 2, 1, 4, 2, 3, 1, 2, 2, 1, 1, 2, 1, 3, 2, 2, 1, 1, 3, 2, 4, 1, 2, 2, 3, 1, 2, 2, 2, 2, 2, 3, 2, 2, 3, 2];
y4 = [4, 5, 5, 5, 5, 7, 7, 5, 5, 5, 6, 6, 5, 6, 5, 5, 5, 4, 5, 4, 5, 5, 6, 5, 5, 7, 5, 4, 5, 4, 5, 6, 4, 3, 5, 5, 5, 5, 5, 5, 5, 5, 6, 4, 6, 3, 7, 5, 5, 5, 4, 5, 5, 5, 5, 6, 4, 4, 5, 5, 5, 4, 5, 5, 5, 4, 5, 5, 5, 5, 5, 6, 5, 4, 5, 5, 6, 5, 5, 6, 4, 2, 6, 5, 5, 5, 4, 5, 6, 5, 6, 4, 5, 5, 4, 6, 5, 5, 5, 5];
y5 = [5, 4, 3, 4, 4, 3, 3, 4, 3, 1, 5, 3, 6, 3, 4, 3, 4, 5, 2, 5, 4, 2, 4, 2, 4, 4, 4, 7, 4, 5, 4, 4, 5, 5, 4, 4, 4, 4, 4, 4, 2, 4, 4, 5, 2, 5, 4, 3, 4, 4, 6, 4, 2, 4, 4, 5, 5, 5, 4, 4, 4, 5, 4, 4, 4, 5, 3, 3, 4, 4, 4, 5, 4, 5, 3, 4, 3, 4, 4, 4, 5, 5, 4, 3, 3, 3, 5, 4, 5, 3, 3, 5, 4, 4, 5, 4, 6, 1, 4, 4];
y6 = [6, 6, 6, 7, 7, 5, 5, 6, 7, 7, 4, 5, 4, 8, 6, 6, 6, 6, 6, 6, 6, 6, 5, 6, 6, 5, 6, 5, 6, 6, 6, 5, 7, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 6, 5, 7, 5, 6, 6, 7, 5, 6, 6, 7, 6, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 6, 6, 6, 6, 4, 7, 6, 6, 6, 5, 6, 6, 5, 7, 4, 5, 6, 7, 6, 6, 6, 7, 6, 5, 6, 6, 6, 6, 5, 4, 6, 6, 6];
y7 = [7, 7, 7, 6, 6, 6, 6, 8, 6, 6, 7, 7, 7, 5, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 7, 6, 8, 9, 7, 7, 6, 7, 8, 7, 7, 7, 7, 7, 7, 7, 8, 7, 7, 6, 6, 8, 7, 6, 7, 7, 8, 6, 7, 7, 7, 7, 8, 7, 7, 7, 7, 7, 8, 7, 6, 7, 7, 7, 7, 8, 6, 8, 7, 7, 8, 7, 7, 7, 6, 7, 7, 7, 6, 7, 7, 8, 4, 7, 7, 7, 7, 8, 7, 7, 7, 8, 7, 7];
y8 = [8, 8, 8, 8, 8, 8, 8, 7, 8, 8, 8, 8, 8, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 8, 7, 8, 8, 8, 8, 8, 7, 8, 8, 8, 9, 8, 9, 8, 7, 9, 8, 8, 8, 7, 8, 8, 9, 8, 7, 8, 8, 8, 8, 8, 7, 8, 8, 9, 9, 8, 7, 8, 8, 8, 8, 8, 9, 7, 8, 7, 8, 8, 7, 8, 9, 8, 8, 8, 8, 8, 8, 8, 8, 9, 8, 8, 8, 8, 8, 7, 8, 8, 8, 7, 8, 8];
y9 = [9, 9, 9, 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 8, 9, 9, 7, 9, 9, 9, 10, 10, 9, 10, 9, 8, 10, 8, 9, 9, 8, 10, 9, 9, 9, 9, 9, 8, 10, 9, 9, 9, 9, 9, 9, 9, 10, 9, 8, 8, 9, 9, 9, 9, 9, 9, 10, 8, 9, 9, 9, 10, 9, 9, 9, 8, 9, 10, 9, 9, 9, 9, 9, 9, 7, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9];
y10 = [10, 10, 10, 9, 10, 10, 10, 10, 10, 10, 10, 10, 11, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 9, 9, 10, 9, 10, 10, 9, 10, 10, 10, 10, 9, 10, 11, 10, 10, 10, 10, 9, 10, 10, 10, 10, 10, 10, 11, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 10, 11, 10, 10, 9, 10, 10, 10, 10, 10, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10];
y11 = [11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 11, 11, 11, 11, 12, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 11, 12, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 9, 11, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11];
y12 = [12, 12, 12, 12, 12, 12, 13, 12, 12, 12, 12, 12, 12, 13, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 11, 12, 12, 12, 12, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 13, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 13, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12];
y13 = [13, 13, 13, 13, 13, 13, 12, 13, 13, 13, 13, 13, 13, 12, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 14, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 12, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 12, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13];
y14 = [14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 13, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14];
y15 = [15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15];
y16 = [16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16];
plot(x, y1, "-s;1024 tickets;", "linewidth", 2, "markersize", 3,
x, y2, "-s;896 tickets;", "linewidth", 2, "markersize", 3,
x, y3, "-s;960 tickets;", "linewidth", 2, "markersize", 3,
x, y4, "-s;768 tickets;", "linewidth", 2, "markersize", 3,
x, y5, "-s;832 tickets;", "linewidth", 2, "markersize", 3,
x, y6, "-s;704 tickets;", "linewidth", 2, "markersize", 3,
x, y7, "-s;640 tickets;", "linewidth", 2, "markersize", 3,
x, y8, "-s;576 tickets;", "linewidth", 2, "markersize", 3,
x, y9, "-s;512 tickets;", "linewidth", 2, "markersize", 3,
x, y10, "-s;448 tickets;", "linewidth", 2, "markersize", 3,
x, y11, "-s;384 tickets;", "linewidth", 2, "markersize", 3,
x, y12, "-s;320 tickets;", "linewidth", 2, "markersize", 3,
x, y13, "-s;256 tickets;", "linewidth", 2, "markersize", 3,
x, y14, "-s;192 tickets;", "linewidth", 2, "markersize", 3,
x, y15, "-s;128 tickets;", "linewidth", 2, "markersize", 3,
x, y16, "-s;64 tickets;", "linewidth", 2, "markersize", 3);
xlabel("Test number");
ylabel("Finish position");
legend("location", "NorthEastOutside");
axis("ij");
