Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AB8DCD379F
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 17:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yiHS7plMTraCxsMBd5IcaQ30YxJfXDbT0Q78x5GRsOs=; b=sjjGp0piyWvb5x
	OkjMbqr+BAWsoaXQgY7f1WrxTOX7rxuIAYvVG+PmGBB4VSwZhZqTi73yy6TAAVEEhnpt53Bnuefo2
	IlINmQASmM8UqAYdhrXNZHkxYU2o1+77jNDDFKbd60upBOJcRta7VhhwOOp/f5rBpnoFM/qCGJgAq
	GghhgBz6WQ9YZkWyjYiyKHwEoetWQhaH1XLVSNRiF0pvA/vcobwNLflB+13Frse+Mjrr1LmZW35Ew
	JCQcXZ7Lt6X9SpTaPa9vcVUG6hap6vl1Myvcf4iipRGwiBAK5oWBCRkSmHxErnQOkc+vUBvVgmLSc
	frvz6AQf30AaQDRxWa1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slX3x-00000001FRq-2JWU;
	Tue, 03 Sep 2024 17:11:29 +0000
Received: from mgamail.intel.com ([192.198.163.9])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slX31-00000001FKS-1QE2;
	Tue, 03 Sep 2024 17:10:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725383431; x=1756919431;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=0l4evwdyan87dgGb7txNM2qR7iGQ5qw8nvVrzVmrYsk=;
  b=DT2J423K8lDTS4hkJRYxa09CcCJKGLOmUlxXNbdKoCgA9LklArn5ubzP
   9pt9MWkJrzhJyKaOfc5dRvoesZ0VWNIhdKceH5kHtTm3YeRPHB29bCv38
   U3PC8r9a46DgExg/kRWQd9a702FkakGmPeousCtHY/rfuaAK8olkM5FyL
   xaG92HPvy5oJL7pzvsToVlRSAjBiEgjwogBweZ113VstBiSKj0M/trB+8
   M+YZV9XrkMwG+CEfhUZO4IZVU1jZPEAO8YOBHRchLXZItum9aGbw+EgH0
   tPqigMPrhWHt3uDWX/8P/1srWllL3CkD/q8gsTD8EmJ2kcPppfmDvENYC
   g==;
X-CSE-ConnectionGUID: BEicTCVDTSmdWSpr/b3ATQ==
X-CSE-MsgGUID: dUjorV1HSm6+nDp2son5JQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="34662241"
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; 
   d="scan'208";a="34662241"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2024 10:10:26 -0700
X-CSE-ConnectionGUID: 8wDNQEu0Qga0yw2/nvqSwg==
X-CSE-MsgGUID: s/qtCeb5QmWdBmBdcM73FQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; 
   d="scan'208";a="95713609"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
  by orviesa002.jf.intel.com with ESMTP; 03 Sep 2024 10:10:21 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1slX2p-0006wY-04;
	Tue, 03 Sep 2024 17:10:19 +0000
Date: Wed, 4 Sep 2024 01:09:26 +0800
From: kernel test robot <lkp@intel.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, kernel@pengutronix.de,
	Alibek Omarov <a1ba.omarov@gmail.com>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	David Jander <david.jander@protonic.nl>
Cc: oe-kbuild-all@lists.linux.dev, netdev@vger.kernel.org,
	Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Marc Kleine-Budde <mkl@pengutronix.de>
Subject: Re: [PATCH can-next v4 01/20] dt-bindings: can: rockchip_canfd: add
 rockchip CAN-FD controller
Message-ID: <202409040039.TNDhtsSe-lkp@intel.com>
References: <20240903-rockchip-canfd-v4-1-1dc3f3f32856@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903-rockchip-canfd-v4-1-1dc3f3f32856@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_101031_413129_F75C4C7E 
X-CRM114-Status: GOOD (  11.12  )
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

Hi Marc,

kernel test robot noticed the following build warnings:

[auto build test WARNING on da4f3b72c8831975a06eca7e1c27392726f54d20]

url:    https://github.com/intel-lab-lkp/linux/commits/Marc-Kleine-Budde/dt-bindings-can-rockchip_canfd-add-rockchip-CAN-FD-controller/20240903-173243
base:   da4f3b72c8831975a06eca7e1c27392726f54d20
patch link:    https://lore.kernel.org/r/20240903-rockchip-canfd-v4-1-1dc3f3f32856%40pengutronix.de
patch subject: [PATCH can-next v4 01/20] dt-bindings: can: rockchip_canfd: add rockchip CAN-FD controller
reproduce: (https://download.01.org/0day-ci/archive/20240904/202409040039.TNDhtsSe-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409040039.TNDhtsSe-lkp@intel.com/

All warnings (new ones prefixed by >>):

   Warning: Documentation/devicetree/bindings/regulator/siliconmitus,sm5703-regulator.yaml references a file that doesn't exist: Documentation/devicetree/bindings/mfd/siliconmitus,sm5703.yaml
   Warning: Documentation/hwmon/g762.rst references a file that doesn't exist: Documentation/devicetree/bindings/hwmon/g762.txt
   Warning: MAINTAINERS references a file that doesn't exist: Documentation/devicetree/bindings/reserved-memory/qcom
   Warning: MAINTAINERS references a file that doesn't exist: Documentation/devicetree/bindings/display/exynos/
   Warning: MAINTAINERS references a file that doesn't exist: Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
>> Warning: MAINTAINERS references a file that doesn't exist: Documentation/devicetree/bindings/net/can/rockchip,rk3568-canfd.yaml
   Using alabaster theme

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
