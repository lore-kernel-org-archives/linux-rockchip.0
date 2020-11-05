Return-Path: <SRS0=eRos=EL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 714BBC00A89
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2020 12:35:22 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 869452078E
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2020 12:35:21 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="NpxoosuJ";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=xs4all.nl header.i=@xs4all.nl header.b="cue1Zrhw"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 869452078E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J5ZX8P3dQOiBM79ZLBTicizY/cg4fMZrc+s7o2/K9a4=; b=NpxoosuJQaG5sd2nVaR5/U9kv
	zNBG/J9PhBWAeBE5PLKqJl0H8eXN5tqBFX1GLhxGCLvP5TOCFEG/gxQYg91dHUaFPUinghFNvOeQq
	YtZhWAuYv/kwiy6D3+Sz4d/O7w7x8GItrJKejdAkdr+DSQ8OGprJ3sKaXQJhl0hVakFbNGAinCC/y
	90spuLdcToxwqzDheZXUZVUGJhxwNBXGBZkZEHtOfR3f/eb9AMHBEPFQIm8xF+Wnz1wP1BIxVI2xB
	lWm/5EfthR8AsJNxvqeely2MDpx13oOvHqW2hn1rRwxchULaio820hL/F8UF2IoR/d5ZTbxfNY9c0
	yLYngM2yA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kaeU0-0002dj-Jk; Thu, 05 Nov 2020 12:35:16 +0000
Received: from lb3-smtp-cloud8.xs4all.net ([194.109.24.29])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaeTx-0002cX-QQ
 for linux-rockchip@lists.infradead.org; Thu, 05 Nov 2020 12:35:14 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud8.xs4all.net with ESMTPA
 id aeTkkCup0NanzaeTnkoKTw; Thu, 05 Nov 2020 13:35:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1604579707; bh=CvSxDX9wQb32LlMB7/lzKcwReuyk6sk83rE6bpZrRTg=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=cue1Zrhw+WDA0Kno/d/AhCIaXxTc7ejXyUMgPtnC0AR6Lg6dWB00+c4SdYLrNWrA/
 twVvivBK0jdkg/38zPJdzVZahmX0zFOlhJRNJ3MyYi+6icttGT005c2pNKR/kOAzKR
 7/b9JqwWKSpKvUYZ3t2PahLgg1ATVNv1N5BYA/daAeBbTa9sMyb5dcD0k5OxGyjJj+
 BUs076Mc3JKv6fCHrbgRhoK/kI9I+XtzywODZEhjSWBcFiQGxbi53wIgsg6oCVYZE7
 bq/uOx2ZeC2fu7b9kP1fkjgC0mP4C5OPYRJdYEeiBqfu9yRKPrU6xRaUAp4hRq/I1d
 OuKKsn5XgmPYw==
Subject: Re: [PATCH v3 1/2] media: uapi: add MEDIA_BUS_FMT_METADATA_FIXED
 media bus format.
To: Sakari Ailus <sakari.ailus@linux.intel.com>
References: <20201030134609.30020-1-dafna.hirschfeld@collabora.com>
 <20201030140241.GQ26150@paasikivi.fi.intel.com>
 <5c8852f5-a803-1bd0-7798-3cca0d7ee9ea@xs4all.nl>
 <20201104123218.GQ26150@paasikivi.fi.intel.com>
 <573fb8b3-e4fd-9239-a407-e904ed18ff3f@xs4all.nl>
 <20201104145456.GR26150@paasikivi.fi.intel.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <98059490-6ab1-c895-5a20-e1b14b70c624@xs4all.nl>
Date: Thu, 5 Nov 2020 13:35:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201104145456.GR26150@paasikivi.fi.intel.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfESwrLD7Q/5VLr5TD8KhPZRccYDg4FzA8PK+X+KDPqAlmw5DszWyPAJgSYZQrVAsoAlwuWl7vRXOQcR1aDILVfic+aUyhv2b4KRX4erDVJgs8af5Wds5
 N7iLPDysEGpMjucDbOZjscwipWsJdvb7D/jq7uOu3toS9enS2RJODU3+iEl1pS+AWM2d/eG+dn29OKaQ82QQHJB9anxRcktdiB5B8AOvjom7RYUi80o/XR6r
 HjEd5XlhrMJdHbTciO4Ltb9a3SFwnxJu6nD4U8rFSR21feN16pOw2P6qVAX+1DyYxG/pzcn8ICZy3XQOCvzOJnDkAvAPd2oEh6ryvwp6qahbogGjeaIo5GTi
 WhWTkHLyo5zdsyKGX234PQ6JgKGqxU/YOr0cqFRBZ0vJRN0iS+y4nf+3MO25AkPTrYTFCj3y2th/pZORMpyeE8YbV0IU0mPypX7JMaYbkyPa5gea5PwwKLFZ
 PMmsR0Jxui2tD5NIZ6zMlPkhJKD+taM5I8A3xKHD1hF61BFPRzuUj8mHUSVh5HYbwG1aedPJehSuidmn9xumNX7JEF5kb6UEQXb+Wg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201105_073513_971775_E83B70A3 
X-CRM114-Status: GOOD (  28.75  )
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
Cc: mchehab@kernel.org, Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 dafna3@gmail.com, tfiga@chromium.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 04/11/2020 15:54, Sakari Ailus wrote:
> Hi Hans,
> 
> On Wed, Nov 04, 2020 at 02:46:39PM +0100, Hans Verkuil wrote:
>> On 04/11/2020 13:32, Sakari Ailus wrote:
>>> Hi Hans,
>>>
>>> On Wed, Nov 04, 2020 at 01:16:03PM +0100, Hans Verkuil wrote:
>>>> On 30/10/2020 15:02, Sakari Ailus wrote:
>>>>> Hi Dafna,
>>>>>
>>>>> On Fri, Oct 30, 2020 at 02:46:08PM +0100, Dafna Hirschfeld wrote:
>>>>>> MEDIA_BUS_FMT_METADATA_FIXED should be used when
>>>>>> the same driver handles both sides of the link and
>>>>>> the bus format is a fixed metadata format that is
>>>>>> not configurable from userspace.
>>>>>> The width and height will be set to 0 for this format.
>>>>>>
>>>>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>>>>>> Acked-by: Helen Koike <helen.koike@collabora.com>
>>>>>> ---
>>>>>> changes since v2:
>>>>>> added documentation in subdev-formats.rst
>>>>>> changes since v1:
>>>>>> 1. replace "This format may have 0 height and width."
>>>>>> with "Width and height will be set to 0 for this format."
>>>>>> and add it also to the commit log
>>>>>> 2. s/meida:/media:/ in the patch subject line
>>>>>>
>>>>>>  .../media/v4l/subdev-formats.rst              | 27 +++++++++++++++++++
>>>>>>  include/uapi/linux/media-bus-format.h         |  8 ++++++
>>>>>>  2 files changed, 35 insertions(+)
>>>>>>
>>>>>> diff --git a/Documentation/userspace-api/media/v4l/subdev-formats.rst b/Documentation/userspace-api/media/v4l/subdev-formats.rst
>>>>>> index c9b7bb3ca089..7f16cbe46e5c 100644
>>>>>> --- a/Documentation/userspace-api/media/v4l/subdev-formats.rst
>>>>>> +++ b/Documentation/userspace-api/media/v4l/subdev-formats.rst
>>>>>> @@ -7899,3 +7899,30 @@ formats.
>>>>>>        - 0x5001
>>>>>>        - Interleaved raw UYVY and JPEG image format with embedded meta-data
>>>>>>  	used by Samsung S3C73MX camera sensors.
>>>>>> +
>>>>>> +.. _v4l2-mbus-metadata-fmts:
>>>>>> +
>>>>>> +Metadata Formats
>>>>>> +^^^^^^^^^^^^^^^^
>>>>>> +
>>>>>> +This section lists all metadata formats.
>>>>>> +
>>>>>> +The following table lists the existing metadata formats.
>>>>>> +
>>>>>> +.. tabularcolumns:: |p{8.0cm}|p{1.4cm}|p{7.7cm}|
>>>>>> +
>>>>>> +.. flat-table:: Metadata formats
>>>>>> +    :header-rows:  1
>>>>>> +    :stub-columns: 0
>>>>>> +
>>>>>> +    * - Identifier
>>>>>> +      - Code
>>>>>> +      - Comments
>>>>>> +    * .. _MEDIA-BUS-FMT-METADATA-FIXED:
>>>>>> +
>>>>>> +      - MEDIA_BUS_FMT_METADATA_FIXED
>>>>>> +      - 0x7001
>>>>>> +      - This format should be used when the same driver handles
>>>>>> +	both sides of the link and the bus format is a fixed
>>>>>> +	metadata format that is not configurable from userspace.
>>>>>> +	Width and height will be set to 0 for this format.
>>>>>> diff --git a/include/uapi/linux/media-bus-format.h b/include/uapi/linux/media-bus-format.h
>>>>>> index 84fa53ffb13f..2ce3d891d344 100644
>>>>>> --- a/include/uapi/linux/media-bus-format.h
>>>>>> +++ b/include/uapi/linux/media-bus-format.h
>>>>>> @@ -156,4 +156,12 @@
>>>>>>  /* HSV - next is	0x6002 */
>>>>>>  #define MEDIA_BUS_FMT_AHSV8888_1X32		0x6001
>>>>>>  
>>>>>> +/*
>>>>>> + * This format should be used when the same driver handles
>>>>>> + * both sides of the link and the bus format is a fixed
>>>>>> + * metadata format that is not configurable from userspace.
>>>>>> + * Width and height will be set to 0 for this format.
>>>>>> + */
>>>>>
>>>>> Does this mean that metadata with dimensions should not use
>>>>> MEDIA_BUS_FMT_METADATA_FIXED? I guess that's not the intention? For some
>>>>> formats the dimensions would be relevant but for others not. I'd thus
>>>>> replace "will" by "may". Same for the documentation.
>>>>
>>>> struct v4l2_meta_format as used with VIDIOC_G/S/TRY_FMT doesn't have
>>>> a width or height either. Supporting width and height for metadata
>>>> doesn't really make sense for me for metadata.
>>>>
>>>> Explicitly specifying the width and height here indicates that the
>>>> data is basically an array of width x height of some sort which makes
>>>> sense for video devices.
>>>>
>>>> Metadata is more complex data that cannot be represented like that.
>>>> If metadata is actually an array, then I'm not sure I would call it
>>>> metadata, I would probably see it as video with its own pixelformat
>>>> that contains non-video data.
>>>
>>> Let's say the metadata is laid out in a similar way than an image; you have
>>> lines of data, followed by some padding at the end, and a line has length
>>> and a buffer has a number of lines. Sensor metadata falls into this
>>> description.
>>>
>>> Would you then use struct v4l2_pix_format for it, and use
>>> V4L2_BUF_TYPE_VIDEO_CAPTURE for it?
>>
>> Yes. It's still metadata, but it has the same 'format' as video data.
>> We have similar situations such as with v4l-touch devices: the data
>> is formatted like video, but it is actually pressure values from a
>> touch pad. But it is 'video-like' in its behavior.
>>
>>>
>>> That would make a few things easier but this is still metadata, not video
>>> data. Albeit I guess it's not important to be so strict about that
>>> interface-wise, indeed this is not a bad fit for such metadata. Still some
>>> fields such as colourspace and quantisation are not relevant, but that
>>> holds also for some pixel formats.
>>>
>>
>> So are you OK with setting width and height to 0 for MEDIA_BUS_FMT_METADATA_*?
> 
> One more question.
> 
> What do you do if a link can carry both metadata (as in
> V4L2_BUF_TYPE_METADATA_CAPTURE) as well as pixel data, but with a fixed
> format?
> 
> I'm not sure we have any such case at the moment but it's not
> inconceivable.
> 

This should be reflected in the mediabus format. So METADATA_FIXED if it carries
metadata, or a video format if it carries video. Userspace could configure this
with VIDIOC_SUBDEV_S_FMT if it is something that userspace can actually change.

Regards,

	Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
