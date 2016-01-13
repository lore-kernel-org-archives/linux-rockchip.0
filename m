From: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v4 0/6] rockchip: kylin: Boot with android boot image
Date: Wed, 13 Jan 2016 16:53:14 +0800
Message-ID: <1452675200-15941-1-git-send-email-jeffy.chen@rock-chips.com>
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
To: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: Albert Aribaud <albert.u.boot-LhW3hqR2+23R7s880joybQ@public.gmane.org>, huang lin <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Joe Hershberger <joe.hershberger-acOepvfBmUk@public.gmane.org>, Jan Kiszka <jan.kiszka-kv7WeFo6aLtBDgjK7y7TUQ@public.gmane.org>, sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Paul Kocialkowski <contact-W9ppeneeCTY@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Peng Fan <Peng.Fan-KZfg59tc24xl57MIdRCFDg@public.gmane.org>, Tom Warren <twarren-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org>, Max Krummenacher <max.krummenacher-2KBjVHiyJgBBDgjK7y7TUQ@public.gmane.org>, York Sun <yorksun-KZfg59tc24xl57MIdRCFDg@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

We are porting android to kylin board now.
This series could let it boot up with android's boot image.

Changes in v4:
Remove unused reboot mode definitions.

Changes in v3:
Use rockchip's legacy reboot mode definitions.

Changes in v2:
Add comments.

Jeffy Chen (6):
  common/image-fdt.c: Make boot_get_fdt() perform a check for Android
    images
  ARM: bootm: Try to use relocated ramdisk
  rockchip: rk3036: Bind GPIO banks
  rockchip: kylin: Add default gpt partition table
  rockchip: kylin: Enable boot with android boot image
  rockchip: kylin: Check fastboot request

 arch/arm/lib/bootm.c                      | 12 ++++++-
 board/kylin/kylin_rk3036/kylin_rk3036.c   | 32 ++++++++++++++++++
 common/image-fdt.c                        |  4 +++
 drivers/pinctrl/rockchip/pinctrl_rk3036.c |  8 +++++
 include/configs/kylin_rk3036.h            | 55 +++++++++++++++++++++++++++++++
 5 files changed, 110 insertions(+), 1 deletion(-)

-- 
2.1.4
