From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: rename and label gpio-led subnodes part 2
Date: Wed, 17 Jun 2020 10:37:09 +0200
Message-ID: <159238301927.1406601.9417520180577782611.b4-ty@sntech.de>
References: <20200522154657.9472-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200522154657.9472-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org, devicetree@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, 22 May 2020 17:46:57 +0200, Johan Jonker wrote:
> Current dts files with 'gpio-led' nodes were manually verified.
> In order to automate this process leds-gpio.txt
> has been converted to yaml. With this conversion a check
> for pattern properties was added. In part 2 rename and label
> gpio-led subnodes that passed the regex, but still don't have
> the preferred form. Any pin subnode that ends with '-gpio'
> in the pinctrl node generates a warning.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: rename and label gpio-led subnodes part 2
      commit: 6dd5e12c0b9bba40b3947ac1a9fd2f992585b5c6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
