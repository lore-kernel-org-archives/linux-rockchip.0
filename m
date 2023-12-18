Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 309BFC35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 15:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HvzdLryiQfPO/NGEEwsYB9IeiVSM70waataCWyrQBf4=; b=yaDbnOSo5XiOfS
	BJg0wHjm+uIzQP5p99cu+370bd1JKoezHwSjlTnzScaGEHPnsQVUpq+PeQORfToLr65H88lxDy6F0
	f7XzHF8wa1UqZrn27CMIwUqxNToR/gI7lZ5VFv5uoxGDDCzC/dXHea/LKUhuKzhMVuHaecAECyGuk
	DjBOY0eOLN72l5FuBBIYAex7TGBwgX1UXS9cop6kSAO+F8wqKR1gorN84l0cKowM21PEtt/z3W65x
	vnUfRxkTXIfcMdsNHqDwJfw1ylrMSogqdgSKv+CqTY1XVIersC1UCKMkPGXfLXY25qU/YbVGbf3Nu
	klioLQx8P/uOoKh7Vmlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFFrA-00BHe6-0a;
	Mon, 18 Dec 2023 15:48:36 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFFr6-00BHcb-2B;
	Mon, 18 Dec 2023 15:48:34 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 24B6757E;
	Mon, 18 Dec 2023 16:47:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1702914462;
	bh=2sOFBL109jjVIul3F+6t0mZTRAhvxnQtgcLNIu0TqOM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E+eaknYD0yp0U7kSb+ri0GDGITk+JMNKvwxxoCzsQAkn7n4k+JrNDZD/+k7PVajqC
	 k5db1V+5k6xL1Ipe5FjVJiLg5ATaQKbOsLwI6FXl9lsn8/DZE0oWP1SnPS0Uy+Wa31
	 hVVGSh2gpgbr7y2Bk+YrSYDri/Wb60eNOrXKZplk=
Date: Mon, 18 Dec 2023 17:48:38 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	kieran.bingham@ideasonboard.com, umang.jain@ideasonboard.com,
	aford173@gmail.com, Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 05/11] media: rkisp1: Fix RSZ_CTRL bits for i.MX8MP
Message-ID: <20231218154838.GR5290@pendragon.ideasonboard.com>
References: <20231129092759.242641-1-paul.elder@ideasonboard.com>
 <20231129092759.242641-6-paul.elder@ideasonboard.com>
 <03b98b67-e88c-4bb0-a01d-5a90f78e04a3@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <03b98b67-e88c-4bb0-a01d-5a90f78e04a3@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_074832_875954_4DA103EC 
X-CRM114-Status: GOOD (  30.98  )
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

On Mon, Dec 18, 2023 at 05:31:18PM +0200, Tomi Valkeinen wrote:
> Hi Paul,
> 
> On 29/11/2023 11:27, Paul Elder wrote:
> > The ISP8000Nano, found in the i.MX8MP, has a different architecture to
> > crop at the resizer input. Instead of the "dual crop" block between the
> > ISP and the resizers found in the RK3399, cropping has been moved to the
> > input of the resizer blocks. As a result, the resizer CFG_UPD and
> > CFG_UPD_AUTO bits have been moved to make space for a new CROP_ENABLE
> > bit.
> > 
> > Fix the resizer shadow update accordingly, using the DUAL_CROP feature
> > to infer whether or not the resizer implements cropping. Support for
> > resizer cropping itself will be added in a subsequent commit.
> > 
> > Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> I don't think this one is correct.
> 
> The above is perhaps true for ISP8000, but ISP8000Nano does not have 
> CROP_ENABLE bit, and the CFG_UPD and CFG_UPD_AUTO are at the same 
> locations as on RK3399.
> 
> I don't have documentation to prove this, but experimentation shows that 
> this is the case.

I agree with you. The missing CROP_ENABLE bit matches the missing
resizer input crop capability in the i.MX8MP. I don't know if that's
specific to the i.MX8MP, specific to the ISP8000Nano, or common to all
ISP8000 versions when the instance is synthesized with a single path
(which may be what ISP8000Nano is).

> > ---
> > Changes since v3:
> > 
> > - Condition on RKISP1_FEATURE_DUAL_CROP feature
> > - Update commit message
> > 
> > Changes since v2:
> > 
> > - Condition on RKISP1_FEATURE_RSZ_CROP feature
> > - Rename bits
> > - Use the rkisp1_has_feature() macro
> > 
> >   .../media/platform/rockchip/rkisp1/rkisp1-regs.h  |  5 +++++
> >   .../platform/rockchip/rkisp1/rkisp1-resizer.c     | 15 +++++++++++----
> >   2 files changed, 16 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> > index 3b19c8411360..95646b45f28b 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> > @@ -168,6 +168,11 @@
> >   #define RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO		BIT(9)
> >   #define RKISP1_CIF_RSZ_SCALER_FACTOR			BIT(16)
> >   
> > +/* For resizer instances that support cropping */
> > +#define RKISP1_CIF_RSZ_CTRL_CROP_ENABLE			BIT(8)
> > +#define RKISP1_CIF_RSZ_CTRL_CROP_CFG_UPD		BIT(9)
> > +#define RKISP1_CIF_RSZ_CTRL_CROP_CFG_UPD_AUTO		BIT(10)
> > +
> >   /* MI_IMSC - MI_MIS - MI_RIS - MI_ICR - MI_ISR */
> >   #define RKISP1_CIF_MI_FRAME(stream)			BIT((stream)->id)
> >   #define RKISP1_CIF_MI_MBLK_LINE				BIT(2)
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> > index c1aaeed58acc..6d6ebc53c6e5 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> > @@ -178,10 +178,17 @@ static void rkisp1_rsz_update_shadow(struct rkisp1_resizer *rsz,
> >   {
> >   	u32 ctrl_cfg = rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_CTRL);
> >   
> > -	if (when == RKISP1_SHADOW_REGS_ASYNC)
> > -		ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO;
> > -	else
> > -		ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD;
> > +	if (when == RKISP1_SHADOW_REGS_ASYNC) {
> > +		if (rkisp1_has_feature(rsz->rkisp1, DUAL_CROP))
> > +			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO;
> > +		else
> > +			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CROP_CFG_UPD_AUTO;
> > +	} else {
> > +		if (rkisp1_has_feature(rsz->rkisp1, DUAL_CROP))
> > +			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD;
> > +		else
> > +			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CROP_CFG_UPD;
> > +	}
> >   
> >   	rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_CTRL, ctrl_cfg);
> >   }

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
