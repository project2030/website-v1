# ActiveJob::Base.queue_adapter = :inline
require 'sucker_punch/async_syntax'
ActiveJob::Base.queue_adapter = :sucker_punch
