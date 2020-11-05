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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81806C4742C
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2020 14:21:57 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 109992071A
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2020 14:21:57 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="aQPZ+pbz"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 109992071A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zL1JxT1thEI7Ik1E9i79LEtTQD3QM9OIRAoNI24KgSs=; b=aQPZ+pbzo/SHhWMenrlvWXG3B
	liWnUhnHVMjVcQm4yaR4rroUsqf6JJF2ELGpszx8XblJzdfXc/do7xJb8+iUaZBOU0XdnYS8ybhi6
	7FW38RHoHNsEgh4sozxzK7VC+RTvdavPOETZcBkOMMew7J7o5A2/eOxbfQxzWLf6HGO7uuyi9hiS4
	QoTzFiQkGQIpam8tgwWsCHrXvUL+604j/tP8CKkDrJTUkoTHJgrDxBeORCrBciwl1IJuKWqJcv2Ww
	6gSveaDyPxU7AnpFcqwKWiPqeone5i0hRfXx4X80ZwzJ215HXyYOYlru7KF05/mY683fytxIktoAZ
	/UAE7o25w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kag9A-0002e4-Op; Thu, 05 Nov 2020 14:21:52 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kag98-0002dT-CC
 for linux-rockchip@lists.infradead.org; Thu, 05 Nov 2020 14:21:51 +0000
Received: from [IPv6:2003:c7:cf1c:4d00:69cd:280b:d442:5f4c]
 (p200300c7cf1c4d0069cd280bd4425f4c.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf1c:4d00:69cd:280b:d442:5f4c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E28761F4646A;
 Thu,  5 Nov 2020 14:21:47 +0000 (GMT)
Subject: Re: [PATCH v3 1/2] media: uapi: add MEDIA_BUS_FMT_METADATA_FIXED
 media bus format.
To: Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Jacopo Mondi <jacopo@jmondi.org>
References: <20201030134609.30020-1-dafna.hirschfeld@collabora.com>
 <20201030140241.GQ26150@paasikivi.fi.intel.com>
 <5c8852f5-a803-1bd0-7798-3cca0d7ee9ea@xs4all.nl>
 <20201104123218.GQ26150@paasikivi.fi.intel.com>
 <573fb8b3-e4fd-9239-a407-e904ed18ff3f@xs4all.nl>
 <20201104145456.GR26150@paasikivi.fi.intel.com>
 <98059490-6ab1-c895-5a20-e1b14b70c624@xs4all.nl>
 <20201105124542.GE26150@paasikivi.fi.intel.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <851de312-7c6b-a0a0-0a3c-70a9a27cb0b5@collabora.com>
Date: Thu, 5 Nov 2020 15:21:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201105124542.GE26150@paasikivi.fi.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201105_092150_615980_917B38B3 
X-CRM114-Status: GOOD (  28.63  )
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
 laurent.pinchart@ideasonboard.com, kernel@collabora.com,
 ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi

Am 05.11.20 um 13:45 schrieb Sakari Ailus:
> On Thu, Nov 05, 2020 at 01:35:00PM +0100, Hans Verkuil wrote:
>> On 04/11/2020 15:54, Sakari Ailus wrote:
>>> Hi Hans,
>>>
>>> On Wed, Nov 04, 2020 at 02:46:39PM +0100, Hans Verkuil wrote:
>>>> On 04/11/2020 13:32, Sakari Ailus wrote:
>>>>> Hi Hans,
>>>>>
>>>>> On Wed, Nov 04, 2020 at 01:16:03PM +0100, Hans Verkuil wrote:
>>>>>> On 30/10/2020 15:02, Sakari Ailus wrote:
>>>>>>> Hi Dafna,
>>>>>>>
>>>>>>> On Fri, Oct 30, 2020 at 02:46:08PM +0100, Dafna Hirschfeld wrote:
>>>>>>>> MEDIA_BUS_FMT_METADATA_FIXED should be used when
>>>>>>>> the same driver handles both sides of the link and
>>>>>>>> the bus format is a fixed metadata format that is
>>>>>>>> not configurable from userspace.
>>>>>>>> The width and height will be set to 0 for this format.
>>>>>>>>
>>>>>>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>>>>>>>> Acked-by: Helen Koike <helen.koike@collabora.com>
>>>>>>>> ---
>>>>>>>> changes since v2:
>>>>>>>> added documentation in subdev-formats.rst
>>>>>>>> changes since v1:
>>>>>>>> 1. replace "This format may have 0 height and width."
>>>>>>>> with "Width and height will be set to 0 for this format."
>>>>>>>> and add it also to the commit log
>>>>>>>> 2. s/meida:/media:/ in the patch subject line
>>>>>>>>
>>>>>>>>   .../media/v4l/subdev-formats.rst              | 27 +++++++++++++++++++
>>>>>>>>   include/uapi/linux/media-bus-format.h         |  8 ++++++
>>>>>>>>   2 files changed, 35 insertions(+)
>>>>>>>>
>>>>>>>> diff --git a/Documentation/userspace-api/media/v4l/subdev-formats.rst b/Documentation/userspace-api/media/v4l/subdev-formats.rst
>>>>>>>> index c9b7bb3ca089..7f16cbe46e5c 100644
>>>>>>>> --- a/Documentation/userspace-api/media/v4l/subdev-formats.rst
>>>>>>>> +++ b/Documentation/userspace-api/media/v4l/subdev-formats.rst
>>>>>>>> @@ -7899,3 +7899,30 @@ formats.
>>>>>>>>         - 0x5001
>>>>>>>>         - Interleaved raw UYVY and JPEG image format with embedded meta-data
>>>>>>>>   	used by Samsung S3C73MX camera sensors.
>>>>>>>> +
>>>>>>>> +.. _v4l2-mbus-metadata-fmts:
>>>>>>>> +
>>>>>>>> +Metadata Formats
>>>>>>>> +^^^^^^^^^^^^^^^^
>>>>>>>> +
>>>>>>>> +This section lists all metadata formats.
>>>>>>>> +
>>>>>>>> +The following table lists the existing metadata formats.
>>>>>>>> +
>>>>>>>> +.. tabularcolumns:: |p{8.0cm}|p{1.4cm}|p{7.7cm}|
>>>>>>>> +
>>>>>>>> +.. flat-table:: Metadata formats
>>>>>>>> +    :header-rows:  1
>>>>>>>> +    :stub-columns: 0
>>>>>>>> +
>>>>>>>> +    * - Identifier
>>>>>>>> +      - Code
>>>>>>>> +      - Comments
>>>>>>>> +    * .. _MEDIA-BUS-FMT-METADATA-FIXED:
>>>>>>>> +
>>>>>>>> +      - MEDIA_BUS_FMT_METADATA_FIXED
>>>>>>>> +      - 0x7001
>>>>>>>> +      - This format should be used when the same driver handles
>>>>>>>> +	both sides of the link and the bus format is a fixed
>>>>>>>> +	metadata format that is not configurable from userspace.
>>>>>>>> +	Width and height will be set to 0 for this format.
>>>>>>>> diff --git a/include/uapi/linux/media-bus-format.h b/include/uapi/linux/media-bus-format.h
>>>>>>>> index 84fa53ffb13f..2ce3d891d344 100644
>>>>>>>> --- a/include/uapi/linux/media-bus-format.h
>>>>>>>> +++ b/include/uapi/linux/media-bus-format.h
>>>>>>>> @@ -156,4 +156,12 @@
>>>>>>>>   /* HSV - next is	0x6002 */
>>>>>>>>   #define MEDIA_BUS_FMT_AHSV8888_1X32		0x6001
>>>>>>>>   
>>>>>>>> +/*
>>>>>>>> + * This format should be used when the same driver handles
>>>>>>>> + * both sides of the link and the bus format is a fixed
>>>>>>>> + * metadata format that is not configurable from userspace.
>>>>>>>> + * Width and height will be set to 0 for this format.
>>>>>>>> + */
>>>>>>>
>>>>>>> Does this mean that metadata with dimensions should not use
>>>>>>> MEDIA_BUS_FMT_METADATA_FIXED? I guess that's not the intention? For some
>>>>>>> formats the dimensions would be relevant but for others not. I'd thus
>>>>>>> replace "will" by "may". Same for the documentation.
>>>>>>
>>>>>> struct v4l2_meta_format as used with VIDIOC_G/S/TRY_FMT doesn't have
>>>>>> a width or height either. Supporting width and height for metadata
>>>>>> doesn't really make sense for me for metadata.
>>>>>>
>>>>>> Explicitly specifying the width and height here indicates that the
>>>>>> data is basically an array of width x height of some sort which makes
>>>>>> sense for video devices.
>>>>>>
>>>>>> Metadata is more complex data that cannot be represented like that.
>>>>>> If metadata is actually an array, then I'm not sure I would call it
>>>>>> metadata, I would probably see it as video with its own pixelformat
>>>>>> that contains non-video data.
>>>>>
>>>>> Let's say the metadata is laid out in a similar way than an image; you have
>>>>> lines of data, followed by some padding at the end, and a line has length
>>>>> and a buffer has a number of lines. Sensor metadata falls into this
>>>>> description.
>>>>>
>>>>> Would you then use struct v4l2_pix_format for it, and use
>>>>> V4L2_BUF_TYPE_VIDEO_CAPTURE for it?
>>>>
>>>> Yes. It's still metadata, but it has the same 'format' as video data.
>>>> We have similar situations such as with v4l-touch devices: the data
>>>> is formatted like video, but it is actually pressure values from a
>>>> touch pad. But it is 'video-like' in its behavior.
>>>>
>>>>>
>>>>> That would make a few things easier but this is still metadata, not video
>>>>> data. Albeit I guess it's not important to be so strict about that
>>>>> interface-wise, indeed this is not a bad fit for such metadata. Still some
>>>>> fields such as colourspace and quantisation are not relevant, but that
>>>>> holds also for some pixel formats.
>>>>>
>>>>
>>>> So are you OK with setting width and height to 0 for MEDIA_BUS_FMT_METADATA_*?
>>>
>>> One more question.
>>>
>>> What do you do if a link can carry both metadata (as in
>>> V4L2_BUF_TYPE_METADATA_CAPTURE) as well as pixel data, but with a fixed
>>> format?
>>>
>>> I'm not sure we have any such case at the moment but it's not
>>> inconceivable.
>>>
>>
>> This should be reflected in the mediabus format. So METADATA_FIXED if it carries
>> metadata, or a video format if it carries video. Userspace could configure this
>> with VIDIOC_SUBDEV_S_FMT if it is something that userspace can actually change.
> 
> Works for me.
> 
> Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> 

Hi,
There is another patch sent by jmondi that adds csi-2 embedded data format:

https://patchwork.kernel.org/project/linux-media/patch/20201102165258.408049-3-jacopo@jmondi.org/

Maybe it worth thinking already how those two patches should fit together.
Currently they both try to acquire 0x7001 code.

Thanks,
Dafna


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
