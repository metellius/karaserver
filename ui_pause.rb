=begin
** Form generated from reading ui file 'pause.ui'
**
** Created: Fri Jan 22 16:30:59 2010
**      by: Qt User Interface Compiler version 4.5.2
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_PauseDisplay
    attr_reader :verticalLayout
    attr_reader :groupBox
    attr_reader :verticalLayout_2
    attr_reader :nextLabel
    attr_reader :groupBox_2
    attr_reader :verticalLayout_3
    attr_reader :queueLabel

    def setupUi(pauseDisplay)
    if pauseDisplay.objectName.nil?
        pauseDisplay.objectName = "pauseDisplay"
    end
    pauseDisplay.resize(1091, 989)
    @font = Qt::Font.new
    @font.pointSize = 28
    pauseDisplay.font = @font
    @verticalLayout = Qt::VBoxLayout.new(pauseDisplay)
    @verticalLayout.objectName = "verticalLayout"
    @groupBox = Qt::GroupBox.new(pauseDisplay)
    @groupBox.objectName = "groupBox"
    @sizePolicy = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Maximum)
    @sizePolicy.setHorizontalStretch(0)
    @sizePolicy.setVerticalStretch(0)
    @sizePolicy.heightForWidth = @groupBox.sizePolicy.hasHeightForWidth
    @groupBox.sizePolicy = @sizePolicy
    @verticalLayout_2 = Qt::VBoxLayout.new(@groupBox)
    @verticalLayout_2.objectName = "verticalLayout_2"
    @nextLabel = Qt::Label.new(@groupBox)
    @nextLabel.objectName = "nextLabel"
    @font1 = Qt::Font.new
    @font1.pointSize = 48
    @nextLabel.font = @font1
    @nextLabel.alignment = Qt::AlignCenter

    @verticalLayout_2.addWidget(@nextLabel)


    @verticalLayout.addWidget(@groupBox)

    @groupBox_2 = Qt::GroupBox.new(pauseDisplay)
    @groupBox_2.objectName = "groupBox_2"
    @sizePolicy1 = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Expanding)
    @sizePolicy1.setHorizontalStretch(0)
    @sizePolicy1.setVerticalStretch(0)
    @sizePolicy1.heightForWidth = @groupBox_2.sizePolicy.hasHeightForWidth
    @groupBox_2.sizePolicy = @sizePolicy1
    @verticalLayout_3 = Qt::VBoxLayout.new(@groupBox_2)
    @verticalLayout_3.objectName = "verticalLayout_3"
    @queueLabel = Qt::Label.new(@groupBox_2)
    @queueLabel.objectName = "queueLabel"
    @font2 = Qt::Font.new
    @font2.pointSize = 26
    @queueLabel.font = @font2
    @queueLabel.alignment = Qt::AlignCenter

    @verticalLayout_3.addWidget(@queueLabel)


    @verticalLayout.addWidget(@groupBox_2)


    retranslateUi(pauseDisplay)

    Qt::MetaObject.connectSlotsByName(pauseDisplay)
    end # setupUi

    def setup_ui(pauseDisplay)
        setupUi(pauseDisplay)
    end

    def retranslateUi(pauseDisplay)
    pauseDisplay.windowTitle = Qt::Application.translate("PauseDisplay", "Form", nil, Qt::Application::UnicodeUTF8)
    @groupBox.title = Qt::Application.translate("PauseDisplay", "Next song", nil, Qt::Application::UnicodeUTF8)
    @nextLabel.text = Qt::Application.translate("PauseDisplay", "TextLabel", nil, Qt::Application::UnicodeUTF8)
    @groupBox_2.title = Qt::Application.translate("PauseDisplay", "Queue", nil, Qt::Application::UnicodeUTF8)
    @queueLabel.text = Qt::Application.translate("PauseDisplay", "TextLabel", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(pauseDisplay)
        retranslateUi(pauseDisplay)
    end

end

module Ui
    class PauseDisplay < Ui_PauseDisplay
    end
end  # module Ui

