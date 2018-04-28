From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 0/7] Defconfig updates for RK3399
Date: Sat, 28 Apr 2018 18:57:23 +0200
Message-ID: <2336918.1QqQk43mrl@phil>
References: <20180416144002.15569-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180416144002.15569-1-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: Catalin Marinas <catalin.marinas-5wv7dgnIgG8@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Will Deacon <will.deacon-5wv7dgnIgG8@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 16. April 2018, 16:39:55 CEST schrieb Ezequiel Garcia:
> This series collects some pending defconfig patches
> from Enric, namely:
> 
> https://patchwork.kernel.org/patch/10302033/
> https://patchwork.kernel.org/patch/10247583/
> https://patchwork.kernel.org/patch/10269255/
> 
> And adds some more defconfig changes, required to
> support other peripherals:
> 
>  * Touchscreen, touchpad and stylus
>  * WiFi and Bluetooth
> 
> Series tested on RK3399 Kevin Chromebook.
> 
> Enric Balletbo i Serra (3):
>   arm64: defconfig: Enable typec-phy and extcon-usbc-cros-ec for rk3399
>   arm64: defconfig: Enable Rockchip io-domain driver
>   arm64: defconfig: Enable ChromeOS EC drivers for supported
>     Chromebooks.
> 
> Ezequiel Garcia (4):
>   arm64: defconfig: Enable HID over I2C drivers
>   arm64: defconfig: Enable Atmel Maxtouch driver
>   arm64: defconfig: Enable Marvell WiFi-Ex PCIe driver
>   arm64: defconfig: Enable bluetooth USB support

applied all 7 for 4.18


Thanks
Heiko
