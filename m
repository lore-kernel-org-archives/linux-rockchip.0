Return-Path: <SRS0=br+z=FA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B42C56202
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2020 14:57:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4B9F120B80
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2020 14:57:31 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="H+RzOqcM"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4B9F120B80
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MvZ3ZG9tSOOhVKIy75MujJLa03FgudXlxjYIFurnKHQ=; b=H+RzOqcMslIW9n4lCN8uf3jkQ
	SLQ4rpyL+E1RxgRO3cixBjPhl7iXmjFikqESW27vxRz5+Ef3zTNCDvmVASI7bTYJin32YRPtQzb87
	ZNbOb7B/NqtktvLyCQkA4pU/ZdibSNXsLTjOGycnD9YhVRkFnnbLazwXTTRPCzQogLx2BxZjIPtLH
	0Xv4aaWXP1Pdfh3liIomYpE5bJu7JF6AhaU/afvJA/+L/MbJEfUUugg4hwJKsjfd3hnJuSc53Fk9G
	PyWthCsIuqd7HRheQC9Exonpg/oSaCqNWCcUW7g2IP9Ayw+4HGw9d3KEaz0qwfPahHJiVSPi3hOKH
	ClCSfeGtg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kiIi4-0007GH-4H; Thu, 26 Nov 2020 14:57:24 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kiIhz-0007F0-Fs; Thu, 26 Nov 2020 14:57:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 052381F4490B
Subject: Re: [PATCH] media: rockchip: rkisp1: Fix typos in comments and macro
 definitions
To: Peilin Ye <yepeilin.cs@gmail.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
References: <20201126122148.9162-1-yepeilin.cs@gmail.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <19ef2031-1e09-6418-1bce-7c5713d296d7@collabora.com>
Date: Thu, 26 Nov 2020 11:57:10 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201126122148.9162-1-yepeilin.cs@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201126_095719_678589_1B9A6370 
X-CRM114-Status: GOOD (  21.64  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Peilin,

On 11/26/20 9:21 AM, Peilin Ye wrote:
> Fix 4 typos under drivers/media/platform/rockchip/rkisp1/ found by
> checkpatch, including the RKISP1_CIF_MI_{M,S}P_PINGPONG_ENABLE macro
> definitions.
> 
> Signed-off-by: Peilin Ye <yepeilin.cs@gmail.com>

Thanks

Acked-by: Helen Koike <helen.koike@collabora.com>

> ---
> Hi Helen, Dafna,
> 
> I noticed that the RKISP1_CIF_MI_{M,S}P_PINGPONG_ENABLE macros are not
> being used yet, but according to page 12 of this developer guide [1] I
> think they are for *enabling* the ping-pong ("double buffers") mode?

Looks like. The documentation I have doesn't explain much about this
mode, it just mention that bit is used to enable it, and that
MI_{MP,SP}_{CR,CB}_BASE_AD_INIT2 are used to configure base address 2.


Regards,
Helen

> 
> Based on linux-next 9d3e48f20e11 ("Add linux-next specific files for
> 20201125").
> 
> Thanks,
> Peilin Ye
> 
> [1] https://dl.vamrs.com/products/rock960/docs/sw/Rockchip%C2%A0Linux%20Camera%C2%A0Developer%20Guide%20V1.1.pdf#page=12
> 
>  drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 4 ++--
>  drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h    | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index b81235afd053..94b65680c4c1 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -46,7 +46,7 @@ enum rkisp1_plane {
>  /*
>   * @fourcc: pixel format
>   * @fmt_type: helper filed for pixel format
> - * @uv_swap: if cb cr swaped, for yuv
> + * @uv_swap: if cb cr swapped, for yuv
>   * @write_format: defines how YCbCr self picture data is written to memory
>   * @output_format: defines sp output format
>   * @mbus: the mbus code on the src resizer pad that matches the pixel format
> @@ -870,7 +870,7 @@ static void rkisp1_cap_stream_disable(struct rkisp1_capture *cap)
>  {
>  	int ret;
>  
> -	/* Stream should stop in interrupt. If it dosn't, stop it by force. */
> +	/* Stream should stop in interrupt. If it doesn't, stop it by force. */
>  	cap->is_stopping = true;
>  	ret = wait_event_timeout(cap->done,
>  				 !cap->is_streaming,
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> index 049f6c3a11df..8a8d960a679c 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> @@ -106,8 +106,8 @@
>  #define RKISP1_CIF_MI_SP_Y_FULL_YUV2RGB			BIT(8)
>  #define RKISP1_CIF_MI_SP_CBCR_FULL_YUV2RGB		BIT(9)
>  #define RKISP1_CIF_MI_SP_422NONCOSITEED			BIT(10)
> -#define RKISP1_CIF_MI_MP_PINGPONG_ENABEL		BIT(11)
> -#define RKISP1_CIF_MI_SP_PINGPONG_ENABEL		BIT(12)
> +#define RKISP1_CIF_MI_MP_PINGPONG_ENABLE		BIT(11)
> +#define RKISP1_CIF_MI_SP_PINGPONG_ENABLE		BIT(12)
>  #define RKISP1_CIF_MI_MP_AUTOUPDATE_ENABLE		BIT(13)
>  #define RKISP1_CIF_MI_SP_AUTOUPDATE_ENABLE		BIT(14)
>  #define RKISP1_CIF_MI_LAST_PIXEL_SIG_ENABLE		BIT(15)
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
