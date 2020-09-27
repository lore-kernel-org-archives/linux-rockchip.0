Return-Path: <SRS0=B9YW=DE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A422C4346E
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Sep 2020 09:33:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 349B12389F
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Sep 2020 09:33:37 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ICYGSdnN"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 349B12389F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pJQ8d2/VeEwpYCG+cQh6mX12XeuyWEP2f/O4OeZkH8Q=; b=ICYGSdnNRhNpCoC0XLc6ZS/Nu
	7KQKnWIO/vsh/icwqo4zarT1f9MNGwix/0dbnvNO2CfJR74lpAJCS44JKJnJK0kPfoWOAj6t7UxI+
	WL9hdtoVzlrzxwGyLj1vjDFXGyNeqz1CrXiejQK9Xcd6XbInWujZcq0VFOk/zfWAADkgaTOGR7TWw
	9oebdVT0H8KXBBKHT9lrSyfbR/rkW4CaHvdgo+mtV74Zl913UpYxDr42Y8G6xQNgdl8w2wI764Zdv
	rWVC0i0lJQKvexbvQBELyHix59CD6Xdl9wHhpDgOycIraCh6isfYQFxgNV//OsrwvwYISPtzSvvt4
	zSh6LDCog==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kMT3i-0006Ra-Nv; Sun, 27 Sep 2020 09:33:31 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMT3g-0006RC-RG
 for linux-rockchip@lists.infradead.org; Sun, 27 Sep 2020 09:33:29 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 1BC2D265BB2
Subject: Re: [PATCH v4 02/10] media: staging: rkisp1: cap: remove unsupported
 formats
To: Tomasz Figa <tfiga@chromium.org>
References: <20200901111612.10552-1-dafna.hirschfeld@collabora.com>
 <20200901111612.10552-3-dafna.hirschfeld@collabora.com>
 <20200926131708.GE3781977@chromium.org>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <86b5262f-6bb3-7c02-f49e-cbe8edab3490@collabora.com>
Date: Sun, 27 Sep 2020 11:33:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200926131708.GE3781977@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200927_053328_971451_B53A5E14 
X-CRM114-Status: GOOD (  21.02  )
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Am 26.09.20 um 15:17 schrieb Tomasz Figa:
> Hi Dafna,
> 
> On Tue, Sep 01, 2020 at 01:16:04PM +0200, Dafna Hirschfeld wrote:
>> For Ycbcr packed formats only YUYV can be supported by
>> the driver. This patch removes the other formats.
> 
> I can see the driver already setting the
> RKISP1_CIF_MI_XTD_FMT_CTRL_*_CB_CR_SWAP register according to the
> uv_swap flag, but it currently does it so only if comp_planes is 2.
> Wouldn't just doing the same if the number of planes is 1 fix the
> support for at least the YVYU format?

Hi, Laurent already suggested it and I found out it does not
work, see: https://patchwork.kernel.org/patch/11471301/

Thanks,
Dafna

> 
> Best regards,
> Tomasz
> 
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> Acked-by: Helen Koike <helen.koike@collabora.com>
>> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>> ---
>>   drivers/staging/media/rkisp1/rkisp1-capture.c | 17 -----------------
>>   1 file changed, 17 deletions(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
>> index f4d5cc3e2f12..79195e74d995 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
>> @@ -88,13 +88,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
>>   		.fourcc = V4L2_PIX_FMT_YUYV,
>>   		.uv_swap = 0,
>>   		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
>> -	}, {
>> -		.fourcc = V4L2_PIX_FMT_YVYU,
>> -		.uv_swap = 1,
>> -		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
>> -	}, {
>> -		.fourcc = V4L2_PIX_FMT_VYUY,
>> -		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
>>   	}, {
>>   		.fourcc = V4L2_PIX_FMT_YUV422P,
>>   		.uv_swap = 0,
>> @@ -197,16 +190,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>>   		.uv_swap = 0,
>>   		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
>>   		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
>> -	}, {
>> -		.fourcc = V4L2_PIX_FMT_YVYU,
>> -		.uv_swap = 1,
>> -		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
>> -		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
>> -	}, {
>> -		.fourcc = V4L2_PIX_FMT_VYUY,
>> -		.uv_swap = 1,
>> -		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
>> -		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
>>   	}, {
>>   		.fourcc = V4L2_PIX_FMT_YUV422P,
>>   		.uv_swap = 0,
>> -- 
>> 2.17.1
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
