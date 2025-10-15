Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1E2ECCD193
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Oct 2025 11:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NuNiX+r2igCcvglVAXY7x3EnKdDRngUQz+7BLcmI6LI=; b=SGLEILCHLUkOAa
	nwVkH5HNgrb2Q++DYX3Lc9VwbX9OpDCNsisfQ661Vs6SOGTSx7yfRpR7XvUWOVahzs2KxQI0bnzES
	2AecceeXVZ8fhKyU/IArQCrr+NLotX/qFgtHwANIiGkzCGtgDI5yfJa5cJHBD0V1IXcF12mihkYrP
	t/RJHlkNzAXOOZKa5EpY6DX4C4Chy2+jK04aFFjW3Aj61qhX2uilDbqdll4fBzYTXOexdGuxUHvor
	y+xKM1tsm1fSAgeYbjoa56E+57efUuKyy/lqOHg/620V+eJakcXNpBxKv3ytGl94yBL/lFtlCOFA8
	Kv7/RachWM3WjYtvE8Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8zvF-00000001Sjl-3zvM;
	Wed, 15 Oct 2025 11:44:01 +0000
Received: from mgamail.intel.com ([198.175.65.17])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8zvC-00000001Sj2-3rpk;
	Wed, 15 Oct 2025 11:44:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1760528639; x=1792064639;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=miYSu1LPLdNXLFjYZeB5thUSy7spz6vtTLvEDGYlY9s=;
  b=VbeP8iExf8HXJgLSMR+GZJGxzy8MEb1LOYm+c7lrDxRKKC7yoDuMnAx5
   LBDXqXk1UpX7pkOyG4TzC20Zg+L08lZX1l1/RlWfxehX4+Jbqf+pBrgSs
   lUgU+/aeAxyQS3xxXkM5jwutTQd/l+VK3TG8kWM2OyKIHam8Kij4Xs+K6
   v9xTisvURIoOP4RhFutf9IoxEaoZzVb75M6QVmkihD4saVbJGedZRBmzh
   f/Xe3p1cnRva5CrHl1GC1DnBs2XvB7XaZfBmppCQmumq8KbjhCOwD+iz/
   Sq66Ske1yr1BfVA2mUmmTSHFfdebA/zdiJtlTZhqIKM+UhO4hboH5E9fy
   Q==;
X-CSE-ConnectionGUID: 1c7dM+eTTrO9w+8L8BcLMg==
X-CSE-MsgGUID: FUG4+5mLQ6ap6/SaYsC85g==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62629917"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; 
   d="scan'208";a="62629917"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Oct 2025 04:43:58 -0700
X-CSE-ConnectionGUID: mQKUYlw3S8iaBcplvqNx3Q==
X-CSE-MsgGUID: INuGmheQT9i7r/qyZGBLJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; 
   d="scan'208";a="182937528"
Received: from rvuia-mobl.ger.corp.intel.com (HELO mdjait-mobl) ([10.245.245.114])
  by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Oct 2025 04:43:52 -0700
Date: Wed, 15 Oct 2025 13:43:45 +0200
From: Mehdi Djait <mehdi.djait@linux.intel.com>
To: michael.riesch@collabora.com
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	=?utf-8?B?VGjDqW8=?= Lebrun <theo.lebrun@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Gerald Loacker <gerald.loacker@wolfvision.net>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	Markus Elfring <Markus.Elfring@web.de>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Collabora Kernel Team <kernel@collabora.com>, Paul Kocialkowski <paulk@sys-base.io>, 
	Alexander Shiyan <eagle.alexander923@gmail.com>, Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v12 13/18] arm64: defconfig: enable rockchip camera
 interface and mipi csi-2 receiver
Message-ID: <cli7lpea53u3vp2jyeq2ysitv5mrspeq63im667hy5ijsxrpgs@2qdcrgsltcjd>
References: <20240220-rk3568-vicap-v12-0-c6dbece6bb98@collabora.com>
 <20240220-rk3568-vicap-v12-13-c6dbece6bb98@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240220-rk3568-vicap-v12-13-c6dbece6bb98@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_044359_005576_554CEAAF 
X-CRM114-Status: UNSURE (   9.90  )
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

Hi Michael,

Thank you for the patches!

On Tue, Oct 14, 2025 at 03:01:59PM +0200, Michael Riesch via B4 Relay wrote:
> From: Michael Riesch <michael.riesch@collabora.com>
> 
> The Rockchip Camera Interface (CIF) and the Rockchip MIPI CSI-2 Receiver
> are featured in many Rockchip SoCs in different variations.
> Enable the drivers for them in the default configuration.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>

Reviewed-by: Mehdi Djait <mehdi.djait@linux.intel.com>

--
Kind Regards
Mehdi Djait

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
