<?php

require "header.php";
?>


<div class="container">
    <h1 style="display: flex;align-items: center;justify-content: center;margin-bottom:30px;margin-top:50px; color:blue">Danh sách giảng viên</h1>
<table class="table" border="1" cellspacing="0" cellpadding="15">
<thead class="thead-dark">
    <tr>
        <th scope="col">Mã giảng viên</th>
        <th scope="col">Họ và tên</th>
        <th scope="col">Ngày sinh</th>
        <th scope="col">Giới tính</th>
        <th scope="col">Trình độ</th>
        <th scope="col">Chuyên môn</th>
        <th scope="col">Học hàm</th>
        <th scope="col">Học vị</th>
        <th scope="col">Cơ quan</th>
        <th scope="col">Manager</th>
        
        
    </tr>
    </thead>
    <?php if (!empty($giangviens)): ?>
        <?php foreach ($giangviens AS $giangvien) : ?>
            <tr>
                <td ><?php echo $giangvien['magv'] ?></td>
                <td><?php echo $giangvien['hovaten'] ?></td>
                <td><?php echo $giangvien['ngaysinh'] ?></td>
                <td><?php echo $giangvien['gioitinh'] ?></td>
                <td><?php echo $giangvien['trinhdo'] ?></td>
                <td><?php echo $giangvien['chuyenmon'] ?></td>
                <td><?php echo $giangvien['hocham'] ?></td>
                <td><?php echo $giangvien['hocvi'] ?></td>
                <td><?php echo $giangvien['coquan'] ?></td>
                <td>
                    <?php
                    $urlDetail =
                        "index.php?controller=giangvien&action=detail&magv=" . $giangvien['magv'];
                    $urlEdit =
                        "index.php?controller=giangvien&action=edit&magv=" . $giangvien['magv'];
                    $urlDelete =
                        "index.php?controller=giangvien&action=delete&magv=" . $giangvien['magv'];
                    ?>
                    <a href="<?php echo $urlEdit?>"><span class="material-icons-outlined">mode_edit</span></a> &nbsp;
                    <a onclick="return confirm('Bạn chắc chắn muốn xóa?')"
                       href="<?php echo $urlDelete?>">
                       <span class="material-icons-outlined">delete_forever</span>

                    </a>
                </td>
            </tr>
        <?php endforeach; ?>
    <?php else: ?>
        <tr>
            <td colspan="2">KHông có dữ liệu</td>
        </tr>
    <?php endif; ?>
</table>
</div>
<div style="margin-top : 20px" class="container">
<a href="index.php?controller=giangvien&action=add">
    <button type="button" class="btn btn-success">Thêm mới giảng viên</button>
</a>
</div>


<?php 
    require "footer.php";
?>