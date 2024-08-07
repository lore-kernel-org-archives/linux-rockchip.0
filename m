Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97B38C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 08:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N0SJHTH4VObQ8CDUWXkTb4kR6VZXuDdZAPvix2J+1hw=; b=hclQOXpeZM/BTu
	vv0EKz4WlY0v9krw5Frid4/7BdEA8If+PXNiRWn3+5Wg5BeobAyLKnc7yovpZ/0PVLOevJYaNLjX7
	5yuB7uxrAcjmQ1D06yX4CA+E/fD0NtHrIQBI92VGhHwUeUTTnb8SuDCntY+MXywlh1bh8T5BcCvBM
	OhJF42LtXBkZGMXfboON8NFpo/19MUmQBuIF5gYvOgm9g5UtdqvL2xiZK/42bva9Mh8tJn9iy/T47
	iza0OEy9DUoxaffrtaAK+KcoTBl2SvsiQV87R2HBAT3PQVLm7C8r0z095U28Z+mx5h2rdNx5rSJKc
	v8VGQFOoECYKPrt/FvRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbcJn-00000004QPz-01WQ;
	Wed, 07 Aug 2024 08:46:51 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbcJP-00000004QLp-0ETQ
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Aug 2024 08:46:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4B30ACE1034;
	Wed,  7 Aug 2024 08:46:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C3E4C32782;
	Wed,  7 Aug 2024 08:46:23 +0000 (UTC)
Message-ID: <9281e270-01a9-434d-b19a-92978cdbdcc5@xs4all.nl>
Date: Wed, 7 Aug 2024 10:46:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/3] media: videodev2: Add flag to unconditionally
 enumerate pixel formats
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
References: <20240731093457.29095-1-benjamin.gaignard@collabora.com>
 <20240731093457.29095-2-benjamin.gaignard@collabora.com>
 <c9e6ed97-bb42-465a-9bce-797adb44906f@xs4all.nl>
Content-Language: en-US, nl
In-Reply-To: <c9e6ed97-bb42-465a-9bce-797adb44906f@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_014627_489821_4BD22037 
X-CRM114-Status: GOOD (  25.07  )
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

On 07/08/2024 10:39, Hans Verkuil wrote:
> On 31/07/2024 11:34, Benjamin Gaignard wrote:
>> When the index is ORed with V4L2_FMTDESC_FLAG_ENUM_ALL the
>> driver clears the flag and enumerate all the possible formats,
>> ignoring any limitations from the current configuration.
>> Drivers which do not support this flag yet always return an EINVAL.
>>
>> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
>> ---
>> change in version 6:
>> - Change flag name.
>> - Improve documentation.
>>
>>  .../userspace-api/media/v4l/vidioc-enum-fmt.rst  | 16 +++++++++++++++-
>>  .../media/videodev2.h.rst.exceptions             |  1 +
>>  include/uapi/linux/videodev2.h                   |  3 +++
>>  3 files changed, 19 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
>> index 3adb3d205531..1112dc9044b2 100644
>> --- a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
>> +++ b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
>> @@ -85,7 +85,15 @@ the ``mbus_code`` field is handled differently:
>>      * - __u32
>>        - ``index``
>>        - Number of the format in the enumeration, set by the application.
>> -	This is in no way related to the ``pixelformat`` field.
>> +        This is in no way related to the ``pixelformat`` field.
>> +        When the index is ORed with ``V4L2_FMTDESC_FLAG_ENUM_ALL`` the
>> +        driver clears the flag and enumerate all the possible formats,
> 
> enumerate -> enumerates
> 
>> +        ignoring any limitations from the current configuration. Drivers
>> +        which do not support this flag yet always return an ``EINVAL``
> 
> Drop the 'yet'.
> 
> But this raises a question: should this flag only be supported by drivers
> that can actually return different format lists depending on this flag?
> 
> Or can it be supported as well by a driver where this makes no difference?
> 
> I'm inclined to limit it to drivers that actually can return different
> results. If nothing else, that will indicate to the application that this
> is actually possible.
> 
> If we agree on that, then that should be documented as well.

I also think that this flag makes no sense for drivers that have
V4L2_CAP_IO_MC set, since in that case the list of returned formats shall
not depend on the active configuration (see
https://hverkuil.home.xs4all.nl/spec/userspace-api/v4l/vidioc-enum-fmt.html ).

I think this should be mentioned in the documentation and tested for in the
compliance test.

Regards,

	Hans

> 
>> +        error code.
>> +        Formats enumerated when using ``V4L2_FMTDESC_FLAG_ENUM_ALL`` flag
>> +        shouldn't be used when calling :c:func:`VIDIOC_ENUM_FRAMESIZES`
>> +        or :c:func:`VIDIOC_ENUM_FRAMEINTERVALS`.
>>      * - __u32
>>        - ``type``
>>        - Type of the data stream, set by the application. Only these types
>> @@ -234,6 +242,12 @@ the ``mbus_code`` field is handled differently:
>>  	valid. The buffer consists of ``height`` lines, each having ``width``
>>  	Data Units of data and the offset (in bytes) between the beginning of
>>  	each two consecutive lines is ``bytesperline``.
>> +    * - ``V4L2_FMTDESC_FLAG_ENUM_ALL``
>> +      - 0x80000000
>> +      - When the applications ORs ``index`` with ``V4L2_FMTDESC_FLAG_ENUM_ALL`` flag
>> +        the driver enumerates all the possible pixel formats without taking care
>> +        of any already set configuration. Drivers which do not support this flag
>> +        yet, always return ``EINVAL``.
> 
> Drop 'yet'
> 
>>  
>>  Return Value
>>  ============
>> diff --git a/Documentation/userspace-api/media/videodev2.h.rst.exceptions b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
>> index bdc628e8c1d6..0a9ea9686c24 100644
>> --- a/Documentation/userspace-api/media/videodev2.h.rst.exceptions
>> +++ b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
>> @@ -216,6 +216,7 @@ replace define V4L2_FMT_FLAG_CSC_YCBCR_ENC fmtdesc-flags
>>  replace define V4L2_FMT_FLAG_CSC_HSV_ENC fmtdesc-flags
>>  replace define V4L2_FMT_FLAG_CSC_QUANTIZATION fmtdesc-flags
>>  replace define V4L2_FMT_FLAG_META_LINE_BASED fmtdesc-flags
>> +replace define V4L2_FMTDESC_FLAG_ENUM_ALL fmtdesc-flags
>>  
>>  # V4L2 timecode types
>>  replace define V4L2_TC_TYPE_24FPS timecode-type
>> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
>> index 4e91362da6da..421a30cb0c51 100644
>> --- a/include/uapi/linux/videodev2.h
>> +++ b/include/uapi/linux/videodev2.h
>> @@ -904,6 +904,9 @@ struct v4l2_fmtdesc {
>>  #define V4L2_FMT_FLAG_CSC_QUANTIZATION		0x0100
>>  #define V4L2_FMT_FLAG_META_LINE_BASED		0x0200
>>  
>> +/*  Format description flag, to be ORed with the index */
>> +#define V4L2_FMTDESC_FLAG_ENUM_ALL		0x80000000
>> +
>>  	/* Frame Size and frame rate enumeration */
>>  /*
>>   *	F R A M E   S I Z E   E N U M E R A T I O N
> 
> Regards,
> 
> 	Hans
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
