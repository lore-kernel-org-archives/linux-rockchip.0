Return-Path: <SRS0=2LhI=B4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD769C433DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 06:46:59 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A0E9820639
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 06:46:59 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="voL0Nh+h"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A0E9820639
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UOJD5uxBjq0wfISVAuVkHSYXH6SH4u0dicr3JUNIRCg=; b=voL0Nh+hI27n3CPtVBvIowIwP
	f5oNBI2w11CuClbK2K54SHpC/nOqzNaeuhE6EVlCV3qJBzNcrTp6WEfJoslJ8T9Uq1liBJ3oVkSyF
	MtnCwhgI8RX+7cddO5hEXbApdj9ovf6UiMYGAogwJhpQbULK1jgHNNKKZ8wFo1Y/Ua9k3HGyfSB8y
	0udrLFhxyk6lY0/ZE86LDfs1xZcbafIE5ybChRsHZVC2TiNapTZ4eVsN76dvu+AAiuBohik+NqhCJ
	i+bTol4wCLGnfcv99jlEcz9WKbVe0VBHHW51DedNBybhUXPi8DbVojxBlMY/sFlNFl9bDE2SAMIge
	V9Xah5BKA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7vOa-0006tH-IR; Tue, 18 Aug 2020 06:46:56 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7vOX-0006sA-Kq
 for linux-rockchip@lists.infradead.org; Tue, 18 Aug 2020 06:46:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 6E036298A17
Subject: Re: [PATCH v2 10/14] media: staging: rkisp1: isp: add a warning and
 debugfs var for irq delay
To: Helen Koike <helen.koike@collabora.com>, linux-media@vger.kernel.org
References: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
 <20200815103734.31153-11-dafna.hirschfeld@collabora.com>
 <9a062761-84e0-d4e8-a909-53898562649a@collabora.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <04b3fab5-5501-058c-9145-ebbbe851eb94@collabora.com>
Date: Tue, 18 Aug 2020 08:46:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <9a062761-84e0-d4e8-a909-53898562649a@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200818_024653_811580_70063EF6 
X-CRM114-Status: GOOD (  24.06  )
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
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



Am 17.08.20 um 23:48 schrieb Helen Koike:
> Hi Dafna,
> 
> On 8/15/20 7:37 AM, Dafna Hirschfeld wrote:
>> The signal RKISP1_CIF_ISP_FRAME is set when the ISP completes
>> outputting the frame to the next block in the pipeline.
>> In order to keep buffer synchronization we assume that the
>> RKISP1_CIF_ISP_V_START signal never arrives together with the
>> RKISP1_CIF_ISP_FRAME signal.
>> In case those signals arrive together then the code is not able to
>> tell if the RKISP1_CIF_ISP_FRAME signal relates to the frame of
>> the current v-start or the previous. This patch adds a WARN_ONCE
>> and a debugfs var to catch it.
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> ---
>>   drivers/staging/media/rkisp1/rkisp1-common.h | 1 +
>>   drivers/staging/media/rkisp1/rkisp1-dev.c    | 2 ++
>>   drivers/staging/media/rkisp1/rkisp1-isp.c    | 5 +++++
>>   3 files changed, 8 insertions(+)
>>
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
>> index 79edece6ee77..5aed0e37850a 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
>> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
>> @@ -228,6 +228,7 @@ struct rkisp1_debug {
>>   	unsigned long outform_size_error;
>>   	unsigned long img_stabilization_size_error;
>>   	unsigned long inform_size_error;
>> +	unsigned long irq_delay;
>>   	unsigned long mipi_error;
>>   	unsigned long stats_error;
>>   	unsigned long stop_timeout[2];
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
>> index a0eb8f08708b..557de940286b 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-dev.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
>> @@ -445,6 +445,8 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>>   			     &debug->img_stabilization_size_error);
>>   	debugfs_create_ulong("inform_size_error", 0444,  debug->debugfs_dir,
>>   			     &debug->inform_size_error);
>> +	debugfs_create_ulong("irq_delay", 0444,  debug->debugfs_dir,
>> +			     &debug->irq_delay);
>>   	debugfs_create_ulong("mipi_error", 0444, debug->debugfs_dir,
>>   			     &debug->mipi_error);
>>   	debugfs_create_ulong("stats_error", 0444, debug->debugfs_dir,
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
>> index 1ffe7cc7bb12..33cfad19dde2 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
>> @@ -1118,6 +1118,11 @@ void rkisp1_isp_isr(struct rkisp1_device *rkisp1)
>>   		 */
>>   		rkisp1->isp.frame_sequence++;
>>   		rkisp1_isp_queue_event_sof(&rkisp1->isp);
>> +		if (status & RKISP1_CIF_ISP_FRAME) {
>> +			WARN_ONCE(1, "irq delay is too long, buffers might not be in sync\n");
>> +			rkisp1->debug.irq_delay++;
>> +		}
>> +	}
> 
> I was wondering, if both interrupts arrive at the same time, shouldn't we handle the
> frame before incrementing the frame_sequence?
> 
> I mean, move the code block
> 
> 	if (status & RKISP1_CIF_ISP_V_START) {...}
> 
> after this other code block
> 
> 	if (status & RKISP1_CIF_ISP_FRAME) {...}

When the two interrupts arrive together it is not clear if the frame interrupt belongs
to the current v-start or the previous one, this is why I added this debugfs var.
So it is a bit of guessing what should be done first. Maybe changing the order is generally
more correct. I discussed that with Tomasz https://patchwork.kernel.org/patch/11066513/#23544763

Thanks,
Dafna

> 
> 
> Thanks,
> Helen
> 
>>   
>>   	if (status & RKISP1_CIF_ISP_PIC_SIZE_ERROR) {
>>   		/* Clear pic_size_error */
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
