<div class="row form-group">
	<div class="col-12 col-sm-3 col-lg-2">
		@include('admin.inputs.label')
	</div>
	<div class="col-12 col-sm-9 col-md-10">
		<div class="media-cont">
			<div class="media-input">
				{!!$form_element!!}
			</div>
			@if ($value)
				<div id="box_{{$key}}_{{$model->id}}" class="media-saved">
					<div>
						@if ($properties['mediaType'] == 'Img')
							<a href="{{ma_get_image_from_repository($value)}}" target="_blank" >
								<img class="img-thumb" src="{{ImgHelper::get_cached($value, config('maguttiCms.image.admin'), isset($properties['disk'])? $properties['disk']: '', isset($properties['folder'])? $properties['folder']: '')}}">
							</a>
						@else
							<a href="{{ma_get_doc_from_repository($value)}}" target="_blank" class="btn btn-primary">
								{{trans('admin.label.view')}}
							</a>
						@endif
					</div>
					@include('admin.inputs.delete_button', ['key' => $key, 'id' => $model->id,"locale" => $locale])
				</div>
			@endif
		</div>
	</div>
</div>
