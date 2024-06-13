Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C2D2C27C4F
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 20:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:Subject:Cc:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Az/aIHFbJIsVisgksR40h0QY4mRsLNyOl88hVsLKGtM=; b=Yq+/Eb5p8y8y1Z
	y9H228+AHLjWbV0ZhxYNhzZJabZ6KJf/ucODq3DjtGAhq2XnfLvo4VgELgVYTYO6bOMHclIi4ABmi
	7aJ/WNHCdAyDeTt3+C8pL3q3cYvAMW8WbhiF+18efj0SdyZEBowk9Tfi71RpSIpQvt4IzpgERYHUG
	8Nau2IqTcavX5Oin6gSPWSG5w0O6mKFcW9pfI3PyUbJfKhYFKWqSD7bQcxeMlJK4OPjw5WgRPLSMX
	2285JO9+epllsIy+ea+DhuAXz0PH0RwTnhJmaDKABb6dpB5GX3Jvt5THRvGzT3VEeGV/5e1rw96VZ
	EFCRXgQ4DHkT/yiAOtrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHrJI-00000000S6k-2Zdl;
	Thu, 13 Jun 2024 20:44:40 +0000
Received: from mgamail.intel.com ([192.198.163.11])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHrJE-00000000S61-2gVk;
	Thu, 13 Jun 2024 20:44:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1718311477; x=1749847477;
  h=date:from:to:cc:subject:message-id;
  bh=ZMQKAiTTpNPcqkOMQfaPtk/alrNE490xzzeqLwEYsn8=;
  b=erfVhEvPJ3c2AOXca/Gu4mMyUg7Jl3IcHRjmsxfBpZaVUwCkSAZptsTA
   hjvkjYt6tNJThhdSEfgr8XMYxCDjwilfTDXWDH4G0Aj7qeCj5tZyqnyh3
   hfLsy04hYrmsdrZgd+fTIr5XuZi5yFw1dIVE2R/Orwd+6PtXOqYravKa8
   oi2YQmwFTJ7nNu9k2TgufH/B2YkmDrwNTYLPxmxeMYG7NLua3cYln7IKS
   QH2GIDMLP+xrSg1EKQDjVMF2T+J1N+jTTOZdrHARf1I0lgDGRIbFB2dk1
   QztWuoJNVGD6JYcztnkAgWO25Ay8G1rISKHHZBHB0q8azN2HtwCII3jyl
   g==;
X-CSE-ConnectionGUID: Nw7cdnfLRme+BXDOhydv2w==
X-CSE-MsgGUID: t/Ggk2gFSBqLVnrdYgG4wQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="25806143"
X-IronPort-AV: E=Sophos;i="6.08,236,1712646000"; 
   d="scan'208";a="25806143"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jun 2024 13:44:17 -0700
X-CSE-ConnectionGUID: C2pUUIfnT3SOkXrCcqbbSA==
X-CSE-MsgGUID: Wi5wMx8DRcWe/bW7266bKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,236,1712646000"; 
   d="scan'208";a="77737919"
Received: from lkp-server01.sh.intel.com (HELO 9e3ee4e9e062) ([10.239.97.150])
  by orviesa001.jf.intel.com with ESMTP; 13 Jun 2024 13:44:14 -0700
Received: from kbuild by 9e3ee4e9e062 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sHrIp-0000OC-15;
	Thu, 13 Jun 2024 20:44:11 +0000
Date: Fri, 14 Jun 2024 04:43:16 +0800
From: kernel test robot <lkp@intel.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Linux Memory Management List <linux-mm@kvack.org>,
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-hwmon@vger.kernel.org, linux-input@vger.kernel.org,
 linux-integrity@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [linux-next:master] BUILD REGRESSION
 6906a84c482f098d31486df8dc98cead21cce2d0
Message-ID: <202406140411.4qyUCuPF-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_134436_748588_950199CB 
X-CRM114-Status: UNSURE (   4.75  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
branch HEAD: 6906a84c482f098d31486df8dc98cead21cce2d0  Add linux-next specific files for 20240613

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202406131636.cCrcJztc-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/hwmon/pmbus/mp9941.c:60:33: error: call to undeclared function 'FIELD_PREP'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
drivers/hwmon/pmbus/mp9941.c:60:40: error: implicit declaration of function 'FIELD_PREP' [-Werror=implicit-function-declaration]
drivers/hwmon/pmbus/mp9941.c:84:13: error: implicit declaration of function 'FIELD_GET' [-Werror=implicit-function-declaration]
drivers/hwmon/pmbus/mp9941.c:84:6: error: call to undeclared function 'FIELD_GET'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
security/integrity/ima/ima_policy.c:430:10: error: too many arguments to function call, expected 4, have 5

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allyesconfig
|   |-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_GET
|   `-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_PREP
|-- arc-allmodconfig
|   |-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_GET
|   `-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_PREP
|-- arc-allyesconfig
|   |-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_GET
|   `-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_PREP
|-- arm64-randconfig-001-20240613
|   `-- drivers-pinctrl-pinctrl-keembay.c:error:struct-function_desc-has-no-member-named-name
|-- csky-allmodconfig
|   |-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_GET
|   `-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_PREP
|-- csky-allyesconfig
|   |-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_GET
|   `-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_PREP
|-- loongarch-defconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-hubbub-dcn401-dcn401_hubbub.o:warning:objtool:unexpected-relocation-symbol-type-in-.rela.discard.reachable
|   `-- drivers-thermal-thermal_trip.o:warning:objtool:unexpected-relocation-symbol-type-in-.rela.discard.reachable
|-- m68k-allmodconfig
|   |-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_GET
|   `-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_PREP
|-- m68k-allyesconfig
|   |-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_GET
|   `-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_PREP
|-- microblaze-allmodconfig
|   |-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_GET
|   `-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_PREP
|-- microblaze-allyesconfig
|   |-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_GET
|   `-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_PREP
|-- nios2-allmodconfig
|   |-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_GET
|   `-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_PREP
|-- nios2-allyesconfig
|   |-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_GET
|   `-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_PREP
|-- openrisc-allyesconfig
|   |-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_GET
|   `-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_PREP
|-- parisc-allmodconfig
|   |-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_GET
|   `-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_PREP
|-- parisc-allyesconfig
|   |-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_GET
|   `-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_PREP
|-- sh-allmodconfig
|   |-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_GET
|   `-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_PREP
|-- sh-allyesconfig
|   |-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_GET
|   `-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_PREP
|-- sparc-allmodconfig
|   |-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_GET
|   `-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_PREP
|-- sparc64-allmodconfig
|   |-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_GET
|   `-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_PREP
|-- sparc64-allyesconfig
|   |-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_GET
|   `-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_PREP
|-- x86_64-buildonly-randconfig-002-20240613
|   |-- drivers-input-touchscreen-wacom_w8001.c:warning:Finger-directive-output-may-be-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- drivers-input-touchscreen-wacom_w8001.c:warning:Pen-directive-output-may-be-truncated-writing-bytes-into-a-region-of-size-between-and
|-- x86_64-randconfig-011-20240613
|   |-- drivers-input-touchscreen-wacom_w8001.c:warning:Finger-directive-output-may-be-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- drivers-input-touchscreen-wacom_w8001.c:warning:Pen-directive-output-may-be-truncated-writing-bytes-into-a-region-of-size-between-and
`-- xtensa-allyesconfig
    |-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_GET
    `-- drivers-hwmon-pmbus-mp9941.c:error:implicit-declaration-of-function-FIELD_PREP
clang_recent_errors
|-- arm-randconfig-051-20240613
|   |-- arch-arm-boot-dts-rockchip-rk3128-evb.dtb:dsi:failed-to-match-any-schema-with-compatible:rockchip-rk3128-mipi-dsi-snps-dw-mipi-dsi
|   `-- arch-arm-boot-dts-rockchip-rk3128-xpi-.dtb:dsi:failed-to-match-any-schema-with-compatible:rockchip-rk3128-mipi-dsi-snps-dw-mipi-dsi
|-- arm64-allmodconfig
|   `-- drivers-pinctrl-pinctrl-keembay.c:error:no-member-named-name-in-struct-function_desc
|-- arm64-randconfig-003-20240613
|   `-- drivers-pinctrl-pinctrl-keembay.c:error:no-member-named-name-in-struct-function_desc
|-- hexagon-allyesconfig
|   |-- drivers-hwmon-pmbus-mp9941.c:error:call-to-undeclared-function-FIELD_GET-ISO-C99-and-later-do-not-support-implicit-function-declarations
|   `-- drivers-hwmon-pmbus-mp9941.c:error:call-to-undeclared-function-FIELD_PREP-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- i386-buildonly-randconfig-004-20240613
|   `-- security-integrity-ima-ima_policy.c:error:too-many-arguments-to-function-call-expected-have
`-- powerpc64-randconfig-001-20240613
    `-- drivers-gpu-drm-drm_mm.c:error:function-drm_mm_node_scanned_block-is-not-needed-and-will-not-be-emitted-Werror-Wunneeded-internal-declaration

elapsed time: 940m

configs tested: 179
configs skipped: 4

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.2.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240613   gcc-13.2.0
arc                   randconfig-002-20240613   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                              allyesconfig   gcc-13.2.0
arm                                 defconfig   clang-14
arm                   randconfig-001-20240613   gcc-13.2.0
arm                   randconfig-002-20240613   clang-17
arm                   randconfig-003-20240613   clang-19
arm                   randconfig-004-20240613   clang-19
arm                         s5pv210_defconfig   gcc-13.2.0
arm64                            allmodconfig   clang-19
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240613   gcc-13.2.0
arm64                 randconfig-002-20240613   clang-19
arm64                 randconfig-003-20240613   clang-19
arm64                 randconfig-004-20240613   clang-19
csky                             allmodconfig   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                             allyesconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240613   gcc-13.2.0
csky                  randconfig-002-20240613   gcc-13.2.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon                             defconfig   clang-19
hexagon               randconfig-001-20240613   clang-19
hexagon               randconfig-002-20240613   clang-15
i386                              allnoconfig   gcc-13
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240613   gcc-9
i386         buildonly-randconfig-002-20240613   clang-18
i386         buildonly-randconfig-003-20240613   clang-18
i386         buildonly-randconfig-004-20240613   clang-18
i386         buildonly-randconfig-005-20240613   gcc-7
i386         buildonly-randconfig-006-20240613   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240613   gcc-7
i386                  randconfig-002-20240613   gcc-11
i386                  randconfig-003-20240613   gcc-13
i386                  randconfig-004-20240613   clang-18
i386                  randconfig-005-20240613   gcc-13
i386                  randconfig-006-20240613   gcc-13
i386                  randconfig-011-20240613   gcc-13
i386                  randconfig-012-20240613   clang-18
i386                  randconfig-013-20240613   clang-18
i386                  randconfig-014-20240613   gcc-12
i386                  randconfig-015-20240613   gcc-8
i386                  randconfig-016-20240613   gcc-13
loongarch                        allmodconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240613   gcc-13.2.0
loongarch             randconfig-002-20240613   gcc-13.2.0
m68k                             allmodconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-13.2.0
m68k                                defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-13.2.0
microblaze                          defconfig   gcc-13.2.0
microblaze                      mmu_defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                             allyesconfig   gcc-13.2.0
mips                        bcm47xx_defconfig   clang-15
mips                        bcm63xx_defconfig   clang-17
mips                     decstation_defconfig   gcc-13.2.0
mips                        vocore2_defconfig   clang-15
nios2                            allmodconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                            allyesconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240613   gcc-13.2.0
nios2                 randconfig-002-20240613   gcc-13.2.0
openrisc                         alldefconfig   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                         allyesconfig   gcc-13.2.0
openrisc                            defconfig   gcc-13.2.0
openrisc                    or1ksim_defconfig   gcc-13.2.0
parisc                           allmodconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                           allyesconfig   gcc-13.2.0
parisc                              defconfig   gcc-13.2.0
parisc                randconfig-001-20240613   gcc-13.2.0
parisc                randconfig-002-20240613   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                     akebono_defconfig   clang-19
powerpc                          allmodconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc                          allyesconfig   clang-19
powerpc                        fsp2_defconfig   gcc-13.2.0
powerpc                    gamecube_defconfig   clang-19
powerpc                    klondike_defconfig   gcc-13.2.0
powerpc               randconfig-001-20240613   clang-19
powerpc               randconfig-002-20240613   clang-19
powerpc               randconfig-003-20240613   clang-19
powerpc                     tqm8560_defconfig   gcc-13.2.0
powerpc64             randconfig-001-20240613   clang-19
powerpc64             randconfig-002-20240613   clang-19
powerpc64             randconfig-003-20240613   gcc-13.2.0
riscv                            allmodconfig   clang-19
riscv                             allnoconfig   gcc-13.2.0
riscv                            allyesconfig   clang-19
riscv                               defconfig   clang-19
riscv                 randconfig-001-20240613   clang-19
riscv                 randconfig-002-20240613   clang-19
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                             allyesconfig   gcc-13.2.0
s390                                defconfig   clang-19
s390                  randconfig-001-20240613   gcc-13.2.0
s390                  randconfig-002-20240613   gcc-13.2.0
sh                               allmodconfig   gcc-13.2.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.2.0
sh                               j2_defconfig   gcc-13.2.0
sh                    randconfig-001-20240613   gcc-13.2.0
sh                    randconfig-002-20240613   gcc-13.2.0
sh                   secureedge5410_defconfig   gcc-13.2.0
sh                     sh7710voipgw_defconfig   gcc-13.2.0
sh                             shx3_defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-13.2.0
sparc                             allnoconfig   gcc-13.2.0
sparc                               defconfig   gcc-13.2.0
sparc64                          allmodconfig   gcc-13.2.0
sparc64                          allyesconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.2.0
sparc64               randconfig-001-20240613   gcc-13.2.0
sparc64               randconfig-002-20240613   gcc-13.2.0
um                               allmodconfig   clang-19
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                    randconfig-001-20240613   gcc-9
um                    randconfig-002-20240613   gcc-9
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240613   gcc-13
x86_64       buildonly-randconfig-002-20240613   gcc-9
x86_64       buildonly-randconfig-003-20240613   clang-18
x86_64       buildonly-randconfig-004-20240613   clang-18
x86_64       buildonly-randconfig-005-20240613   clang-18
x86_64       buildonly-randconfig-006-20240613   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240613   gcc-13
x86_64                randconfig-002-20240613   clang-18
x86_64                randconfig-003-20240613   gcc-13
x86_64                randconfig-004-20240613   clang-18
x86_64                randconfig-005-20240613   clang-18
x86_64                randconfig-006-20240613   clang-18
x86_64                randconfig-011-20240613   gcc-9
x86_64                randconfig-012-20240613   clang-18
x86_64                randconfig-013-20240613   clang-18
x86_64                randconfig-014-20240613   clang-18
x86_64                randconfig-015-20240613   gcc-7
x86_64                randconfig-016-20240613   clang-18
x86_64                randconfig-071-20240613   clang-18
x86_64                randconfig-072-20240613   clang-18
x86_64                randconfig-073-20240613   gcc-9
x86_64                randconfig-074-20240613   clang-18
x86_64                randconfig-075-20240613   clang-18
x86_64                randconfig-076-20240613   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240613   gcc-13.2.0
xtensa                randconfig-002-20240613   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
