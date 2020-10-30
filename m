Return-Path: <SRS0=455t=EF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1AD1CC4363A
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 11:34:35 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 649CE2075E
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 11:34:34 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ZpfuaYoH"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 649CE2075E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uEn6BDrRNGaXZDBJWMTX65F9PsNJ2JYkDQuvutNkryM=; b=ZpfuaYoHpf46XC/vmrPZlUGTc
	MzG2ZbbLPBZswjNsO70S+z5AII504XL6RVnuvjdku3+uzX7VrPOHsxt1fdXQ8ku9gvF2izPyBL58P
	s1ytrzvLGkGpSJ/4GcK5cnNSCB+bR09euOe8LMi4pB4vyTwxO4iApkFc7CvcVfuGFbuIySbMAuuv+
	VCdq4Rt0QRAVbNL5Vj7aDTW8LQcuGrkd6dghHADeKbx7F7COAJxtmKHn5NFo4Oaq1y0Xqvg8uGWfX
	U47GRtIfWn5kh/onzA9cogTfMcipeoc/m1ZzFoI+v4XhqJAq7uYIOSCmaMr+7dk8VLQZwXN3W4iOB
	ejzaZqBag==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYSfq-0000gq-EF; Fri, 30 Oct 2020 11:34:26 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYSfn-0000gF-BL
 for linux-rockchip@lists.infradead.org; Fri, 30 Oct 2020 11:34:24 +0000
Received: from [IPv6:2003:c7:cf1c:4d00:58b3:6683:91ae:b6a8]
 (p200300c7cf1c4d0058b3668391aeb6a8.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf1c:4d00:58b3:6683:91ae:b6a8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 640F21F45EBC;
 Fri, 30 Oct 2020 11:34:21 +0000 (GMT)
Subject: Re: [PATCH v2 1/2] media: uapi: add MEDIA_BUS_FMT_METADATA_FIXED
 media bus format.
To: Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org
References: <20201020154522.654-1-dafna.hirschfeld@collabora.com>
 <04d5a149-8745-ae20-a622-bcfcafb69cbb@xs4all.nl>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <36159037-bf65-f7be-8deb-735afd726eee@collabora.com>
Date: Fri, 30 Oct 2020 12:34:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <04d5a149-8745-ae20-a622-bcfcafb69cbb@xs4all.nl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201030_073423_520407_C146428B 
X-CRM114-Status: GOOD (  20.48  )
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
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



Am 30.10.20 um 09:58 schrieb Hans Verkuil:
> On 20/10/2020 17:45, Dafna Hirschfeld wrote:
>> MEDIA_BUS_FMT_METADATA_FIXED should be used when
>> the same driver handles both sides of the link and
>> the bus format is a fixed metadata format that is
>> not configurable from userspace.
>> The width and height will be set to 0 for this format.
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> Acked-by: Helen Koike <helen.koike@collabora.com>
>> ---
>> changes since v1:
>> 1. replace "This format may have 0 height and width."
>> with "Width and height will be set to 0 for this format."
>> and add it also to the commit log
>> 2. s/meida:/media:/ in the patch subject line
>>
>>   include/uapi/linux/media-bus-format.h | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>> diff --git a/include/uapi/linux/media-bus-format.h b/include/uapi/linux/media-bus-format.h
>> index 84fa53ffb13f..2ce3d891d344 100644
>> --- a/include/uapi/linux/media-bus-format.h
>> +++ b/include/uapi/linux/media-bus-format.h
>> @@ -156,4 +156,12 @@
>>   /* HSV - next is	0x6002 */
>>   #define MEDIA_BUS_FMT_AHSV8888_1X32		0x6001
>>   
>> +/*
>> + * This format should be used when the same driver handles
>> + * both sides of the link and the bus format is a fixed
>> + * metadata format that is not configurable from userspace.
>> + * Width and height will be set to 0 for this format.
>> + */
>> +#define MEDIA_BUS_FMT_METADATA_FIXED		0x7001
>> +
>>   #endif /* __LINUX_MEDIA_BUS_FORMAT_H */
>>
> 
> Documentation/userspace-api/media/v4l/subdev-formats.rst also needs to
> be updated.

hi,
I wonder what should be the documentation, since this mbus code
is for very specific use case. You think that the 0x7* mbus codes
should be 'metadata mbus codes'?

Thanks,
Dafna


> 
> Regards,
> 
> 	Hans
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
