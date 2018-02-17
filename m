From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: add RK3368-uQ7 (Lion) SoM
Date: Sat, 17 Feb 2018 10:28:27 +0100
Message-ID: <2280776.cjvUixNXiI@diego>
References: <20180130123931.50781-1-klaus.goger@theobroma-systems.com>
 <20180130123931.50781-3-klaus.goger@theobroma-systems.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180130123931.50781-3-klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Klaus Goger <klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 30. Januar 2018, 13:39:29 CET schrieb Klaus Goger:
> The RK3368-uQ7 SoM is a uQseven-compatible (40mm x 70mm, MXM-230
> connector) system-on-module from Theobroma Systems, featuring the
> Rockchip RK3368.
> 
> It provides the following feature set:
>  * up to 4GB DDR3
>  * on-module SPI-NOR flash
>  * on-module eMMC (with 8-bit 1.8V interface)
>  * SD card (on a baseboad) via edge connector
>  * Gigabit Ethernet with on-module Micrel KSZ9031 GbE PHY
>  * HDMI/eDP/MIPI-DSI/LVDS
>  * MIPI-CSI
>  * USB
>    - 1x USB 2.0 dual-role
>    - 1x USB 2.0 host
>  * on-module STM32 Cortex-M0 companion controller, implementing:
>    - low-power RTC functionality (ISL1208 emulation)
>    - fan controller (AMC6821 emulation)
>    - USB<->CAN bridge controller
> 
> Signed-off-by: Klaus Goger <klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>

applied for 4.17 after moving some things around and also
fixing some indentation issues.
