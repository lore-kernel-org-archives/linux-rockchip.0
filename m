Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABC39606A332
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 14:31:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Gr4PPywN;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=E33JlIVN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=R1wuYSx2hbgO+GxHzaSH5djwqDHGcwLFuqRwyzWlkx0=; b=Gr4PPywNtq+FKnnhKjMN4+M44C
	a4/kRGd6vpvGHB0UrNb5rZLR4qacxqyak+vRWt+iEkoDZ5ePhhKYPR5Cb/Pno7HFGIlTlD0ayhQy8
	L3t3z2wzHj9YyYbmYlrvQO/cjYV/0GUSwrTQayoPsE3ZMJG7E5c7Lpn2fHX6c1SBrumoFhFiGEUts
	GkVEw6j/1GQ5sbe5CuCtdZrvqsSipP1/a9xbyZHFWMiFI1U2Mb8T+k/TTS1tMC8Q5CdoMvD/o4t9H
	sjm4MJQ5gVyZkWtKfP6HpjvVsBf82yEaJxpa/5Sflh51YRvjsjWYPLce/LVIAl7j1bcGI8FOkbmUa
	SGWERekA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSxjz-00000002srU-0bag;
	Mon, 16 Nov 2026 14:31:27 +0000
Received: from mgamail.intel.com ([192.198.163.17])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSxjr-00000002sq5-0126
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Nov 2026 14:31:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1794839479; x=1826375479;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=RluHToA0n2Uv7zh1LziASXx+m8ZDEfvA6K1KXGytIBg=;
  b=E33JlIVNMADpwn3y6d/bK0M5fle4RMsDmh4sM3tKx1u9vrXQwvEaP3Ov
   oAFQGTQlYVrxkQS/2ZLt7DGfnHe5Cu2cniowsagAScbADz4AxjFr/3gT+
   c2Y3ZDNt2hOKn1VqzpJX2wmwvTok+dd5b3DiuEOZ/KTlqilahxkCDLgrX
   3CZt/skPHZYr6ygbBXLi/jkS27YJkDyrpEEJv5W0Lyr+gADq7Zpw+1rPg
   PaTztswhqKLqn1eDQMsoFBeahe57N137hEXFuAlmjL/tf/u2R1lHtS0ag
   zOevtkLqRfo8CB+TZojBXscMArae3EXlCeQBthYoIiAg1EmJsANFzbvl4
   w==;
X-CSE-ConnectionGUID: OzjmpqXKT0uuAr1hYYXBGA==
X-CSE-MsgGUID: RJ5WLDpKT9OftrheAjQmEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11968"; a="3567374"
X-IronPort-AV: E=Sophos;i="6.27,216,1787036400"; 
   d="scan'208";a="3567374"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Nov 2026 06:30:29 -0800
X-CSE-ConnectionGUID: 4QPSCljFSiuoYlVqF3lnTg==
X-CSE-MsgGUID: 2EA/vbiESXyLWrSqaU8bJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,216,1787036400"; 
   d="scan'208";a="9725435"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO mdjait-mobl) ([10.245.245.190])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Nov 2026 06:30:27 -0800
Date: Mon, 16 Nov 2026 15:30:19 +0100
From: Mehdi Djait <mehdi.djait@linux.intel.com>
To: Michael Riesch <michael.riesch@collabora.com>
Cc: linux-media@vger.kernel.org, paul.elder@ideasonboard.com, 
	daniel@makrotopia.org, linux-rockchip@lists.infradead.org, stable@vger.kernel.org
Subject: Re: [PATCH v1 1/2] media: rockchip: rkcif: Don't reset the hardware
 in runtime suspend
Message-ID: <avsBed-E2RPJnZ6k@mdjait-mobl>
References: <20261112183208.2688580-1-mehdi.djait@linux.intel.com>
 <20261112183208.2688580-2-mehdi.djait@linux.intel.com>
 <df61d7d2-7ad8-4b68-b3a0-7a03513ab5b7@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <df61d7d2-7ad8-4b68-b3a0-7a03513ab5b7@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_063119_589216_EDB50A34 
X-CRM114-Status: GOOD (  15.98  )
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

Hi Michael,

On Mon, Nov 16, 2026 at 11:58:35AM +0100, Michael Riesch wrote:
> Hi Mehdi,
> 
> On 11/12/26 19:32, Mehdi Djait wrote:
> > The reset in the runtime suspend also resets the VICAP IOMMU.
> > 
> > When the IOMMU driver accesses the IOMMU registers inside the delay window
> > between the assert and deassert, e.g. in rk_iommu_zap_lines() to shootdown
> > IOTLB entries, the system hangs.
> > 
> > Drop the reset and the now unused reset control.
> 
> I agree that the current situation is nothing more than a crude hack
> that happened to work in most cases. But I doubt simply removing the
> reset is the correct solution. Recently, I saw some downstream patch
> that makes the reset a shared one, which seems like the right thing to
> do here. What would you think about that?

Do you have a link for these patches ?

I also agree that this patch will not be the solution that will go in
but the situation needs to change.

The VICAP_GLB_CTRL register does expose this:
reset the VICAP(except MMU/AXI MASTER/REG FILE)

The Rockchip-bsp kernel exports the disable and enable functions of the
iommu driver and calls them in the rkcif driver, see:
https://github.com/rockchip-linux/kernel/blob/develop-6.1/drivers/media/platform/rockchip/cif/capture.c#L7269

--
Kind regards
Mehdi Djait

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
