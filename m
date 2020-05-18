From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 1/2] arm64: dts: rockchip: fix defines in pd_vio node for rk3399
Date: Tue, 19 May 2020 00:28:00 +0200
Message-ID: <158984064169.2259329.3276929143055218816.b4-ty@sntech.de>
References: <20200428203003.3318-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200428203003.3318-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, 28 Apr 2020 22:30:02 +0200, Johan Jonker wrote:
> A test with the command below gives for example this error:
> 
> arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml: pd_vio@15:
> 'pd_tcpc0@RK3399_PD_TCPC0', 'pd_tcpc1@RK3399_PD_TCPC1'
> do not match any of the regexes:
> '.*-names$', '.*-supply$', '^#.*-cells$',
> '^#[a-zA-Z0-9,+\\-._]{0,63}$',
> '^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}$',
> '^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}@[0-9a-fA-F]+(,[0-9a-fA-F]+)*$',
> '^__.*__$', 'pinctrl-[0-9]+'
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: fix defines in pd_vio node for rk3399
      commit: 84836ded76ec9a6f25d1d0acebaad44977e0ec6f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
