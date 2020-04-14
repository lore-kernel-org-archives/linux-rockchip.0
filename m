From: Tobias Schramm <t.schramm-x9ov/VOV9nNAfugRpC6u6w@public.gmane.org>
Subject: [PATCH 0/2] Fix some GPIO setup on Pinebook Pro
Date: Tue, 14 Apr 2020 18:39:50 +0200
Message-ID: <20200414163952.1093784-1-t.schramm@manjaro.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Tobias Schramm <t.schramm-x9ov/VOV9nNAfugRpC6u6w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

This patchset contains two small fixes for the dts of the Pinebook Pro.
The first fixes inverted logic on the headphone detect GPIO.
The second patch fixes unreliable DC charger detection.

Tobias Schramm (2):
  arm64: dts: rockchip: fix inverted headphone detection
  arm64: dts: rockchip: enable DC charger detection pullup

 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

-- 
2.26.0
