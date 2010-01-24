=begin
** Form generated from reading ui file 'pause.ui'
**
** Created: Sun Jan 24 15:48:51 2010
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
    @font.pointSize = 28
    pauseDisplay.font = @font
    @verticalLayout = Qt::VBoxLayout.new(pauseDisplay)
    @verticalLayout.objectName = "verticalLayout"
    @groupBox = Qt::GroupBox.new(pauseDisplay)
    @groupBox.objectName = "groupBox"
    @sizePolicy = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Expanding)
    @sizePolicy.setHorizontalStretch(0)
    @sizePolicy.setVerticalStretch(0)
    @sizePolicy.heightForWidth = @groupBox.sizePolicy.hasHeightForWidth
    @groupBox.sizePolicy = @sizePolicy
    @palette1 = Qt::Palette.new
    @palette1.setBrush(Qt::Palette::Active, Qt::Palette::WindowText, brush1)
    brush3 = Qt::Brush.new(Qt::Color.new(69, 255, 255, 255))
    brush3.style = Qt::SolidPattern
    @palette1.setBrush(Qt::Palette::Active, Qt::Palette::Button, brush3)
    brush4 = Qt::Brush.new(Qt::Color.new(197, 255, 255, 255))
    brush4.style = Qt::SolidPattern
    @palette1.setBrush(Qt::Palette::Active, Qt::Palette::Light, brush4)
    brush5 = Qt::Brush.new(Qt::Color.new(133, 255, 255, 255))
    brush5.style = Qt::SolidPattern
    @palette1.setBrush(Qt::Palette::Active, Qt::Palette::Midlight, brush5)
    brush6 = Qt::Brush.new(Qt::Color.new(34, 127, 127, 255))
    brush6.style = Qt::SolidPattern
    @palette1.setBrush(Qt::Palette::Active, Qt::Palette::Dark, brush6)
    brush7 = Qt::Brush.new(Qt::Color.new(46, 170, 170, 255))
    brush7.style = Qt::SolidPattern
    @palette1.setBrush(Qt::Palette::Active, Qt::Palette::Mid, brush7)
    @palette1.setBrush(Qt::Palette::Active, Qt::Palette::Text, brush1)
    @palette1.setBrush(Qt::Palette::Active, Qt::Palette::BrightText, brush)
    @palette1.setBrush(Qt::Palette::Active, Qt::Palette::ButtonText, brush1)
    @palette1.setBrush(Qt::Palette::Active, Qt::Palette::Base, brush)
    @palette1.setBrush(Qt::Palette::Active, Qt::Palette::Window, brush3)
    @palette1.setBrush(Qt::Palette::Active, Qt::Palette::Shadow, brush1)
    brush8 = Qt::Brush.new(Qt::Color.new(162, 255, 255, 255))
    brush8.style = Qt::SolidPattern
    @palette1.setBrush(Qt::Palette::Active, Qt::Palette::AlternateBase, brush8)
    @palette1.setBrush(Qt::Palette::Active, Qt::Palette::ToolTipBase, brush2)
    @palette1.setBrush(Qt::Palette::Active, Qt::Palette::ToolTipText, brush1)
    @palette1.setBrush(Qt::Palette::Inactive, Qt::Palette::WindowText, brush1)
    @palette1.setBrush(Qt::Palette::Inactive, Qt::Palette::Button, brush3)
    @palette1.setBrush(Qt::Palette::Inactive, Qt::Palette::Light, brush4)
    @palette1.setBrush(Qt::Palette::Inactive, Qt::Palette::Midlight, brush5)
    @palette1.setBrush(Qt::Palette::Inactive, Qt::Palette::Dark, brush6)
    @palette1.setBrush(Qt::Palette::Inactive, Qt::Palette::Mid, brush7)
    @palette1.setBrush(Qt::Palette::Inactive, Qt::Palette::Text, brush1)
    @palette1.setBrush(Qt::Palette::Inactive, Qt::Palette::BrightText, brush)
    @palette1.setBrush(Qt::Palette::Inactive, Qt::Palette::ButtonText, brush1)
    @palette1.setBrush(Qt::Palette::Inactive, Qt::Palette::Base, brush)
    @palette1.setBrush(Qt::Palette::Inactive, Qt::Palette::Window, brush3)
    @palette1.setBrush(Qt::Palette::Inactive, Qt::Palette::Shadow, brush1)
    @palette1.setBrush(Qt::Palette::Inactive, Qt::Palette::AlternateBase, brush8)
    @palette1.setBrush(Qt::Palette::Inactive, Qt::Palette::ToolTipBase, brush2)
    @palette1.setBrush(Qt::Palette::Inactive, Qt::Palette::ToolTipText, brush1)
    @palette1.setBrush(Qt::Palette::Disabled, Qt::Palette::WindowText, brush6)
    @palette1.setBrush(Qt::Palette::Disabled, Qt::Palette::Button, brush3)
    @palette1.setBrush(Qt::Palette::Disabled, Qt::Palette::Light, brush4)
    @palette1.setBrush(Qt::Palette::Disabled, Qt::Palette::Midlight, brush5)
    @palette1.setBrush(Qt::Palette::Disabled, Qt::Palette::Dark, brush6)
    @palette1.setBrush(Qt::Palette::Disabled, Qt::Palette::Mid, brush7)
    @palette1.setBrush(Qt::Palette::Disabled, Qt::Palette::Text, brush6)
    @palette1.setBrush(Qt::Palette::Disabled, Qt::Palette::BrightText, brush)
    @palette1.setBrush(Qt::Palette::Disabled, Qt::Palette::ButtonText, brush6)
    @palette1.setBrush(Qt::Palette::Disabled, Qt::Palette::Base, brush3)
    @palette1.setBrush(Qt::Palette::Disabled, Qt::Palette::Window, brush3)
    @palette1.setBrush(Qt::Palette::Disabled, Qt::Palette::Shadow, brush1)
    @palette1.setBrush(Qt::Palette::Disabled, Qt::Palette::AlternateBase, brush3)
    @palette1.setBrush(Qt::Palette::Disabled, Qt::Palette::ToolTipBase, brush2)
    @palette1.setBrush(Qt::Palette::Disabled, Qt::Palette::ToolTipText, brush1)
    @groupBox.palette = @palette1
    @font1 = Qt::Font.new
    @font1.pointSize = 36
    @font1.underline = true
    @groupBox.font = @font1
    @verticalLayout_2 = Qt::VBoxLayout.new(@groupBox)
    @verticalLayout_2.objectName = "verticalLayout_2"
    @nextLabel = Qt::Label.new(@groupBox)
    @nextLabel.objectName = "nextLabel"
    @font2 = Qt::Font.new
    @font2.pointSize = 48
    @font2.bold = true
    @font2.underline = false
    @font2.weight = 75
    @nextLabel.font = @font2
    @nextLabel.alignment = Qt::AlignCenter
    @nextLabel.wordWrap = true

    @verticalLayout_2.addWidget(@nextLabel)


    @verticalLayout.addWidget(@groupBox)

    @groupBox_2 = Qt::GroupBox.new(pauseDisplay)
    @groupBox_2.objectName = "groupBox_2"
    @sizePolicy1 = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Preferred)
    @sizePolicy1.setHorizontalStretch(0)
    @sizePolicy1.setVerticalStretch(0)
    @sizePolicy1.heightForWidth = @groupBox_2.sizePolicy.hasHeightForWidth
    @groupBox_2.sizePolicy = @sizePolicy1
    @palette2 = Qt::Palette.new
    @palette2.setBrush(Qt::Palette::Active, Qt::Palette::WindowText, brush1)
    brush9 = Qt::Brush.new(Qt::Color.new(170, 255, 255, 255))
    brush9.style = Qt::SolidPattern
    @palette2.setBrush(Qt::Palette::Active, Qt::Palette::Button, brush9)
    @palette2.setBrush(Qt::Palette::Active, Qt::Palette::Light, brush)
    brush10 = Qt::Brush.new(Qt::Color.new(212, 255, 255, 255))
    brush10.style = Qt::SolidPattern
    @palette2.setBrush(Qt::Palette::Active, Qt::Palette::Midlight, brush10)
    brush11 = Qt::Brush.new(Qt::Color.new(85, 127, 127, 255))
    brush11.style = Qt::SolidPattern
    @palette2.setBrush(Qt::Palette::Active, Qt::Palette::Dark, brush11)
    brush12 = Qt::Brush.new(Qt::Color.new(113, 170, 170, 255))
    brush12.style = Qt::SolidPattern
    @palette2.setBrush(Qt::Palette::Active, Qt::Palette::Mid, brush12)
    @palette2.setBrush(Qt::Palette::Active, Qt::Palette::Text, brush1)
    @palette2.setBrush(Qt::Palette::Active, Qt::Palette::BrightText, brush)
    @palette2.setBrush(Qt::Palette::Active, Qt::Palette::ButtonText, brush1)
    @palette2.setBrush(Qt::Palette::Active, Qt::Palette::Base, brush)
    @palette2.setBrush(Qt::Palette::Active, Qt::Palette::Window, brush9)
    @palette2.setBrush(Qt::Palette::Active, Qt::Palette::Shadow, brush1)
    @palette2.setBrush(Qt::Palette::Active, Qt::Palette::AlternateBase, brush10)
    @palette2.setBrush(Qt::Palette::Active, Qt::Palette::ToolTipBase, brush2)
    @palette2.setBrush(Qt::Palette::Active, Qt::Palette::ToolTipText, brush1)
    @palette2.setBrush(Qt::Palette::Inactive, Qt::Palette::WindowText, brush1)
    @palette2.setBrush(Qt::Palette::Inactive, Qt::Palette::Button, brush9)
    @palette2.setBrush(Qt::Palette::Inactive, Qt::Palette::Light, brush)
    @palette2.setBrush(Qt::Palette::Inactive, Qt::Palette::Midlight, brush10)
    @palette2.setBrush(Qt::Palette::Inactive, Qt::Palette::Dark, brush11)
    @palette2.setBrush(Qt::Palette::Inactive, Qt::Palette::Mid, brush12)
    @palette2.setBrush(Qt::Palette::Inactive, Qt::Palette::Text, brush1)
    @palette2.setBrush(Qt::Palette::Inactive, Qt::Palette::BrightText, brush)
    @palette2.setBrush(Qt::Palette::Inactive, Qt::Palette::ButtonText, brush1)
    @palette2.setBrush(Qt::Palette::Inactive, Qt::Palette::Base, brush)
    @palette2.setBrush(Qt::Palette::Inactive, Qt::Palette::Window, brush9)
    @palette2.setBrush(Qt::Palette::Inactive, Qt::Palette::Shadow, brush1)
    @palette2.setBrush(Qt::Palette::Inactive, Qt::Palette::AlternateBase, brush10)
    @palette2.setBrush(Qt::Palette::Inactive, Qt::Palette::ToolTipBase, brush2)
    @palette2.setBrush(Qt::Palette::Inactive, Qt::Palette::ToolTipText, brush1)
    @palette2.setBrush(Qt::Palette::Disabled, Qt::Palette::WindowText, brush11)
    @palette2.setBrush(Qt::Palette::Disabled, Qt::Palette::Button, brush9)
    @palette2.setBrush(Qt::Palette::Disabled, Qt::Palette::Light, brush)
    @palette2.setBrush(Qt::Palette::Disabled, Qt::Palette::Midlight, brush10)
    @palette2.setBrush(Qt::Palette::Disabled, Qt::Palette::Dark, brush11)
    @palette2.setBrush(Qt::Palette::Disabled, Qt::Palette::Mid, brush12)
    @palette2.setBrush(Qt::Palette::Disabled, Qt::Palette::Text, brush11)
    @palette2.setBrush(Qt::Palette::Disabled, Qt::Palette::BrightText, brush)
    @palette2.setBrush(Qt::Palette::Disabled, Qt::Palette::ButtonText, brush11)
    @palette2.setBrush(Qt::Palette::Disabled, Qt::Palette::Base, brush9)
    @palette2.setBrush(Qt::Palette::Disabled, Qt::Palette::Window, brush9)
    @palette2.setBrush(Qt::Palette::Disabled, Qt::Palette::Shadow, brush1)
    @palette2.setBrush(Qt::Palette::Disabled, Qt::Palette::AlternateBase, brush9)
    @palette2.setBrush(Qt::Palette::Disabled, Qt::Palette::ToolTipBase, brush2)
    @palette2.setBrush(Qt::Palette::Disabled, Qt::Palette::ToolTipText, brush1)
    @groupBox_2.palette = @palette2
    @font3 = Qt::Font.new
    @font3.underline = true
    @groupBox_2.font = @font3
    @verticalLayout_3 = Qt::VBoxLayout.new(@groupBox_2)
    @verticalLayout_3.objectName = "verticalLayout_3"
    @queueLabel = Qt::Label.new(@groupBox_2)
    @queueLabel.objectName = "queueLabel"
    @font4 = Qt::Font.new
    @font4.pointSize = 24
    @font4.underline = false
    @queueLabel.font = @font4
    @queueLabel.alignment = Qt::AlignCenter
    @queueLabel.wordWrap = true

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
    @nextLabel.text = Qt::Application.translate("PauseDisplay", "SF001 Michael Jackson - Bad", nil, Qt::Application::UnicodeUTF8)
    @groupBox_2.title = Qt::Application.translate("PauseDisplay", "Queue", nil, Qt::Application::UnicodeUTF8)
    @queueLabel.text = Qt::Application.translate("PauseDisplay", "SF001 Michael Jackson - Bad\n" \
"SF001 Michael Jackson - Bad\n" \
"SF001 Michael Jackson - Bad\n" \
"SF001 Michael Jackson - Bad\n" \
"SF001 Michael Jackson - Bad\n" \
"SF001 Michael Jackson - Bad\n" \
"SF001 Michael Jackson - Bad", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(pauseDisplay)
        retranslateUi(pauseDisplay)
    end

end

module Ui
    class PauseDisplay < Ui_PauseDisplay
    end
end  # module Ui

