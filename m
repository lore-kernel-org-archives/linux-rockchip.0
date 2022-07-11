Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAD1AC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 01:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Xdh3RJy4DewMSxOBwrDzT2wvZnrYdKJPhpc7vKCTQU=; b=bIVKMElBuCrSKO
	ofurwkgO9La0qyocluIMWt0tNxyabBhM+kWLl/sFCiTcUZZjAsDPZoWI/1kEArWH0fmNb4i7G1t53
	aZUTHAV8vRocURxawfXHd/yVcQIhlNSxFbt/jYIPIFDlA7R5jQBZ8FRjxwRaVG2TP+b/XySC4IBhm
	Dr73j+e6FtZ9CUBXzf+klDeYlJ/QsQvEfhh3UnBayQoKRAHRWbWY1xVWkRRdXAeXXVAAqRBmOGbM9
	edR8zG6WpwwlpoCjZfy7okcL4M839r727mTX3mVFR1Wg9Z6ZKww5JgmA9hVevrmvc12MI+XLSTpDh
	oULRYOcMUzk0LvF9Fslg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAhpw-00Eu0W-VM; Mon, 11 Jul 2022 01:03:44 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAhpu-00EtyK-2X
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 01:03:43 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9BA7573E;
	Mon, 11 Jul 2022 03:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657501415;
	bh=m+XnyEBVlTTfoaq5MYo2XRSIQQHjovO3YGrdNylj8Ng=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CbTR8j+BgJEV+A9b3JET/zVw4d/hsa+WuDJW7h4qUEMCrjncpd+20lDidoydwfNa+
	 jC8RIwJzcLSRjaj/ztUwkwGVkIUy2285DfPJio0v26zwMNJjIv2TYZl10r2+bPanX8
	 NzDuU1IJi2gte66QwxKGLEhotD2nsaUzjgylqa8Y=
Date: Mon, 11 Jul 2022 04:03:08 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: Re: [PATCH v2 38/55] media: rkisp1: isp: Disallow multiple active
 sources
Message-ID: <Yst2zJDgLL9u12dD@pendragon.ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-39-laurent.pinchart@ideasonboard.com>
 <20220711005653.5x2tdcr7nsaq2dfu@guri>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220711005653.5x2tdcr7nsaq2dfu@guri>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220710_180342_317829_E04F8FB3 
X-CRM114-Status: GOOD (  17.28  )
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

Hi Dafna,

On Mon, Jul 11, 2022 at 03:56:53AM +0300, Dafna Hirschfeld wrote:
> On 01.07.2022 02:06, Laurent Pinchart wrote:
> >The ISP supports multiple source subdevs, but can only capture from a
> >single one at a time. The source is selected through link setup. The
> >driver finds the active source in its .s_stream() handler using the
> >media_entity_remote_pad() function. This fails to reject invalid
> >configurations with multiple active sources. Fix it by using the
> >media_entity_remote_source_pad() helper instead, and inline
> 
> you meant media_pad_remote_pad_unique ?

Yes, the function name has changed, I'll update the commit message
accordingly.

> >rkisp1_isp_get_source() in rkisp1_isp_s_stream() as the function is
> >small and has a single caller.
> >
> >Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> >---
> > .../platform/rockchip/rkisp1/rkisp1-isp.c     | 30 ++++++++-----------
> > 1 file changed, 13 insertions(+), 17 deletions(-)
> >
> >diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> >index 37623b73b1d9..d7e2802d11f5 100644
> >--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> >+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> >@@ -58,20 +58,6 @@
> >  * Helpers
> >  */
> >
> >-static struct v4l2_subdev *rkisp1_isp_get_source(struct v4l2_subdev *sd)
> >-{
> >-	struct media_pad *local, *remote;
> >-	struct media_entity *sensor_me;
> >-
> >-	local = &sd->entity.pads[RKISP1_ISP_PAD_SINK_VIDEO];
> >-	remote = media_pad_remote_pad_first(local);
> >-	if (!remote)
> >-		return NULL;
> >-
> >-	sensor_me = remote->entity;
> >-	return media_entity_to_v4l2_subdev(sensor_me);
> >-}
> >-
> > static struct v4l2_mbus_framefmt *
> > rkisp1_isp_get_pad_fmt(struct rkisp1_isp *isp,
> > 		       struct v4l2_subdev_state *sd_state,
> >@@ -743,6 +729,8 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
> > 	struct rkisp1_isp *isp = to_rkisp1_isp(sd);
> > 	struct rkisp1_device *rkisp1 = isp->rkisp1;
> > 	const struct rkisp1_sensor_async *asd;
> >+	struct media_pad *source_pad;
> >+	struct media_pad *sink_pad;
> > 	int ret;
> >
> > 	if (!enable) {
> >@@ -754,10 +742,18 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
> > 		return 0;
> > 	}
> >
> >-	rkisp1->source = rkisp1_isp_get_source(sd);
> >+	sink_pad = &isp->pads[RKISP1_ISP_PAD_SINK_VIDEO];
> >+	source_pad = media_pad_remote_pad_unique(sink_pad);
> >+	if (IS_ERR(source_pad)) {
> >+		dev_dbg(rkisp1->dev, "Failed to get source for ISP: %ld\n",
> >+			PTR_ERR(source_pad));
> >+		return -EPIPE;
> >+	}
> >+
> >+	rkisp1->source = media_entity_to_v4l2_subdev(source_pad->entity);
> > 	if (!rkisp1->source) {
> >-		dev_warn(rkisp1->dev, "No link between isp and source\n");
> >-		return -ENODEV;
> >+		/* This should really not happen, so is not worth a message. */
> >+		return -EPIPE;
> > 	}
> >
> > 	asd = container_of(rkisp1->source->asd, struct rkisp1_sensor_async,

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
