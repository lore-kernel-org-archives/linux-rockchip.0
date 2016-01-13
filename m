From: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v4 2/6] ARM: bootm: Try to use relocated ramdisk
Date: Wed, 13 Jan 2016 16:53:16 +0800
Message-ID: <1452675200-15941-3-git-send-email-jeffy.chen@rock-chips.com>
References: <1452675200-15941-1-git-send-email-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1452675200-15941-1-git-send-email-jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
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
Cc: Albert Aribaud <albert.u.boot-LhW3hqR2+23R7s880joybQ@public.gmane.org>, Joe Hershberger <joe.hershberger-acOepvfBmUk@public.gmane.org>, Jan Kiszka <jan.kiszka-kv7WeFo6aLtBDgjK7y7TUQ@public.gmane.org>, sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Peng Fan <Peng.Fan-KZfg59tc24xl57MIdRCFDg@public.gmane.org>, Tom Warren <twarren-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org>, York Sun <yorksun-KZfg59tc24xl57MIdRCFDg@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

After boot_ramdisk_high(), ramdisk would be relocated to
initrd_start & initrd_end, so use them instead of rd_start & rd_end.

Signed-off-by: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Acked-by: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

---

Changes in v4: None
Changes in v3: None
Changes in v2:
Add comments.

 arch/arm/lib/bootm.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index a477cae..0838d89 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -225,7 +225,17 @@ static void boot_prep_linux(bootm_headers_t *images)
 		if (BOOTM_ENABLE_MEMORY_TAGS)
 			setup_memory_tags(gd->bd);
 		if (BOOTM_ENABLE_INITRD_TAG) {
-			if (images->rd_start && images->rd_end) {
+			/*
+			 * In boot_ramdisk_high(), it may relocate ramdisk to
+			 * a specified location. And set images->initrd_start &
+			 * images->initrd_end to relocated ramdisk's start/end
+			 * addresses. So use them instead of images->rd_start &
+			 * images->rd_end when possible.
+			 */
+			if (images->initrd_start && images->initrd_end) {
+				setup_initrd_tag(gd->bd, images->initrd_start,
+						 images->initrd_end);
+			} else if (images->rd_start && images->rd_end) {
 				setup_initrd_tag(gd->bd, images->rd_start,
 						 images->rd_end);
 			}
-- 
2.1.4
