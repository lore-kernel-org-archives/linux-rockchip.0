From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v3] ARM: dts: rockchip: Add usb host0 ohci node for rk3288
Date: Wed, 22 Jul 2020 21:21:06 +0200
Message-ID: <159544564767.763387.3267110197113276761.b4-ty@sntech.de>
References: <20200720105846.367776-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200720105846.367776-1-jagan@amarulasolutions.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jagan Teki <jagan@amarulasolutions.com>, Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, William Wu <william.wu@rock-chips.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Suniel Mahesh <sunil@amarulasolutions.com>, linux-amarula <linux-amarula@amarulasolutions.com>, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Michael Trimarchi <michael@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

On Mon, 20 Jul 2020 16:28:46 +0530, Jagan Teki wrote:
> rk3288 and rk3288w have a usb host0 ohci controller.
> 
> Although rk3288 ohci doesn't actually work on hardware, but
> rk3288w ohci can work well.
> 
> So add usb host0 ohci node in rk3288 dtsi and the quirk in
> ohci platform driver will disable ohci on rk3288.

Applied, thanks!

[1/1] ARM: dts: rockchip: Add usb host0 ohci node for rk3288
      commit: 82540defdd9cfc491f564ffb8d01911966636bc7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
