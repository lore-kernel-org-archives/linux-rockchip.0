From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] ARM: dts: rockchip: fix pinctrl sub nodename for spi in rk322x.dtsi
Date: Mon, 27 Apr 2020 21:42:26 +0200
Message-ID: <158801649141.50507.14560694452002330366.b4-ty@sntech.de>
References: <20200424123923.8192-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200424123923.8192-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, 24 Apr 2020 14:39:23 +0200, Johan Jonker wrote:
> A test with the command below gives these errors:
> 
> arch/arm/boot/dts/rk3229-evb.dt.yaml: spi-0:
> '#address-cells' is a required property
> arch/arm/boot/dts/rk3229-evb.dt.yaml: spi-1:
> '#address-cells' is a required property
> arch/arm/boot/dts/rk3229-xms6.dt.yaml: spi-0:
> '#address-cells' is a required property
> arch/arm/boot/dts/rk3229-xms6.dt.yaml: spi-1:
> '#address-cells' is a required property
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: fix pinctrl sub nodename for spi in rk322x.dtsi
      commit: 855bdca1781c79eb661f89c8944c4a719ce720e8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
