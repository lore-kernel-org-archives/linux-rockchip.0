From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 2/2] phy: phy-rockchip-inno-usb2: add usb2-phy support
 for RK3308 SoC
Date: Thu, 26 Dec 2019 14:07:48 -0700
Message-ID: <20191226210748.GA27760@bogus>
References: <20191217075722.11646-1-akash@openedev.com>
 <20191217075722.11646-3-akash@openedev.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191217075722.11646-3-akash@openedev.com>
Sender: linux-kernel-owner@vger.kernel.org
Cc: heiko@sntech.de, jagan@openedev.com, tom@radxa.com, kever.yang@rock-chips.com, Akash Gajjar <akash@openedev.com>, Kishon Vijay Abraham I <kishon@ti.com>, Mark Rutland <mark.rutland@arm.com>, Andy Yan <andy.yan@rock-chips.com>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, 17 Dec 2019 13:27:15 +0530, Akash Gajjar wrote:
> This patch adds usb2-phy support for RK3308 SoCs and amend phy Documentation.
> 
> Signed-off-by: Akash Gajjar <akash@openedev.com>
> ---
>  .../bindings/phy/phy-rockchip-inno-usb2.txt   |  1 +
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 44 +++++++++++++++++++
>  2 files changed, 45 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
