From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v6 0/7] ARM: dts: rockchip: Radxa Rock Pi N8 initial support
Date: Sat, 18 Jul 2020 17:08:02 +0200
Message-ID: <159508486383.16292.5716289936157540708.b4-ty@sntech.de>
References: <20200715083418.112003-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200715083418.112003-1-jagan@amarulasolutions.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Michael Trimarchi <michael@amarulasolutions.com>, linux-amarula <linux-amarula@amarulasolutions.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Suniel Mahesh <sunil@amarulasolutions.com>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, 15 Jul 2020 14:04:11 +0530, Jagan Teki wrote:
> Rock Pi N8 is a Rockchip RK3288 based SBC, which has
> - VMARC RK3288 SOM (as per SMARC standard) from Vamrs.
> - Compatible carrier board from Radxa.
> 
> VMARC RK3288 SOM need to mount on top of dalang carrier
> board for making Rock PI N8 SBC.
> 
> [...]

Applied, thanks!

[1/7] ARM: dts: rockchip: dalang-carrier: Move i2c nodes into SOM
      commit: c2f343510d99ab53b46bdfeb184cb48f622e6943
[2/7] arm64: dts: rk3399pro: vmarc-som: Fix sorting nodes, properties
      commit: 3047b384a74090f09b994298eb5c40986275233a
[3/7] arm64: dts: rk3399pro: vmarc-som: Move supply regulators into Carrier
      commit: 4a3ca113c0f3a2ce33e51fc6a48a121b2d707d4f
[4/7] arm64: dts: rk3399pro: vmarc-som: Move common properties into Carrier
      commit: a66bd94d0eac017e4846658750acaca2937555bb
[5/7] dt-bindings: arm: rockchip: Add Rock Pi N8 binding
      commit: 09ee4794270f0010c6397163f033f883f5bff1aa
[6/7] ARM: dts: rockchip: Add VMARC RK3288 SOM initial support
      commit: b8c564d4fa76b1314a10585eea8e97b8c621a77a
[7/7] ARM: dts: rockchip: Add Radxa Rock Pi N8 initial support
      commit: afd9eb88041409e0f311730f23e8fe6921e74cb8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
