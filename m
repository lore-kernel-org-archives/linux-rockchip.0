From: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: USB3 regression in RK3399
Date: Wed, 21 Feb 2018 22:58:35 +0100
Message-ID: <CAAMcf8B5zpgbTsCu9t0rs9+jWkwRdO2C+KbF+NOt3ZTQx36aZA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, William wu <wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hello,
testing on the Sapphire board, which uses the RK3399 SoC, a regression
has been found in v4.16-rc2 wrt v4.15.4 regarding the USB3 type-A port:
In v4.15.4 it works in USB2-only mode.
In v4.16-rc2 it does not work.

It has been tested with a USB2 hub with 3 devices connected:
a keyboard (USB1.1), a mouse (USB2) and a rtlwifi dongle (USB2).

It has also been tested with a USB3-to-SATA converter. This one is not
working in v4.15.4 nor in v4.16-rc2.

I have also tried the 6-patch series from Enric Balletbo i Serra
"[PATCH v3 3/6] phy: rockchip-typec: enable usb3 host during usb3 phy power on"
with the same result.

During boot, the following message appears a few times:
"dwc3: failed to initialize core"

The kernel configuration is:
https://archlinuxarm.org/packages/aarch64/linux-aarch64-rc/files/config

Is that a configuration issue, a bug in the kernel or something else?
If it is a configuration issue, what should be changed?
If it is a bug, can it be fixed?

Regards,
  Vicente.
