Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8537606A333
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 09:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=d9tBJuYo;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=iBI+fODT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=AmRzVnRweAt43xjum8GqbS81rKGzvdp2FLZjr3tOpEo=; b=d9tBJuYox2FPd7IKJwwktucbJW
	1YCIUIvjLG5zDr5wi9PrBEEAqAO4JmW9t9a1yiER322kZ6kjpRyelm6xGYBL12GGCZOyEBS19gmSs
	J3r1DuBvZ/xLe/Ieqi7BLgzAlJOxGFUWkJhhqOaNdPkNNpiwHclDKd5LYbWh2XYWwteOcwQtloO95
	8tI9GQFRHIdpzaRi7vlBZdW/a0icSHV14WlDEDuDOKuoQab6HeQYz2NNxAL6twic6yxIwZB1qdn+q
	ZrEJYZM9HQnrrERWEZ+UiUbDdFZFPazvr6FlhYc8MvMyunMTkzXapiTb2z1CN5NUnwddUPgpGwCU5
	qgvSzGKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTFCI-000000051hU-0jF2;
	Tue, 17 Nov 2026 09:09:50 +0000
Received: from mgamail.intel.com ([198.175.65.17])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTFCG-000000051h2-0691
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Nov 2026 09:09:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1794906588; x=1826442588;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=PPKhAbu/xd5BU4QocBM56BpTBxKFlcrRJZeYTqJNWMI=;
  b=iBI+fODTLSLfpfTX9KzskzY4b/o1FP5jE0LF14rwFLh+ZbEpGdXlGiYd
   Nf1c/vwN4OoeXZ72uUi+YxndD7uaJcu/rqbB0Z5PeHcBNnvKU+tRemjyv
   cQR8/0p9E7oCQo9s5fLl6oJrnO9xPJj79y0v8T+/5x5aBVj6sM3eSF7YF
   pWEPBZHsRZvDtNvEvse3/urK9GHmVaelFYUnr57Ieo0o0I6pXP0k6/25M
   CumprIPNk0LW2chxIpibrjal11dn60ymSR4toKm1Wl0l1pfJ+HghbOXBb
   y7HDJawuCnfxYoKxOfQXkbXSyakG8FvBxyduxgs6tzl3bFkaBmBEeeAOV
   w==;
X-CSE-ConnectionGUID: JkN65w9CRYCSkbQleKu5xQ==
X-CSE-MsgGUID: zPhf6VY+Ts+OSXmWepIEWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11968"; a="3685818"
X-IronPort-AV: E=Sophos;i="6.27,218,1787036400"; 
   d="scan'208";a="3685818"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Nov 2026 01:09:47 -0800
X-CSE-ConnectionGUID: kNqUTxWMTuy7VFcZ4JmM/w==
X-CSE-MsgGUID: yJ7sZknoTJyvRC7xH0tvOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,218,1787036400"; 
   d="scan'208";a="10191074"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO mdjait-mobl) ([10.245.244.52])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Nov 2026 01:09:45 -0800
Date: Tue, 17 Nov 2026 10:09:38 +0100
From: Mehdi Djait <mehdi.djait@linux.intel.com>
To: Michael Riesch <michael.riesch@collabora.com>
Cc: linux-media@vger.kernel.org, paul.elder@ideasonboard.com, 
	daniel@makrotopia.org, linux-rockchip@lists.infradead.org, stable@vger.kernel.org
Subject: Re: [PATCH v1 1/2] media: rockchip: rkcif: Don't reset the hardware
 in runtime suspend
Message-ID: <avwZpcF8fti2vVI9@mdjait-mobl>
References: <20261112183208.2688580-1-mehdi.djait@linux.intel.com>
 <20261112183208.2688580-2-mehdi.djait@linux.intel.com>
 <df61d7d2-7ad8-4b68-b3a0-7a03513ab5b7@collabora.com>
 <avsBed-E2RPJnZ6k@mdjait-mobl>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <avsBed-E2RPJnZ6k@mdjait-mobl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_010948_242979_23CD46EA 
X-CRM114-Status: GOOD (  22.28  )
X-Spam-Score: -4.2 (----)
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

On Mon, Nov 16, 2026 at 03:30:33PM +0100, Mehdi Djait wrote:
> Hi Michael,
> 
> On Mon, Nov 16, 2026 at 11:58:35AM +0100, Michael Riesch wrote:
> > Hi Mehdi,
> > 
> > On 11/12/26 19:32, Mehdi Djait wrote:
> > > The reset in the runtime suspend also resets the VICAP IOMMU.
> > > 
> > > When the IOMMU driver accesses the IOMMU registers inside the delay window
> > > between the assert and deassert, e.g. in rk_iommu_zap_lines() to shootdown
> > > IOTLB entries, the system hangs.
> > > 
> > > Drop the reset and the now unused reset control.
> > 
> > I agree that the current situation is nothing more than a crude hack
> > that happened to work in most cases. But I doubt simply removing the
> > reset is the correct solution. Recently, I saw some downstream patch
> > that makes the reset a shared one, which seems like the right thing to
> > do here. What would you think about that?
> 
> Do you have a link for these patches ?
> 
> I also agree that this patch will not be the solution that will go in
> but the situation needs to change.
> 
> The VICAP_GLB_CTRL register does expose this:
> reset the VICAP(except MMU/AXI MASTER/REG FILE)
> 
> The Rockchip-bsp kernel exports the disable and enable functions of the
> iommu driver and calls them in the rkcif driver, see:
> https://github.com/rockchip-linux/kernel/blob/develop-6.1/drivers/media/platform/rockchip/cif/capture.c#L7269
> 

I mean, I of course don't think this is a solution to be considered, but
this is what I found for now..

--
Kind regards
Mehdi Djait

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
