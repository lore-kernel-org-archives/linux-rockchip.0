Return-Path: <SRS0=J3GV=B3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6300C433E3
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 21:47:09 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B4A1C2072E
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 21:47:09 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="R0/lSLen"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B4A1C2072E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wFL5A/LwAL2s+KKVElRUJyBwuMsNRooQwTyspiisLkk=; b=R0/lSLen4/RQ9ZHzCInIdlEKL
	EUh0QqooNNOelAA6GsRHXq0aamKDhR/rQMoAGoKu4DScwdjbjH80azysGIh88YdOLkEyPJcAEYreB
	VGFapRz2BRdURFaFUiLktQwAhM35cY9io5j8kjuuPphwFbvGf4EGN83eDGTnhCBk9DCqX2tXGihCY
	h7VndGvRXxlBV7+dusHrLCdG7bdgK4ZgLSyemiTQBL7xL+m2fUYJAqX177EsSaBN/Tb+Pe1Juw2bF
	TKHX8JHM56BmvgzNvU5uC6gihi9JgDVEAG97gK32O9B/RBzjWinLC/Hg8wHcsA5K9Kg2rMcQeZdEo
	JLOZGBnmQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7my9-0001Sr-Ja; Mon, 17 Aug 2020 21:47:05 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7my7-0001Rn-Mr
 for linux-rockchip@lists.infradead.org; Mon, 17 Aug 2020 21:47:04 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id B323E2945A0
Subject: Re: [PATCH v2 03/14] media: staging: rkisp1: params: use the new
 effect value in cproc config
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
 <20200815103734.31153-4-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <178b8436-45bc-a4f5-30c1-879a9d0bf8c5@collabora.com>
Date: Mon, 17 Aug 2020 18:46:55 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200815103734.31153-4-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_174703_875175_421BDA7C 
X-CRM114-Status: GOOD (  20.28  )
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



On 8/15/20 7:37 AM, Dafna Hirschfeld wrote:
> The cproc (color processing) configuration needs to know if
> an image effect is configured. The code uses the image effect
> in 'cur_params' which is the first params buffer queued in the stream.
> This is the wrong place to read the value. The value should be
> taken from the current params buffer.

This is a bit confusing, since params->cur_params is not the current
parameter as the name suggest, but it is only the first one.

I was thinking we could rename this variable to
`first_params`, and this descriptions would be less confusing,
but I saw you removed it on patch 07/14, so never mind.

It would be easier to read if this patch was just before patch
07/14.

> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

> ---
>  drivers/staging/media/rkisp1/rkisp1-params.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
> index 8d881f1df1e6..eb77b4ed8655 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
> @@ -560,7 +560,7 @@ static void rkisp1_cproc_config(struct rkisp1_params *params,
>  				const struct rkisp1_cif_isp_cproc_config *arg)
>  {
>  	struct rkisp1_cif_isp_isp_other_cfg *cur_other_cfg =

Side note: I was also thinking that the prefix "cur_other" is very confusing.
What "other" mean here?

Regards,
Helen

> -						&params->cur_params.others;
> +		container_of(arg, struct rkisp1_cif_isp_isp_other_cfg, cproc_config);
>  	struct rkisp1_cif_isp_ie_config *cur_ie_config =
>  						&cur_other_cfg->ie_config;
>  	u32 effect = cur_ie_config->effect;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
