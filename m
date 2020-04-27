From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: swap interrupts interrupt-names rk3399 gpu node
Date: Mon, 27 Apr 2020 21:42:25 +0200
Message-ID: <158801649141.50507.17010202047447992818.b4-ty@sntech.de>
References: <20200425143837.18706-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200425143837.18706-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Sat, 25 Apr 2020 16:38:37 +0200, Johan Jonker wrote:
> Dts files with Rockchip rk3399 'gpu' nodes were manually verified.
> In order to automate this process arm,mali-midgard.txt
> has been converted to yaml. In the new setup dtbs_check with
> arm,mali-midgard.yaml expects interrupts and interrupt-names values
> in the same order. Fix this for rk3399.
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/gpu/
> arm,mali-midgard.yaml
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: swap interrupts interrupt-names rk3399 gpu node
      commit: c604fd810bda667bdc20b2c041917baa7803e0fb

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
