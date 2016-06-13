module TimestampsHelper

def timestamp_params
	params.require(:timestamp).permit()
end

end
