From: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v2 1/6] common/image-fdt.c: Make boot_get_fdt() perform a
 check for Android images
Date: Fri,  8 Jan 2016 18:33:27 +0800
Message-ID: <1452249212-25183-2-git-send-email-jeffy.chen@rock-chips.com>
References: <1452249212-25183-1-git-send-email-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1452249212-25183-1-git-send-email-jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
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
Cc: Marek Vasut <marex-ynQEQJNshbs@public.gmane.org>, Joe Hershberger <joe.hershberger-acOepvfBmUk@public.gmane.org>, sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Paul Kocialkowski <contact-W9ppeneeCTY@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Peng Fan <Peng.Fan-KZfg59tc24xl57MIdRCFDg@public.gmane.org>, Max Krummenacher <max.krummenacher-2KBjVHiyJgBBDgjK7y7TUQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Android images don't have a fdt.

Signed-off-by: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Acked-by: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---

Changes in v2: None

 common/image-fdt.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/common/image-fdt.c b/common/image-fdt.c
index 5e4e5bd..41aaa0d 100644
--- a/common/image-fdt.c
+++ b/common/image-fdt.c
@@ -379,6 +379,10 @@ int boot_get_fdt(int flag, int argc, char * const argv[], uint8_t arch,
 				       (long)fdt_addr);
 			}
 			break;
+#ifdef CONFIG_ANDROID_BOOT_IMAGE
+		case IMAGE_FORMAT_ANDROID:
+			goto no_fdt;
+#endif
 		default:
 			puts("ERROR: Did not find a cmdline Flattened Device Tree\n");
 			goto no_fdt;
-- 
2.1.4
