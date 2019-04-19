From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH 1/2] ARM: errata: Workaround errata A12 857271 / A17 857272
Date: Fri, 19 Apr 2019 15:18:02 -0700
Message-ID: <20190419221803.99322-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Russell King <linux@armlinux.org.uk>
Cc: mark.rutland@arm.com, Salva.Climent@arm.com, linux-rockchip@lists.infradead.org, sonnyrao@chromium.org, will.deacon@arm.com, bbatacha@arm.com, mka@chromium.org, robin.murphy@arm.com, heiko@sntech.de, Douglas Anderson <dianders@chromium.org>, linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>, Masahiro Yamada <yamada.masahiro@socionext.com>, linux-kernel@vger.kernel.org, Paul Burton <paul.burton@mips.com>, Palmer Dabbelt <palmer@sifive.com>, Florian Fainelli <f.fainelli@gmail.com>, Geert Uytterhoeven <geert@linux-m68k.org>, Marc Zyngier <marc.zyngier@arm.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, Andrew Morton <akpm@linux-foundation.org>, Tony Lindgren <tony@atomide.com>
List-Id: linux-rockchip.vger.kernel.org

From: Sonny Rao <sonnyrao@chromium.org>

This adds support for working around errata A12 857271 / A17 857272.
These errata were causing hangs on rk3288-based Chromebooks and it was
confirmed that this workaround fixed the problems.  In the Chrome OS
3.14 kernel [1] this erratum was known as ERRATA_FOOBAR due to lack of
an official number from ARM (though the workaround of setting chicken
bit 10 came from ARM).  In the meantime ARM came up with official
errata numbers but never published the workaround upstream.

Let's actually get the workaround landed.

[1] https://crrev.com/c/342753

Signed-off-by: Sonny Rao <sonnyrao@chromium.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/Kconfig      | 19 +++++++++++++++++++
 arch/arm/mm/proc-v7.S | 10 ++++++++++
 2 files changed, 29 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index b509cd338219..4376fe74f95e 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1172,6 +1172,15 @@ config ARM_ERRATA_825619
 	  DMB NSHST or DMB ISHST instruction followed by a mix of Cacheable
 	  and Device/Strongly-Ordered loads and stores might cause deadlock
 
+config ARM_ERRATA_857271
+	bool "ARM errata: A12: CPU might deadlock under some very rare internal conditions"
+	depends on CPU_V7
+	help
+	  This option enables the workaround for the 857271 Cortex-A12
+	  (all revs) erratum. Under very rare timing conditions, the CPU might
+	  hang. The workaround is expected to have a negligible performance
+	  impact.
+
 config ARM_ERRATA_852421
 	bool "ARM errata: A17: DMB ST might fail to create order between stores"
 	depends on CPU_V7
@@ -1193,6 +1202,16 @@ config ARM_ERRATA_852423
 	  config option from the A12 erratum due to the way errata are checked
 	  for and handled.
 
+config ARM_ERRATA_857272
+	bool "ARM errata: A17: CPU might deadlock under some very rare internal conditions"
+	depends on CPU_V7
+	help
+	  This option enables the workaround for the 857272 Cortex-A17 erratum.
+	  This erratum is not known to be fixed in any A17 revision.
+	  This is identical to Cortex-A12 erratum 857271.  It is a separate
+	  config option from the A12 erratum due to the way errata are checked
+	  for and handled.
+
 endmenu
 
 source "arch/arm/common/Kconfig"
diff --git a/arch/arm/mm/proc-v7.S b/arch/arm/mm/proc-v7.S
index 339eb17c9808..cd2accbab844 100644
--- a/arch/arm/mm/proc-v7.S
+++ b/arch/arm/mm/proc-v7.S
@@ -391,6 +391,11 @@ __ca12_errata:
 	mrc	p15, 0, r10, c15, c0, 1		@ read diagnostic register
 	orr	r10, r10, #1 << 24		@ set bit #24
 	mcr	p15, 0, r10, c15, c0, 1		@ write diagnostic register
+#endif
+#ifdef CONFIG_ARM_ERRATA_857271
+	mrc	p15, 0, r10, c15, c0, 1		@ read diagnostic register
+	orr	r10, r10, #1 << 10		@ set bit #10
+	mcr	p15, 0, r10, c15, c0, 1		@ write diagnostic register
 #endif
 	b	__errata_finish
 
@@ -406,6 +411,11 @@ __ca17_errata:
 	mrcle	p15, 0, r10, c15, c0, 1		@ read diagnostic register
 	orrle	r10, r10, #1 << 12		@ set bit #12
 	mcrle	p15, 0, r10, c15, c0, 1		@ write diagnostic register
+#endif
+#ifdef CONFIG_ARM_ERRATA_857272
+	mrc	p15, 0, r10, c15, c0, 1		@ read diagnostic register
+	orr	r10, r10, #1 << 10		@ set bit #10
+	mcr	p15, 0, r10, c15, c0, 1		@ write diagnostic register
 #endif
 	b	__errata_finish
 
-- 
2.21.0.593.g511ec345e18-goog
