Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80304C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 09:59:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 826E82332A
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 09:59:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 826E82332A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wyfuPOt/C12WMLGLnhKjDgeUj8CmU01coiuzgD9upUw=; b=1i027H3IXv8RQILmruD3ORPbY
	rNNA2d00MUzfukoNcnYMtofqDyweoTq5SDJ1NeUdWNHIlRwWfGDuAennn4PaYnjEay4ccebGargal
	KTR7b4VpryfpXOQSxAzOc6hUqoNToXeQjMt0f61GlWf+iWBxkX9zcDn61MmLH++Mzk06zvvle7ogn
	+wYTzdASWGBN8p6hr7eu8COHAd+Tb6XfJRvwGQzy2apvv6mVTQKzDdoHuPpQQMkYL+fqe03rU071U
	+VJByjvyXX4cd4t/DIW4rxTBjCvTQqV0fkQdzXLU5FQtKziOxQW2JD6lg64OiHo/hq5RDmL1EEx9n
	bX42lTQ6A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2AGi-0005Nv-Kr; Wed, 20 Jan 2021 09:59:16 +0000
Received: from lb2-smtp-cloud8.xs4all.net ([194.109.24.25])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2AGe-0005LR-6v
 for linux-rockchip@lists.infradead.org; Wed, 20 Jan 2021 09:59:14 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud8.xs4all.net with ESMTPA
 id 2AGRlJIzlftvz2AGUl8mub; Wed, 20 Jan 2021 10:59:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1611136743; bh=DdqUWSmv8YNKQVMaQePmw3VSSDhK0UIyxAcq2+aVNPU=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=E9F8SU+AtOnXDWmy3Se6rP9Z5/KsdWK94C6ZkdcwfaomMwsRCEwv9CbOuWt1kCyjV
 AgI6ykV2L1SvJFMiNcF1bLmoBZlb03gyrzqeQvIPfVngssyA6v9O2J47vUR6auilUX
 rKZ7TfXKUMNOM2absHCeRxCdtIyV3ninYzsRO97Kxqbwx468EC2XlvbknM3XyaX+I2
 Qw4rTGgYXRKmEAZvW1M9vGc5lAK60e6Gvs6K4zVeK5dr6ALbB8F7X9BI9mDcLY/Gyv
 Y7h509gpicN+Cil88qYU/NgjH2YStV8afK9fG8O/oU4CN61R9C6oKV5f2n9nBrSe0z
 08b5C6rrA6rgw==
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
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <41194a0e-e8ef-1acf-82c2-3553e17e5dca@xs4all.nl>
Date: Wed, 20 Jan 2021 10:58:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <65be169f-417f-a1f5-53e7-31f701a04d08@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfH+t+iGgGGp5SMOEcV9BYU9Zs4V6rKDSm3PBHEBUj/XpmZW+n11741B9Gc6jK3EbrYrRqY/q6GCZckDH5ni3NdWIQqTsZekZyawNDGS20dwtX/AIEfk9
 rJT8Cx7Xl3S1pJlUBTUIT4s8s5ggPOBVWlk4GH/S8voiLsR5iYCLH9pihEdQqIcewfSm4Sd1bVpZlysvY72aXjrcPslwfGNBZMrRS7m9BZX9vaVaBJal6dEH
 JBsgMKWCZj1tWuznV7gQ/sbjHpsTyP1xXt+bxYHXAkEuNJZ6ms7TKVqHNFazWyvV0nMDHDWhu+f7w/Rxzkzw4GtFJTxX4VHaJh0WHG6DUdnwt1JbZnh4YN2R
 zg4GvPEmNr2pzE0vAW90E1Bf2yeC7398qDANe4nlvI6EEhCxElcS71oPefgU3BBfCRxGWZJeG9jVdw5u3OhauqG8v0KWT+UkI8wlSIvegUBC6A5b3f7DKLzw
 ZhUSv9UVPoZEnmHrSLl+/QWCf7MNFXW/VXAWPJsMcUUS88nfY4nH26mP/o0jzkujwNL+QeWOXxUXppUVnV3Vf7X+MLfhprXlpb+k+z7vT1pucFEypKYiQASP
 4JoIrCbROpVdfQmg6a3AqW/K
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_045912_371388_AB2D21F9 
X-CRM114-Status: GOOD (  29.76  )
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

On 19/01/2021 18:47, Dafna Hirschfeld wrote:
> 
> 
> Am 19.01.21 um 17:32 schrieb Hans Verkuil:
>> On 19/01/2021 16:32, Dafna Hirschfeld wrote:
>>>
>>>
>>> Am 19.01.21 um 16:00 schrieb Hans Verkuil:
>>>> On 19/01/2021 15:53, Dafna Hirschfeld wrote:
>>>>> Each entry in the array is a 20 bits value composed of 16
>>>>> bits unsigned integer and 4 bits fractional part. So the
>>>>> type should change to __u32.
>>>>>
>>>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>>>>> ---
>>>>> This patch is applied on top of v6 of the patchset
>>>>> "Fix the rkisp1 userspace API for later IP versions"
>>>>>
>>>>>    include/uapi/linux/rkisp1-config.h | 5 +++--
>>>>>    1 file changed, 3 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
>>>>> index 57ca3eea985f..47f6b84d7c56 100644
>>>>> --- a/include/uapi/linux/rkisp1-config.h
>>>>> +++ b/include/uapi/linux/rkisp1-config.h
>>>>> @@ -895,7 +895,8 @@ struct rkisp1_cif_isp_af_stat {
>>>>>    /**
>>>>>     * struct rkisp1_cif_isp_hist_stat - statistics histogram data
>>>>>     *
>>>>> - * @hist_bins: measured bin counters
>>>>> + * @hist_bins: measured bin counters. Each bin is a 20 bits value
>>>>> + *	       composed of a 16-bit unsigned integer and 4 bits fractional part.
>>>>
>>>> So bits 0-3 are the fractional part and bits 4-19 contain the integer part?
>>>> What goes where should be defined!
>>>
>>> Actually I don't know, I just copied the docs in the datasheet.
>>> I can try figure it out. I can meanwhile send a patch without the doc until
>>> we are sure. Is that OK?
>>
>> No, this should be documented properly.
> 
> I see that indeed bits 0-3 are the fractional part.
> The measurements are taken over 25 sub-windows and it is possible to
> give a weight to each window. If I set all weights to 1 then I expect to get
> an integer value and indeed in that case I see that the last 4 bits are always 0.
> If I set the weights to other than 1 I get the last 4 bits not only 0.
> 
> The UAPI is generally not very good documented mainly because there is currently
> no open source userspace that uses it.
> 
>>
>> Is this the only fractional type that is used in the rkisp1 uapi or are there
>> others? (Just checking).
> 
> There are other places as well.
> I see that there are some values in rkisp1_cif_isp_lsc_config that are fractional
> and not documented.
> The two other fractional types in the uapi are already documented.
> 
> I can add a patch that extends the documentation of all the fields in the uapi using the datasheet.
> But I think such a patch can be added after de-staging.

You need to make changes anyway in the uAPI for 5.11 (including fixing the
bad u8 cast), so let's do this right.

Regards,

	Hans

> 
> Thanks,
> Dafna
> 
> 
>>
>>>
>>>>
>>>> Looking at rkisp1_stats_get_hst_meas() I see this:
>>>>
>>>>           for (i = 0; i < RKISP1_CIF_ISP_HIST_BIN_N_MAX; i++)
>>>>                   pbuf->params.hist.hist_bins[i] =
>>>>                           (u8)rkisp1_read(rkisp1,
>>>>                                           RKISP1_CIF_ISP_HIST_BIN_0 + i * 4);
>>>>
>>>> Here this is cast to a u8, so how does this work?
>>>
>>> This seems to be a bug. I see that this cast is introduced in v12 of the patch
>>> "media: staging: rkisp1: add capture device for statistics".
>>> This cast does not exist in any of the downstream versions.
>>
>> Clearly something that needs to be fixed as well.
>>
>> Regards,
>>
>> 	Hans
>>
>>>
>>> Thanks,
>>> Dafna
>>>
>>>>
>>>> There is something fishy here...
>>>>
>>>> Regards,
>>>>
>>>> 	Hans
>>>>
>>>>>     *
>>>>>     * The histogram values divided into 16 bins for V10/V11 and 32 bins
>>>>>     * for V12/V13. It is configured within the struct rkisp1_cif_isp_hst_config.
>>>>> @@ -909,7 +910,7 @@ struct rkisp1_cif_isp_af_stat {
>>>>>     * RKISP1_CIF_ISP_HIST_BIN_N_MAX is equal to the maximum of the two.
>>>>>     */
>>>>>    struct rkisp1_cif_isp_hist_stat {
>>>>> -	__u16 hist_bins[RKISP1_CIF_ISP_HIST_BIN_N_MAX];
>>>>> +	__u32 hist_bins[RKISP1_CIF_ISP_HIST_BIN_N_MAX];
>>>>>    };
>>>>>    
>>>>>    /**
>>>>>
>>>>
>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
