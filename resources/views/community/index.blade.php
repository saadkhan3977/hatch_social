@extends('admin.layouts.master')

@section('content')
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="row">
            <div class="col-md-12">
                @include('admin.layouts.notification')
            </div>
        </div>
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary float-left">Community Lists</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                @if ($communitys != null)
                    <table class="table table-bordered" id="order-dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>S.N.</th>
                                <th>Created By</th>
                                <th>Title</th>
                                <th>Interest</th>
                                <th>Total Posts</th>
                                <th>Total Members</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>S.N.</th>
                                <th>Created By</th>
                                <th>Title</th>
                                <th>Interest</th>
                                <th>Total Posts</th>
                                <th>Total Members</th>
                                <th>Action</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            @foreach ($communitys as $community)
                                <tr>
                                    <td>{{ $community->id }}</td>
                                    <td>{{ $community->community_owner->name }}</td>
                                    <td>{{ $community->title }}</td>
                                    <td>
                                        @foreach ($community->category as $item)
                                        <span class="badge badge-success">{{ $item->interest->name }}</span>
                                        @endforeach
                                    </td>
                                    <td>{{ $community->total_posts->count() }}</td>
                                    <td>{{ $community->total_members->count() }}</td>
                                    <td class="d-flex">
                                        <a href="{{ route('community.edit', $community->id) }}"
                                            class="btn btn-primary btn-sm " title="show members"
                                            >Show Members</a>
                                        <a href="{{ route('community.show', $community->id) }}"
                                            class="btn btn-success btn-sm mx-2" title="show posts"
                                            >Show Posts</a>

                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                @else
                    <h6 class="text-center">No community found!!! </h6>
                @endif
            </div>
        </div>
    </div>
    </div>
@endsection

@push('styles')
    <link href="{{ asset('backend/vendor/datatables/dataTables.bootstrap4.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
    <style>
        div.dataTables_wrapper div.dataTables_paginate {
            display: none;
        }
    </style>
@endpush

@push('scripts')
    <!-- Page level plugins -->
    <script src="{{ asset('backend/vendor/datatables/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('backend/vendor/datatables/dataTables.bootstrap4.min.js') }}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="{{ asset('backend/js/demo/datatables-demo.js') }}"></script>
    <script>
        $('#order-dataTable').DataTable({
            "columnDefs": [{
                "orderable": false,
                "targets": [8]
            }]
        });

        // Sweet alert

        function deleteData(id) {

        }
    </script>
    <script>
        $(document).ready(function() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $('.dltBtn').click(function(e) {
                var form = $(this).closest('form');
                var dataID = $(this).data('id');
                // alert(dataID);
                e.preventDefault();
                swal({
                        title: "Are you sure?",
                        text: "Once deleted, you will not be able to recover this data!",
                        icon: "warning",
                        buttons: true,
                        dangerMode: true,
                    })
                    .then((willDelete) => {
                        if (willDelete) {
                            form.submit();
                        } else {
                            swal("Your data is safe!");
                        }
                    });
            })
        })
    </script>
@endpush
