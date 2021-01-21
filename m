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
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BD1C4332D
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 11:47:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5C0F9238E2
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 11:47:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5C0F9238E2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6VyjralmCpJ8rHJq9Kw2QpPHlj+pyicgA7gfH9pxrgk=; b=JkR4DhwZnJw5goNQDEJIZDsHM
	m788DfbhFvhxGd3K8raUWtwV86PMhmC6EiqApRWwOJmpj74tXkqfAme9e5728Ob2pvKm73Ub9VosP
	GHYoHgsdS4w+uU9qczakdis4Yxfs5Ka7EehpicE0euXDHYvi4QKG5o9YbH1pTD8khuTqfeJRIySrn
	KQJwZkY5ZxPWblHSxb0tyVWckwEK8XcEouhMZB5yHj6UmJuyRU9SH3TRm/zK/fuue62yHgMm2q1EN
	hU2OX7qK188pA9PBpMuGAzra5nGf1K05Y6fbdbbdM7eJ6frp0XR3XE+PV83d7ovjsjTOnYOoZdsZ4
	ehTNglxjg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2YQk-0006Fe-O0; Thu, 21 Jan 2021 11:47:14 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2YQh-0006F3-Rc
 for linux-rockchip@lists.infradead.org; Thu, 21 Jan 2021 11:47:12 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id D14281F45C82
Subject: Re: [PATCH v7 2/5] media: rkisp1: stats: remove a wrong cast to u8
To: Tomasz Figa <tfiga@chromium.org>
References: <20210120164446.1220-1-dafna.hirschfeld@collabora.com>
 <20210120164446.1220-3-dafna.hirschfeld@collabora.com>
 <CAAFQd5AyE87V7u6heJp24VUXVBMzqrQ6nUVa-mVr0JUADSVq=g@mail.gmail.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <45ade6c9-b163-0db9-57e7-599e900054f5@collabora.com>
Date: Thu, 21 Jan 2021 12:47:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAAFQd5AyE87V7u6heJp24VUXVBMzqrQ6nUVa-mVr0JUADSVq=g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210121_064711_993502_BDF936ED 
X-CRM114-Status: GOOD (  21.96  )
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



Am 21.01.21 um 11:07 schrieb Tomasz Figa:
> Hi Dafna,
> 
> On Thu, Jan 21, 2021 at 1:45 AM Dafna Hirschfeld
> <dafna.hirschfeld@collabora.com> wrote:
>>
>> hist_bins is an array of type __u32. Each entry represent
>> a 20 bit fixed point value as documented inline.
>> The cast to u8 when setting the values is wrong. Remove it.
> 
> Thanks for the patch. See my comment inline.
> 
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> ---
>>   drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c | 3 +--
>>   1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
>> index 3ddab8fa8f2d..4cdb180fa64d 100644
>> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
>> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
>> @@ -235,8 +235,7 @@ static void rkisp1_stats_get_hst_meas(struct rkisp1_stats *stats,
>>          pbuf->meas_type |= RKISP1_CIF_ISP_STAT_HIST;
>>          for (i = 0; i < RKISP1_CIF_ISP_HIST_BIN_N_MAX; i++)
>>                  pbuf->params.hist.hist_bins[i] =
>> -                       (u8)rkisp1_read(rkisp1,
>> -                                       RKISP1_CIF_ISP_HIST_BIN_0 + i * 4);
>> +                       rkisp1_read(rkisp1, RKISP1_CIF_ISP_HIST_BIN_0 + i * 4);
> 
> Is the register guaranteed to return 0 for the upper unused 12 bits?
> Should we mask them instead?

I printed the values and I always see 0 for the last 12 bits. But the datasheet
does not say that explicitly.
I can add a mask to be on the safe side.

Thanks,
Dafna

> 
> Best regards,
> Tomasz
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
