Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F900C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Apr 2022 00:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3zlNObrCQSMjBDIgLAL/8knOO7nQVDHKzQl/GXuRAs=; b=veka7P4v95KQBj
	QDhoNczSlJwKPlKCXVbb2SNWonG3o1NCOsZAj8wPefOgUWw9XuOO8HEqoIbzeWkTycywsamYVchvw
	M9IRPy3A1n3Tv9wOnsIJO9RO8YFY8i3+IjB8cvn6Gzg/iiZM9J37lpzOcleVFmEF4cisQfbDtOjtI
	zUJ/bMA26L8oY9sQ86C4b6jZ5A9GeX8i5Vh4oo3RpmyAjrn2XaTDUqPXQeqdhutsUQzX6Q+YpkAE3
	xuyM3rlFnFPEPP0aOgPWvVYl0asIP/wN3zUF5VNAP5J22oh0+BNN8SCQ2mYUTS8NCJqUkEYia86Xw
	dyUj+PNwqHIHr3gEG5bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njVVC-00GlBv-SN; Wed, 27 Apr 2022 00:25:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njVV9-00GlAj-Mx
 for linux-rockchip@lists.infradead.org; Wed, 27 Apr 2022 00:25:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6F07D23A;
 Tue, 26 Apr 2022 17:25:48 -0700 (PDT)
Received: from [10.57.80.98] (unknown [10.57.80.98])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1E0443F73B;
 Tue, 26 Apr 2022 17:25:46 -0700 (PDT)
Message-ID: <d72eb7a7-f922-3270-422b-4e27505de530@arm.com>
Date: Wed, 27 Apr 2022 01:25:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v3 2/3] soc: rockchip: power-domain: Replace dsb() with
 smb()
Content-Language: en-GB
To: Peter Geis <pgwipeout@gmail.com>, Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Guenter Roeck <linux@roeck-us.net>
References: <20220426014545.628100-1-briannorris@chromium.org>
 <20220426014545.628100-2-briannorris@chromium.org>
 <CAMdYzYqyDr1HFYB4p8NK8ssq60qfjR2jyoSJ=tcRn8CWsZr16g@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <CAMdYzYqyDr1HFYB4p8NK8ssq60qfjR2jyoSJ=tcRn8CWsZr16g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_172551_847964_2D4814B4 
X-CRM114-Status: GOOD (  17.51  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2022-04-27 00:55, Peter Geis wrote:
> On Mon, Apr 25, 2022 at 9:46 PM Brian Norris <briannorris@chromium.org> wrote:
>>
>> It's unclear if these are really needed at all, but seemingly their
>> purpose is only as a write barrier. Use the general macro instead of the
>> ARM-specific one.
>>
>> This driver is partially marked for COMPILE_TEST'ing, but it doesn't
>> build under non-ARM architectures. Fix this up before *really* enabling
>> it for COMPILE_TEST.
>>
>> Signed-off-by: Brian Norris <briannorris@chromium.org>
>> ---
>>
>> Changes in v3:
>>   * New in v3
>>
>>   drivers/soc/rockchip/pm_domains.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
>> index 1b029e494274..cf16ff9b73b3 100644
>> --- a/drivers/soc/rockchip/pm_domains.c
>> +++ b/drivers/soc/rockchip/pm_domains.c
>> @@ -178,7 +178,7 @@ static int rockchip_pmu_set_idle_request(struct rockchip_pm_domain *pd,
>>                  regmap_update_bits(pmu->regmap, pmu->info->req_offset,
>>                                     pd_info->req_mask, idle ? -1U : 0);
>>
>> -       dsb(sy);
>> +       wmb();
> 
> Just curious, shouldn't this be mb() instead of wmb()?
>  From the arm64 barrier.h:
> 
> #define mb() dsb(sy)
> #define wmb() dsb(st)

As I mentioned on v2, that would be the literal translation, however 
there's no concurrency since this is happening under a mutex, so there's 
no other agent against whose accesses loads would need to be 
synchronised, therefore the only logical reason those DSBs were ever 
there at all must be to ensure that the prior store(s) have been issued 
to their destination before proceeding. The history implies that this 
dates all the way back to RK3288, where Armv7's argument-less DSB lacked 
that distinction anyway.

Robin.

>>
>>          /* Wait util idle_ack = 1 */
>>          target_ack = idle ? pd_info->ack_mask : 0;
>> @@ -285,7 +285,7 @@ static void rockchip_do_pmu_set_power_domain(struct rockchip_pm_domain *pd,
>>                  regmap_update_bits(pmu->regmap, pmu->info->pwr_offset,
>>                                     pd->info->pwr_mask, on ? 0 : -1U);
>>
>> -       dsb(sy);
>> +       wmb();
>>
>>          if (readx_poll_timeout_atomic(rockchip_pmu_domain_is_on, pd, is_on,
>>                                        is_on == on, 0, 10000)) {
>> --
>> 2.36.0.rc2.479.g8af0fa9b8e-goog
>>
>>
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
