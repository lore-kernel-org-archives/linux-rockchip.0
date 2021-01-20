Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3A97C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 10:49:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4BBF02070A
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 10:49:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4BBF02070A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M7hCTVMqDWBegAoflfr+SdRl3Tlkmc+J0U5+QfwKMZA=; b=Ni20R0QwUfCt6IhoYkb6DyYmp
	yyNcD0AC9eLuOTe+L/KJ6wh/RtB70aNEVnQAlOY1u1O46ZG5/R3fITjF4/qiVDPk9HJKXl0noPijI
	FiZzbD7XuYGdYAvo6yUedOgpiAfOAESNjXL8ugSrkt5323aaYKMoQUt/xhe7rAz1K3T47U2Nve/kx
	Apy4T793sgjKH4/FYUBFzr90GRuzY02Rz6QhtKrdh4bx/H02hETF/vHeHdyTaWsAFGhAGfAq6B90p
	Wq8Cdd002ibS5VmM4m/nVdEaggsfOSvFrTAu+vk9+IToosvnqFtqeOVl7qtv86wWEQAoscCj+6RKK
	8hMHPDN+w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2B3K-00039v-Ot; Wed, 20 Jan 2021 10:49:30 +0000
Received: from lb2-smtp-cloud8.xs4all.net ([194.109.24.25])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2B3I-00039S-Fy
 for linux-rockchip@lists.infradead.org; Wed, 20 Jan 2021 10:49:29 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud8.xs4all.net with ESMTPA
 id 2B3ClJembftvz2B3Gl90cQ; Wed, 20 Jan 2021 11:49:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1611139766; bh=qKOEVeiQsywxA/2kUyVZBntjpKirpiX7F/qIvmT0OZA=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=ulntZZS+nBcjeSc3JBPRBL5v3K0RWIs71yFA9nA49cjTZDvXn2dbiDv0xnLFNcOZA
 PI2yQjYHc24oYdAZmkY65HE/xQdNJYLiFTxj32Dz8+UT9+YHNfiwD2iHm49G1rQUl+
 HU5Tra3A84ASBhq5UivD9A743iroHn6InqUXRorJ/zyhvQ93hKjwPZmnGD8A0fYU3C
 Bm/Hej/MonI3evpDv69+DdH1GVXmjbAvo4wJCBnspXrAR3AJCNeYbHs35na5/aw2fU
 6haB0ROwok4ljEPrxjgEIR7Gi/pm90FhGBH5tKiJRSG4pwk03rwp/ho7Jny12kW0ec
 SbQZ5T2RKIoxg==
Subject: Re: [PATCH] media: rkisp1: uapi: change hist_bins array type from
 __u16 to __u32
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com,
 heiko@sntech.de
References: <20210119145341.29686-1-dafna.hirschfeld@collabora.com>
 <a8f8d9e9-30b1-b594-a9bc-f4a11924bf56@xs4all.nl>
 <fbe57350-f319-dbc7-f093-d3c1c76feb89@collabora.com>
 <2e48068e-fcc4-9288-a9a6-59f71d7f20ce@xs4all.nl>
 <65be169f-417f-a1f5-53e7-31f701a04d08@collabora.com>
 <41194a0e-e8ef-1acf-82c2-3553e17e5dca@xs4all.nl>
 <c474d304-65ee-a768-a3b1-af1045c97b76@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <290b42e0-12ad-011e-a6db-9eb7a057a7e8@xs4all.nl>
Date: Wed, 20 Jan 2021 11:49:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <c474d304-65ee-a768-a3b1-af1045c97b76@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfInSMEjILz221yBpMPA2r9LJqBNoatX2NSOYtRlT7LaelvrktJZSkHvjBm1QVAHEvGafYkyP1z0Vp679EsE05xMqhpjnXbUC951uusWSXxCtaypv/IHh
 oo+6kmA1ETo/QzhA3EsOy079yeaXik7mTSJQ3BzPQhUJPgDlixzqXo/hOyuGOCjemtUJsEwI39TPcOaInaxUuPj+6vXT5B7g20RXHRHysbA9sv37SqMurJ9J
 DkGzUIqXsfBwC1d274j34MVVHALpVgMI3Ibm90VWmYUUARXwzjoFv4EefnblVFHIeWyxnWM11kybV1Mu1YrTbbSwZilsLUy2kYnUy0SDzbqfq3CW7Tv0Vl7k
 cArTrZq6naL2O5VSpvlTmoY/pavWWvukOKuBz+fD5PLrnO2JyFWdkuOe69iBGQZnluflKoTZLfdq9w6JTdv8qg1MSmDEE8XYnubTX8hnHbKxkT5jhlQ5SEB/
 lyHYxcR4rmIdO9/a+N/hFzDJPCPOegYPyBb+osnc8Ui0SzRYg22cKZVfLTiXJOqbPTJk99kxQZxFb+XxJGQAFBN6KqYisU2ZAPFaj83doVGpfi9QPXgkgCGf
 CAZ/uBYfFi6FvucpMT/SZgLj
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_054928_621366_63A28BC7 
X-CRM114-Status: GOOD (  26.62  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 20/01/2021 11:37, Dafna Hirschfeld wrote:
> 
> 
> Am 20.01.21 um 10:58 schrieb Hans Verkuil:
>> On 19/01/2021 18:47, Dafna Hirschfeld wrote:
>>>
>>>
>>> Am 19.01.21 um 17:32 schrieb Hans Verkuil:
>>>> On 19/01/2021 16:32, Dafna Hirschfeld wrote:
>>>>>
>>>>>
>>>>> Am 19.01.21 um 16:00 schrieb Hans Verkuil:
>>>>>> On 19/01/2021 15:53, Dafna Hirschfeld wrote:
>>>>>>> Each entry in the array is a 20 bits value composed of 16
>>>>>>> bits unsigned integer and 4 bits fractional part. So the
>>>>>>> type should change to __u32.
>>>>>>>
>>>>>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>>>>>>> ---
>>>>>>> This patch is applied on top of v6 of the patchset
>>>>>>> "Fix the rkisp1 userspace API for later IP versions"
>>>>>>>
>>>>>>>     include/uapi/linux/rkisp1-config.h | 5 +++--
>>>>>>>     1 file changed, 3 insertions(+), 2 deletions(-)
>>>>>>>
>>>>>>> diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
>>>>>>> index 57ca3eea985f..47f6b84d7c56 100644
>>>>>>> --- a/include/uapi/linux/rkisp1-config.h
>>>>>>> +++ b/include/uapi/linux/rkisp1-config.h
>>>>>>> @@ -895,7 +895,8 @@ struct rkisp1_cif_isp_af_stat {
>>>>>>>     /**
>>>>>>>      * struct rkisp1_cif_isp_hist_stat - statistics histogram data
>>>>>>>      *
>>>>>>> - * @hist_bins: measured bin counters
>>>>>>> + * @hist_bins: measured bin counters. Each bin is a 20 bits value
>>>>>>> + *	       composed of a 16-bit unsigned integer and 4 bits fractional part.
>>>>>>
>>>>>> So bits 0-3 are the fractional part and bits 4-19 contain the integer part?
>>>>>> What goes where should be defined!
>>>>>
>>>>> Actually I don't know, I just copied the docs in the datasheet.
>>>>> I can try figure it out. I can meanwhile send a patch without the doc until
>>>>> we are sure. Is that OK?
>>>>
>>>> No, this should be documented properly.
>>>
>>> I see that indeed bits 0-3 are the fractional part.
>>> The measurements are taken over 25 sub-windows and it is possible to
>>> give a weight to each window. If I set all weights to 1 then I expect to get
>>> an integer value and indeed in that case I see that the last 4 bits are always 0.
>>> If I set the weights to other than 1 I get the last 4 bits not only 0.
>>>
>>> The UAPI is generally not very good documented mainly because there is currently
>>> no open source userspace that uses it.
>>>
>>>>
>>>> Is this the only fractional type that is used in the rkisp1 uapi or are there
>>>> others? (Just checking).
>>>
>>> There are other places as well.
>>> I see that there are some values in rkisp1_cif_isp_lsc_config that are fractional
>>> and not documented.
>>> The two other fractional types in the uapi are already documented.
>>>
>>> I can add a patch that extends the documentation of all the fields in the uapi using the datasheet.
>>> But I think such a patch can be added after de-staging.
>>
>> You need to make changes anyway in the uAPI for 5.11 (including fixing the
>> bad u8 cast), so let's do this right.
>>
>> Regards,
>>
>> 	Hans
> 
> So just to make sure I understood correctly, in addition to Heiko Stuebner's patchset.
> I should a add another patchset that includes:
> 
> 1. changing the hist_bins type to __u32,
> 2. removing the u8 cast in rkisp1-stats.c
> 3. documenting all the fields in the uapi

Well, documenting the fractional types at least. Or are you talking about other
fields as well?

> 
> I don't know what is the policy for fixes among the kernel management,
> I am worried that if we are too late or the changes are too big they might reject it.

rc4 was released last weekend, so if it is possible to post these fixes today/tomorrow
then there is enough time. I'd like to post a PR for these and other fixes ideally no
later than Friday.

The documentation patch can slip to 5.12 if really necessary, but I would prefer
to have that as part of the 5.11 fixes as well.

> 
> Also, documenting thoroughly can only be done if there is userspace app or at least unit tests
> that test each component since the datasheet lack some details as in this case.

Do what you can. If some things need more time, then it is OK to postpone that
part to 5.12.

Regards,

	Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
