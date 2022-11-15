class CaSi {
  final String name;
  final String type;
  final String shortDesc;
  final String desc;
  final String image;
  final int rate;

  CaSi({
    required this.name,
    required this.type,
    required this.shortDesc,
    required this.desc,
    required this.image,
    required this.rate,
  });
}

List<CaSi> menu = [
  CaSi(
    name: "Sơn Tùng",
    type: 'Hot',
    shortDesc: "Đẹp Trai Hát Hay",
    desc:
        "Nguyễn Thanh Tùng, thường được biết đến với nghệ danh Sơn Tùng M-TP, là một nam ca sĩ kiêm sáng tác nhạc, rapper và diễn viên người Việt Nam. Sinh ra ở thành phố Thái Bình, thời thơ ấu, Sơn Tùng thường đi hát ở Cung văn hoá thiếu nhi tỉnh Thái Bình và học chơi đàn organ.",
    image:
        "https://kenh14cdn.com/thumb_w/620/203336854389633024/2020/12/31/photo-1-16094117624341764656274.jpg",
    rate: 3,
  ),
  CaSi(
    name: "Mỹ Tâm",
    type: "Hot",
    shortDesc: "Một nữ ca sĩ kiêm sáng tác nhạc, đạo diễn",
    desc:
        "Phan Thị Mỹ Tâm, thường được biết đến với nghệ danh Mỹ Tâm, là một nữ ca sĩ kiêm sáng tác nhạc, đạo diễn, diễn viên và giám khảo truyền hình người Việt Nam. Được mệnh danh là Nữ hoàng V-pop, nhiều tác giả và nhà báo trong nước lẫn quốc tế từng nhìn nhận cô là một trong những nữ nghệ sĩ có ảnh hưởng lớn tại Việt Nam.",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/M%E1%BB%B9_T%C3%A2m_%E1%BB%9F_ph%C3%B2ng_tr%C3%A0_%C4%90%E1%BB%93ng_Dao_July_2012_%282%29_cropped.jpg/1200px-M%E1%BB%B9_T%C3%A2m_%E1%BB%9F_ph%C3%B2ng_tr%C3%A0_%C4%90%E1%BB%93ng_Dao_July_2012_%282%29_cropped.jpg",
    rate: 2,
  ),
  CaSi(
    name: "Bray",
    type: "Hot",
    shortDesc: "Một rapper người Việt Nam",
    desc:
        "Trần Thiện Thanh Bảo, hay còn biết đến với nghệ danh B Ray, là một rapper người Việt Nam.",
    image:
        "https://event.mediacdn.vn/2020/9/11/bray-1-15998125670871089915520.png",
    rate: 5,
  ),
  CaSi(
    name: "Trịnh Công Sơn",
    type: "Hot",
    shortDesc: "espresso và có vị đắng nhẹ hơn",
    desc:
        "Trịnh Công Sơn là một nam nhạc sĩ người Việt Nam. Ông được coi là một trong những nhạc sĩ lớn nhất của Tân nhạc và nằm trong danh sách những nghệ sĩ âm nhạc Việt Nam có lượng đĩa bán chạy nhất. Hiện nay chưa có thống kê chính xác về số tác phẩm để lại của ông",
    image:
        "https://avatar-ex-swe.nixcdn.com/singer/avatar/2016/01/25/4/1/1/7/1453717628032_600.jpg",
    rate: 4,
  ),
  CaSi(
    name: "Anh Tú",
    type: "Hot",
    shortDesc: "Một diễn viên kịch nói,ca sĩ", 
    desc: "Bùi Anh Tú có nghệ danh là Anh Tú hay Anh Tú Atus là một nam diễn viên kịch nói, diễn viên truyền hình, diễn viên điện ảnh kiêm ca sĩ người Việt Nam. Anh nổi tiếng qua vai diễn đầu tay trong bộ phim Hà Nội em yêu anh năm 2013…. Anh từng là diễn viên thuộc biên chế của sân khấu kịch Thế Giới Trẻ.",
    image: "https://kenh14cdn.com/203336854389633024/2022/8/30/photo-1-1661848480897775558656.png", 
    rate: 5)
];
