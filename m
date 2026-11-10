Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADC64606AA67
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 10:13:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=y5UWjaug;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=R+nTugQx
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SgIXJd++L7ZeBVHGGot4qE4UVFpGdX4tJDGhRfQaOO8=; b=y5UWjaug7s+URzv6/AzER5oOOy
	e2Ni7elFyhUJ9+aZtdu3mnOL4IPBl9ZiQRbqRa7jYBc905H2HlU6JNPq0mxoWNi2FmslT/s7H0wl4
	qz84Qh8aYx0TwYxHkJA6isakKPboF8jwU7iup/DEUJBzTzFoiXz0sJxaV0EhroDZtb1rBmr/LWo42
	Wy4FLfCTn71enKY5dYQVgixsLNrzMZGKMiSlRcIc5kKD8awlmqW302DaaZ8Vx5y5gOagUFnvvwCHK
	bxMZ3MY2+OFOZeroPYRJgwAMbLXeTSH+2CQ89f7Vn9Cr1zpUEQh6iKKF/W15zNBJAhDMHRtD0ojyY
	U6b1pWEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQiqv-00000003QXe-12B5;
	Tue, 10 Nov 2026 10:13:21 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQiqu-00000003QXL-0Huf
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Nov 2026 10:13:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B8C4C40593;
	Tue, 10 Nov 2026 10:13:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 484C91F008A1;
	Tue, 10 Nov 2026 10:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794305599;
	bh=7lZki/LBL0F86IwmD+ZREFy3qnWUNsldGDK/mcimVKo=;
	h=Date:From:Subject:To:Cc:References:In-Reply-To;
	b=R+nTugQx2Ko5IKMnMDEZYXzbne9QVOibmpJBeM4hwwgYeLhC+t8Qlw5vywGYKPCJj
	 EkMrjwUrGHpJB0yS6BHTQUjcN5n/AvRetx5szQelim7Rr4nPzQAIoqNx+cCRT6FhmT
	 qQcJo8rDDwq2nq9kxvwQjpoAEy5twIEZ4W4r1heQV3dpAa+EWJl+m+RaCRQD7naHMc
	 G/OTsRMVT4DuG8vNbf9ZFYsAp5x/7PFPpINPOo3Z4cIkyCXaJsPsTBlxuqYlqKa7wA
	 6PrTt2mfYw4eH5WDrvrHMob30PvH8bbUHYr4bFdfH2E1k4vyJ54qCLHqePZS2veXSB
	 hpnbE70gWbP4A==
Message-ID: <ed2a6a4e-f480-4b39-9684-0dbd2d55e261@kernel.org>
Date: Tue, 10 Nov 2026 11:13:16 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Hans Verkuil <hverkuil+cisco@kernel.org>
Subject: Re: [PATCH] media: verisilicon: Replace strlcat() with seq_buf
To: David Laight <david.laight.linux@gmail.com>,
 Mariia Nikitash <nikitash.mariiaw@gmail.com>
Cc: nicolas.dufresne@collabora.com, benjamin.gaignard@collabora.com,
 p.zabel@pengutronix.de, mchehab@kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org, kees@kernel.org, justinstitt@google.com,
 morbo@google.com
References: <20261105084518.386234-1-nikitash.mariiaw@gmail.com>
 <20261108200800.2b3b15cf@pumpkin>
Content-Language: en-US, nl
In-Reply-To: <20261108200800.2b3b15cf@pumpkin>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-20.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 08/11/2026 21:08, David Laight wrote:
> On Thu,  5 Nov 2026 00:45:18 -0800
> Mariia Nikitash <nikitash.mariiaw@gmail.com> wrote:
> 
>> In preparation for removing the deprecated strlcat() API[1], replace
>> the strscpy() and strlcat() calls with seq_buf operations when
>> constructing Hantro video device names.
>>
>> This preserves the resulting strings, including truncation
>> when the compatible string and suffix exceed the destination
>> buffer's capacity.
> 
> This is just stupid...
> 
> David
> 
>>
>> Link: https://github.com/KSPP/linux/issues/370 [1]
>> Signed-off-by: Mariia Nikitash <nikitash.mariiaw@gmail.com>

Nacked-by: Hans Verkuil <hverkuil+cisco@kernel.org>

Just use scnprintf.

Regards,

	Hans

>> ---
>>  drivers/media/platform/verisilicon/hantro_drv.c | 11 ++++++++---
>>  1 file changed, 8 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
>> index 26e5d5547466..2bfcd45cc55e 100644
>> --- a/drivers/media/platform/verisilicon/hantro_drv.c
>> +++ b/drivers/media/platform/verisilicon/hantro_drv.c
>> @@ -17,6 +17,7 @@
>>  #include <linux/platform_device.h>
>>  #include <linux/pm.h>
>>  #include <linux/pm_runtime.h>
>> +#include <linux/seq_buf.h>
>>  #include <linux/slab.h>
>>  #include <linux/videodev2.h>
>>  #include <linux/workqueue.h>
>> @@ -883,6 +884,7 @@ static int hantro_add_func(struct hantro_dev *vpu, unsigned int funcid)
>>  	const struct of_device_id *match;
>>  	struct hantro_func *func;
>>  	struct video_device *vfd;
>> +	struct seq_buf s;
>>  	int ret;
>>  
>>  	match = of_match_node(of_hantro_match, vpu->dev->of_node);
>> @@ -902,9 +904,12 @@ static int hantro_add_func(struct hantro_dev *vpu, unsigned int funcid)
>>  	vfd->vfl_dir = VFL_DIR_M2M;
>>  	vfd->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_M2M_MPLANE;
>>  	vfd->ioctl_ops = &hantro_ioctl_ops;
>> -	strscpy(vfd->name, match->compatible, sizeof(vfd->name));
>> -	strlcat(vfd->name, funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER ?
>> -		"-enc" : "-dec", sizeof(vfd->name));
>> +
>> +	seq_buf_init(&s, vfd->name, sizeof(vfd->name));
>> +	seq_buf_puts(&s, match->compatible);
>> +	seq_buf_puts(&s, funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER ?
>> +			"-enc" : "-dec");
>> +	seq_buf_terminate(&s);
>>  
>>  	if (funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER) {
>>  		vpu->encoder = func;
> 
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
