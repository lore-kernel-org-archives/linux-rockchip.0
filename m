From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v4 1/3] arm64: dts: rockchip: add core devicetree for rk3326
Date: Sun, 19 Apr 2020 14:35:56 +0200
Message-ID: <158729964648.70529.10290347754936450590.b4-ty@sntech.de>
References: <20200414082938.2977572-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200414082938.2977572-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: christoph.muellner@theobroma-systems.com, kever.yang@rock-chips.com, robh+dt@kernel.org, mark.rutland@arm.com, robin.murphy@arm.com, devicetree@vger.kernel.org, jbx6244@gmail.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

On Tue, 14 Apr 2020 10:29:36 +0200, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The rk3326 is basically a px30 without the second display controller.
> So add a dtsi based on that, that just removes the affected nodes.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: add core devicetree for rk3326
      commit: df07f7df7e5a61d06b21f89c4ab744fb4e4c2222
[2/3] dt-bindings: Add binding for Hardkernel Odroid Go Advance
      commit: 98412e1e57ea776b4581077a68fe6ed598bfba99
[3/3] arm64: dts: rockchip: add Odroid Advance Go
      commit: ce33988fb69828dfcb5825f9086d9dc2b37a9282

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
