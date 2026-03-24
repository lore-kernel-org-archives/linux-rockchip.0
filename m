Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8E88F532EC
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 08:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DLLX9/ksybJX/55A+ASCfLq3pNrCKToW3JGZvWkXY1M=; b=fUbZN1IE0/zmZZ
	8lqjJu5S8Bb1H4naN38JCaQ+jpLOXk0eONBH/dqhzu5HU07JhdCfmmMTyCA3Gfz68dlULk4roRdH5
	CfqHVHaU7K2RoLG9gwSd8v9mG/u65BUaEz8t7vGqkgj/Ur1IckajOoiLe2p2j7rSs9h4W1uba3BYB
	Ta/5x0sAvDXsLm08OBDQFcPX/QvA+k2M+QP2jrn7kXUEbe34Bu4hTj/XMd06BkhmmliML0cpObG9K
	+N7UU8fPAP+LyNa4SLo4uctV9ttho3uiOt+GrbsjEcv+0je/5oQpsk82FWZoai9doXyjYJrIAdxO/
	fpntdqiz5JuLiUfkaGmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4whs-00000000wcr-1a3F;
	Tue, 24 Mar 2026 08:01:44 +0000
Received: from mgamail.intel.com ([192.198.163.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4whp-00000000wbj-39LU;
	Tue, 24 Mar 2026 08:01:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1774339301; x=1805875301;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=zrmpDTQR2dcwegoCA09wNc70NnhwuP4l44nvaPXk+bM=;
  b=Zk+8MxFKpXksjpdqXyJbvv7pQrmcGLDAtqqiuiqpMxAqGdcrPKxVJgAA
   4sCOHhSm/eU9puNGXOBB4BDHbpnTnlzIu1OhNYtdgaWp4aZNHbgOXftLl
   v2H1S0yfw/yv2r/qILXoxlEHuxE+KMIs/jarGJEg2H6Pq8DsI71n9LcIR
   xJXIDcoK46WYlHvqOmbv255AjfnTx4XCwS3G4TyNBj0QFUucRLBINOnBV
   oadYaRfFFCmj0jf30onUiXGvMYs6L7cXdg3Cu2pbeeP4SG+RpLSolmXPC
   0CXM2+q23wP1z6Nrw7VY07DozJmvrK7Jqb02cR4/ot+beVLjwaW9yBoeY
   g==;
X-CSE-ConnectionGUID: 40rVRQ0USdGrPwuqTxSoGg==
X-CSE-MsgGUID: Q2E2OYLtQtCzkxtbQzjVfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="77954386"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; 
   d="scan'208";a="77954386"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2026 01:01:40 -0700
X-CSE-ConnectionGUID: wmuqJsnJRY2ZLNSQR4SiyQ==
X-CSE-MsgGUID: v9d5ioxDTnai6O7Y2ycJMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; 
   d="scan'208";a="219850502"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO kekkonen.fi.intel.com) ([10.245.244.180])
  by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2026 01:01:37 -0700
Received: from kekkonen.localdomain (localhost [IPv6:::1])
	by kekkonen.fi.intel.com (Postfix) with SMTP id A50EE121CFF;
	Tue, 24 Mar 2026 10:01:39 +0200 (EET)
Date: Tue, 24 Mar 2026 10:01:39 +0200
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6 krs, Bertel Jungin Aukio 5, 02600 Espoo
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Frank Li <Frank.li@nxp.com>
Cc: Michael Riesch <michael.riesch@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Guoniu Zhou <guoniu.zhou@oss.nxp.com>, imx@lists.linux.dev
Subject: Re: [PATCH 0/6] media: synopsys: Add imx93 support
Message-ID: <acJE43J9to2bP3lv@kekkonen.localdomain>
References: <20260210-imx93-dw-csi2-v1-0-69667bb86bfa@nxp.com>
 <acGQNIUKqfh8eWNB@lizhi-Precision-Tower-5810>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <acGQNIUKqfh8eWNB@lizhi-Precision-Tower-5810>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_010141_835643_C60541C1 
X-CRM114-Status: GOOD (  10.75  )
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

Hi Frank,

On Mon, Mar 23, 2026 at 03:10:44PM -0400, Frank Li wrote:
> On Tue, Feb 10, 2026 at 12:11:07PM -0500, Frank Li wrote:
> > This 3rd time try to support DW CSI2RX support for imx93.
> >
> 
> Laurent Pinchart and Sakari Ailus:
> 
> 	I am not who will take care this patch?
> 	original drivers/media/platform/synopsys/dw-mipi-csi2rx.c picked
> by Sakari Ailus

I'll review them soonish; please cc me in the future.

Thanks.

-- 
Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
