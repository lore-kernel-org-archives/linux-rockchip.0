Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DC8C606A321
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 06:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KTGvubuV;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=nScnmFMC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9i83ElEB8D6LZT0q3M768bPLAB56kECb0Mrz1GzO2b8=; b=KTGvubuVPiexOTCeoEIiK+7yiS
	5WhigQZRVsNlMGE/K/7LMVXhIUllhlkiupSX7Uh2ATTw1dFPb8JCrMmlwlMVuI27OKh44//JtmWJx
	bsPjhxvtE1CdV4GR6DqX6zoUjTf1lzZjmUUeBP2s0Yk5GsCbE/EcJOHFXTz380VDxzz2hjpCscZrl
	ArbrOsrB04lA4LZyaSzN+FSyP8krF3AnE/L5zcbBFDn3r8B+lHr/PsDTLk/maq1eazByRbMn0sHJh
	zrHFdJz3/VTRuSUw59BX4GVCJWQXlLr/W4CRjnKGiAxDXsyORHZCRgo44XmKNDzvbGu10bxHLJNxg
	pEoiX12Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMJZJ-00000008TBd-2b8d;
	Thu, 29 Oct 2026 06:24:57 +0000
Received: from mgamail.intel.com ([192.198.163.11])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMJZF-00000008TAy-0zQv
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 06:24:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1793255093; x=1824791093;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=iSIBsFr6RspUk/5LZrqwFhSWs4iU4YOkCBQI/UmN6tA=;
  b=nScnmFMCF6UvkehtH3kp1qagJftoSK4R2/fSXkp9KNdNdQaC5qha5KFP
   paUKALxFjYkOrThv4eCuCP1zUR5OQFk0nRgNQA/15gs4GCZUp9kmy3UTZ
   KOcHPHq3Ce1699QfHdSPz9OWDZvBQfvoAa/50E1bo80tPD+oimIBF/nYO
   3eibgyfYovJxGBWzlSiYZ8wBLSCf/CBl7gz8fcZd0FjSXYa2ZP1zbP0e4
   Fo6XMgXzof2iKBQPAbr4KO5TSSFikwkRHkj7YDveaHYcJBVMm3MFErWVe
   1x7JinFidTAmel6g7uJH4mZiXYfnP/wiU2zQo4IdIoErI3HxHWhxz8043
   A==;
X-CSE-ConnectionGUID: fm6E1xifQN6hyMVHAgv+sw==
X-CSE-MsgGUID: 88QhrtuISmG96+KRezUfng==
X-IronPort-AV: E=McAfee;i="6800,10657,11949"; a="1901725"
X-IronPort-AV: E=Sophos;i="6.27,184,1787036400"; 
   d="scan'208";a="1901725"
Received: from fmviesa011.fm.intel.com ([10.60.135.151])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Oct 2026 23:24:52 -0700
X-CSE-ConnectionGUID: CsEknmunREmuJ83o0a3MNw==
X-CSE-MsgGUID: ObcGxGaXSb2D3wwGb1/fdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,184,1787036400"; 
   d="scan'208";a="6880887"
Received: from lkp-server01.sh.intel.com (HELO 0caa9d2d175c) ([10.239.97.150])
  by fmviesa011.fm.intel.com with ESMTP; 28 Oct 2026 23:24:49 -0700
Received: from kbuild by 0caa9d2d175c with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1xMJZ8-00000000ZgW-1itp;
	Thu, 29 Oct 2026 06:24:46 +0000
Date: Thu, 29 Oct 2026 14:24:14 +0800
From: kernel test robot <lkp@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>, linux-pm@vger.kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org, sre@kernel.org, t.schramm@manjaro.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 2/3] power: supply: cw2217: Add support for Cellwise
 cw2217
Message-ID: <202610291456.pByroJTe-lkp@intel.com>
References: <20261027131751.1724448-3-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261027131751.1724448-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_232453_304631_B36D58DD 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -4.4 (----)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Chris,

kernel test robot noticed the following build errors:

[auto build test ERROR on sre-power-supply/for-next]
[also build test ERROR on rockchip/for-next amd-pstate/linux-next amd-pstate/bleeding-edge linus/master v7.3 next-20261028]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Chris-Morgan/dt-bindings-power-cw2015-add-cw2215-cw2217-and-cw2218/20261027-081749
base:   https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-power-supply.git for-next
patch link:    https://lore.kernel.org/r/20261027131751.1724448-3-macroalpha82%40gmail.com
patch subject: [PATCH 2/3] power: supply: cw2217: Add support for Cellwise cw2217
config: s390-allmodconfig (https://download.01.org/0day-ci/archive/20261029/202610291456.pByroJTe-lkp@intel.com/config)
compiler: clang version 24.0.0git (https://github.com/llvm/llvm-project 1da436a23e613c425fc9b868fc8deb979ede47a4)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20261029/202610291456.pByroJTe-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202610291456.pByroJTe-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/power/supply/cw2217_battery.c:261:11: error: call to undeclared function 'FIELD_GET'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     261 |         fw_ver = FIELD_GET(CW2217_ID_MASK, cw_bat->fw_version);
         |                  ^
   drivers/power/supply/cw2217_battery.c:465:12: error: call to undeclared function 'FIELD_GET'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     465 |                                        FIELD_GET(CW2217_IC_READY_MASK, reg) == CW2217_IC_READY,
         |                                        ^
   drivers/power/supply/cw2217_battery.c:491:6: error: call to undeclared function 'FIELD_GET'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     491 |         if (FIELD_GET(CW2217_CONFIG_ACT_MSK, reg)) {
         |             ^
   3 errors generated.


vim +/FIELD_GET +261 drivers/power/supply/cw2217_battery.c

   231	
   232	/*
   233	 * Current is a signed 16bit register (0x0E 0x0F) that reports current A/D
   234	 * converter result of the voltage across the current sense resistor,
   235	 * 10mohm typical. The register value should be divided by the sense
   236	 * resistance to convert to amperes. The value of the sense resistor
   237	 * determines the resolution and the full-scale range of the current readings.
   238	 * The LSB of 0x0F is (52.4/32768)uV for CW2215 and CW2217. The LSB of 0x0F is
   239	 * (125/32768)uV for CW2218.
   240	 */
   241	static int cw2217_get_current(struct cw2217_battery *cw_bat)
   242	{
   243		s32 cw_current;
   244		__be16 reg;
   245		u8 fw_ver;
   246		int ret;
   247	
   248		if (cw_bat->fw_version == 0) {
   249			cw_bat->cw_current = 0;
   250			dev_err(cw_bat->dev, "Error! CW2217 firmware read error!\n");
   251			return -EIO;
   252		}
   253	
   254		ret = regmap_bulk_read(cw_bat->regmap, CW2217_CURRENT_H,
   255				       &reg, sizeof(reg));
   256		if (ret)
   257			return ret;
   258	
   259		cw_current = (s16)be16_to_cpu(reg);
   260	
 > 261		fw_ver = FIELD_GET(CW2217_ID_MASK, cw_bat->fw_version);
   262		switch (fw_ver) {
   263		case CW2215_ID:
   264		case CW2217_ID:
   265			cw_current = (cw_current * 1600) / (cw_bat->user_rsense / 1000);
   266			cw_bat->cw_current = cw_current * 1000;
   267			break;
   268		case CW2218_ID:
   269			cw_current = (cw_current * 3815) / (cw_bat->user_rsense / 1000);
   270			cw_bat->cw_current = cw_current * 1000;
   271			break;
   272		default:
   273			cw_bat->cw_current = 0;
   274			dev_err(cw_bat->dev, "Error! CW2217 firmware read error!\n");
   275			return -EIO;
   276		}
   277	
   278		return 0;
   279	}
   280	

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
