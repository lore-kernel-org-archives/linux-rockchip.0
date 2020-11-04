Return-Path: <SRS0=nVt2=EK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D40BC2D0A3
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2020 13:46:57 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1D1A721556
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2020 13:46:56 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="UwSpoIbV";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=xs4all.nl header.i=@xs4all.nl header.b="eC2qkJWs"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1D1A721556
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Pb61cHRLDdNhtdbile1Q9KuMj2JOfYhwAyMQK82IG9Y=; b=UwSpoIbVMoKP8UNNuWO6+ZnUM
	lNIuQPvaQROu1SqNzOV5ohaD4COBaPz1TcgpUgDoIeHXuiE6zRIUsvxAFQ9TJrsHJW3jCVxwsFFaA
	0xLfM1tXs0h9zLLuwmIGgWPMKGyDg5eL7ROZ11McFTsoJmED15u6OBXPd2p7yS/4VlsdbB+HurIIr
	GtNH0romS61Y0MrA8RZ+8m4LO3OPqNagEEF4ULihd06g+NqPX3K0URMTF43xOyM8r1d8b4toJX4c4
	Chzutg8av6FoncHrE4GOPtcyCBa9mwHPYwDpgCaC23AxqhxuE1FPfcqzJtltfLRGNSNUpIlq5CUk9
	nRmmhr9Sg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kaJ7k-0005Uo-3i; Wed, 04 Nov 2020 13:46:52 +0000
Received: from lb1-smtp-cloud7.xs4all.net ([194.109.24.24])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaJ7h-0005Ts-TR
 for linux-rockchip@lists.infradead.org; Wed, 04 Nov 2020 13:46:51 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id aJ7Xk5ZXrRiwVaJ7akK0qR; Wed, 04 Nov 2020 14:46:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1604497605; bh=j6/VktKqW5UWMitcsHjVm0wjZqEq/p9Pb9DksT80vjQ=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=eC2qkJWs2AXnsSTLhYntHsBuDkzmJCjzAKny3fLS4TRYXnc4UX3exm98AFgg4NZYD
 B9iXFfEcdR90URTbvHHQZYJnwYI6izTCP7zosBCt/n/SPHdPrz3TYAHm6Y2+4AaVSc
 VKZo8g4KzbUveUutzm5Lw65hryIzTBl0CpYxqWl+N4fr+trR9NgumGb4sIUuFH9/49
 XCNPUpWNcy35T/SwDG4NzX+ja17LctAv53WMOvlXtiUvlYfbCLJfgkMyzkSW0TUiu+
 EO4FeyThyVdDh8qqiZMQmoJ4DUY60LoOFVcRscY6RIXWVEA9GlynHZfchMV+vYLCvm
 L3LM+qGj3DEIA==
Subject: Re: [PATCH v3 1/2] media: uapi: add MEDIA_BUS_FMT_METADATA_FIXED
 media bus format.
To: Sakari Ailus <sakari.ailus@linux.intel.com>
References: <20201030134609.30020-1-dafna.hirschfeld@collabora.com>
 <20201030140241.GQ26150@paasikivi.fi.intel.com>
 <5c8852f5-a803-1bd0-7798-3cca0d7ee9ea@xs4all.nl>
 <20201104123218.GQ26150@paasikivi.fi.intel.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <573fb8b3-e4fd-9239-a407-e904ed18ff3f@xs4all.nl>
Date: Wed, 4 Nov 2020 14:46:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201104123218.GQ26150@paasikivi.fi.intel.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfBKGS3o96G0TyHu13R07jm/faKtHJ+SSOCo9iY0jFUMqT6k9uH2pIxJetbTiQmsqGmjh1EbALmtJk+S17BisgHw8Q7uux1QgG1XXUypVEz29ad7gm1WM
 DR/HN5nqP/46NcwW3SpELHQTPXSfsm7FgxpUUcP3TF3fFkJLm8ct5ekaaSU7eEWfQGcHlS7tn2n/P2pQOZlG0D1fPMeF0w081IHCmyucG8pzveun0KslkUPP
 MwPfbiPZ8ZbX7bjTtoSR+cOaIXQPunTA4kTJpYzj4gI3TdjMp5W9Z4aB0RIRxgoZg4kPfAQljnDV+yykCMTlhEXyy/TwnwPXcT0KRuDY3qUXXDF9gVX9mRAR
 nXI1M/xplzk5B/q6I5QJok6liCkFAwoQFjNsyEYz5EMsMPRnF9TcitBH5c9z2j9wo5fe8Xv4Zt+lti2MGJRPbDSzzVboCaGQZVB3FZYB9WIPXTpb+u/KvAdh
 g0AjWAf3gqDDyfRfjxOH0e9oJzS/o1JQzMFSh8wAaTy9HR4OVrs2VCktXi/I8P92DwCxTXi2hKXZvnnhThMyLILKfGFdNWWp5S9lKA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201104_084650_242330_B821EABB 
X-CRM114-Status: GOOD (  29.28  )
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

On 04/11/2020 13:32, Sakari Ailus wrote:
> Hi Hans,
> 
> On Wed, Nov 04, 2020 at 01:16:03PM +0100, Hans Verkuil wrote:
>> On 30/10/2020 15:02, Sakari Ailus wrote:
>>> Hi Dafna,
>>>
>>> On Fri, Oct 30, 2020 at 02:46:08PM +0100, Dafna Hirschfeld wrote:
>>>> MEDIA_BUS_FMT_METADATA_FIXED should be used when
>>>> the same driver handles both sides of the link and
>>>> the bus format is a fixed metadata format that is
>>>> not configurable from userspace.
>>>> The width and height will be set to 0 for this format.
>>>>
>>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>>>> Acked-by: Helen Koike <helen.koike@collabora.com>
>>>> ---
>>>> changes since v2:
>>>> added documentation in subdev-formats.rst
>>>> changes since v1:
>>>> 1. replace "This format may have 0 height and width."
>>>> with "Width and height will be set to 0 for this format."
>>>> and add it also to the commit log
>>>> 2. s/meida:/media:/ in the patch subject line
>>>>
>>>>  .../media/v4l/subdev-formats.rst              | 27 +++++++++++++++++++
>>>>  include/uapi/linux/media-bus-format.h         |  8 ++++++
>>>>  2 files changed, 35 insertions(+)
>>>>
>>>> diff --git a/Documentation/userspace-api/media/v4l/subdev-formats.rst b/Documentation/userspace-api/media/v4l/subdev-formats.rst
>>>> index c9b7bb3ca089..7f16cbe46e5c 100644
>>>> --- a/Documentation/userspace-api/media/v4l/subdev-formats.rst
>>>> +++ b/Documentation/userspace-api/media/v4l/subdev-formats.rst
>>>> @@ -7899,3 +7899,30 @@ formats.
>>>>        - 0x5001
>>>>        - Interleaved raw UYVY and JPEG image format with embedded meta-data
>>>>  	used by Samsung S3C73MX camera sensors.
>>>> +
>>>> +.. _v4l2-mbus-metadata-fmts:
>>>> +
>>>> +Metadata Formats
>>>> +^^^^^^^^^^^^^^^^
>>>> +
>>>> +This section lists all metadata formats.
>>>> +
>>>> +The following table lists the existing metadata formats.
>>>> +
>>>> +.. tabularcolumns:: |p{8.0cm}|p{1.4cm}|p{7.7cm}|
>>>> +
>>>> +.. flat-table:: Metadata formats
>>>> +    :header-rows:  1
>>>> +    :stub-columns: 0
>>>> +
>>>> +    * - Identifier
>>>> +      - Code
>>>> +      - Comments
>>>> +    * .. _MEDIA-BUS-FMT-METADATA-FIXED:
>>>> +
>>>> +      - MEDIA_BUS_FMT_METADATA_FIXED
>>>> +      - 0x7001
>>>> +      - This format should be used when the same driver handles
>>>> +	both sides of the link and the bus format is a fixed
>>>> +	metadata format that is not configurable from userspace.
>>>> +	Width and height will be set to 0 for this format.
>>>> diff --git a/include/uapi/linux/media-bus-format.h b/include/uapi/linux/media-bus-format.h
>>>> index 84fa53ffb13f..2ce3d891d344 100644
>>>> --- a/include/uapi/linux/media-bus-format.h
>>>> +++ b/include/uapi/linux/media-bus-format.h
>>>> @@ -156,4 +156,12 @@
>>>>  /* HSV - next is	0x6002 */
>>>>  #define MEDIA_BUS_FMT_AHSV8888_1X32		0x6001
>>>>  
>>>> +/*
>>>> + * This format should be used when the same driver handles
>>>> + * both sides of the link and the bus format is a fixed
>>>> + * metadata format that is not configurable from userspace.
>>>> + * Width and height will be set to 0 for this format.
>>>> + */
>>>
>>> Does this mean that metadata with dimensions should not use
>>> MEDIA_BUS_FMT_METADATA_FIXED? I guess that's not the intention? For some
>>> formats the dimensions would be relevant but for others not. I'd thus
>>> replace "will" by "may". Same for the documentation.
>>
>> struct v4l2_meta_format as used with VIDIOC_G/S/TRY_FMT doesn't have
>> a width or height either. Supporting width and height for metadata
>> doesn't really make sense for me for metadata.
>>
>> Explicitly specifying the width and height here indicates that the
>> data is basically an array of width x height of some sort which makes
>> sense for video devices.
>>
>> Metadata is more complex data that cannot be represented like that.
>> If metadata is actually an array, then I'm not sure I would call it
>> metadata, I would probably see it as video with its own pixelformat
>> that contains non-video data.
> 
> Let's say the metadata is laid out in a similar way than an image; you have
> lines of data, followed by some padding at the end, and a line has length
> and a buffer has a number of lines. Sensor metadata falls into this
> description.
> 
> Would you then use struct v4l2_pix_format for it, and use
> V4L2_BUF_TYPE_VIDEO_CAPTURE for it?

Yes. It's still metadata, but it has the same 'format' as video data.
We have similar situations such as with v4l-touch devices: the data
is formatted like video, but it is actually pressure values from a
touch pad. But it is 'video-like' in its behavior.

> 
> That would make a few things easier but this is still metadata, not video
> data. Albeit I guess it's not important to be so strict about that
> interface-wise, indeed this is not a bad fit for such metadata. Still some
> fields such as colourspace and quantisation are not relevant, but that
> holds also for some pixel formats.
> 

So are you OK with setting width and height to 0 for MEDIA_BUS_FMT_METADATA_*?

Regards,

	Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
