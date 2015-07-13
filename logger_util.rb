#!/usr/bin/env ruby

module LoggerUtil
  require 'logger'
  require 'fileutils'
  require 'colorize'

  LOG_FILE_PATH = 'logs/'
  LOG = LOG_FILE_PATH + 'my_log'
  FileUtils.mkdir_p LOG_FILE_PATH

  def self.init_logger
    @logger = Logger.new("#{LOG}") unless @logger
  end

  def self.reset
    FileUtils.rm_f LOG
  end

  def self.log(severity, msg)
    return nil if ENV.key? 'rspec'
    init_logger unless @logger
    @logger.send(severity, msg)
  end

  def self.print_log
    puts ['#' * 30, ' LOG START ', '#' * 30].join
    File.open(LOG).each do |l|
      severity = l[0]
      case severity
      when 'F'
        print l.red.bold
      when 'E'
        print l.red
      when 'W'
        print l.yellow
      when 'D'
        print l.magenta
      else
        print l.green
      end
    end
    puts ['#' * 30, ' LOG END ', '#' * 30].join
  end
end
