From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 1/3] ARM: dts: rockchip: Add USB for RockPI N8/N10
Date: Wed, 22 Jul 2020 21:21:05 +0200
Message-ID: <159544564767.763387.9815839004542852680.b4-ty@sntech.de>
References: <20200720110230.367985-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200720110230.367985-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Michael Trimarchi <michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, 20 Jul 2020 16:32:28 +0530, Jagan Teki wrote:
> Radxa dalang carrier board has 2x USB 2.0 and 1x USB 3.0
> ports.
> 
> This patch adds support to enable all these USB ports for
> N10 and N8 combinations SBCs.
> 
> Note that the USB 3.0 port on RockPI N8 combination works
> as USB 2.0 OTG since it is driven from RK3288.

Applied, thanks!

[1/3] ARM: dts: rockchip: Add USB for RockPI N8/N10
      commit: 417b188a985d3557b0ecb5623b27bd9843f03aec
[2/3] ARM: dts: rockchip: Add HDMI out for RockPI N8/N10
      commit: d0cb2f30e7c033f0a8bbe98ec73dbc1db4788942
[3/3] arm64: dts: rockchip: Add PCIe for RockPI N10
      commit: 93ca8ac2e8fcea6feb02a40edd2334144b62fc6e

Best regards,
-- 
Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
