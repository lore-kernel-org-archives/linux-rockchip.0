Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B26BC6FA82
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Sep 2022 23:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0X+XCr3hiLTKQBd8zhKmaGdOzsY5qZcUtU2fEj255IQ=; b=AGcPBqaSz69ZAZ
	u3pEREeessJTeTbXCODmC2TE2O7lPBRSj7R83xfeUBnX9dwnXLClv0Nmm+GUWfJ2PqnMVE/7Ve3Wr
	LQvIh21Ai4UbzoLyDjlaKfCpSWcPnGSF2QAttthdejzJGZsIlBVHUgPpdzPyYUet3OCZGIe6s393Z
	Zi+ArTljgJOER+pwHUn/T9NbXN28bX2zz+BZQeoNmrgeORtrV6cJHujA32LXqrup7oEkbvdDQ+6lf
	IAhzywY5W5xWvS/IQkmk+zBim6xhxmWPv2sMoMHyBZpSEGgqEp88G8rAYOW2pUPUUUxKFNmkj9rdM
	ysl4CzL2R45H62gwIjLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaPrN-00G8sH-BK; Mon, 19 Sep 2022 23:07:29 +0000
Received: from mga02.intel.com ([134.134.136.20])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaPrK-00G8rR-H3; Mon, 19 Sep 2022 23:07:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663628846; x=1695164846;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=705WJOdue58NafhZ3jROr0GP9JgBUxIfi5dZH5hR6WA=;
  b=VoEp+Leh5tT+zQ8Umj9j2D3Z8N08Hm+FfzFLMlwBxmv0jakt5UxjjQz8
   fjbY7c4m2/RWztxWDlUNrvJm/UCvtTFUxwOkFcPs2cY9f02BWh+euavS4
   XUr7skrT0NtUz9HEKCP1bPC4ZZ7hvB5Ea1/0YvcZd/bykDOcKLElV8gkd
   ecFRh7KCFLj/kXSkMKPw8ZD/KETYf9tLQXJnqi9SNvI4jzG/RBenEC+gl
   3zhoMqKD9ovRp5wzu9cjz7b5CPmeyNcq2UUMtoAShm5SJ+RDjzuHxGwG2
   SVBZzsFNuKS9rQN6+SGJwaJdfP7sAgyn9qknT05xPVEId3w42iyrph7RB
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="286590438"
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; 
   d="scan'208";a="286590438"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Sep 2022 16:07:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; 
   d="scan'208";a="569841395"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 19 Sep 2022 16:07:22 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oaPrF-0002Hl-1e;
	Mon, 19 Sep 2022 23:07:21 +0000
Date: Tue, 20 Sep 2022 07:06:48 +0800
From: kernel test robot <lkp@intel.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-parisc@vger.kernel.org, linux-mm@kvack.org,
 linux-btrfs@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux.dev, dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>
Subject: [linux-next:master] BUILD REGRESSION
 4c9ca5b1597e3222177ba2a94658f78fa5ef4f58
Message-ID: <6328f608.UcWATT4z3JbSJozt%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_160726_675799_A40B8956 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
branch HEAD: 4c9ca5b1597e3222177ba2a94658f78fa5ef4f58  Add linux-next specific files for 20220919

Error/Warning reports:

https://lore.kernel.org/linux-doc/202209200314.tChS7q2Y-lkp@intel.com
https://lore.kernel.org/linux-doc/202209200341.be18yIBM-lkp@intel.com
https://lore.kernel.org/linux-mm/202209150141.WgbAKqmX-lkp@intel.com
https://lore.kernel.org/linux-mm/202209200603.Hpvoa8Ii-lkp@intel.com
https://lore.kernel.org/llvm/202209192243.d80zUWVW-lkp@intel.com
https://lore.kernel.org/llvm/202209200834.EFwaTsIj-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

ERROR: modpost: "devm_ioremap_resource" [drivers/dma/fsl-edma.ko] undefined!
ERROR: modpost: "devm_memremap" [drivers/misc/open-dice.ko] undefined!
ERROR: modpost: "devm_memunmap" [drivers/misc/open-dice.ko] undefined!
ERROR: modpost: "devm_platform_ioremap_resource" [drivers/char/xillybus/xillybus_of.ko] undefined!
ERROR: modpost: "devm_platform_ioremap_resource" [drivers/clk/xilinx/clk-xlnx-clock-wizard.ko] undefined!
ERROR: modpost: "ioremap" [drivers/tty/ipwireless/ipwireless.ko] undefined!
ERROR: modpost: "iounmap" [drivers/net/ethernet/8390/pcnet_cs.ko] undefined!
ERROR: modpost: "iounmap" [drivers/tty/ipwireless/ipwireless.ko] undefined!
arch/parisc/lib/iomap.c:363:5: warning: no previous prototype for 'ioread64_lo_hi' [-Wmissing-prototypes]
arch/parisc/lib/iomap.c:373:5: warning: no previous prototype for 'ioread64_hi_lo' [-Wmissing-prototypes]
arch/parisc/lib/iomap.c:448:6: warning: no previous prototype for 'iowrite64_lo_hi' [-Wmissing-prototypes]
arch/parisc/lib/iomap.c:454:6: warning: no previous prototype for 'iowrite64_hi_lo' [-Wmissing-prototypes]
drivers/gpu/drm/drm_atomic_helper.c:802: warning: expecting prototype for drm_atomic_helper_check_wb_connector_state(). Prototype was for drm_atomic_helper_check_wb_encoder_state() instead
drivers/iommu/ipmmu-vmsa.c:946:34: warning: unused variable 'ipmmu_of_ids' [-Wunused-const-variable]
drivers/scsi/qla2xxx/qla_os.c:2854:23: warning: assignment to 'struct trace_array *' from 'int' makes pointer from integer without a cast [-Wint-conversion]
drivers/scsi/qla2xxx/qla_os.c:2854:25: error: implicit declaration of function 'trace_array_get_by_name'; did you mean 'trace_array_set_clr_event'? [-Werror=implicit-function-declaration]
drivers/scsi/qla2xxx/qla_os.c:2869:9: error: implicit declaration of function 'trace_array_put' [-Werror=implicit-function-declaration]
fs/btrfs/extent-io-tree.c:165: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
fs/btrfs/extent-io-tree.c:217: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
mm/hugetlb.c:5565:14: warning: variable 'reserve_alloc' set but not used [-Wunused-but-set-variable]

Unverified Error/Warning (likely false positive, please contact us if interested):

ERROR: modpost: "__tsan_memcpy" [arch/s390/crypto/chacha_s390.ko] undefined!
ERROR: modpost: "__tsan_memcpy" [arch/s390/crypto/ghash_s390.ko] undefined!
ERROR: modpost: "__tsan_memcpy" [arch/s390/crypto/prng.ko] undefined!
ERROR: modpost: "__tsan_memcpy" [arch/s390/crypto/sha3_512_s390.ko] undefined!
ERROR: modpost: "__tsan_memset" [arch/s390/crypto/chacha_s390.ko] undefined!
ERROR: modpost: "__tsan_memset" [arch/s390/crypto/ghash_s390.ko] undefined!
ERROR: modpost: "__tsan_memset" [arch/s390/crypto/prng.ko] undefined!
ERROR: modpost: "__tsan_memset" [arch/s390/crypto/sha3_512_s390.ko] undefined!
ERROR: modpost: "__tsan_memset" [kernel/rcu/refscale.ko] undefined!
ERROR: modpost: "__tsan_memset" [kernel/scftorture.ko] undefined!

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allyesconfig
|   |-- drivers-gpu-drm-drm_atomic_helper.c:warning:expecting-prototype-for-drm_atomic_helper_check_wb_connector_state().-Prototype-was-for-drm_atomic_helper_check_wb_encoder_state()-instead
|   |-- drivers-scsi-qla2xxx-qla_os.c:error:implicit-declaration-of-function-trace_array_get_by_name
|   |-- drivers-scsi-qla2xxx-qla_os.c:error:implicit-declaration-of-function-trace_array_put
|   `-- drivers-scsi-qla2xxx-qla_os.c:warning:assignment-to-struct-trace_array-from-int-makes-pointer-from-integer-without-a-cast
|-- alpha-randconfig-r026-20220919
|   `-- fs-btrfs-extent-io-tree.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|-- arc-allyesconfig
|   `-- drivers-gpu-drm-drm_atomic_helper.c:warning:expecting-prototype-for-drm_atomic_helper_check_wb_connector_state().-Prototype-was-for-drm_atomic_helper_check_wb_encoder_state()-instead
|-- arc-randconfig-r043-20220919
|   `-- drivers-gpu-drm-drm_atomic_helper.c:warning:expecting-prototype-for-drm_atomic_helper_check_wb_connector_state().-Prototype-was-for-drm_atomic_helper_check_wb_encoder_state()-instead
|-- arm-allyesconfig
|   `-- drivers-gpu-drm-drm_atomic_helper.c:warning:expecting-prototype-for-drm_atomic_helper_check_wb_connector_state().-Prototype-was-for-drm_atomic_helper_check_wb_encoder_state()-instead
|-- arm-defconfig
|   `-- drivers-gpu-drm-drm_atomic_helper.c:warning:expecting-prototype-for-drm_atomic_helper_check_wb_connector_state().-Prototype-was-for-drm_atomic_helper_check_wb_encoder_state()-instead
|-- arm64-allyesconfig
|   `-- drivers-gpu-drm-drm_atomic_helper.c:warning:expecting-prototype-for-drm_atomic_helper_check_wb_connector_state().-Prototype-was-for-drm_atomic_helper_check_wb_encoder_state()-instead
|-- i386-allyesconfig
|   `-- drivers-gpu-drm-drm_atomic_helper.c:warning:expecting-prototype-for-drm_atomic_helper_check_wb_connector_state().-Prototype-was-for-drm_atomic_helper_check_wb_encoder_state()-instead
|-- i386-defconfig
|   |-- drivers-gpu-drm-drm_atomic_helper.c:warning:expecting-prototype-for-drm_atomic_helper_check_wb_connector_state().-Prototype-was-for-drm_atomic_helper_check_wb_encoder_state()-instead
|   `-- mm-hugetlb.c:warning:variable-reserve_alloc-set-but-not-used
|-- i386-randconfig-a011-20220919
|   `-- drivers-gpu-drm-drm_atomic_helper.c:warning:expecting-prototype-for-drm_atomic_helper_check_wb_connector_state().-Prototype-was-for-drm_atomic_helper_check_wb_encoder_state()-instead
|-- i386-randconfig-a012-20220919
|   `-- drivers-gpu-drm-drm_atomic_helper.c:warning:expecting-prototype-for-drm_atomic_helper_check_wb_connector_state().-Prototype-was-for-drm_atomic_helper_check_wb_encoder_state()-instead
|-- i386-randconfig-a015-20220919
|   `-- drivers-gpu-drm-drm_atomic_helper.c:warning:expecting-prototype-for-drm_atomic_helper_check_wb_connector_state().-Prototype-was-for-drm_atomic_helper_check_wb_encoder_state()-instead
|-- ia64-allmodconfig
|   |-- drivers-scsi-qla2xxx-qla_os.c:error:implicit-declaration-of-function-trace_array_get_by_name
|   |-- drivers-scsi-qla2xxx-qla_os.c:error:implicit-declaration-of-function-trace_array_put
|   `-- drivers-scsi-qla2xxx-qla_os.c:warning:assignment-to-struct-trace_array-from-int-makes-pointer-from-integer-without-a-cast
|-- loongarch-buildonly-randconfig-r004-20220919
|   `-- drivers-gpu-drm-drm_atomic_helper.c:warning:expecting-prototype-for-drm_atomic_helper_check_wb_connector_state().-Prototype-was-for-drm_atomic_helper_check_wb_encoder_state()-instead
|-- loongarch-randconfig-r015-20220919
|   `-- drivers-gpu-drm-drm_atomic_helper.c:warning:expecting-prototype-for-drm_atomic_helper_check_wb_connector_state().-Prototype-was-for-drm_atomic_helper_check_wb_encoder_state()-instead
|-- m68k-allmodconfig
|   `-- drivers-gpu-drm-drm_atomic_helper.c:warning:expecting-prototype-for-drm_atomic_helper_check_wb_connector_state().-Prototype-was-for-drm_atomic_helper_check_wb_encoder_state()-instead
|-- m68k-allyesconfig
|   |-- drivers-gpu-drm-drm_atomic_helper.c:warning:expecting-prototype-for-drm_atomic_helper_check_wb_connector_state().-Prototype-was-for-drm_atomic_helper_check_wb_encoder_state()-instead
|   `-- fs-btrfs-extent-io-tree.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|-- mips-allyesconfig
|   `-- drivers-gpu-drm-drm_atomic_helper.c:warning:expecting-prototype-for-drm_atomic_helper_check_wb_connector_state().-Prototype-was-for-drm_atomic_helper_check_wb_encoder_state()-instead
|-- nios2-randconfig-r025-20220919
|   `-- drivers-gpu-drm-drm_atomic_helper.c:warning:expecting-prototype-for-drm_atomic_helper_check_wb_connector_state().-Prototype-was-for-drm_atomic_helper_check_wb_encoder_state()-instead
|-- openrisc-randconfig-r003-20220919
|   `-- drivers-gpu-drm-drm_atomic_helper.c:warning:expecting-prototype-for-drm_atomic_helper_check_wb_connector_state().-Prototype-was-for-drm_atomic_helper_check_wb_encoder_state()-instead
|-- openrisc-randconfig-r004-20220919
|   `-- drivers-gpu-drm-drm_atomic_helper.c:warning:expecting-prototype-for-drm_atomic_helper_check_wb_connector_state().-Prototype-was-for-drm_atomic_helper_check_wb_encoder_state()-instead
|-- parisc-allyesconfig
clang_recent_errors
|-- arm-buildonly-randconfig-r001-20220919
|   |-- drivers-extcon-extcon-usbc-tusb320.c:warning:expecting-prototype-for-drivers-extcon-extcon-tusb320c().-Prototype-was-for-TUSB320_REG8()-instead
|   `-- drivers-gpu-drm-tests-drm_mm_test.c:warning:stack-frame-size-()-exceeds-limit-()-in-__drm_test_mm_reserve
|-- arm-defconfig
|   |-- drivers-clk-rockchip-clk-rv1126.c:warning:unused-variable-mux_aclk_pdispp_p
|   |-- drivers-clk-rockchip-clk-rv1126.c:warning:unused-variable-mux_aclk_pdnpu_p
|   |-- drivers-clk-rockchip-clk-rv1126.c:warning:unused-variable-mux_aclk_pdvi_p
|   |-- drivers-clk-rockchip-clk-rv1126.c:warning:unused-variable-mux_cif_out2io_p
|   |-- drivers-clk-rockchip-clk-rv1126.c:warning:unused-variable-mux_clk_isp_p
|   |-- drivers-clk-rockchip-clk-rv1126.c:warning:unused-variable-mux_clk_ispp_p
|   |-- drivers-clk-rockchip-clk-rv1126.c:warning:unused-variable-mux_clk_npu_p
|   |-- drivers-clk-rockchip-clk-rv1126.c:warning:unused-variable-mux_cpll_gpll_hpll_p
|   |-- drivers-clk-rockchip-clk-rv1126.c:warning:unused-variable-mux_cpll_hpll_gpll_p
|   |-- drivers-clk-rockchip-clk-rv1126.c:warning:unused-variable-mux_dclk_vop_p
|   |-- drivers-clk-rockchip-clk-rv1126.c:warning:unused-variable-mux_gpll_cpll_apll_hpll_p
|   |-- drivers-clk-rockchip-clk-rv1126.c:warning:unused-variable-mux_gpll_cpll_hpll_p
|   |-- drivers-clk-rockchip-clk-rv1126.c:warning:unused-variable-mux_gpll_usb480m_p
|   `-- drivers-clk-rockchip-clk-rv1126.c:warning:unused-variable-mux_mipicsi_out2io_p
|-- arm64-buildonly-randconfig-r005-20220919
|   |-- arch-arm64-kernel-alternative.c:warning:no-previous-prototype-for-function-apply_alternatives_vdso
|   `-- drivers-extcon-extcon-usbc-tusb320.c:warning:expecting-prototype-for-drivers-extcon-extcon-tusb320c().-Prototype-was-for-TUSB320_REG8()-instead
|-- arm64-randconfig-r033-20220919
|   `-- arch-arm64-kernel-alternative.c:warning:no-previous-prototype-for-function-apply_alternatives_vdso
|-- hexagon-randconfig-r041-20220919
|   `-- drivers-extcon-extcon-usbc-tusb320.c:warning:expecting-prototype-for-drivers-extcon-extcon-tusb320c().-Prototype-was-for-TUSB320_REG8()-instead
|-- hexagon-randconfig-r045-20220919
|   `-- drivers-extcon-extcon-usbc-tusb320.c:warning:expecting-prototype-for-drivers-extcon-extcon-tusb320c().-Prototype-was-for-TUSB320_REG8()-instead
|-- i386-randconfig-a002-20220919
|   `-- drivers-extcon-extcon-usbc-tusb320.c:warning:expecting-prototype-for-drivers-extcon-extcon-tusb320c().-Prototype-was-for-TUSB320_REG8()-instead
|-- i386-randconfig-a005-20220919
|   `-- drivers-extcon-extcon-usbc-tusb320.c:warning:expecting-prototype-for-drivers-extcon-extcon-tusb320c().-Prototype-was-for-TUSB320_REG8()-instead
|-- i386-randconfig-a006-20220919
|   `-- drivers-extcon-extcon-usbc-tusb320.c:warning:expecting-prototype-for-drivers-extcon-extcon-tusb320c().-Prototype-was-for-TUSB320_REG8()-instead
|-- s390-randconfig-r005-20220919
|   |-- ERROR:__tsan_memcpy-arch-s390-crypto-chacha_s390.ko-undefined
|   |-- ERROR:__tsan_memcpy-arch-s390-crypto-ghash_s390.ko-undefined
|   |-- ERROR:__tsan_memcpy-arch-s390-crypto-prng.ko-undefined
|   |-- ERROR:__tsan_memcpy-arch-s390-crypto-sha3_512_s390.ko-undefined
|   |-- ERROR:__tsan_memset-arch-s390-crypto-chacha_s390.ko-undefined
|   |-- ERROR:__tsan_memset-arch-s390-crypto-ghash_s390.ko-undefined
|   |-- ERROR:__tsan_memset-arch-s390-crypto-prng.ko-undefined
|   |-- ERROR:__tsan_memset-arch-s390-crypto-sha3_512_s390.ko-undefined
|   |-- ERROR:__tsan_memset-kernel-rcu-refscale.ko-undefined
|   |-- ERROR:__tsan_memset-kernel-scftorture.ko-undefined
|   `-- drivers-iommu-ipmmu-vmsa.c:warning:unused-variable-ipmmu_of_ids
|-- x86_64-randconfig-a001-20220919
|   `-- fs-btrfs-extent-io-tree.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|-- x86_64-randconfig-a003-20220919
|   `-- drivers-extcon-extcon-usbc-tusb320.c:warning:expecting-prototype-for-drivers-extcon-extcon-tusb320c().-Prototype-was-for-TUSB320_REG8()-instead
|-- x86_64-randconfig-a006-20220919

elapsed time: 726m

configs tested: 57
configs skipped: 2

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64               randconfig-a012-20220919
x86_64                              defconfig
x86_64               randconfig-a011-20220919
x86_64               randconfig-a013-20220919
x86_64                               rhel-8.3
x86_64               randconfig-a014-20220919
powerpc                           allnoconfig
x86_64               randconfig-a015-20220919
x86_64               randconfig-a016-20220919
x86_64                           allyesconfig
i386                                defconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
arm                                 defconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
riscv                randconfig-r042-20220919
x86_64                           rhel-8.3-kvm
arc                  randconfig-r043-20220919
arm64                            allyesconfig
i386                             allyesconfig
s390                 randconfig-r044-20220919
arm                              allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
ia64                             allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
i386                 randconfig-a012-20220919
i386                 randconfig-a011-20220919
i386                 randconfig-a013-20220919
i386                 randconfig-a014-20220919
m68k                             allmodconfig
i386                 randconfig-a015-20220919
arc                                 defconfig
alpha                               defconfig
m68k                             allyesconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig

clang tested configs:
x86_64               randconfig-a003-20220919
x86_64               randconfig-a001-20220919
x86_64               randconfig-a002-20220919
i386                 randconfig-a001-20220919
x86_64               randconfig-a004-20220919
i386                 randconfig-a006-20220919
i386                 randconfig-a002-20220919
x86_64               randconfig-a006-20220919
hexagon              randconfig-r041-20220919
x86_64               randconfig-a005-20220919
i386                 randconfig-a003-20220919
hexagon              randconfig-r045-20220919
i386                 randconfig-a004-20220919
i386                 randconfig-a005-20220919

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
