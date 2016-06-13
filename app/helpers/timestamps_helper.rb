module TimestampsHelper

def timestamp_params
	params.require(:timestamp)
end

end
