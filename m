Return-Path: <SRS0=2Xhb=GY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EAC62C4332D
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 12:49:12 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8BE5023A3A
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 12:49:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8BE5023A3A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ua59WioltcQEu2LeUJfJeaP7u39natqB/0csWUyTjYI=; b=kPdBejXpXJ0cjzFSv8lVy4gHm
	4emxwCsDCPJYtJwSQp0oX90nSD7AJ9fQYTv4H8Rc+tFj3sifBh5xvmisfyRW+EraR+VDpeuELQYrk
	PgWYhmWjU0ASVHqRSOfQGNDqCu6MpCVBkvhUpFcdQzDUPSBPQlvajZY8coOzZ1mHuvRn9YCF7wp8q
	FTP/9fAs7aIKcX527XJValEGNBzKvZz6u9gC6wimjuYAsCrVhWVy93JbYtsiRbty9CetA5XGw+yll
	NqI2yUN0a09G0GzR0GbG+rNTC7Zm5gd4InvcVir4BKwHc6/tE5mj5f3S4vlc4/4ILN+yXX6bZ821L
	jcjR5RL5g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2ZOc-0002BI-Gx; Thu, 21 Jan 2021 12:49:06 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2ZOY-00028l-Cf
 for linux-rockchip@lists.infradead.org; Thu, 21 Jan 2021 12:49:04 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 56A4B1F45CC5
Subject: Re: [PATCH v7 1/5] media: rkisp1: uapi: change hist_bins array type
 from __u16 to __u32
To: Sakari Ailus <sakari.ailus@linux.intel.com>
References: <20210120164446.1220-1-dafna.hirschfeld@collabora.com>
 <20210120164446.1220-2-dafna.hirschfeld@collabora.com>
 <20210120213207.GN11878@paasikivi.fi.intel.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <12823703-5a32-f08a-5b4d-3a5ead231b33@collabora.com>
Date: Thu, 21 Jan 2021 13:48:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210120213207.GN11878@paasikivi.fi.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210121_074902_542146_382947FF 
X-CRM114-Status: GOOD (  23.32  )
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
Cc: mchehab@kernel.org, heiko@sntech.de, heiko.stuebner@theobroma-systems.com,
 dafna3@gmail.com, tfiga@chromium.org, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, kernel@collabora.com,
 ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



Am 20.01.21 um 22:32 schrieb Sakari Ailus:
> Hi Dafna,
> 
> Thanks for the update.
> 
> On Wed, Jan 20, 2021 at 05:44:42PM +0100, Dafna Hirschfeld wrote:
>> Each entry in the array is a 20 bits value composed of 16
>> bits unsigned integer and 4 bits fractional part. So the
>> type should change to __u32.
>> In addition add a documentation of how the measurements
>> are done.
> 
> The commit message lines wrap at 74, under 60 is not much.
> 
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> 
> Should there be a Fixes: line? The patch is changing UAPI...
> 
> The file has been recently introduced. Should it go to fixes or to a stable
> kernel, too?

The file was in the staging directory and will be first destaged in the coming 5.11,
so I don't think this is necessary.

> 
>> ---
>>   include/uapi/linux/rkisp1-config.h | 12 ++++++++----
>>   1 file changed, 8 insertions(+), 4 deletions(-)
>>
>> diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
>> index 6e449e784260..f75f8d698fb4 100644
>> --- a/include/uapi/linux/rkisp1-config.h
>> +++ b/include/uapi/linux/rkisp1-config.h
>> @@ -844,13 +844,17 @@ struct rkisp1_cif_isp_af_stat {
>>   /**
>>    * struct rkisp1_cif_isp_hist_stat - statistics histogram data
>>    *
>> - * @hist_bins: measured bin counters
>> + * @hist_bins: measured bin counters. Each bin is a 20 bits unsigned fixed point type.
>> + *	       Bits 0-4 are the fractional part and bits 5-19 are the integer part.
>>    *
>> - * Measurement window divided into 25 sub-windows, set
>> - * with ISP_HIST_XXX
>> + * The window of the measurements area is divided to 5x5 sub-windows. The histogram
>> + * is then computed for each sub-window independently and the final result is a weighted
>> + * average of the histogram measurements on all sub-windows.
>> + * The window of the measurements area and the weight of each sub-window are configurable
>> + * using struct @rkisp1_cif_isp_hst_config.
> 
> Please wrap the lines before 80.

ok,

Thanks,
Dafna

> 
>>    */
>>   struct rkisp1_cif_isp_hist_stat {
>> -	__u16 hist_bins[RKISP1_CIF_ISP_HIST_BIN_N_MAX];
>> +	__u32 hist_bins[RKISP1_CIF_ISP_HIST_BIN_N_MAX];
>>   };
>>   
>>   /**
>> -- 
>> 2.17.1
>>
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
