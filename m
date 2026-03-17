Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7701CFD8769
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Mar 2026 13:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFjueuRciAmTx78ezEUHrvxgELuNrgeWPp27TU8NkNY=; b=1oOq9xlnOo2qbv
	EJPsyouhhx5xU0NuTgBjdI2eHnm1yDYmopzmueyWB3K8b2SAChaxiDMY71kKOV6Vp4RT57uUJd9T9
	3mtscIo7QfmG01GdhVqIQkBD9Q71TOiE5X+KiSqrWltYC/4O9WSBXx5XpItTIFss05r63zMDqvQnr
	kqmpDCfMoR3kBaVFdfEgZlyBncgKaVfdCxt/EhT1E5uUcNFQjk46zJn5jaichP1fk2Wg7riqJMFM7
	nhx/3h6uloAvSOWyMUBzwxK9k5r6ea0yZFFjpaw5LbEu/LK04x2c+QNLQYs9Bj7lNs1SnLq71amVu
	cDUuBLGLkbOWGCXAro4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2UQ8-00000006QKo-1FRf;
	Tue, 17 Mar 2026 13:25:16 +0000
Received: from mgamail.intel.com ([192.198.163.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2UQ4-00000006QJf-2wyz;
	Tue, 17 Mar 2026 13:25:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773753913; x=1805289913;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=dBuwjzBB1D62lvk1sNa+xg+p0CTXR/Rqr/9U+GnpvYI=;
  b=Q+1HvZoWghVhjCawDoxmw8wxfqvh0qauVRGeUqN45v5XdbpLDW47dkd4
   J0glU0ws+sZilk0GEKVwgZAPf2g6r+STGyl7O7389m73KCpEszVY9plhJ
   +TTgZatqfpm9cjv+0DpafxfMpfeU1KiQ2uqnoPil9WVj4uJM/IG+9oDed
   B5Q+2iqtyDQuTrlczqrZHJHXe+Zy+JxiUFAZu6A9LJnQIQ8HJNjZmtsTj
   cWvLlEdjB/u/AP4J8BHLotwox6zsRS9F1GgyIbBlbnWy9EhJCRj1J3E5t
   943coWaBqFelSJVG5pBsGryxEp8c1EFod6RU9QpDmplcibPbaKaqxzjAj
   Q==;
X-CSE-ConnectionGUID: CtrieJQnRkWhl5HBJk55jQ==
X-CSE-MsgGUID: ohuNnY5IQ92uaTy8dyRVjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="77396021"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; 
   d="scan'208";a="77396021"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2026 06:25:12 -0700
X-CSE-ConnectionGUID: ezJlcV8uR1aquGhY3Y7RQQ==
X-CSE-MsgGUID: dbuiYPI0Shm6Fo2aVj+CLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; 
   d="scan'208";a="218410447"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO mdjait-mobl) ([10.245.245.171])
  by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2026 06:25:07 -0700
Date: Tue, 17 Mar 2026 14:25:00 +0100
From: Mehdi Djait <mehdi.djait@linux.intel.com>
To: michael.riesch@collabora.com
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>, 
	Jagan Teki <jagan@amarulasolutions.com>, 
	=?utf-8?B?0JrRg9C30L3QtdGG0L7QsiDQnNC40YXQsNC40Ls=?= <mai.kuznetsov.misha@gmail.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>, Collabora Kernel Team <kernel@collabora.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/9] Documentation: admin-guide: media: add rk3588
 vicap
Message-ID: <ablV_XW5c7k2_vAX@mdjait-mobl>
References: <20250430-rk3588-vicap-v2-0-77de5ee9048e@collabora.com>
 <20250430-rk3588-vicap-v2-1-77de5ee9048e@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250430-rk3588-vicap-v2-1-77de5ee9048e@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_062512_758855_706DB6E7 
X-CRM114-Status: UNSURE (   8.09  )
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

Hello Michael,

Thank you for the patch!

On Tue, Mar 17, 2026 at 10:32:19AM +0100, Michael Riesch via B4 Relay wrote:
> From: Michael Riesch <michael.riesch@collabora.com>
> 
> Add a section that describes the Rockchip RK3588 VICAP.
> 

Reviewed-by: Mehdi Djait <mehdi.djait@linux.intel.com>

> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>

--
Kind Regards
Mehdi Djait

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
