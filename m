From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v5 0/1] Add rga to rk322x device tree
Date: Tue, 19 May 2020 00:52:40 +0200
Message-ID: <158984232928.2265632.16859446100127654389.b4-ty@sntech.de>
References: <558b35c3-7f75-8d0d-048b-c55c06fa8a53@gmail.com> <20200419125134.29923-1-justin.swartz@risingedge.co.za>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200419125134.29923-1-justin.swartz@risingedge.co.za>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Rutland <mark.rutland@arm.com>, Justin Swartz <justin.swartz@risingedge.co.za>, Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Sun, 19 Apr 2020 12:51:32 +0000, Justin Swartz wrote:
> This patchset aims to enable use of Rockchip's RGA, a 2D raster
> graphic acceleration unit, on rk322x based devices.
> 
> Changes in v5:
>   - Remove the patch to rockchip-rga device tree binding documentation
>     as Johan Jonker has already included mention of "rockchip,rk3228-rga"
>     since the conversion to YAML.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: add rga node for rk322x
      commit: 54b1a4e070330c3fba5becfb0b619bf360bc2657

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
