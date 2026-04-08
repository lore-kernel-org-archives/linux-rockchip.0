Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 915A7FD5F87
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Apr 2026 08:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FctAQlxX2/jFcVYdt4YPCysAoRy2UKJQnZ+bH+/mEEQ=; b=t0mdsupWNHCj8V
	bNHV8I0IFfguqJ/MRdD1u7t9wdOZQ6YIYseQCO0hwoSjNYXEpLz74fCOZzbdxHoykzA8SpQweW/N+
	cpZtm8iya/AEMmoTu0qUwksqAzgyhttam4HbR0IkCVDRBf3rLFyV5zzvhvc9fvQ3QKzuhSIpM4Ej5
	HEqsABL1C3XeqAXsSKnLmZE2EqVr4epVLAblY4A5QB1h22SEgnyZK4aeUffxtmdZBitc3V3L/NaRo
	YiKmvYDOTw8N+l9Mrt2s6QGqGwZSWhAQxoocQE9tAaJu7d9iGjtETHJAsgk1hMgIstQz2Vxr/QtMu
	7puMaoz/3KgndgfB2cfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wANuW-00000008UbI-2dRB;
	Wed, 08 Apr 2026 08:05:17 +0000
Received: from mgamail.intel.com ([192.198.163.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wANuS-00000008Ua8-1LTz;
	Wed, 08 Apr 2026 08:05:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1775635512; x=1807171512;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=LsoItqOaE3hAy7uN2dHO7bdB6DnI0M10PxH+jAAFVN8=;
  b=Z2110AsJ14G98ZFurUeKE0nJEuJcNiK2iywiFjOaH3ftvslUakkhOKD/
   lLo97GbCWS2e2xwJp6UmzbdLQ7QzaSFhJYsUpdz3ughc06VJ9guWDrsCr
   NNrjDf1qkSVaHRMh/p5Q3QKDLxbO5E7VgvYaROzYoRIcyKTM/zb2PXHlr
   RhSPPFZBnH5qsL42zjx5Newy8PvHMOO16DEAbuaZgBudHeZzR2ZUMFCER
   rgjqat4quZfUo+lMdGQ31xwn6U5+YEWo48WbFmZL39cGnpWyFxuz5s3iA
   R27Xpm8xFRYecwfR/mnhqcD819jXnsyI/YhaYI/w2uI+GfGLiOSF3T46G
   w==;
X-CSE-ConnectionGUID: qTM1QousQN2wXVUdJNakJQ==
X-CSE-MsgGUID: 1qMmLvqOSxapWG1OPXIraA==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="79203530"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; 
   d="scan'208";a="79203530"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Apr 2026 01:05:11 -0700
X-CSE-ConnectionGUID: cQSqKE2ERT6zeih3/eSOPw==
X-CSE-MsgGUID: dFTYpTEWSDeViP1x0oSaHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; 
   d="scan'208";a="228657545"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO kekkonen.fi.intel.com) ([10.245.245.17])
  by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Apr 2026 01:05:08 -0700
Received: from kekkonen.localdomain (localhost [IPv6:::1])
	by kekkonen.fi.intel.com (Postfix) with SMTP id 058A911F8BF;
	Wed, 08 Apr 2026 11:05:22 +0300 (EEST)
Date: Wed, 8 Apr 2026 11:05:22 +0300
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6 krs, Bertel Jungin Aukio 5, 02600 Espoo
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: michael.riesch@collabora.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Frank Li <Frank.li@nxp.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kever Yang <kever.yang@rock-chips.com>,
	Collabora Kernel Team <kernel@collabora.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/2] media: dt-bindings: rockchip,rk3568-mipi-csi2:
 add rk3588 compatible
Message-ID: <adYMQlNtInGYu7Ka@kekkonen.localdomain>
References: <20260305-rk3588-csi2rx-v4-0-81c6bcfefa63@collabora.com>
 <20260305-rk3588-csi2rx-v4-1-81c6bcfefa63@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260305-rk3588-csi2rx-v4-1-81c6bcfefa63@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260408_010512_397446_9F7684AE 
X-CRM114-Status: GOOD (  12.26  )
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

Hi Michael,

On Fri, Mar 27, 2026 at 12:10:00AM +0100, Michael Riesch via B4 Relay wrote:
> From: Michael Riesch <michael.riesch@collabora.com>
> 
> The RK3588 MIPI CSI-2 receivers are compatible to the ones found in
> the RK3568.
> Introduce a list of compatible variants and add the RK3588 variant to
> it.

Please use your editor to wrap the commit messages in the future as needed.
It became:

The RK3588 MIPI CSI-2 receivers are compatible to the ones found in the
RK3568. Introduce a list of compatible variants and add the RK3588 variant
to it.

-- 
Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
