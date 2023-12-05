Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D684CC10DCE
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 09:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Swmhwey4JMYwCGVBeDy2JLwoGqROBDlSLf2nJacJP4s=; b=18OuGsnZSOvnFe
	DAr00tCikyNYA3hJvLI38fYBKhcRINS76eGWIQpKA8jg9SAITLR91aVpDPJhXuVnlpgjlmAA+s68L
	qBFOVA2BvBaZc84I053I/m3RuViMTf8Wp3fQyrPF6TZE3LAyHvZ1WDo9bdcxywG5I4kNJ0LCP/XND
	cbw5KOQ0B2eb2B6T2GQ2jEfAvDOlKuYZ+t9TAz+A1R1QkFITXbauCk6CyUZGslJ+6FCq7m5W68ohD
	P9ma4TdjsCLL36BYW+5/VCVbzdLCaN1JlTzqBY41Bi860MGwvaGrP2BnDpGnORlz0DbxLonet7EGG
	TuU2f/Kk9aS0317E6+Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAS2m-006sdW-1k;
	Tue, 05 Dec 2023 09:48:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAS2j-006sck-2T
	for linux-rockchip@lists.infradead.org;
	Tue, 05 Dec 2023 09:48:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAS2g-0004Kk-Us; Tue, 05 Dec 2023 10:48:38 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rAS2e-00DiEw-H2; Tue, 05 Dec 2023 10:48:36 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAS2e-005MaM-EC; Tue, 05 Dec 2023 10:48:36 +0100
Date: Tue, 5 Dec 2023 10:48:36 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Andy Yan <andy.yan@rock-chips.com>
Cc: Andy Yan <andyshrk@163.com>, heiko@sntech.de, hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com, kever.yang@rock-chips.com,
	chris.obbard@collabora.com
Subject: Re: [PATCH v3 11/14] drm/rockchip: vop2: Add support for rk3588
Message-ID: <20231205094836.GZ1057032@pengutronix.de>
References: <20231130122001.12474-1-andyshrk@163.com>
 <20231130122439.13374-1-andyshrk@163.com>
 <20231205092936.GW1057032@pengutronix.de>
 <87831dc3-2554-4b53-a9f8-6b61cf67732e@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87831dc3-2554-4b53-a9f8-6b61cf67732e@rock-chips.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_014841_801944_75BF53F5 
X-CRM114-Status: GOOD (  25.39  )
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

On Tue, Dec 05, 2023 at 05:44:03PM +0800, Andy Yan wrote:
> Hi Sascha:
> 
> On 12/5/23 17:29, Sascha Hauer wrote:
> > On Thu, Nov 30, 2023 at 08:24:39PM +0800, Andy Yan wrote:
> > > From: Andy Yan <andy.yan@rock-chips.com>
> > > 
> > > VOP2 on rk3588:
> > > 
> > > Four video ports:
> > > VP0 Max 4096x2160
> > > VP1 Max 4096x2160
> > > VP2 Max 4096x2160
> > > VP3 Max 2048x1080
> > > 
> > > 4 4K Cluster windows with AFBC/line RGB and AFBC-only YUV support
> > > 4 4K Esmart windows with line RGB/YUV support
> > > 
> > > Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> > 
> > With the two nits below feel free to add my:
> > 
> > Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
> > 
> > Thanks for working on this.
> > 
> > > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> > > index 8d7ff52523fb..8b16031eda52 100644
> > > --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> > > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> > > @@ -13,9 +13,16 @@
> > >   #define VOP_FEATURE_OUTPUT_10BIT        BIT(0)
> > 
> > You could rename this to include "VP" for Video Port so it's not so
> > easily mixed up with the defines below.
> 
> Yes, I have the same idea, maybe it's better to do the rename in a separate ?

Ah Yes, I didn't realize this is just a context line. I thought you
had added it.

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
