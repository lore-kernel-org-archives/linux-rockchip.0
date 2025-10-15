Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06036CCD18E
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Oct 2025 11:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aF0yR2PCAGTS6olxUQb6+UEGd76htfhMYo/7YvDhObQ=; b=SWs7g4UPKdYZoy
	ZchldikRJSpk6G/NwqOp2oGgQ4RMrH4FWGOvSpcLQqPNL+8gYfe6vYlau5gW5yn8KBcrzNpoqxC6+
	MfVRC047L+eE+3PDlthj3F/mc2U5gyPdFesY+cFIykwn/HC0opKBP+NxJEF8JJEkM/jHrqCQezqMJ
	3v6AW6J8AakNW0T+cUWBWwa2wmQNwpO8SqBzetZYyDw8nA+ck4O/cL+YuEIYEHeIutkj1HZUdWJ+L
	PMU1EAfxQjSi26iCih1wzXolLJ5xOxRVDHe3Ah1MBwd6L5Eji7J4Fh/KuRrmbdOjuEKmbHtwXv+X7
	CWJBMrWq7vryMQijfmvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8zt1-00000001S9J-1ksB;
	Wed, 15 Oct 2025 11:41:43 +0000
Received: from mgamail.intel.com ([192.198.163.11])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8zsx-00000001S6r-3Tuz;
	Wed, 15 Oct 2025 11:41:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1760528500; x=1792064500;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Nr/HSx476NwD9xvr2iYYf3ng+JKmsaSImgAkyFBJ7rQ=;
  b=i0jMDy6ign/fd1QvDityWuPfwJuldQF6hl8net+kEekVPD7X9hGXKhwP
   AKZIFc/tKlx3JGvSxF75DVUw+uCqgv5sbSHwrSBZ4Flp3dIy55kh2WUcv
   2cfqr1iuOYoMxZqZjYtiJCmUdNUnwPFU8qEJTXP7RN6b3gdz7Q7VudxXu
   XNcgyGgKW7n1/1fKB3XDNZqodcRDxbpJTXE9Kxv8ZhZeQ5b6PCLoFgXrE
   dJLtkS3DlvS4SgvN/1YchXoGuO3cePeZNWyxC1JZpqB4URtknsY2g6PSS
   jssIKoW8Kk6IWRXGVD6kSBw1JQuu4OLmTGs2LUefTBJMzdJWRrbiA0+Pe
   w==;
X-CSE-ConnectionGUID: sGUj+JGrQz+p6lfq73jRxQ==
X-CSE-MsgGUID: lTmB2nwYTeG38/tzlxDWjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="73302562"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; 
   d="scan'208";a="73302562"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Oct 2025 04:41:39 -0700
X-CSE-ConnectionGUID: 8ej06mtrRtq9JiZ0qDkxWg==
X-CSE-MsgGUID: UrstU36BR0auAEcQNKL3JQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; 
   d="scan'208";a="181831045"
Received: from rvuia-mobl.ger.corp.intel.com (HELO mdjait-mobl) ([10.245.245.114])
  by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Oct 2025 04:41:33 -0700
Date: Wed, 15 Oct 2025 13:41:25 +0200
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
Subject: Re: [PATCH v12 08/18] media: rockchip: rkcif: add abstraction for
 interface and crop blocks
Message-ID: <ytwvzuk3wrxw5z5pbmmez2ewpkfwghaueoiovzgt6d3dumls4e@ebkdumjrsiby>
References: <20240220-rk3568-vicap-v12-0-c6dbece6bb98@collabora.com>
 <20240220-rk3568-vicap-v12-8-c6dbece6bb98@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240220-rk3568-vicap-v12-8-c6dbece6bb98@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_044139_891144_CA9C5B52 
X-CRM114-Status: GOOD (  12.65  )
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

On Tue, Oct 14, 2025 at 03:01:54PM +0200, Michael Riesch via B4 Relay wrote:
> From: Michael Riesch <michael.riesch@collabora.com>
> 
> Add an abstraction for the INTERFACE and CROP parts of the different
> Rockchip Camera Interface (CIF) variants. These parts are represented
> as V4L2 subdevice with one sink pad and one source pad. The sink pad
> is connected to a subdevice: either the subdevice provided by the
> driver of the companion chip connected to the DVP, or the subdevice
> provided by the MIPI CSI-2 receiver. The source pad is connected to
> V4l2 device(s) provided by one or many instance(s) of the DMA
> abstraction.
> 
> Tested-by: Gerald Loacker <gerald.loacker@wolfvision.net>
> Reviewed-by: Gerald Loacker <gerald.loacker@wolfvision.net>
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>

Reviewed-by: Mehdi Djait <mehdi.djait@linux.intel.com>

--
Kind Regards
Mehdi Djait
 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
