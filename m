Return-Path: <SRS0=J3GV=B3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907DAC433E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 10:25:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 632AF2078A
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 10:25:11 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ayKtVUlN"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 632AF2078A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PxFF43YDX7OP/ZZT4kfZ7tBoAEXqm3fv4+qFb0u8M8Q=; b=ayKtVUlN79SBSxaQN1H4zk2Wu
	gZHZCstli2VrJR22VPFOB+c6X/zuYTXcXhOx1CQ0/7YAj1/8aEHAUOBKUsWhB2UdANs9DmWIBWcys
	zgcv+wXfIeFA2v+7BQb/+vNeg8s9OKY2HDX1k9aNxUXXLGU/o77KAIA9ZfZnMvBuIDNzB8SI7oa9z
	+xwVw1Zwx1PQ+vki1JUuHhCRzgk2qLLG6woZNFNhQG5GTIeoA5Amux0xo9bpF1Diyue0HDKHTgd4U
	B4yNurFRj81b/bYtKqAvwr4Nw/qU9RaScGDAsJX4aHp2nmafks4W3AmyXfn6UAqIGKEs9RsfB3gMJ
	ka9ljLpVA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7cKB-0005Rm-7S; Mon, 17 Aug 2020 10:25:07 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7cK9-0005QT-Lk
 for linux-rockchip@lists.infradead.org; Mon, 17 Aug 2020 10:25:06 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 1250028A748
Subject: Re: [PATCH v5 4/7] v4l2: extend the CSC API to subdevice.
To: Tomasz Figa <tfiga@chromium.org>
References: <20200703171019.19270-1-dafna.hirschfeld@collabora.com>
 <20200703171019.19270-5-dafna.hirschfeld@collabora.com>
 <20200722125328.GA1828171@chromium.org>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <8cc4f3a2-d116-ec0a-a838-b35859cdc34e@collabora.com>
Date: Mon, 17 Aug 2020 12:24:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200722125328.GA1828171@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_062505_804975_F91CB2D6 
X-CRM114-Status: GOOD (  25.89  )
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



Am 22.07.20 um 14:53 schrieb Tomasz Figa:
> Hi Dafna,
> 
> On Fri, Jul 03, 2020 at 07:10:16PM +0200, Dafna Hirschfeld wrote:
>> This patch extends the CSC API in video devices to be supported
>> also on sub-devices. The flag V4L2_MBUS_FRAMEFMT_SET_CSC set by
>> the application when calling VIDIOC_SUBDEV_S_FMT ioctl.
>> The flags:
>>
>> V4L2_SUBDEV_MBUS_CODE_CSC_COLORSPACE, V4L2_SUBDEV_MBUS_CODE_CSC_YCBCR_ENC,
>> V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION V4L2_SUBDEV_MBUS_CODE_CSC_XFER_FUNC,
>>
>> are set by the driver in the VIDIOC_SUBDEV_ENUM_MBUS_CODE ioctl.
>>
>> New 'flags' fields were added to the structs
>> v4l2_subdev_mbus_code_enum, v4l2_mbus_framefmt which are borrowed
>> from the 'reserved' field
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> ---
>>   .../media/v4l/subdev-formats.rst              | 78 +++++++++++++++++--
>>   .../v4l/vidioc-subdev-enum-mbus-code.rst      | 44 ++++++++++-
>>   include/uapi/linux/v4l2-mediabus.h            |  9 ++-
>>   include/uapi/linux/v4l2-subdev.h              |  8 +-
>>   4 files changed, 129 insertions(+), 10 deletions(-)
>>
> 
> Thank you for the patch. Please see my comments inline.
> 
>> diff --git a/Documentation/userspace-api/media/v4l/subdev-formats.rst b/Documentation/userspace-api/media/v4l/subdev-formats.rst
>> index 9a4d61b0d76f..7362ee0b1e96 100644
>> --- a/Documentation/userspace-api/media/v4l/subdev-formats.rst
>> +++ b/Documentation/userspace-api/media/v4l/subdev-formats.rst
>> @@ -41,32 +41,96 @@ Media Bus Formats
>>   	:ref:`field-order` for details.
>>       * - __u32
>>         - ``colorspace``
>> -      - Image colorspace, from enum
>> -	:c:type:`v4l2_colorspace`. See
>> -	:ref:`colorspaces` for details.
>> +      - Image colorspace, from enum :c:type:`v4l2_colorspace`.
>> +        Must be set by the driver for capture streams and by the application
>> +	for output streams, see :ref:`colorspaces`. If the application sets the
>> +	flag ``V4L2_MBUS_FRAMEFMT_SET_CSC`` then the application can set
>> +	this field for a capture stream to request a specific colorspace
> 
> What is a "capture stream" in terms of the subdev API? Should this
> perhaps refer to "source pads" instead?

Hi, yes, I should change it to 'source pad'. I see that for the other colorimetry fields,
the docs for v4l2_mbus_framefmt already writes
"This information supplements the colorspace and must be set by the driver for capture streams and by the application for output streams,"
I guess this should also change,

Thanks,
Dafna

> 
> [snip]
>> +.. _v4l2-mbus-framefmt-flags:
>> +
>> +.. flat-table:: v4l2_mbus_framefmt Flags
>> +    :header-rows:  0
>> +    :stub-columns: 0
>> +    :widths:       3 1 4
>> +
>> +    * .. _`mbus-framefmt-set-csc`:
>> +
>> +      - ``V4L2_MBUS_FRAMEFMT_SET_CSC``
>> +      - 0x00000001
>> +      - Set by the application. It is only used for capture and is
>> +	ignored for output streams. If set, then request the subdevice to do
> 
> Ditto.
> 
>> +	colorspace conversion from the received colorspace to the requested
>> +	colorspace values. If colorimetry field (``colorspace``, ``ycbcr_enc``,
> 
> nit: a colorimetry field
> 
>> +	``quantization`` or ``xfer_func``) is set to 0, then that colorimetry
> 
> Is it okay to explicitly mention 0 here, rather than the defined
> "_DEFAULT" values?
> 
> Best regards,
> Tomasz
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
