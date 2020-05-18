From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: fix phy nodename for rk3328
Date: Tue, 19 May 2020 00:28:01 +0200
Message-ID: <158984064169.2259329.15579989069543124777.b4-ty@sntech.de>
References: <20200321215423.12176-1-jbx6244@gmail.com> <20200505170227.6503-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200505170227.6503-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, 5 May 2020 19:02:27 +0200, Johan Jonker wrote:
> A test with the command below gives for example this error:
> 
> arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: phy@0:
> '#phy-cells' is a required property
> 
> The phy nodename is normally used by a phy-handle.
> This node is however compatible with
> "ethernet-phy-id1234.d400", "ethernet-phy-ieee802.3-c22"
> which is just been added to 'ethernet-phy.yaml'.
> So change nodename to 'ethernet-phy' for which '#phy-cells'
> is not a required property
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: fix phy nodename for rk3328
      commit: 8370cc5533b3baa5e0f18075ae638b050458aabd

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
