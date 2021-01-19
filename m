Return-Path: <SRS0=wbav=GW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F94DC433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 15:32:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A8DEC23121
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 15:32:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A8DEC23121
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P0jlPux1JmgQHNfO3JtOOyqgLOvhmq3AvnA3YvyAMlc=; b=O/vXVahvNywmAVeSCQ0P6nv+a
	l0vnkz2eQGwijMjrYAuWvO19c2JbaCertU/CDoaE7kwuUcqJn8fLJThTE3BB6b/CSheAFu5yHUBrY
	Qo/cuQAxp70QbjyPhPK8rKVw62aR71ovKbRPVGZvkHbVaMcuqdmX1CR91HRzX/qZW65G3Jp41CZeA
	fSwrK+s31SryDWgerVrUOBK5HNK2gstg2eSzClmOEora2axV3UPIYyGEK1qy+LKvU+fwBZ1elFetC
	1nnedPuDR06YJ0dbwfsyFY01id6hO+NzljwaUMRrMUHh/3kELxwZxAxKyzSMdF+PHLuICHjmAfsdL
	hrVQnqA7w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1sze-0003XS-AM; Tue, 19 Jan 2021 15:32:30 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1szb-0003Wk-1D
 for linux-rockchip@lists.infradead.org; Tue, 19 Jan 2021 15:32:27 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id D23E81F45370
Subject: Re: [PATCH] media: rkisp1: uapi: change hist_bins array type from
 __u16 to __u32
To: Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org,
 laurent.pinchart@ideasonboard.com, heiko@sntech.de
References: <20210119145341.29686-1-dafna.hirschfeld@collabora.com>
 <a8f8d9e9-30b1-b594-a9bc-f4a11924bf56@xs4all.nl>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <fbe57350-f319-dbc7-f093-d3c1c76feb89@collabora.com>
Date: Tue, 19 Jan 2021 16:32:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <a8f8d9e9-30b1-b594-a9bc-f4a11924bf56@xs4all.nl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210119_103227_179119_CE1AE737 
X-CRM114-Status: GOOD (  22.32  )
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



Am 19.01.21 um 16:00 schrieb Hans Verkuil:
> On 19/01/2021 15:53, Dafna Hirschfeld wrote:
>> Each entry in the array is a 20 bits value composed of 16
>> bits unsigned integer and 4 bits fractional part. So the
>> type should change to __u32.
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> ---
>> This patch is applied on top of v6 of the patchset
>> "Fix the rkisp1 userspace API for later IP versions"
>>
>>   include/uapi/linux/rkisp1-config.h | 5 +++--
>>   1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
>> index 57ca3eea985f..47f6b84d7c56 100644
>> --- a/include/uapi/linux/rkisp1-config.h
>> +++ b/include/uapi/linux/rkisp1-config.h
>> @@ -895,7 +895,8 @@ struct rkisp1_cif_isp_af_stat {
>>   /**
>>    * struct rkisp1_cif_isp_hist_stat - statistics histogram data
>>    *
>> - * @hist_bins: measured bin counters
>> + * @hist_bins: measured bin counters. Each bin is a 20 bits value
>> + *	       composed of a 16-bit unsigned integer and 4 bits fractional part.
> 
> So bits 0-3 are the fractional part and bits 4-19 contain the integer part?
> What goes where should be defined!

Actually I don't know, I just copied the docs in the datasheet.
I can try figure it out. I can meanwhile send a patch without the doc until
we are sure. Is that OK?

> 
> Looking at rkisp1_stats_get_hst_meas() I see this:
> 
>          for (i = 0; i < RKISP1_CIF_ISP_HIST_BIN_N_MAX; i++)
>                  pbuf->params.hist.hist_bins[i] =
>                          (u8)rkisp1_read(rkisp1,
>                                          RKISP1_CIF_ISP_HIST_BIN_0 + i * 4);
> 
> Here this is cast to a u8, so how does this work?

This seems to be a bug. I see that this cast is introduced in v12 of the patch
"media: staging: rkisp1: add capture device for statistics".
This cast does not exist in any of the downstream versions.

Thanks,
Dafna

> 
> There is something fishy here...
> 
> Regards,
> 
> 	Hans
> 
>>    *
>>    * The histogram values divided into 16 bins for V10/V11 and 32 bins
>>    * for V12/V13. It is configured within the struct rkisp1_cif_isp_hst_config.
>> @@ -909,7 +910,7 @@ struct rkisp1_cif_isp_af_stat {
>>    * RKISP1_CIF_ISP_HIST_BIN_N_MAX is equal to the maximum of the two.
>>    */
>>   struct rkisp1_cif_isp_hist_stat {
>> -	__u16 hist_bins[RKISP1_CIF_ISP_HIST_BIN_N_MAX];
>> +	__u32 hist_bins[RKISP1_CIF_ISP_HIST_BIN_N_MAX];
>>   };
>>   
>>   /**
>>
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
