Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9F93C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Apr 2022 06:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9TNSiGYUoesBGg68anGubc5SNuLjp1YsCutRq0KA70s=; b=VxPJEnGB+MmiMm
	fBZY07tFXqOOMREQVu0BbAko/Utrn+CaEnpjtfN5pbP6E7CtjyTqIFes8iEpI6KQlmizuwWZ+fRrm
	W6RgzG7Imm0JDJZcQrPIa9AcNwk4RF6TZxoU9p0knItmAgrI+TlN86iepVvziJxci3DQJSy/eq/4z
	8dN191zjeot7NpBYsQmslEr5osoYcXfTZxMwuw6s8QIILYwVfk7kF7FBq8yN04QVOwJMyDxYNYYV+
	khQMNh+cRuS0yqF6KvwF/pZvb5Ky7PPbo/2T+k5HMJYElDXJ+2vA4sgYHj5FJX/KnFGTQCdJUdfaj
	KMos/lHDTN3UgKrAxfBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nciOr-00FMBu-OJ; Fri, 08 Apr 2022 06:47:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nciOg-00FM8w-VK
 for linux-rockchip@lists.infradead.org; Fri, 08 Apr 2022 06:47:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nciOb-0003vs-Ed; Fri, 08 Apr 2022 08:47:01 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nciOX-0004QL-RB; Fri, 08 Apr 2022 08:46:57 +0200
Date: Fri, 8 Apr 2022 08:46:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin Murphy <robin.murphy@arm.com>
Cc: hjc@rock-chips.com, heiko@sntech.de, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org
Subject: Re: [PATCH] drm/rockchip: Refactor IOMMU initialisation
Message-ID: <20220408064657.GN4012@pengutronix.de>
References: <94eee7ab434fe11eb0787f691e9f1ab03a2e91be.1649168685.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <94eee7ab434fe11eb0787f691e9f1ab03a2e91be.1649168685.git.robin.murphy@arm.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:41:25 up 8 days, 19:11, 51 users, load average: 0.08, 0.10, 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_234707_042353_631AB55B 
X-CRM114-Status: GOOD (  25.39  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Tue, Apr 05, 2022 at 03:32:50PM +0100, Robin Murphy wrote:
> Defer the IOMMU domain setup until after successfully binding
> components, so we can figure out IOMMU support directly from the VOP
> devices themselves, rather than manually inferring it from the DT (which
> also fails to account for whether the IOMMU driver is actually loaded).
> Although this is somewhat of a logical cleanup, the main motivation is
> to prepare for a change in the iommu_domain_alloc() interface.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> 
> Lightly tested on RK3288. This does stand to collide with the in-flight
> VOP2 driver a little, if only that that will want an equivalent
> rockchip_drm_dma_init_device() call too be able to use its IOMMU. I'm
> happy to help sort that out either way, it just depends on what we want
> to merge first.

I tested it with the VOP2 driver. It needed a little refactoring, I had
to move the call to rockchip_drm_dma_attach_device() from vop2_bind() to
vop2_enable(), but then it works as expected.

Assuming that this patch goes through Heikos tree just like the VOP2
driver we can merge it first. I'll base the next VOP2 round on it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
