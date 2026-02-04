Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99352E9D40F
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 16:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2wNqHoTJLDTP61rwwMqWshKMzqE/CVOTLGXhOicxGas=; b=jMA+3PNRbKAjek
	dyV3n2P5uc3C2uxbWMlOiewywoEyLyrRuPix+fGroTaeTnvt7i3/YKoyIgAGCtILBPE7Rba0wJx60
	6p4/PVAwWFTOMIO728jnn5iEV9Fx9Xct0eeQwilYkHEw7Jt6YrlxdhAQAwkEm7X5UHDnvWv9lsqtB
	Hd6h1wVs7UdkgP3pLPw/rcDLS6mJV257s7V1f1OA7zXtLKfqB6yTt3BcKj47Fek5Bq/0sRMN2iUj5
	JFc5sz79rENqkRVS8Qnn5g8VSaIIb5aEEFycN6d9K0QgnTWD1uq617X+0tvL6r6JlNCjwZfwDio4I
	YLDHARUErlx9dMsk1sdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnfz0-00000008mil-3jkj;
	Wed, 04 Feb 2026 16:44:02 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnfyy-00000008mgQ-08Je;
	Wed, 04 Feb 2026 16:44:01 +0000
Received: from killaraus.ideasonboard.com (2001-14ba-703d-e500--ff4.rev.dnainternet.fi [IPv6:2001:14ba:703d:e500::ff4])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 88E73593;
	Wed,  4 Feb 2026 17:43:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1770223395;
	bh=qldJ6sgrNVhQ6+tMXyVzxSoNgaT7hsfl7eFw2SC7SYA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SiHcPyGf0AEpN8eWR17GhmL1DwNCRD7xM0HnZ15NDAzsVpgnO5N9uwJTLJkHgTEvc
	 o+rq9bafM9vx45FqFPuBhhDISq38Z0LN64vyUwhwJwWmEobPKoHpWVxFRFofKFh5C1
	 uS6hMnz87sngNVI0SPpXjgaFfAKmszYC7YkK9lYE=
Date: Wed, 4 Feb 2026 18:43:56 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Isaac Scott <isaac.scott@ideasonboard.com>
Cc: linux-media@vger.kernel.org, dafna@fastmail.com, mchehab@kernel.org,
	heiko@sntech.de, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/6] media: rkisp1-resizer: Add YUV source formats to
 resizer
Message-ID: <20260204164356.GC170964@killaraus>
References: <20260204112506.3706049-1-isaac.scott@ideasonboard.com>
 <20260204112506.3706049-2-isaac.scott@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260204112506.3706049-2-isaac.scott@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_084400_206606_9503CB8E 
X-CRM114-Status: GOOD (  17.48  )
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

On Wed, Feb 04, 2026 at 11:25:01AM +0000, Isaac Scott wrote:
> To be able to use YUV bypass, YUV formats need to be available on the
> source pad of the rkisp1 resizer. Add them.
> 
> Signed-off-by: Isaac Scott <isaac.scott@ideasonboard.com>
> ---
>  .../platform/rockchip/rkisp1/rkisp1-resizer.c     | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> index 8e6b753d3081..e72b76ab078c 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> @@ -23,11 +23,26 @@ struct rkisp1_rsz_yuv_mbus_info {
>  };
>  
>  static const struct rkisp1_rsz_yuv_mbus_info rkisp1_rsz_yuv_src_formats[] = {
> +	{
> +		.mbus_code	= MEDIA_BUS_FMT_UYVY8_2X8, /* YUV422 */
> +		.hdiv		= 1,
> +		.vdiv		= 1,
> +	},
> +	{
> +		.mbus_code	= MEDIA_BUS_FMT_VYUY8_2X8, /* YUV422 */
> +		.hdiv		= 1,
> +		.vdiv		= 1,
> +	},
>  	{
>  		.mbus_code	= MEDIA_BUS_FMT_YUYV8_2X8, /* YUV422 */
>  		.hdiv		= 2,
>  		.vdiv		= 1,
>  	},
> +	{
> +		.mbus_code	= MEDIA_BUS_FMT_YVYU8_2X8, /* YUV422 */
> +		.hdiv		= 1,

Shouldn't hdiv be 2 for all those new formats ?

But overall, I don't think those formats are needed. I would be very
surprised if the resizer used different YUV orders on its output bus.
Can't you use MEDIA_BUS_FMT_YUYV8_2X8 unconditionally ?

> +		.vdiv		= 1,
> +	},
>  	{
>  		.mbus_code	= MEDIA_BUS_FMT_YUYV8_1_5X8, /* YUV420 */
>  		.hdiv		= 2,

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
