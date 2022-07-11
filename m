Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38FC2CCA47B
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 16:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQftcjKHhHHAfmpHpigLeUehd+uI6zqNBefCJyfrd3k=; b=hYP3qQfCSywDlR
	M1VquyPWdNIw+jrXoQIsc8zhMKE2Yvt8cg4p8w+pcLymF01AJ/YFBQGHzSUELobsSBzGCO3Ss28aF
	NkkpWeL622sIsZos8FDSt88rW+Acof+cYBX8C1fYn8Sz/zGPX8H02UZdsu9faidWTMtspdNtpyzo9
	G90AoeboYVy1y0Nd+g0M6AzPiiEDqdFBFOVUlh9dFNGtF6RNeB+ChsyVm8K3lClpAepBiOZoBtBkU
	TD8/auSf/aYe8mJVUECfywmtUaJMR7qdaPEohuAJeCCleJPZJ4hHTFRbgks/jtaz8d9RARX0X5Y1J
	DZ1E/5iojScPQrpJ+StA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAwcp-003Kbu-1w; Mon, 11 Jul 2022 16:51:11 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAwcm-003KZU-4y
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 16:51:09 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 05D23326;
	Mon, 11 Jul 2022 18:51:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657558266;
	bh=KOgT+6L+h1zlwGrFOLmavt4b32iztY2zE9g1TXtIcnQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RNDDKIDbH0TvJbQ6BhEdvEF65PSJlsrgLJGkRzxJ5plhNm5d1zsgShLBeZ2uYP0W+
	 Q6BpC9vJz8Oc+vPTPePNsTX7MnW7QGtQGUDrpovdlJoFCRfjRqv+DRxKd9+GhqfDN/
	 jakKOmjQdMM5ZSm665Kmcu8jyfNdbqzi0nM5+xp4=
Date: Mon, 11 Jul 2022 19:50:39 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Helen Koike <helen.koike@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org
Subject: Re: [PATCH v3 44/46] media: rkisp1: Add infrastructure to support
 ISP features
Message-ID: <YsxU32X+C6nV1YPU@pendragon.ideasonboard.com>
References: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
 <20220711124248.2683-45-laurent.pinchart@ideasonboard.com>
 <7f32db4b-7355-ec48-2e9f-b1db6c24a560@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7f32db4b-7355-ec48-2e9f-b1db6c24a560@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_095108_368021_5456CA0E 
X-CRM114-Status: UNSURE (   9.01  )
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

On Mon, Jul 11, 2022 at 06:37:51PM +0200, Michael Riesch wrote:
> On 7/11/22 14:42, Laurent Pinchart wrote:
> > [...]
> >  /*
> >   * struct rkisp1_info - Model-specific ISP Information
> >   *
> > @@ -106,6 +119,7 @@ enum rkisp1_isp_pad {
> >   * @isrs: array of ISP interrupt descriptors
> >   * @isr_size: number of entries in the @isrs array
> >   * @isp_ver: ISP version
> > + * @features: bitmatk of rkisp1_feature features implemented by the ISP
> 
> s/bitmatk/bitmask ?

Thanks for spotting this. I've fixed the typo locally, I don't plan to
post a v4 just for that.

> > [...]

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
