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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BB6EC56201
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 04:56:18 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 73262221F9
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 04:56:17 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="asy015Iw"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 73262221F9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LA13236HtvUpbB65PtXK0O5dWEEfghjaJYDnyhxqBzk=; b=asy015IwfVylULZywyFUVcnzC
	juqdcvGkacQk2ZBEM0biTGDrQ5WD+4bCn3M8U3t9QyfqRh1WK/e4qy3Fn8049ZKxbfe5+4VxBC4+V
	WNKQKDfJX/GRRFeY8AXA+QdIGsIUqcoQUpN1sEjrTzlkMFqb+reTWCpVO2Rp7qGWreClXxloP1krz
	9/hyeporQmdjEvuhjBP2+p0cdgTe9efTcTHz+KvGC6o6btmDN0MKdNKbnVb3l2PopkDRDzO/atCz/
	VeOZGoBtK3lPYwO+OH9xR1IDObZZ+qVW5kPLV2wxvhgxTL33bEzotElCJwFiQFpruXwP6OESlrMjN
	gWL/GyXPw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYMSS-0002ig-Gw; Fri, 30 Oct 2020 04:56:12 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYMSQ-0002i6-1u
 for linux-rockchip@lists.infradead.org; Fri, 30 Oct 2020 04:56:10 +0000
Received: from [IPv6:2804:14c:483:7e3e::1005] (unknown
 [IPv6:2804:14c:483:7e3e::1005])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9DA411F4590E;
 Fri, 30 Oct 2020 04:56:06 +0000 (GMT)
Subject: Re: [PATCH 1/2] media: media.h: Add a pad flag MEDIA_PAD_FL_METADATA
To: Dafna Hirschfeld <dafna3@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
References: <20200325212704.29862-1-dafna.hirschfeld@collabora.com>
 <20200325212704.29862-2-dafna.hirschfeld@collabora.com>
 <20200325222621.GX19171@pendragon.ideasonboard.com>
 <CAJ1myNS5jdqCXAtueA_j+ULkiioDxhegfCLQWFXrvL6_AYPwFg@mail.gmail.com>
 <20200327080858.GB23713@kekkonen.localdomain>
 <CAJ1myNTT8NGNpSU10pwjd6wTES22g28dNFLwRPjrYkNsXd_D5w@mail.gmail.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <8adfde83-3545-2fa1-af9b-bbf86d3383df@collabora.com>
Date: Fri, 30 Oct 2020 01:56:02 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <CAJ1myNTT8NGNpSU10pwjd6wTES22g28dNFLwRPjrYkNsXd_D5w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201030_005610_313939_273C3912 
X-CRM114-Status: GOOD (  26.98  )
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
 Hans Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On 3/30/20 9:42 AM, Dafna Hirschfeld wrote:
> On Fri, Mar 27, 2020 at 9:09 AM Sakari Ailus
> <sakari.ailus@linux.intel.com> wrote:
>>
>> Dafna, Laurent,
>>
>> On Thu, Mar 26, 2020 at 08:59:04AM +0100, Dafna Hirschfeld wrote:
>>> On Wed, Mar 25, 2020 at 11:26 PM Laurent Pinchart
>>> <laurent.pinchart@ideasonboard.com> wrote:
>>>>
>>>> Hi Dafna,
>>>>
>>>> Thank you for the patch.
>>>>
>>>> On Wed, Mar 25, 2020 at 10:27:03PM +0100, Dafna Hirschfeld wrote:
>>>>> Add a flag to the flags field of 'struct media_pad_desc'
>>>>> that indicates that the data transmitted by the pad is
>>>>> metadata.
>>>>>
>>>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>>>>> ---
>>>>>  Documentation/media/uapi/mediactl/media-types.rst | 4 ++++
>>>>>  include/uapi/linux/media.h                        | 1 +
>>>>>  2 files changed, 5 insertions(+)
>>>>>
>>>>> diff --git a/Documentation/media/uapi/mediactl/media-types.rst b/Documentation/media/uapi/mediactl/media-types.rst
>>>>> index 3af6a414b501..4ca902478971 100644
>>>>> --- a/Documentation/media/uapi/mediactl/media-types.rst
>>>>> +++ b/Documentation/media/uapi/mediactl/media-types.rst
>>>>> @@ -361,6 +361,7 @@ Types and flags used to represent the media graph elements
>>>>>  .. _MEDIA-PAD-FL-SINK:
>>>>>  .. _MEDIA-PAD-FL-SOURCE:
>>>>>  .. _MEDIA-PAD-FL-MUST-CONNECT:
>>>>> +.. _MEDIA-PAD-FL-METADATA:
>>>>>
>>>>>  .. flat-table:: Media pad flags
>>>>>      :header-rows:  0
>>>>> @@ -381,6 +382,9 @@ Types and flags used to represent the media graph elements
>>>>>         configuration dependent) for the pad to need enabled links even
>>>>>         when this flag isn't set; the absence of the flag doesn't imply
>>>>>         there is none.
>>>>> +    *  -  ``MEDIA_PAD_FL_METADATA``
>>>>> +       -  This flag indicates that the data transmitted by the pad is of
>>>>> +          type metadata.
>>>>>
>>>>>
>>>>>  One and only one of ``MEDIA_PAD_FL_SINK`` and ``MEDIA_PAD_FL_SOURCE``
>>>>> diff --git a/include/uapi/linux/media.h b/include/uapi/linux/media.h
>>>>> index 383ac7b7d8f0..ae37226eb5c9 100644
>>>>> --- a/include/uapi/linux/media.h
>>>>> +++ b/include/uapi/linux/media.h
>>>>> @@ -210,6 +210,7 @@ struct media_entity_desc {
>>>>>  #define MEDIA_PAD_FL_SINK                    (1 << 0)
>>>>>  #define MEDIA_PAD_FL_SOURCE                  (1 << 1)
>>>>>  #define MEDIA_PAD_FL_MUST_CONNECT            (1 << 2)
>>>>> +#define MEDIA_PAD_FL_METADATA                        (1 << 3)
>>>>
>>>> I think we need to reserve a few bits here. We'll have more than
>>>> metadata. Audio comes to mind, there will likely be more. Having
>>>> independent flags would not only waste a bit of space in the bitfield
>>>> (not that we're about to run out of bits, but still), but would make it
>>>> possible to specify invalid configurations such as MEDIA_PAD_FL_METADATA
>>>> | MEDIA_PAD_FL_AUDIO. And now that I've written this, I realize that
>>>> audio metadata could be a thing, so maybe a metadata flag is actually
>>>> the best option :-)
>>> hehe, ok, but drivers that set the METADATA flag should also set the media
>>> bus code to MEDIA_BUS_FMT_FIXED ? If yes then setting
>>> the METADATA flag with a different media bus is also an invalid configuration.
>>
>> That may be currently the case, but not all non-image data (metadata in
>> practice) will be using MEDIA_BUS_FMT_FIXED, for instance sensor embedded
>> data when we support that in upstream.
>>
>> Note that whether metadata flows over a pad is dynamic configuration. I
>> wonder if it is useful to tell this to the user, as the user, in many
>> cases, will be making the configuration affecting this. There definitely
> 
> Hi, you mean that there might be pads that can either support metadata
> or non-metadata?
> Currently there is no media bus for METDATA so with the flag userspace
> knows it is metadata.

Maybe this is a silly question, but why do we need a flag in the pads to
indicate metadata if we have mbus code MEDIA_BUS_FMT_METADATA_FIXED for this?
Aren't we adding redundant information?

Regards,
Helen

> 
>> are devices where this configuration would be static, but many of those
>> cases (ISPs in particular) have DMAs (i.e. video nodes) directly connected
>> over a link, where you'll find this information on the video node.
> 
>>
>> --
>> Regards,
>>
>> Sakari Ailus
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
