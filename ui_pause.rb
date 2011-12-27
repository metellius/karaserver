=begin
** Form generated from reading ui file 'pause.ui'
**
** Created: Tue Dec 27 21:32:28 2011
**      by: Qt User Interface Compiler version 4.7.3
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_PauseDisplay
    attr_reader :verticalLayout
    attr_reader :scoreFrame
    attr_reader :verticalLayout_2
    attr_reader :label_2
    attr_reader :performanceLabel
    attr_reader :frame
    attr_reader :verticalLayout_3
    attr_reader :label
    attr_reader :nextLabel

    def setupUi(pauseDisplay)
    if pauseDisplay.objectName.nil?
        pauseDisplay.objectName = "pauseDisplay"
    end
    pauseDisplay.resize(989, 796)
    @palette = Qt::Palette.new
    brush = Qt::Brush.new(Qt::Color.new(255, 255, 255, 255))
    brush.style = Qt::SolidPattern
    @palette.setBrush(Qt::Palette::Active, Qt::Palette::WindowText, brush)
    brush1 = Qt::Brush.new(Qt::Color.new(0, 0, 0, 255))
    brush1.style = Qt::SolidPattern
    @palette.setBrush(Qt::Palette::Active, Qt::Palette::Button, brush1)
    @palette.setBrush(Qt::Palette::Active, Qt::Palette::Light, brush1)
    @palette.setBrush(Qt::Palette::Active, Qt::Palette::Midlight, brush1)
    @palette.setBrush(Qt::Palette::Active, Qt::Palette::Dark, brush1)
    @palette.setBrush(Qt::Palette::Active, Qt::Palette::Mid, brush1)
    @palette.setBrush(Qt::Palette::Active, Qt::Palette::Text, brush)
    @palette.setBrush(Qt::Palette::Active, Qt::Palette::BrightText, brush)
    @palette.setBrush(Qt::Palette::Active, Qt::Palette::ButtonText, brush)
    @palette.setBrush(Qt::Palette::Active, Qt::Palette::Base, brush1)
    @palette.setBrush(Qt::Palette::Active, Qt::Palette::Window, brush1)
    @palette.setBrush(Qt::Palette::Active, Qt::Palette::Shadow, brush1)
    @palette.setBrush(Qt::Palette::Active, Qt::Palette::AlternateBase, brush1)
    brush2 = Qt::Brush.new(Qt::Color.new(255, 255, 220, 255))
    brush2.style = Qt::SolidPattern
    @palette.setBrush(Qt::Palette::Active, Qt::Palette::ToolTipBase, brush2)
    @palette.setBrush(Qt::Palette::Active, Qt::Palette::ToolTipText, brush1)
    @palette.setBrush(Qt::Palette::Inactive, Qt::Palette::WindowText, brush)
    @palette.setBrush(Qt::Palette::Inactive, Qt::Palette::Button, brush1)
    @palette.setBrush(Qt::Palette::Inactive, Qt::Palette::Light, brush1)
    @palette.setBrush(Qt::Palette::Inactive, Qt::Palette::Midlight, brush1)
    @palette.setBrush(Qt::Palette::Inactive, Qt::Palette::Dark, brush1)
    @palette.setBrush(Qt::Palette::Inactive, Qt::Palette::Mid, brush1)
    @palette.setBrush(Qt::Palette::Inactive, Qt::Palette::Text, brush)
    @palette.setBrush(Qt::Palette::Inactive, Qt::Palette::BrightText, brush)
    @palette.setBrush(Qt::Palette::Inactive, Qt::Palette::ButtonText, brush)
    @palette.setBrush(Qt::Palette::Inactive, Qt::Palette::Base, brush1)
    @palette.setBrush(Qt::Palette::Inactive, Qt::Palette::Window, brush1)
    @palette.setBrush(Qt::Palette::Inactive, Qt::Palette::Shadow, brush1)
    @palette.setBrush(Qt::Palette::Inactive, Qt::Palette::AlternateBase, brush1)
    @palette.setBrush(Qt::Palette::Inactive, Qt::Palette::ToolTipBase, brush2)
    @palette.setBrush(Qt::Palette::Inactive, Qt::Palette::ToolTipText, brush1)
    @palette.setBrush(Qt::Palette::Disabled, Qt::Palette::WindowText, brush1)
    @palette.setBrush(Qt::Palette::Disabled, Qt::Palette::Button, brush1)
    @palette.setBrush(Qt::Palette::Disabled, Qt::Palette::Light, brush1)
    @palette.setBrush(Qt::Palette::Disabled, Qt::Palette::Midlight, brush1)
    @palette.setBrush(Qt::Palette::Disabled, Qt::Palette::Dark, brush1)
    @palette.setBrush(Qt::Palette::Disabled, Qt::Palette::Mid, brush1)
    @palette.setBrush(Qt::Palette::Disabled, Qt::Palette::Text, brush1)
    @palette.setBrush(Qt::Palette::Disabled, Qt::Palette::BrightText, brush)
    @palette.setBrush(Qt::Palette::Disabled, Qt::Palette::ButtonText, brush1)
    @palette.setBrush(Qt::Palette::Disabled, Qt::Palette::Base, brush1)
    @palette.setBrush(Qt::Palette::Disabled, Qt::Palette::Window, brush1)
    @palette.setBrush(Qt::Palette::Disabled, Qt::Palette::Shadow, brush1)
    @palette.setBrush(Qt::Palette::Disabled, Qt::Palette::AlternateBase, brush1)
    @palette.setBrush(Qt::Palette::Disabled, Qt::Palette::ToolTipBase, brush2)
    @palette.setBrush(Qt::Palette::Disabled, Qt::Palette::ToolTipText, brush1)
    pauseDisplay.palette = @palette
    @font = Qt::Font.new
    @font.family = "FreeSans"
    @font.pointSize = 28
    pauseDisplay.font = @font
    @verticalLayout = Qt::VBoxLayout.new(pauseDisplay)
    @verticalLayout.objectName = "verticalLayout"
    @scoreFrame = Qt::Frame.new(pauseDisplay)
    @scoreFrame.objectName = "scoreFrame"
    @sizePolicy = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Preferred)
    @sizePolicy.setHorizontalStretch(0)
    @sizePolicy.setVerticalStretch(10)
    @sizePolicy.heightForWidth = @scoreFrame.sizePolicy.hasHeightForWidth
    @scoreFrame.sizePolicy = @sizePolicy
    @scoreFrame.frameShape = Qt::Frame::StyledPanel
    @scoreFrame.frameShadow = Qt::Frame::Raised
    @verticalLayout_2 = Qt::VBoxLayout.new(@scoreFrame)
    @verticalLayout_2.spacing = 30
    @verticalLayout_2.objectName = "verticalLayout_2"
    @verticalLayout_2.setContentsMargins(15, 15, 30, -1)
    @label_2 = Qt::Label.new(@scoreFrame)
    @label_2.objectName = "label_2"
    @sizePolicy1 = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Maximum)
    @sizePolicy1.setHorizontalStretch(0)
    @sizePolicy1.setVerticalStretch(0)
    @sizePolicy1.heightForWidth = @label_2.sizePolicy.hasHeightForWidth
    @label_2.sizePolicy = @sizePolicy1

    @verticalLayout_2.addWidget(@label_2)

    @performanceLabel = Qt::Label.new(@scoreFrame)
    @performanceLabel.objectName = "performanceLabel"
    @sizePolicy1.heightForWidth = @performanceLabel.sizePolicy.hasHeightForWidth
    @performanceLabel.sizePolicy = @sizePolicy1
    @font1 = Qt::Font.new
    @font1.pointSize = 78
    @font1.bold = true
    @font1.weight = 75
    @performanceLabel.font = @font1
    @performanceLabel.alignment = Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter

    @verticalLayout_2.addWidget(@performanceLabel)


    @verticalLayout.addWidget(@scoreFrame)

    @frame = Qt::Frame.new(pauseDisplay)
    @frame.objectName = "frame"
    @sizePolicy2 = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Preferred)
    @sizePolicy2.setHorizontalStretch(0)
    @sizePolicy2.setVerticalStretch(8)
    @sizePolicy2.heightForWidth = @frame.sizePolicy.hasHeightForWidth
    @frame.sizePolicy = @sizePolicy2
    @frame.frameShape = Qt::Frame::StyledPanel
    @frame.frameShadow = Qt::Frame::Raised
    @verticalLayout_3 = Qt::VBoxLayout.new(@frame)
    @verticalLayout_3.spacing = 10
    @verticalLayout_3.objectName = "verticalLayout_3"
    @verticalLayout_3.setContentsMargins(15, 4, 15, 40)
    @label = Qt::Label.new(@frame)
    @label.objectName = "label"
    @sizePolicy3 = Qt::SizePolicy.new(Qt::SizePolicy::Maximum, Qt::SizePolicy::Preferred)
    @sizePolicy3.setHorizontalStretch(0)
    @sizePolicy3.setVerticalStretch(0)
    @sizePolicy3.heightForWidth = @label.sizePolicy.hasHeightForWidth
    @label.sizePolicy = @sizePolicy3

    @verticalLayout_3.addWidget(@label)

    @nextLabel = Qt::Label.new(@frame)
    @nextLabel.objectName = "nextLabel"
    @font2 = Qt::Font.new
    @font2.pointSize = 47
    @nextLabel.font = @font2
    @nextLabel.alignment = Qt::AlignCenter
    @nextLabel.wordWrap = true

    @verticalLayout_3.addWidget(@nextLabel)


    @verticalLayout.addWidget(@frame)


    retranslateUi(pauseDisplay)

    Qt::MetaObject.connectSlotsByName(pauseDisplay)
    end # setupUi

    def setup_ui(pauseDisplay)
        setupUi(pauseDisplay)
    end

    def retranslateUi(pauseDisplay)
    pauseDisplay.windowTitle = Qt::Application.translate("PauseDisplay", "Form", nil, Qt::Application::UnicodeUTF8)
    @label_2.text = Qt::Application.translate("PauseDisplay", "Your performance:", nil, Qt::Application::UnicodeUTF8)
    @performanceLabel.text = Qt::Application.translate("PauseDisplay", "99", nil, Qt::Application::UnicodeUTF8)
    @label.text = Qt::Application.translate("PauseDisplay", "Next up", nil, Qt::Application::UnicodeUTF8)
    @nextLabel.text = Qt::Application.translate("PauseDisplay", "SF001 Michael Jackson - Bad", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(pauseDisplay)
        retranslateUi(pauseDisplay)
    end

end

module Ui
    class PauseDisplay < Ui_PauseDisplay
    end
end  # module Ui

