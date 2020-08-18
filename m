Return-Path: <SRS0=2LhI=B4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AF3FC433E3
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 06:38:13 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D20FF2067C
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 06:38:12 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="yBfoOldf"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D20FF2067C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Lw30SoIJ03yrzJ4NKpn5MXH8qO+qNnCPqsj5dg9iQB8=; b=yBfoOldfaLdXrF5oGCVQfeZaW
	XIe/bbpSJF5/l8SpmHWgbVyhlAddB/lqse/gxrqcPfEyy4Y/0doOSwTkiQTWqovQw/UiTunnv8ps5
	7w4522dYctlPLdt6d4aDnA5IsEo/ZkB/TNFR7G2A5pZ0XOFcavww7DWIJ66323puhXV7lMGxlQ/dP
	nvypkB/K/QfY9wrrKz8rYxKppcXWqFwlgSZqTVhfEuq3FGVX5qMqdRzVccvq1CEjmwhW1GzTvJCl6
	OvQKB9B6e/BX7hiwN93/6NPrpcdb8mzRPXHAo7+8dvKWhEEUqM0GGqcRqMtmmsmq93BANL++ZRtYW
	zZqRISHYw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7vG5-00051t-0n; Tue, 18 Aug 2020 06:38:09 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7vFz-0004yk-Rj
 for linux-rockchip@lists.infradead.org; Tue, 18 Aug 2020 06:38:06 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id E700728DBA1
Subject: Re: [PATCH v2 11/14] media: staging: rkisp1: isp: don't enable signal
 RKISP1_CIF_ISP_FRAME_IN
To: Helen Koike <helen.koike@collabora.com>, linux-media@vger.kernel.org
References: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
 <20200815103734.31153-12-dafna.hirschfeld@collabora.com>
 <6dce2cfd-db63-68ad-3cad-bdf340162f10@collabora.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <cb8bad6d-eb61-43aa-ec68-c43668ceff79@collabora.com>
Date: Tue, 18 Aug 2020 08:37:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <6dce2cfd-db63-68ad-3cad-bdf340162f10@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200818_023804_120867_209D730C 
X-CRM114-Status: GOOD (  17.52  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



Am 17.08.20 um 23:48 schrieb Helen Koike:
> 
> 
> On 8/15/20 7:37 AM, Dafna Hirschfeld wrote:
>> The signal RKISP1_CIF_ISP_FRAME_IN is not used in the isr so
>> there is no need to enable it.
> 
> I saw in the docs this is for when sampled input frame is complete.
> (I was just wondering for curiosity what is a sampled input frame
> here, but never mind).

Hi,
I discussed the meaning of the interrupts with Tomasz, https://patchwork.kernel.org/patch/11066513/#23505185

Thanks,
Dafna

> 
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> 
> Acked-by: Helen Koike <helen.koike@collabora.com>
> 
> Thanks,
> Helen
> 
>> ---
>>   drivers/staging/media/rkisp1/rkisp1-isp.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
>> index 33cfad19dde2..912eb6ad4e0a 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
>> @@ -348,7 +348,7 @@ static int rkisp1_config_isp(struct rkisp1_device *rkisp1)
>>   	rkisp1_write(rkisp1, sink_crop->height, RKISP1_CIF_ISP_OUT_V_SIZE);
>>   
>>   	irq_mask |= RKISP1_CIF_ISP_FRAME | RKISP1_CIF_ISP_V_START |
>> -		    RKISP1_CIF_ISP_PIC_SIZE_ERROR | RKISP1_CIF_ISP_FRAME_IN;
>> +		    RKISP1_CIF_ISP_PIC_SIZE_ERROR;
>>   	rkisp1_write(rkisp1, irq_mask, RKISP1_CIF_ISP_IMSC);
>>   
>>   	if (src_fmt->pixel_enc == V4L2_PIXEL_ENC_BAYER) {
>>
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
