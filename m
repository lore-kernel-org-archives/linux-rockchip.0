From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: add micro SD card regulator to rockpro64
Date: Sun, 19 Apr 2020 14:35:58 +0200
Message-ID: <158729964647.70529.2619682470015783245.b4-ty@sntech.de>
References: <20200416145534.1263575-1-t.schramm@manjaro.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200416145534.1263575-1-t.schramm-x9ov/VOV9nNAfugRpC6u6w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Tobias Schramm <t.schramm-x9ov/VOV9nNAfugRpC6u6w@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, 16 Apr 2020 16:55:34 +0200, Tobias Schramm wrote:
> This patch adds the RockPro64's micro SD card regulator to the
> RockPro64 dtsi. The regulator is present on all revisions of the
> device.
> Previously the regular was missing, resulting in unreliable boot
> behaviour when booting from SD card.
> 
> Signed-off-by: Tobias Schramm <t.schramm-x9ov/VOV9nNAfugRpC6u6w@public.gmane.org>
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add micro SD card regulator to rockpro64
      commit: 1f5a3e1679353fb53e955afd8801a7f4f60877ff

Best regards,
-- 
Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
