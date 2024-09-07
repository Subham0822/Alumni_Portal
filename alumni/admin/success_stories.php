<?php include('db_connect.php');?>

<div class="container-fluid">
<style>
    input[type=checkbox] {
        /* Double-sized Checkboxes */
        -ms-transform: scale(1.5); /* IE */
        -moz-transform: scale(1.5); /* FF */
        -webkit-transform: scale(1.5); /* Safari and Chrome */
        -o-transform: scale(1.5); /* Opera */
        transform: scale(1.5);
        padding: 10px;
    }
</style>
    <div class="col-lg-12">
        <div class="row mb-4 mt-4">
            <div class="col-md-12">
                <!-- Optional header or instructions -->
            </div>
        </div>
        <div class="row">
            <!-- FORM Panel -->

            <!-- Table Panel -->
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <b>Success Stories List</b>
                        <span class="">
                            <!--<button class="btn btn-primary btn-block btn-sm col-sm-2 float-right" type="button" id="new_story">
                                <i class="fa fa-plus"></i> New
                            </button>-->
                        </span>
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered table-condensed table-hover">
                            <colgroup>
                                <col width="5%">
                                <col width="20%">
                                <col width="35%">
                                <col width="20%">
                                <col width="10%">
                                <col width="10%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th class="text-center">#</th>
                                    <th class="">Title</th>
                                    <th class="">Content</th>
                                    <th class="">Alumnus Name</th>
                                    <th class="text-center">Date Posted</th>
                                    <th class="text-center">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                $i = 1;
                                // Query to fetch success stories with the user's name
                                $success_stories = $conn->query("
                                    SELECT ss.*, u.name as alumnus_name 
                                    FROM success_stories ss 
                                    JOIN users u ON ss.user_id = u.id 
                                    ORDER BY ss.date_created DESC
                                ");
                                
                                while($row = $success_stories->fetch_assoc()):
                                ?>
                                <tr>
                                    <td class="text-center"><?php echo $i++ ?></td>
                                    <td class="">
                                        <p><b><?php echo ucwords($row['title']) ?></b></p>
                                    </td>
                                    <td class="">
                                        <p class="truncate"><?php echo substr($row['content'], 0, 100) . '...' ?></p>
                                    </td>
                                    <td class="">
                                        <p><b><?php echo ucwords($row['alumnus_name']) ?></b></p>
                                    </td>
                                    <td class="text-center">
                                        <p><?php echo date('M d, Y', strtotime($row['date_created'])) ?></p>
                                    </td>
                                    <td class="text-center">
                                        <button class="btn btn-sm btn-outline-primary edit_story" type="button" data-id="<?php echo $row['id'] ?>" >Edit</button>
                                        <button class="btn btn-sm btn-outline-danger delete_story" type="button" data-id="<?php echo $row['id'] ?>">Delete</button>
                                    </td>
                                </tr>
                                <?php endwhile; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- Table Panel -->
        </div>
    </div>    

</div>
<style>
    td {
        vertical-align: middle !important;
    }
    td p {
        margin: unset;
    }
    .truncate {
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
        max-width: 300px;
    }
</style>
<script>
    $(document).ready(function(){
        $('table').dataTable();
    });

    $('#new_story').click(function(){
        uni_modal("New Success Story","manage_story.php",'mid-large');
    });

    $('.edit_story').click(function(){
        uni_modal("Edit Success Story","manage_story.php?id=" + $(this).attr('data-id'),'mid-large');
    });

    $('.delete_story').click(function(){
        _conf("Are you sure to delete this story?","delete_story",[$(this).attr('data-id')],'mid-large');
    });

    function delete_story($id){
        start_load();
        $.ajax({
            url: 'ajax.php?action=delete_story',
            method: 'POST',
            data: {id: $id},
            success: function(resp){
                if(resp == 1){
                    alert_toast("Data successfully deleted",'success');
                    setTimeout(function(){
                        location.reload();
                    }, 1500);
                }
            }
        });
    }
</script>