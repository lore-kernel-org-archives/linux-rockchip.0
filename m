Return-Path: <SRS0=455t=EF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9A80C4363A
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 11:59:03 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 04BCE20729
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 11:59:02 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="y7nsNvAQ";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=xs4all.nl header.i=@xs4all.nl header.b="RoBsC/hC"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 04BCE20729
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FJa+G5UJO/Au4dvsimEj3aBI3X+u8LE+e7LC44ZsG2U=; b=y7nsNvAQgWlTKvLk3ELEc/UGf
	+lsm/zOrc4fY4iN3dcWYT0a1Nj+QLh7X1t1dXyL5r+LNrrD8uS4+mUhePuHeUMAispqW/t/voX/vM
	IlIdcjth5CFgZln0+kDRyEF8JNZh5ZZ5Y2+f9RgMP66upMxKLFuOZTQdYpePo2HBu/Wl6ctbtWnTV
	JCO7NlaHCXEHrR5L55l6N1vV8jOvBFO47ydTZCsFHPTmXmsjBPorOozUImFO4vOftQQC43ouyJ6Yp
	AlQGJbHLWCg6VeiKst/6adZnFx4TstSVkSxhgkSU/nxI0DaiET4zG6ttNLeZTuLmEceHM6lkjVn/A
	9abXIpNjA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYT3X-0008AP-3M; Fri, 30 Oct 2020 11:58:55 +0000
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYT3U-00089E-R1
 for linux-rockchip@lists.infradead.org; Fri, 30 Oct 2020 11:58:53 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id YT3OkoGvpWvjMYT3RkHK0U; Fri, 30 Oct 2020 12:58:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1604059130; bh=QTOpKIcgbDQHtlwnaUtmIQCJmnmG8z+TXJliV76g014=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=RoBsC/hCZnZzSo5n482vujzxhPaoq+dE/8+srMj3HLfbK7ZcAUBp0QlTyrEYAMqum
 fpvpm4nsCd0z1Du0yL/f9sSRBYnvmRGb/Xa9St4guTz4xXik6LBTZ9U8eOHTsC5LQW
 MFDiBJUMkehW8Xwd/LLdSZcSaWoTRjuRL10VD6vilba+hioOeDjiFcTCR3PiYK/Oqx
 3ZHzNf07OOuC8DSHAWU90Fj+h4WZJ5B8Hfezq6Z+bs224o+dR1bgOuZpJPw8rfmtKL
 eYUTx4mDMRYcyWwktC7R1lElmQbptTmLz+iiGBlx8W7OwMDNxLDlHt62+KrZkPq66d
 max9dGavN+AVg==
Subject: Re: [PATCH v2 1/2] media: uapi: add MEDIA_BUS_FMT_METADATA_FIXED
 media bus format.
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20201020154522.654-1-dafna.hirschfeld@collabora.com>
 <04d5a149-8745-ae20-a622-bcfcafb69cbb@xs4all.nl>
 <36159037-bf65-f7be-8deb-735afd726eee@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <0532e316-ff0f-6a6c-8a12-6b013f866e58@xs4all.nl>
Date: Fri, 30 Oct 2020 12:58:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <36159037-bf65-f7be-8deb-735afd726eee@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfPQOXBn2MuSK4FIW2+sKbmS9QBrJiTHCFjcUIRDGS2z5fvZCXzCUkX4tdLwHYs0o/dj/JzSA37IVUya4BvCcFgLcSQqWxk5lKZawRLAMfYiwQvCAPoVP
 P/q0ieSIkI8hdt5P3VBsx4Q7vNjIjyc7Ze3ua6Tv2CZvo7SKOAYq3pdHdLYVX/neV4kH0SY8+3fyiL4ZkL4gKCbegQpH0lsHe9cdwazePkYnBTicj4+A1ugZ
 j0oOW15peiQrK5CHGbre9e/b2VuW8j5EOLjZTZVggvDhZJIyX8hmFg2rKjwDUgni5t+bpirlqvMEWMbKu4BpZ8cGuvcTFEK0ebtIhP1aJ5h1hfdJCLc83bul
 1CMSPYpG+7OfypjYHn9QVCNWWZEogCsQW1JdZUqAS5i6jX5G3rDRFbvE6Ys+/gWX4QsJea6EP+jpuD0qMmNgLspsy+CXL3SQuTUc5eqEGi++sJZ7kdkoHvlz
 s9/lbrUwkvBEUU6L/ynjG1p/JHJeZxahL1d0BV0Gm81KA148NVq1wavZ2rFJFAPYO0361d8iqb1bPViFnmf2+Y4qOfgmaUrBPT0I9Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201030_075852_989322_C961DF03 
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
Cc: mchehab@kernel.org, dafna3@gmail.com, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 30/10/2020 12:34, Dafna Hirschfeld wrote:
> 
> 
> Am 30.10.20 um 09:58 schrieb Hans Verkuil:
>> On 20/10/2020 17:45, Dafna Hirschfeld wrote:
>>> MEDIA_BUS_FMT_METADATA_FIXED should be used when
>>> the same driver handles both sides of the link and
>>> the bus format is a fixed metadata format that is
>>> not configurable from userspace.
>>> The width and height will be set to 0 for this format.
>>>
>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>>> Acked-by: Helen Koike <helen.koike@collabora.com>
>>> ---
>>> changes since v1:
>>> 1. replace "This format may have 0 height and width."
>>> with "Width and height will be set to 0 for this format."
>>> and add it also to the commit log
>>> 2. s/meida:/media:/ in the patch subject line
>>>
>>>   include/uapi/linux/media-bus-format.h | 8 ++++++++
>>>   1 file changed, 8 insertions(+)
>>>
>>> diff --git a/include/uapi/linux/media-bus-format.h b/include/uapi/linux/media-bus-format.h
>>> index 84fa53ffb13f..2ce3d891d344 100644
>>> --- a/include/uapi/linux/media-bus-format.h
>>> +++ b/include/uapi/linux/media-bus-format.h
>>> @@ -156,4 +156,12 @@
>>>   /* HSV - next is	0x6002 */
>>>   #define MEDIA_BUS_FMT_AHSV8888_1X32		0x6001
>>>   
>>> +/*
>>> + * This format should be used when the same driver handles
>>> + * both sides of the link and the bus format is a fixed
>>> + * metadata format that is not configurable from userspace.
>>> + * Width and height will be set to 0 for this format.
>>> + */
>>> +#define MEDIA_BUS_FMT_METADATA_FIXED		0x7001
>>> +
>>>   #endif /* __LINUX_MEDIA_BUS_FORMAT_H */
>>>
>>
>> Documentation/userspace-api/media/v4l/subdev-formats.rst also needs to
>> be updated.
> 
> hi,
> I wonder what should be the documentation, since this mbus code

Basically the same as you wrote in the comment above.

> is for very specific use case. You think that the 0x7* mbus codes
> should be 'metadata mbus codes'?

Yes.

Regards,

	Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
