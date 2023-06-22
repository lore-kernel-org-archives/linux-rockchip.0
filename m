Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A77C0EB64DA
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jun 2023 23:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TaSXfLV0MyuCYhUezxLyV/hgIMaMOYBSvDSuFXHfPks=; b=hMje1SMzOimX19
	CUFIvhc/QgrUjQQozYvTYpJDvFBDQYoD9lfWjDdcnDxZrGTz/CLJLAof7OJh7JuYAuLjnOMi7VQET
	9nGtuxTqScH/hA1du9UBvW7nfVl+xyVX45va+LfbJ19vTcD8+uSR0WwRGhvFB1ba9gFjKKDgbAPRK
	tuf8aEskCTrlKjyBLZ88JepfPkaP7nT/MI9q6OXw4XegkgDqG/EKAeUYxY0TdoeQa4fwpEv1u1JHF
	9KFVcFGpftoxvGd3C9kGWJT+kBi6xsnKRGGXGIXJW8mbQhHijpUakkh0TrJCk9Z8EdzF8PCIZkpEx
	wvTsMMpwhI/zeRFa2CNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCTU7-0021WK-0H;
	Thu, 22 Jun 2023 23:13:03 +0000
Received: from mga17.intel.com ([192.55.52.151])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCTU3-0021Uq-2P;
	Thu, 22 Jun 2023 23:13:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1687475579; x=1719011579;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=YF+i4k+p20bNeWeCgKkHDXbLmP2kzXmF7Q2NTsnY5cs=;
  b=KqOQ+SgEkShL8MpEeCTGqmmj/8fuBoPjhhtt10sU01xZdsHSAd6/4ZPb
   h5umbBaVBOkF5tmVKu9yQo6C9nTzwaU0uZ/vCp9SysHUh5kkXMObjEfoq
   v7BTYl+Bub8IRtqjcSrzVvgUbSebEKaT1kKM0QEuN4xAglf6q8ItsWbTM
   GYPAA0rg/Bp6jea9/3TkUVzysb3RsDOpCucElVYESwaFbergpRhpymyLB
   D/dhAge9RvtaLtRRPuz/vX6v7Pe308uyCpvQCMAlavLZiHKvbVUgpJN5B
   RTq7kY7U/TsAJpiBkS/bczwDuS6tRBHmS+47o42jx5SKukwu0Q3U6VMqK
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="340976511"
X-IronPort-AV: E=Sophos;i="6.01,150,1684825200"; 
   d="scan'208";a="340976511"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jun 2023 16:12:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="889261769"
X-IronPort-AV: E=Sophos;i="6.01,150,1684825200"; 
   d="scan'208";a="889261769"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 22 Jun 2023 16:12:48 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qCTTr-0007o7-21;
	Thu, 22 Jun 2023 23:12:47 +0000
Date: Fri, 23 Jun 2023 07:12:35 +0800
From: kernel test robot <lkp@intel.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
	tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v3 10/11] media: v4l2: Add DELETE_BUF ioctl
Message-ID: <202306230742.KaUokotT-lkp@intel.com>
References: <20230622131349.144160-11-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230622131349.144160-11-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_161259_794609_40677151 
X-CRM114-Status: UNSURE (   9.37  )
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

Hi Benjamin,

kernel test robot noticed the following build errors:

[auto build test ERROR on media-tree/master]
[also build test ERROR on linus/master v6.4-rc7]
[cannot apply to next-20230622]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Benjamin-Gaignard/media-videobuf2-Access-vb2_queue-bufs-array-through-helper-functions/20230622-214122
base:   git://linuxtv.org/media_tree.git master
patch link:    https://lore.kernel.org/r/20230622131349.144160-11-benjamin.gaignard%40collabora.com
patch subject: [PATCH v3 10/11] media: v4l2: Add DELETE_BUF ioctl
config: i386-buildonly-randconfig-r004-20230622 (https://download.01.org/0day-ci/archive/20230623/202306230742.KaUokotT-lkp@intel.com/config)
compiler: clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)
reproduce: (https://download.01.org/0day-ci/archive/20230623/202306230742.KaUokotT-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306230742.KaUokotT-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: "vb2_core_delete_buf" [drivers/media/common/videobuf2/videobuf2-v4l2.ko] undefined!

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
