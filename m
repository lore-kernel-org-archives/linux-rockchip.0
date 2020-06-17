From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: rename label and nodename pinctrl subnodes that end with gpio
Date: Wed, 17 Jun 2020 10:37:08 +0200
Message-ID: <159238301927.1406601.14874206586861717011.b4-ty@sntech.de>
References: <20200524160636.16547-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200524160636.16547-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org, devicetree@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Sun, 24 May 2020 18:06:35 +0200, Johan Jonker wrote:
> A test with the command below gives for example this error:
> 
> arch/arm/boot/dts/rk3288-tinker.dt.yaml: tsadc: otp-gpio:
> {'phandle': [[54]], 'rockchip,pins': [[0, 10, 0, 118]]}
> is not of type 'array'
> 
> 'gpio' is a sort of reserved nodename and should not be used
> for pinctrl in combination with 'rockchip,pins', so change
> nodes that end with 'gpio' to end with 'pin' or 'pins'.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: rename label and nodename pinctrl subnodes that end with gpio
      commit: 2bc65fef4fe424f5f8295175f1b42f8b94c6df01

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
