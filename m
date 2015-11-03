From: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [RESEND PATCH] ARM: errata: Workaround for Cortex-A12 erratum 818325
Date: Tue,  3 Nov 2015 16:10:09 +0800
Message-ID: <1446538209-13490-2-git-send-email-wxt@rock-chips.com>
References: <1446538209-13490-1-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1446538209-13490-1-git-send-email-wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Russell King <linux-lFZ/pmaqli7XmaaqVzeoHQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Huang Tao <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Thomas Petazzoni <thomas.petazzoni-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org>, hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Ard Biesheuvel <ard.biesheuvel-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Nadav Haklai <nadavh-eYqpPyKDWXRBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, cwz-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Jonathan Stone <j.stone-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Gregory CLEMENT <gregory.clement-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: Huang Tao <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

On Cortex-A12 (r0p0..r0p1-00lac0-rc11), when a CPU executes a sequence of
two conditional store instructions with opposite condition code and
updating the same register, the system might enter a deadlock if the
second conditional instruction is an UNPREDICTABLE STR or STM
instruction. This workaround setting bit[12] of the Feature Register
prevents the erratum. This bit disables an optimisation applied to a
sequence of 2 instructions that use opposing condition codes.

Signed-off-by: Huang Tao <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

---

 arch/arm/Kconfig      | 13 +++++++++++++
 arch/arm/mm/proc-v7.S | 12 ++++++++++++
 2 files changed, 25 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 639411f..554b57a 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1263,6 +1263,19 @@ config ARM_ERRATA_773022
 	  loop buffer may deliver incorrect instructions. This
 	  workaround disables the loop buffer to avoid the erratum.
 
+config ARM_ERRATA_818325
+	bool "ARM errata: Execution of an UNPREDICTABLE STR or STM instruction might deadlock"
+	depends on CPU_V7
+	help
+	  This option enables the workaround for the 818325 Cortex-A12
+	  (r0p0..r0p1-00lac0-rc11) erratum. When a CPU executes a sequence of
+	  two conditional store instructions with opposite condition code and
+	  updating the same register, the system might enter a deadlock if the
+	  second conditional instruction is an UNPREDICTABLE STR or STM
+	  instruction. This workaround setting bit[12] of the Feature Register
+	  prevents the erratum. This bit disables an optimisation applied to a
+	  sequence of 2 instructions that use opposing condition codes.
+
 endmenu
 
 source "arch/arm/common/Kconfig"
diff --git a/arch/arm/mm/proc-v7.S b/arch/arm/mm/proc-v7.S
index de2b246..2b338ec 100644
--- a/arch/arm/mm/proc-v7.S
+++ b/arch/arm/mm/proc-v7.S
@@ -439,6 +439,18 @@ __v7_setup_cont:
 	teq	r0, r10
 	beq	__ca9_errata
 
+	/* Cortex-A12 Errata */
+	ldr	r10, =0x00000c0d		@ Cortex-A12 primary part number
+	teq	r0, r10
+	bne	5f
+#ifdef CONFIG_ARM_ERRATA_818325
+	teq	r6, #0x00			@ present in r0p0
+	teqne	r6, #0x01			@ present in r0p1-00lac0-rc11
+	mrceq	p15, 0, r10, c15, c0, 1		@ read diagnostic register
+	orreq	r10, r10, #1 << 12		@ set bit #12
+	mcreq	p15, 0, r10, c15, c0, 1		@ write diagnostic register
+	isb
+#endif
 	/* Cortex-A15 Errata */
 	ldr	r10, =0x00000c0f		@ Cortex-A15 primary part number
 	teq	r0, r10
-- 
1.9.1
