From: Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH] net/3com/3c515: Fix MODULE_ARCH_VERMAGIC redefinition
Date: Sat, 11 Apr 2020 19:35:04 +0200
Message-ID: <20200411173504.GA11128@zn.tnic>
References: <20200224085311.460338-1-leon@kernel.org>
 <20200224085311.460338-4-leon@kernel.org>
 <20200411155623.GA22175@zn.tnic> <20200411161156.GA200683@unreal>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <20200411161156.GA200683@unreal>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Leon Romanovsky <leon@kernel.org>
Cc: Thor Thayer <thor.thayer@linux.intel.com>, Heiko Stuebner <heiko@sntech.de>, Igor Russkikh <irusskikh@marvell.com>, Andreas Larsson <andreas@gaisler.com>, Chris Snook <chris.snook@gmail.com>, David Dillow <dave@thedillows.org>, Jes Sorensen <jes@trained-monkey.org>, Iyappan Subramanian <iyappan@os.amperecomputing.com>, Quan Nguyen <quan@os.amperecomputing.com>, linux-acenic@sunsite.dk, Andy Gospodarek <andy@greyhouse.net>, Arthur Kiyanovski <akiyano@amazon.com>, linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>, Lino Sanfilippo <LinoSanfilippo@gmx.de>, Veaceslav Falico <vfalico@gmail.com>, Jakub Kicinski <kuba@kernel.org>, Tom Lendacky <thomas.lendacky@amd.com>, Jay Cliburn <jcliburn@gmail.com>, Jay Vosburgh <j.vosburgh@gmail.com>, Keyur Chudgar <keyur@os.amperecomputing.com>, Maxime Ripard <mripard@kernel.org>, Don Fry <pcnet32@frontier.com>, nios2-dev@li
List-Id: linux-rockchip.vger.kernel.org

On Sat, Apr 11, 2020 at 07:11:56PM +0300, Leon Romanovsky wrote:
> Probably, this is the right change, but I have a feeling that the right
> solution will be inside headers itself. It is a little bit strange that
> both very common kernel headers like module.h and vermagic.h are location
> dependant.

Judging by how only a couple of net drivers include vermagic.h directly,
doh, of course:

diff --git a/drivers/net/ethernet/3com/3c509.c b/drivers/net/ethernet/3com/3c509.c
index b762176a1406..139d0120f511 100644
--- a/drivers/net/ethernet/3com/3c509.c
+++ b/drivers/net/ethernet/3com/3c509.c
@@ -85,7 +85,6 @@
 #include <linux/device.h>
 #include <linux/eisa.h>
 #include <linux/bitops.h>
-#include <linux/vermagic.h>
 
 #include <linux/uaccess.h>
 #include <asm/io.h>
diff --git a/drivers/net/ethernet/3com/3c515.c b/drivers/net/ethernet/3com/3c515.c
index 90312fcd6319..47b4215bb93b 100644
--- a/drivers/net/ethernet/3com/3c515.c
+++ b/drivers/net/ethernet/3com/3c515.c
@@ -22,7 +22,6 @@
 
 */
 
-#include <linux/vermagic.h>
 #define DRV_NAME		"3c515"
 
 #define CORKSCREW 1

---

Drivers include

#include <linux/module.h>

which includes

#include <asm/module.h>

which defines the arch-specific MODULE_ARCH_VERMAGIC.

Why did you need to include vermagic.h directly? i386 builds fine with
the vermagic.h includes removed or was it some other arches which needed
it?

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette
