Return-Path: <SRS0=WHqa=CQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1424BC43461
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2020 14:19:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BE82721481
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2020 14:19:43 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="NOlV8N8S"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BE82721481
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qIC6YTqO5ojXpwd0hl7qjH+9JaW0Wk+zg2P38IV8fGk=; b=NOlV8N8SJGXq/TLGunasgVhsB
	njZAdVn1X0YqYkDilC6z1d1CwFThcXFFDgeOCk8rILBqbgwCOUnlBOW8dXGwB2zyEDvCn40xezsP/
	ZZKGghbhyN/Jb02v2lW/BynCXS6PGWMsSPNFt2QQYCRxVXVPaXh3TBDsZJajwjEJSshNyiVgNYY6H
	F7L2XjncomyG/cp7myEnP4LFpxuDCuEeoIrSgoGB8yR+6393VcjEwPaLwSJzJpvl0QD29oj86GVN1
	/tcHJ4cv0xc7bwHMDRvFMpWqUjGUETm99oqGrz30DQVgbaylfrnbrbng7W1LaEVOTzi9EWevlVPyG
	JeWQWw9Yw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kFHzg-0005f9-Cz; Mon, 07 Sep 2020 14:19:40 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFHzd-0005e2-VM
 for linux-rockchip@lists.infradead.org; Mon, 07 Sep 2020 14:19:38 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 8CE5B296466
Subject: Re: [PATCH v4 07/10] media: staging: rkisp1: rsz: enumerate the
 formats on the src pad according to the capture
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200901111612.10552-1-dafna.hirschfeld@collabora.com>
 <20200901111612.10552-8-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <bfb4d1f8-eeaf-9f5e-7007-09011340193f@collabora.com>
Date: Mon, 7 Sep 2020 11:19:28 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200901111612.10552-8-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200907_101938_098517_CE84EB7B 
X-CRM114-Status: GOOD (  21.48  )
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
Cc: mchehab@kernel.org, dafna3@gmail.com, tfiga@chromium.org,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 9/1/20 8:16 AM, Dafna Hirschfeld wrote:
> Currently the resizer outputs the same media bus format
> as the input. This is wrong since the resizer is also used
> to downscale YUV formats. This patch changes the enumeration
> of the supported formats. The supported formats on the sink pad
> should be taken from the isp entity and the supported formats on
> the source pad should be taken from the capture entity.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-resizer.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> index 066d22096a7d..0e4a2c931ab0 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> @@ -437,6 +437,17 @@ static int rkisp1_rsz_enum_mbus_code(struct v4l2_subdev *sd,
>  	u32 pad = code->pad;
>  	int ret;
>  
> +	if (code->pad == RKISP1_RSZ_PAD_SRC) {
> +		/* supported mbus codes on the src are the same as in the capture */
> +		struct rkisp1_capture *cap = &rsz->rkisp1->capture_devs[rsz->id];
> +
> +		return rkisp1_cap_enum_mbus_codes(cap, code);
> +	}
> +
> +	/*
> +	 * The selfpath capture doesn't support bayer formats. Therefore the selfpath resizer
> +	 * should support only YUV422 on the sink pad
> +	 */
>  	if (rsz->id == RKISP1_SELFPATH) {
>  		if (code->index > 0)
>  			return -EINVAL;
> @@ -444,7 +455,7 @@ static int rkisp1_rsz_enum_mbus_code(struct v4l2_subdev *sd,
>  		return 0;
>  	}
>  
> -	/* supported mbus codes are the same in isp video src pad */
> +	/* supported mbus codes on the sink pad are the same as isp src pad */
>  	code->pad = RKISP1_ISP_PAD_SOURCE_VIDEO;
>  	ret = v4l2_subdev_call(&rsz->rkisp1->isp.sd, pad, enum_mbus_code,
>  			       &dummy_cfg, code);
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
