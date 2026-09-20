-- staging model: WBD content catalogue
-- source: wbd_raw.content

with source as (
	select * from {{source('wbd_raw','content')}}
	),
	
renamed as (
	select
		content_id,
		title,
		genre,
		content_type,
		release_year
	from source
)

select * from renamed