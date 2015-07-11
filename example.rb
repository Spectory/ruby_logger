require './logger_util'
include LoggerUtil

LoggerUtil.reset

LoggerUtil.log('debug', 'I found that at the garbage')
LoggerUtil.log('info', 'this looks delicacies!')
LoggerUtil.log('warn', 'I should not eat that')
LoggerUtil.log('error', 'I don\'t feel so good...')
LoggerUtil.log('fatal', 'call 911!')

LoggerUtil.print_log
