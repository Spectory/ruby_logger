
module SomeModule
  require './logger_util'
  def self.run
    LoggerUtil.reset
    LoggerUtil.log('debug', 'I found that at the garbage')
    LoggerUtil.log('info', 'this looks delicacies!')
    LoggerUtil.log('warn', 'I should not eat that')
    LoggerUtil.log('error', 'I don\'t feel so good...')
    LoggerUtil.log('fatal', 'call 911!')
    LoggerUtil.print_log
  end
end

module OtherModule
  require './logger_util'
  def self.run
    LoggerUtil.log('info', '~' * 20)
    LoggerUtil.log('debug', 'this dog has rabies')
    LoggerUtil.log('info', 'come here boy...')
    LoggerUtil.log('warn', 'ahh! it bit me!')
    LoggerUtil.log('error', 'I don\'t feel so good...')
    LoggerUtil.log('fatal', 'call 911!')
    LoggerUtil.print_log
  end
end

include SomeModule
SomeModule.run
include OtherModule
OtherModule.run
