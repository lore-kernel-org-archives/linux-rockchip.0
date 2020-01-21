From: Justin Swartz <justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org>
Subject: [PATCH v3 0/2] Add rga to rk322x device tree
Date: Tue, 21 Jan 2020 22:02:39 +0000
Message-ID: <20200121220242.22815-1-justin.swartz@risingedge.co.za>
References: <20200120194158.25357-1-justin.swartz@risingedge.co.za>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200120194158.25357-1-justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>
Cc: Justin Swartz <justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This patchset aims to enable use of Rockchip's RGA, a 2D raster
graphic acceleration unit, on rk322x based devices.

Changed in v3:
  - Relocate rga node to the correct position in rk322x.dtsi, as
    indicated by Johan Jonker.

Changes in v2:
  - Remove unnecessary "rockchip,rk3228-rga" device tree compatibility
    string patch, as advised by Ezequiel Garcia.

  - Use both "rockchip,rk3228-rga" and "rockchip,rk3288-rga" in the
    rga node's compatibility property, as suggested by Heiko Stuebner.

Justin Swartz (2):
  ARM: dts: rockchip: add rga node for rk322x
  ARM: dts: rockchip: enable rga for rk3229-xms6

 arch/arm/boot/dts/rk3229-xms6.dts |  4 ++++
 arch/arm/boot/dts/rk322x.dtsi     | 11 +++++++++++
 2 files changed, 15 insertions(+)

-- 
2.11.0
