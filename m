Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954F0C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 11:32:25 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1225522AAA
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 11:32:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1225522AAA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=34URiRtH1KNq+lmWX5Wq1KR9orw1pX6k8ii6Wl1ZDDY=; b=2A5NAzMPV2rGqPVHfVk22Kn/v
	WtENd+LuZhCE7/LXJSSRDaG2Fz6DVOp2HQPIKlJISmfjH6C0Yf7Yze664QmMNw9pPLkJsAHPEA75H
	c/7/F2lh6D+m1FCwD563rYclS4NSTYaEMoWaSzcErW0QLJPB8OtwygdSSW+o/AH8s7IfY2xBqIEuc
	DjyIGH2r1MRMFhO2dQeze4QFjVplEL7nyfCxMWZlqYB3jkDtU3Rsb1A2jNo3hQWvXn6AAXzfytOt6
	4dRDyN9giorRJtMqsdwq1N7Dl43C4qwFQ26LDk40YLHp8CSn6KKrI4+u89gsE1ioD/tuUWq2SFqFl
	lYHv9yb5A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2Bii-00021f-99; Wed, 20 Jan 2021 11:32:16 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2Bie-000205-4C
 for linux-rockchip@lists.infradead.org; Wed, 20 Jan 2021 11:32:13 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 2C3B91F455BE
Subject: Re: [PATCH] media: rkisp1: uapi: change hist_bins array type from
 __u16 to __u32
To: Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org,
 laurent.pinchart@ideasonboard.com, heiko@sntech.de
References: <20210119145341.29686-1-dafna.hirschfeld@collabora.com>
 <a8f8d9e9-30b1-b594-a9bc-f4a11924bf56@xs4all.nl>
 <fbe57350-f319-dbc7-f093-d3c1c76feb89@collabora.com>
 <2e48068e-fcc4-9288-a9a6-59f71d7f20ce@xs4all.nl>
 <65be169f-417f-a1f5-53e7-31f701a04d08@collabora.com>
 <41194a0e-e8ef-1acf-82c2-3553e17e5dca@xs4all.nl>
 <c474d304-65ee-a768-a3b1-af1045c97b76@collabora.com>
 <290b42e0-12ad-011e-a6db-9eb7a057a7e8@xs4all.nl>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <b77aed66-6c52-8548-c3c0-ea988c51c7aa@collabora.com>
Date: Wed, 20 Jan 2021 12:32:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <290b42e0-12ad-011e-a6db-9eb7a057a7e8@xs4all.nl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_063212_372991_D2BA1093 
X-CRM114-Status: GOOD (  32.74  )
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
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



Am 20.01.21 um 11:49 schrieb Hans Verkuil:
> On 20/01/2021 11:37, Dafna Hirschfeld wrote:
>>
>>
>> Am 20.01.21 um 10:58 schrieb Hans Verkuil:
>>> On 19/01/2021 18:47, Dafna Hirschfeld wrote:
>>>>
>>>>
>>>> Am 19.01.21 um 17:32 schrieb Hans Verkuil:
>>>>> On 19/01/2021 16:32, Dafna Hirschfeld wrote:
>>>>>>
>>>>>>
>>>>>> Am 19.01.21 um 16:00 schrieb Hans Verkuil:
>>>>>>> On 19/01/2021 15:53, Dafna Hirschfeld wrote:
>>>>>>>> Each entry in the array is a 20 bits value composed of 16
>>>>>>>> bits unsigned integer and 4 bits fractional part. So the
>>>>>>>> type should change to __u32.
>>>>>>>>
>>>>>>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>>>>>>>> ---
>>>>>>>> This patch is applied on top of v6 of the patchset
>>>>>>>> "Fix the rkisp1 userspace API for later IP versions"
>>>>>>>>
>>>>>>>>      include/uapi/linux/rkisp1-config.h | 5 +++--
>>>>>>>>      1 file changed, 3 insertions(+), 2 deletions(-)
>>>>>>>>
>>>>>>>> diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
>>>>>>>> index 57ca3eea985f..47f6b84d7c56 100644
>>>>>>>> --- a/include/uapi/linux/rkisp1-config.h
>>>>>>>> +++ b/include/uapi/linux/rkisp1-config.h
>>>>>>>> @@ -895,7 +895,8 @@ struct rkisp1_cif_isp_af_stat {
>>>>>>>>      /**
>>>>>>>>       * struct rkisp1_cif_isp_hist_stat - statistics histogram data
>>>>>>>>       *
>>>>>>>> - * @hist_bins: measured bin counters
>>>>>>>> + * @hist_bins: measured bin counters. Each bin is a 20 bits value
>>>>>>>> + *	       composed of a 16-bit unsigned integer and 4 bits fractional part.
>>>>>>>
>>>>>>> So bits 0-3 are the fractional part and bits 4-19 contain the integer part?
>>>>>>> What goes where should be defined!
>>>>>>
>>>>>> Actually I don't know, I just copied the docs in the datasheet.
>>>>>> I can try figure it out. I can meanwhile send a patch without the doc until
>>>>>> we are sure. Is that OK?
>>>>>
>>>>> No, this should be documented properly.
>>>>
>>>> I see that indeed bits 0-3 are the fractional part.
>>>> The measurements are taken over 25 sub-windows and it is possible to
>>>> give a weight to each window. If I set all weights to 1 then I expect to get
>>>> an integer value and indeed in that case I see that the last 4 bits are always 0.
>>>> If I set the weights to other than 1 I get the last 4 bits not only 0.
>>>>
>>>> The UAPI is generally not very good documented mainly because there is currently
>>>> no open source userspace that uses it.
>>>>
>>>>>
>>>>> Is this the only fractional type that is used in the rkisp1 uapi or are there
>>>>> others? (Just checking).
>>>>
>>>> There are other places as well.
>>>> I see that there are some values in rkisp1_cif_isp_lsc_config that are fractional
>>>> and not documented.
>>>> The two other fractional types in the uapi are already documented.
>>>>
>>>> I can add a patch that extends the documentation of all the fields in the uapi using the datasheet.
>>>> But I think such a patch can be added after de-staging.
>>>
>>> You need to make changes anyway in the uAPI for 5.11 (including fixing the
>>> bad u8 cast), so let's do this right.
>>>
>>> Regards,
>>>
>>> 	Hans
>>
>> So just to make sure I understood correctly, in addition to Heiko Stuebner's patchset.
>> I should a add another patchset that includes:
>>
>> 1. changing the hist_bins type to __u32,
>> 2. removing the u8 cast in rkisp1-stats.c
>> 3. documenting all the fields in the uapi
> 
> Well, documenting the fractional types at least. Or are you talking about other
> fields as well?
> 
>>
>> I don't know what is the policy for fixes among the kernel management,
>> I am worried that if we are too late or the changes are too big they might reject it.
> 
> rc4 was released last weekend, so if it is possible to post these fixes today/tomorrow
> then there is enough time. I'd like to post a PR for these and other fixes ideally no
> later than Friday.
> 
> The documentation patch can slip to 5.12 if really necessary, but I would prefer
> to have that as part of the 5.11 fixes as well.
> 
>>
>> Also, documenting thoroughly can only be done if there is userspace app or at least unit tests
>> that test each component since the datasheet lack some details as in this case.
> 
> Do what you can. If some things need more time, then it is OK to postpone that
> part to 5.12.
> 
> Regards,
> 
> 	Hans

Hi, so there is one issue in Heiko's patch, in 2/4 which changes the array size to 25,
the code in rkisp1-params.c should also change to iterate it only 25 times.
I talked to Heiko, and we said that I'll send a v7 of his patchset that includes in addition
to his patches my patches and also that fix to patch 2/4.
Is that fine or should we keep it in two separated patches?

Thanks,
Dafna

> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
