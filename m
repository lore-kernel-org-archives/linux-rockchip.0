Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27CE0CCD1AB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 21:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YvF0EH9ODP6PgwwLvHGxgq3B1F81nBjIbG2OCZ5z7y0=; b=Gg/ymufYY5GqLS
	FfQX1GFF8Ishkl264xSy6KESVbEgm6jHjcrOhOgVvvD2l2BUegFFFtUca8yBChrt66lJJktsyJXfD
	zEkeQBt3GbmKo1C2Pngt8XZPZd5w9OhCa2kC4FCRD7pTVNycC/DY/GyTsa6/Wkvq8DKXtrCYWlDrT
	Mq5ZdFAlHnQD1UZ0H+Ua+bVBVs1YBPHvgV98/t5aqTCKGTRByEKXUfiU6zoliocWasHPlqrvFxZeB
	aIrFp4i/8va88ssv2Q/GwLbiVW+O6LqW3DhvgPQAKo16uzw3nXLkjw/tAeqP0CKK/vseqvNaccpB1
	mcuuHuURP/Udy93MCZcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBg8j-00000004Juf-1dx7;
	Wed, 22 Oct 2025 21:13:01 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBg8h-00000004Jtr-0gxU
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Oct 2025 21:13:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: References: Cc:
 To: From: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1761167578;
 bh=6nSMEfl8EbUvS5OuwNVhVKmJc0pWnQ52k0qn0aUqwwU=;
 b=zFTvkAT3Ih2UzUIwWDuR/+//23VJVhxIsnCo1eTQDkeLhOTkFMJ3iddTUN5mcquFTYH/Dybf7
 UFTUTF+qlZma2ognbPEUwfuN4TljsJ4an3xJL7HEWWabgobL92LRTOdy7HYdC9MDkagYA+aDlbc
 jojl3TG7lvOPjtSeHQylPVIFgsn0TBVquv5pDs6/IYpxbj8/iSTt/0Mnz/2Z0vkF5dguYXvom85
 inu/GtiiFPo+CzSbbuwMLzgrnJDQcDuQ9syiwppFXqf/y/16dV+7gyf50UUOq8KJeRTCUHqJ9nB
 /cvfO0KeVymsh6qFiEBTps6FTSROufNkcDegTs3DeREg==
X-Forward-Email-ID: 68f948d47ffe5c5c38c09150
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.3.0
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <0b492eb9-e9f7-4b4b-b29c-57cebd42e27d@kwiboo.se>
Date: Wed, 22 Oct 2025 23:12:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 08/15] media: rkvdec: Add generic configuration for
 variants
From: Jonas Karlman <jonas@kwiboo.se>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Heiko Stuebner <heiko@sntech.de>, Ricardo Ribalda <ribalda@chromium.org>,
 Hans Verkuil <hverkuil@kernel.org>, Hans de Goede <hansg@kernel.org>,
 Yunke Cao <yunkec@google.com>, Jonathan Corbet <corbet@lwn.net>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 James Cowgill <james.cowgill@blaize.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Diederik de Haas <didi.debian@cknow.org>, linux-kernel@vger.kernel.org
References: <20251022174508.284929-1-detlev.casanova@collabora.com>
 <20251022174508.284929-9-detlev.casanova@collabora.com>
 <5d2f3b9c-3d1a-47a5-93f1-1a6d6ce540f3@kwiboo.se>
Content-Language: en-US
In-Reply-To: <5d2f3b9c-3d1a-47a5-93f1-1a6d6ce540f3@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_141259_249085_F07CE9AE 
X-CRM114-Status: GOOD (  21.28  )
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

On 10/22/2025 10:57 PM, Jonas Karlman wrote:
> Hi Detlev,
> 
> On 10/22/2025 7:45 PM, Detlev Casanova wrote:
>> This is to prepare for adding new versions of the decoder and
>> support specific formats and ops per version.
>>
>> Different rkvdec_variant instances will be able to share generic
>> decoder configs.
>>
>> Tested-by: Diederik de Haas <didi.debian@cknow.org>  # Rock 5B
>> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
>> ---
>>  .../media/platform/rockchip/rkvdec/rkvdec.c   | 37 ++++++++++++-------
>>  .../media/platform/rockchip/rkvdec/rkvdec.h   |  6 +++
>>  2 files changed, 30 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
>> index 776149f871b0..a7af1e3fdebd 100644
>> --- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
>> +++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
>> @@ -373,15 +373,16 @@ static bool rkvdec_is_capable(struct rkvdec_ctx *ctx, unsigned int capability)
>>  static const struct rkvdec_coded_fmt_desc *
>>  rkvdec_enum_coded_fmt_desc(struct rkvdec_ctx *ctx, int index)
>>  {
>> +	const struct rkvdec_config *cfg = ctx->dev->variant->config;
>>  	int fmt_idx = -1;
>>  	unsigned int i;
>>  
>> -	for (i = 0; i < ARRAY_SIZE(rkvdec_coded_fmts); i++) {
>> -		if (!rkvdec_is_capable(ctx, rkvdec_coded_fmts[i].capability))
>> +	for (i = 0; i < cfg->coded_fmts_num; i++) {
>> +		if (!rkvdec_is_capable(ctx, cfg->coded_fmts[i].capability))
>>  			continue;
>>  		fmt_idx++;
>>  		if (index == fmt_idx)
>> -			return &rkvdec_coded_fmts[i];
>> +			return &cfg->coded_fmts[i];
>>  	}
>>  
>>  	return NULL;
>> @@ -390,12 +391,13 @@ rkvdec_enum_coded_fmt_desc(struct rkvdec_ctx *ctx, int index)
>>  static const struct rkvdec_coded_fmt_desc *
>>  rkvdec_find_coded_fmt_desc(struct rkvdec_ctx *ctx, u32 fourcc)
>>  {
>> +	const struct rkvdec_config *cfg = ctx->dev->variant->config;
>>  	unsigned int i;
>>  
>> -	for (i = 0; i < ARRAY_SIZE(rkvdec_coded_fmts); i++) {
>> -		if (rkvdec_is_capable(ctx, rkvdec_coded_fmts[i].capability) &&
>> -		    rkvdec_coded_fmts[i].fourcc == fourcc)
>> -			return &rkvdec_coded_fmts[i];
>> +	for (i = 0; i < cfg->coded_fmts_num; i++) {
>> +		if (rkvdec_is_capable(ctx, cfg->coded_fmts[i].capability) &&
>> +		    cfg->coded_fmts[i].fourcc == fourcc)
>> +			return &cfg->coded_fmts[i];
>>  	}
>>  
>>  	return NULL;
>> @@ -1014,18 +1016,19 @@ static int rkvdec_add_ctrls(struct rkvdec_ctx *ctx,
>>  
>>  static int rkvdec_init_ctrls(struct rkvdec_ctx *ctx)
>>  {
>> +	const struct rkvdec_config *cfg = ctx->dev->variant->config;
>>  	unsigned int i, nctrls = 0;
>>  	int ret;
>>  
>> -	for (i = 0; i < ARRAY_SIZE(rkvdec_coded_fmts); i++)
>> -		if (rkvdec_is_capable(ctx, rkvdec_coded_fmts[i].capability))
>> -			nctrls += rkvdec_coded_fmts[i].ctrls->num_ctrls;
>> +	for (i = 0; i < cfg->coded_fmts_num; i++)
>> +		if (rkvdec_is_capable(ctx, cfg->coded_fmts[i].capability))
>> +			nctrls += cfg->coded_fmts[i].ctrls->num_ctrls;
>>  
>>  	v4l2_ctrl_handler_init(&ctx->ctrl_hdl, nctrls);
>>  
>> -	for (i = 0; i < ARRAY_SIZE(rkvdec_coded_fmts); i++) {
>> -		if (rkvdec_is_capable(ctx, rkvdec_coded_fmts[i].capability)) {
>> -			ret = rkvdec_add_ctrls(ctx, rkvdec_coded_fmts[i].ctrls);
>> +	for (i = 0; i < cfg->coded_fmts_num; i++) {
>> +		if (rkvdec_is_capable(ctx, cfg->coded_fmts[i].capability)) {
>> +			ret = rkvdec_add_ctrls(ctx, cfg->coded_fmts[i].ctrls);
>>  			if (ret)
>>  				goto err_free_handler;
>>  		}
>> @@ -1240,13 +1243,20 @@ static void rkvdec_watchdog_func(struct work_struct *work)
>>  	}
>>  }
>>  
>> +static const struct rkvdec_config config_rkvdec = {
>> +	.coded_fmts = rkvdec_coded_fmts,
>> +	.coded_fmts_num = ARRAY_SIZE(rkvdec_coded_fmts),
>> +};
>> +
>>  static const struct rkvdec_variant rk3288_rkvdec_variant = {
>>  	.num_regs = 68,
>> +	.config = &config_rkvdec,
>>  	.capabilities = RKVDEC_CAPABILITY_HEVC,
>>  };
>>  
>>  static const struct rkvdec_variant rk3328_rkvdec_variant = {
>>  	.num_regs = 109,
>> +	.config = &config_rkvdec,
>>  	.capabilities = RKVDEC_CAPABILITY_HEVC |
>>  			RKVDEC_CAPABILITY_H264 |
>>  			RKVDEC_CAPABILITY_VP9,
>> @@ -1255,6 +1265,7 @@ static const struct rkvdec_variant rk3328_rkvdec_variant = {
>>  
>>  static const struct rkvdec_variant rk3399_rkvdec_variant = {
>>  	.num_regs = 78,
>> +	.config = &config_rkvdec,
>>  	.capabilities = RKVDEC_CAPABILITY_HEVC |
>>  			RKVDEC_CAPABILITY_H264 |
>>  			RKVDEC_CAPABILITY_VP9,
>> diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.h b/drivers/media/platform/rockchip/rkvdec/rkvdec.h
>> index f35f6e80ea2e..3b1cc511412e 100644
>> --- a/drivers/media/platform/rockchip/rkvdec/rkvdec.h
>> +++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.h
>> @@ -71,6 +71,7 @@ vb2_to_rkvdec_decoded_buf(struct vb2_buffer *buf)
>>  
>>  struct rkvdec_variant {
>>  	unsigned int num_regs;
>> +	const struct rkvdec_config *config;
>>  	unsigned int capabilities;
>>  	unsigned int quirks;
>>  };
>> @@ -113,6 +114,11 @@ struct rkvdec_coded_fmt_desc {
>>  	unsigned int capability;
>>  };
>>  
>> +struct rkvdec_config {
>> +	const struct rkvdec_coded_fmt_desc *coded_fmts;
>> +	size_t coded_fmts_num;

Please name this num_coded_fmts to match similar count/num variables
used by this driver and v4l2 core.

Regards,
Jonas

>> +};
> 
> Do we really need a separate config struct? This chould/should me merged
> with the variant struct.
> 
> Using a two layer variant/config mostly seem to complicate things based
> on an initial review.
> 
> Regards,
> Jonas
> 
>> +
>>  struct rkvdec_dev {
>>  	struct v4l2_device v4l2_dev;
>>  	struct media_device mdev;
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
