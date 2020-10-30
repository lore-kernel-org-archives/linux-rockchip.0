Return-Path: <SRS0=455t=EF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02D22C55178
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 10:08:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 27B132083B
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 10:08:10 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="gwSLjemQ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 27B132083B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ot633ft2e0rnUfsrxTA5tXlHoB2HpW+0qv/Edd0kZgY=; b=gwSLjemQtemzT0f4n01/4hsxi
	HiXJeWVoPFvLDxIrzdexr6QslACVaayG30N4xmFIoTDWQJjDGijej+uoHDaA/6tsXYfGLWJGh06in
	9Ngg1fnW1f3WQzsxor7nK08YVH81cOVu8vhzruvLetPrMl1qklpHm2HUC+lxCQfiub4qtF0szhNg4
	9yy9r4DNUY4f6jolax0C09fOIM7FXed/0MxazjVib7k9VLurzXCWR8UpnR1POQQMgn5X7g1MJN6zF
	30HlaNy2WbyBt/FXz7Q0Qg5dOqe/n/3OtbjsLUv6444SHQFwqwpS78fOQmPpaypgaSZHbRcQovTbL
	mvt4uZNAA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYRKG-0007DM-48; Fri, 30 Oct 2020 10:08:04 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYRKC-0007Bi-C9
 for linux-rockchip@lists.infradead.org; Fri, 30 Oct 2020 10:08:01 +0000
Received: from [IPv6:2003:c7:cf1c:4d00:58b3:6683:91ae:b6a8]
 (p200300c7cf1c4d0058b3668391aeb6a8.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf1c:4d00:58b3:6683:91ae:b6a8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E167F1F45E7E;
 Fri, 30 Oct 2020 10:07:57 +0000 (GMT)
Subject: Re: [PATCH 1/2] media: media.h: Add a pad flag MEDIA_PAD_FL_METADATA
To: Helen Koike <helen.koike@collabora.com>,
 Dafna Hirschfeld <dafna3@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
References: <20200325212704.29862-1-dafna.hirschfeld@collabora.com>
 <20200325212704.29862-2-dafna.hirschfeld@collabora.com>
 <20200325222621.GX19171@pendragon.ideasonboard.com>
 <CAJ1myNS5jdqCXAtueA_j+ULkiioDxhegfCLQWFXrvL6_AYPwFg@mail.gmail.com>
 <20200327080858.GB23713@kekkonen.localdomain>
 <CAJ1myNTT8NGNpSU10pwjd6wTES22g28dNFLwRPjrYkNsXd_D5w@mail.gmail.com>
 <8adfde83-3545-2fa1-af9b-bbf86d3383df@collabora.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <99b4613b-ca7f-540d-06c1-f2728359a0cd@collabora.com>
Date: Fri, 30 Oct 2020 11:07:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <8adfde83-3545-2fa1-af9b-bbf86d3383df@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201030_060800_677852_1D5E3554 
X-CRM114-Status: GOOD (  29.85  )
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
Cc: mchehab@kernel.org, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-rockchip@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



Am 30.10.20 um 05:56 schrieb Helen Koike:
> Hi,
> 
> On 3/30/20 9:42 AM, Dafna Hirschfeld wrote:
>> On Fri, Mar 27, 2020 at 9:09 AM Sakari Ailus
>> <sakari.ailus@linux.intel.com> wrote:
>>>
>>> Dafna, Laurent,
>>>
>>> On Thu, Mar 26, 2020 at 08:59:04AM +0100, Dafna Hirschfeld wrote:
>>>> On Wed, Mar 25, 2020 at 11:26 PM Laurent Pinchart
>>>> <laurent.pinchart@ideasonboard.com> wrote:
>>>>>
>>>>> Hi Dafna,
>>>>>
>>>>> Thank you for the patch.
>>>>>
>>>>> On Wed, Mar 25, 2020 at 10:27:03PM +0100, Dafna Hirschfeld wrote:
>>>>>> Add a flag to the flags field of 'struct media_pad_desc'
>>>>>> that indicates that the data transmitted by the pad is
>>>>>> metadata.
>>>>>>
>>>>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>>>>>> ---
>>>>>>   Documentation/media/uapi/mediactl/media-types.rst | 4 ++++
>>>>>>   include/uapi/linux/media.h                        | 1 +
>>>>>>   2 files changed, 5 insertions(+)
>>>>>>
>>>>>> diff --git a/Documentation/media/uapi/mediactl/media-types.rst b/Documentation/media/uapi/mediactl/media-types.rst
>>>>>> index 3af6a414b501..4ca902478971 100644
>>>>>> --- a/Documentation/media/uapi/mediactl/media-types.rst
>>>>>> +++ b/Documentation/media/uapi/mediactl/media-types.rst
>>>>>> @@ -361,6 +361,7 @@ Types and flags used to represent the media graph elements
>>>>>>   .. _MEDIA-PAD-FL-SINK:
>>>>>>   .. _MEDIA-PAD-FL-SOURCE:
>>>>>>   .. _MEDIA-PAD-FL-MUST-CONNECT:
>>>>>> +.. _MEDIA-PAD-FL-METADATA:
>>>>>>
>>>>>>   .. flat-table:: Media pad flags
>>>>>>       :header-rows:  0
>>>>>> @@ -381,6 +382,9 @@ Types and flags used to represent the media graph elements
>>>>>>          configuration dependent) for the pad to need enabled links even
>>>>>>          when this flag isn't set; the absence of the flag doesn't imply
>>>>>>          there is none.
>>>>>> +    *  -  ``MEDIA_PAD_FL_METADATA``
>>>>>> +       -  This flag indicates that the data transmitted by the pad is of
>>>>>> +          type metadata.
>>>>>>
>>>>>>
>>>>>>   One and only one of ``MEDIA_PAD_FL_SINK`` and ``MEDIA_PAD_FL_SOURCE``
>>>>>> diff --git a/include/uapi/linux/media.h b/include/uapi/linux/media.h
>>>>>> index 383ac7b7d8f0..ae37226eb5c9 100644
>>>>>> --- a/include/uapi/linux/media.h
>>>>>> +++ b/include/uapi/linux/media.h
>>>>>> @@ -210,6 +210,7 @@ struct media_entity_desc {
>>>>>>   #define MEDIA_PAD_FL_SINK                    (1 << 0)
>>>>>>   #define MEDIA_PAD_FL_SOURCE                  (1 << 1)
>>>>>>   #define MEDIA_PAD_FL_MUST_CONNECT            (1 << 2)
>>>>>> +#define MEDIA_PAD_FL_METADATA                        (1 << 3)
>>>>>
>>>>> I think we need to reserve a few bits here. We'll have more than
>>>>> metadata. Audio comes to mind, there will likely be more. Having
>>>>> independent flags would not only waste a bit of space in the bitfield
>>>>> (not that we're about to run out of bits, but still), but would make it
>>>>> possible to specify invalid configurations such as MEDIA_PAD_FL_METADATA
>>>>> | MEDIA_PAD_FL_AUDIO. And now that I've written this, I realize that
>>>>> audio metadata could be a thing, so maybe a metadata flag is actually
>>>>> the best option :-)
>>>> hehe, ok, but drivers that set the METADATA flag should also set the media
>>>> bus code to MEDIA_BUS_FMT_FIXED ? If yes then setting
>>>> the METADATA flag with a different media bus is also an invalid configuration.
>>>
>>> That may be currently the case, but not all non-image data (metadata in
>>> practice) will be using MEDIA_BUS_FMT_FIXED, for instance sensor embedded
>>> data when we support that in upstream.
>>>
>>> Note that whether metadata flows over a pad is dynamic configuration. I
>>> wonder if it is useful to tell this to the user, as the user, in many
>>> cases, will be making the configuration affecting this. There definitely
>>
>> Hi, you mean that there might be pads that can either support metadata
>> or non-metadata?
>> Currently there is no media bus for METDATA so with the flag userspace
>> knows it is metadata.
> 
> Maybe this is a silly question, but why do we need a flag in the pads to
> indicate metadata if we have mbus code MEDIA_BUS_FMT_METADATA_FIXED for this?
> Aren't we adding redundant information?

Hi,
This patch was abandoned in favor for the MEDIA_BUS_FMT_METADATA_FIXED solution.
I should have send the MEDIA_BUS_FMT_METADATA_FIXED patch as a new version
of this patch since it replaces it. Sorry for that.

Thanks,
Dafna

> 
> Regards,
> Helen
> 
>>
>>> are devices where this configuration would be static, but many of those
>>> cases (ISPs in particular) have DMAs (i.e. video nodes) directly connected
>>> over a link, where you'll find this information on the video node.
>>
>>>
>>> --
>>> Regards,
>>>
>>> Sakari Ailus
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
