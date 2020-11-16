Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE94C4742C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 14:30:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 79D9D20731
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 14:30:29 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="cXp4dz+k";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="lFsueI1x"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 79D9D20731
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SAzMJ2o3301yKhGOHjz1zOofFT+0XNLhfbFqwnrjcfw=; b=cXp4dz+kdmgY5kfnwU8NfoqSA
	RCQ+2/lPWBw8y3PYtaANYRydiuDXjqtxxcm4TePXu8SQr7MHWVTJ1HmwFHXun712I2NaG7ofPWMGx
	fNrjjeTzpmoQASK5vSe2oBfRDAblZcKsbwtb0KBqIfADwL6QMIW1v9e5TRwmJVsO3CTgo8jaMiS3d
	qMYxHTMyHw1YSmwhK5sAFWG0QIBjt5Rvkp2N4KH1di6sJmfZgZ8E/+lDVTCkRo6XOUdhO5W4sc6zk
	7UBKk8Fjlmdy/D1Bpi2vcSeQhBewYyhsS3vS3WF/s6ZWAIbMOkcX0WGtSIcfi5QNu1EUL/4amJ31x
	zeIa7AA5A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kefWU-0000Qh-7m; Mon, 16 Nov 2020 14:30:26 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kefWR-0000PW-CD
 for linux-rockchip@lists.infradead.org; Mon, 16 Nov 2020 14:30:24 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4F100A1B;
 Mon, 16 Nov 2020 15:30:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1605537020;
 bh=rR37HXyKQVppSVr7uNljcu2P32cneLHCYXtZv9IIvdw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lFsueI1xpEnF6ohptEVBw/81CQN+hJ2y+ISFi6FUcw8iSv7zYKYWcopxLVgXY6yio
 g+RcbrF1L3jMyX4OgUPvjg3M2IvFm7fFZsP9H6hZIQ9mUrpfjXlq7iW72dZWHCvl9c
 iZYNhwirrdWQRwZynRtNW/ojjffXKcTbnAf6ybak=
Date: Mon, 16 Nov 2020 16:30:15 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH] media: i2c: imx219: Declare that the driver can create
 events
Message-ID: <20201116143015.GK6540@pendragon.ideasonboard.com>
References: <20201116132244.30081-1-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201116132244.30081-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_093023_534939_5A27B020 
X-CRM114-Status: GOOD (  16.89  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: mchehab@kernel.org, dave.stevenson@raspberrypi.com, dafna3@gmail.com,
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, sakari.ailus@linux.intel.com, kernel@collabora.com,
 ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dave,

Thank you for the patch.

On Mon, Nov 16, 2020 at 02:22:44PM +0100, Dafna Hirschfeld wrote:
> The flag V4L2_SUBDEV_FL_HAS_EVENTS is required if the subdev can
> generate events. It can create events from the ctrl handler, therefore
> this is required.
> 
> Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

We should probably revisit this in the V4L2 core, as all subdevs that
handle controls can generate events, it shouldn't need to be manually
implemented in each of them.

> ---
> This patch fixes compliance issues found in imx219:
> 
> fail: v4l2-test-controls.cpp(830): failed to find event for control 'Exposure'
>     test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: FAIL
> 
>  drivers/media/i2c/imx219.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/i2c/imx219.c b/drivers/media/i2c/imx219.c
> index ef2b1a6a0f4a..ba1c5e59ddf4 100644
> --- a/drivers/media/i2c/imx219.c
> +++ b/drivers/media/i2c/imx219.c
> @@ -1503,7 +1503,8 @@ static int imx219_probe(struct i2c_client *client)
>  
>  	/* Initialize subdev */
>  	imx219->sd.internal_ops = &imx219_internal_ops;
> -	imx219->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
> +	imx219->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE |
> +			    V4L2_SUBDEV_FL_HAS_EVENTS;
>  	imx219->sd.entity.function = MEDIA_ENT_F_CAM_SENSOR;
>  
>  	/* Initialize source pad */

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
