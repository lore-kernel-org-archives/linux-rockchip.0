From: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: aarch64 Kernel Panic Asynchronous SError Interrupt on large file
 IO
Date: Mon, 19 Aug 2019 11:07:14 +0100
Message-ID: <20190819100713.GA6117@arrakis.emea.arm.com>
References: <CA+Vb7hpe_USzdCuTBHd8V-t6YeQ0oApiBrvM-D43JuhJda6eyQ@mail.gmail.com>
 <20190815122151.bg7it6ptxwcn2vif@willie-the-truck>
 <8253b02c-0431-6b01-6af4-6132eb992925@arm.com>
 <CA+Vb7hpi=pCC9viiof8y85Kw_vCawWQ0B6kGFALgxtZfCKoaTw@mail.gmail.com>
 <CA+Vb7hqPvDtv0ahjxa_gM68qsws6-dmtiOPmG6-WB+HZEC=4aw@mail.gmail.com>
 <2facb3cb-388a-87ee-4d87-717dd65825ae@arm.com>
 <CA+Vb7hpjX=yzVJj+BguvzwtyASCGUTwx_OXWfBuEoLO_RicMBQ@mail.gmail.com>
 <CA+Vb7hpXfavS0k47Z0o=SkswO_jMmv3HN7RsUMdx=AHjvrD7LA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <CA+Vb7hpXfavS0k47Z0o=SkswO_jMmv3HN7RsUMdx=AHjvrD7LA@mail.gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Philipp Richter <richterphilipp.pops@gmail.com>
Cc: heiko@sntech.de, andre.przywara@arm.com, Robin Murphy <robin.murphy@arm.com>, vicencb@gmail.com, linux-rockchip@lists.infradead.org, Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Sat, Aug 17, 2019 at 03:12:41PM +0200, Philipp Richter wrote:
> I added "memtest=4" to the kernel cmdline and I'm getting very quicky
> a "Internal error: synchronous external abort" panic.
[...]
> [    0.000000] early_memtest: # of tests: 4
> [    0.000000]   0x0000000000200000 - 0x0000000002080000 pattern aaaaaaaaaaaaaaaa
> [    0.000000]   0x0000000003a95000 - 0x00000000f8400000 pattern aaaaaaaaaaaaaaaa
> [    0.000000] Internal error: synchronous external abort: 96000210 [#1] SMP

At least it's a synchronous error ;).

> [    0.000000] pc : early_memtest+0x16c/0x23c
[...]
> [    0.000000] Code: d2800002 d2800001 eb0400bf 54000309 (f9400080)

decodecode says:

   0:   d2800002        mov     x2, #0x0                        // #0
   4:   d2800001        mov     x1, #0x0                        // #0
   8:   eb0400bf        cmp     x5, x4
   c:   54000309        b.ls    0x6c  // b.plast
  10:*  f9400080        ldr     x0, [x4]                <-- trapping instruction

I guess that's the read of *p in memtest(). Writing *p probably
generates asynchronous errors it you haven't seen it yet.

> Is my board completely broken ? :(

One possibility is that you don't have any memory where you think there
is, so the mapping just doesn't translate to any valid physical
location.

Can you add some printk(addr) in do_sea() to see if it always faults on
the same address?

Another hack to hopefully track this down is to try to cope with such
synchronous aborts and hopefully you won't hit an asynchronous one
(SError). Quick hack below, only tested under kvm/qemu for booting and
passing memtest:

-----------8<-------------------------
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 2e6f42dc5a15..47efeedeccba 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -606,6 +606,9 @@ static int do_sea(unsigned long addr, unsigned int esr, struct pt_regs *regs)
 	const struct fault_info *inf;
 	void __user *siaddr;
 
+	if (!user_mode(regs) && fixup_exception(regs))
+		return 0;
+
 	inf = esr_to_fault_info(esr);
 
 	/*
diff --git a/mm/memtest.c b/mm/memtest.c
index f53ace709ccd..e878aa6bd1aa 100644
--- a/mm/memtest.c
+++ b/mm/memtest.c
@@ -3,6 +3,7 @@
 #include <linux/types.h>
 #include <linux/init.h>
 #include <linux/memblock.h>
+#include <linux/uaccess.h>
 
 static u64 patterns[] __initdata = {
 	/* The first entry has to be 0 to leave memtest with zeroed memory */
@@ -38,6 +39,7 @@ static void __init memtest(u64 pattern, phys_addr_t start_phys, phys_addr_t size
 	phys_addr_t start_bad, last_bad;
 	phys_addr_t start_phys_aligned;
 	const size_t incr = sizeof(pattern);
+	mm_segment_t old_fs;
 
 	start_phys_aligned = ALIGN(start_phys, incr);
 	start = __va(start_phys_aligned);
@@ -45,12 +47,20 @@ static void __init memtest(u64 pattern, phys_addr_t start_phys, phys_addr_t size
 	start_bad = 0;
 	last_bad = 0;
 
-	for (p = start; p < end; p++)
-		*p = pattern;
+	old_fs = get_fs();
+	set_fs(KERNEL_DS);
+	for (p = start; p < end; p++) {
+		u64 val;
+		if (!get_user(val, p))
+			*p = pattern;
+	}
 
 	for (p = start; p < end; p++, start_phys_aligned += incr) {
-		if (*p == pattern)
-			continue;
+		u64 val;
+		if (!get_user(val, p)) {
+			if (val == pattern)
+				continue;
+		}
 		if (start_phys_aligned == last_bad + incr) {
 			last_bad += incr;
 			continue;
@@ -61,6 +71,7 @@ static void __init memtest(u64 pattern, phys_addr_t start_phys, phys_addr_t size
 	}
 	if (start_bad)
 		reserve_bad_mem(pattern, start_bad, last_bad + incr);
+	set_fs(old_fs);
 }
 
 static void __init do_one_pass(u64 pattern, phys_addr_t start, phys_addr_t end)
