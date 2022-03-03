Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7F50C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 15:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H2w9ZIeo/+Yk/GeHM17QHoomaKB1YGDFfx1ZILlvcSg=; b=ZUackUEnv6oJ+z
	c+iRRathM9lJPj/51/mHicBNkHDv6qMCCSCKhoLoLEyN8FYzCa3rxyuz/50OugZIhtOJBuvv4k73i
	aZ18X+Xx/S6JFxwzCeS/PRhub6BNBytr3UTG1P+7dhiGlSdXQRM0L9jfVgUAaVyuERUibeV4poMy7
	beW2wR17GjhpMpaHj+tPB5Hb5mIci+LiBtVXkkhaj17PIyXHhs4pCVWoKmBn7bhXGzjsy2eUyMPQj
	AIM84Ud9x4M2bKZi30XVqFrOgIbkABn9M+WQb4xeelh1UrZo7wVZagSYRub9B2/ON6J39F9s+PxCe
	NUPfeFppbQ/5bhuD8V9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPnF0-006mug-9H; Thu, 03 Mar 2022 15:19:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPnEk-006mqC-2k; Thu, 03 Mar 2022 15:19:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0FBE01424;
 Thu,  3 Mar 2022 07:19:24 -0800 (PST)
Received: from [10.57.39.47] (unknown [10.57.39.47])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7674D3F66F;
 Thu,  3 Mar 2022 07:19:22 -0800 (PST)
Message-ID: <05ffc792-17cf-64f8-d3fd-4f7658aa6722@arm.com>
Date: Thu, 3 Mar 2022 15:19:18 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH] mmc: host: dw-mmc-rockchip: fix handling invalid clock
 rates
Content-Language: en-GB
To: Ulf Hansson <ulf.hansson@linaro.org>, Peter Geis <pgwipeout@gmail.com>
Cc: Jaehoon Chung <jh80.chung@samsung.com>, Heiko Stuebner <heiko@sntech.de>, 
 Addy Ke <addy.ke@rock-chips.com>, Doug Anderson <dianders@chromium.org>,
 linux-mmc@vger.kernel.org,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20220303015151.1711860-1-pgwipeout@gmail.com>
 <CAPDyKFrk+HCbSZtB7uv6u9tjTgzFDjpB9oP9FYJUqNxcCzQ9iw@mail.gmail.com>
 <CAMdYzYrndAwWJELRRL4kP-BCdWuF6bLVwS2PUMVx_UcJZE=nsQ@mail.gmail.com>
 <CAPDyKFp8tZ-Ty0Wo2jkTjr6Jun83QczQfQRQ1zvFBBCOCWjtng@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <CAPDyKFp8tZ-Ty0Wo2jkTjr6Jun83QczQfQRQ1zvFBBCOCWjtng@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_071926_258365_8B193814 
X-CRM114-Status: GOOD (  22.80  )
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

On 2022-03-03 10:21, Ulf Hansson wrote:
> On Thu, 3 Mar 2022 at 10:49, Peter Geis <pgwipeout@gmail.com> wrote:
>>
>> On Thu, Mar 3, 2022 at 2:53 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>>>
>>> On Thu, 3 Mar 2022 at 02:52, Peter Geis <pgwipeout@gmail.com> wrote:
>>>>
>>>> The Rockchip ciu clock cannot be set as low as the dw-mmc hardware
>>>> supports. This leads to a situation during card initialization where the
>>>> ciu clock is set lower than the clock driver can support. The
>>>> dw-mmc-rockchip driver spews errors when this happens.
>>>> For normal operation this only happens a few times during boot, but when
>>>> cd-broken is enabled (in cases such as the SoQuartz module) this fires
>>>> multiple times each poll cycle.
>>>>
>>>> Fix this by testing the minimum frequency the clock driver can support
>>>> that is within the mmc specification, then divide that by the internal
>>>> clock divider. Set the f_min frequency to this value, or if it fails,
>>>> set f_min to the downstream driver's default.
>>>>
>>>> Fixes: f629ba2c04c9 ("mmc: dw_mmc: add support for RK3288")
>>>>
>>>> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
>>>> ---
>>>>   drivers/mmc/host/dw_mmc-rockchip.c | 31 ++++++++++++++++++++++++++----
>>>>   1 file changed, 27 insertions(+), 4 deletions(-)
>>>>
>>>> diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
>>>> index 95d0ec0f5f3a..c198590cd74a 100644
>>>> --- a/drivers/mmc/host/dw_mmc-rockchip.c
>>>> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
>>>> @@ -15,7 +15,9 @@
>>>>   #include "dw_mmc.h"
>>>>   #include "dw_mmc-pltfm.h"
>>>>
>>>> -#define RK3288_CLKGEN_DIV       2
>>>> +#define RK3288_CLKGEN_DIV      2
>>>> +#define RK3288_MIN_INIT_FREQ   375000
>>>> +#define MMC_MAX_INIT_FREQ      400000
>>>>
>>>>   struct dw_mci_rockchip_priv_data {
>>>>          struct clk              *drv_clk;
>>>> @@ -27,6 +29,7 @@ struct dw_mci_rockchip_priv_data {
>>>>   static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
>>>>   {
>>>>          struct dw_mci_rockchip_priv_data *priv = host->priv;
>>>> +       struct mmc_host *mmc = mmc_from_priv(host);
>>>>          int ret;
>>>>          unsigned int cclkin;
>>>>          u32 bus_hz;
>>>> @@ -34,6 +37,10 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
>>>>          if (ios->clock == 0)
>>>>                  return;
>>>>
>>>> +       /* the clock will fail if below the f_min rate */
>>>> +       if (ios->clock < mmc->f_min)
>>>> +               ios->clock = mmc->f_min;
>>>> +
>>>
>>> You shouldn't need this. The mmc core should manage this already.
>>
>> I thought so too, but while setting f_min did reduce the number of
>> errors, it didn't stop them completely.
>> Each tick I was getting three failures, it turns out mmc core tries
>> anyways with 300000, 200000, and 100000.
>> Clamping it here was necessary to stop these.
> 
> Ohh, that was certainly a surprise to me. Unless the dw_mmc driver
> invokes this path on it's own in some odd way, that means the mmc core
> has a bug that we need to fix.
> 
> Would you mind taking a stack trace or debug this so we understand in
> what case the mmc core doesn't respect f_min? It really should.

I'm only armed with grep and a hunch, but is dw_mci_init_slot_caps() 
stomping on the same f_min that we've set in the platform init hook?

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
