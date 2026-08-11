Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFC53C5B56A
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2026 15:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j5b6zleBeJQCxFfVnuJkKZdP2hl8mPJycnn0vKaeSb8=; b=hNltXgii0Whwic
	QDRwHgGnX1PPDQV2fngoPoI8kinQAVJfNoShFTplm32kyc9dZkAZltUF4Um2hh5cQlzR5pIK3A+N8
	FiHJO8Jrh/xi9okL4+U9mEJXC4XuJj+5TFGJ86QgjnbEN9dL2R/zAoTTM3YPhPBNOAbwSCtZeyvuo
	sT0Voj3f/jxlaOoD2NyCPDNPvAgYNjzvpihjsPxViQyY+GUSZcgve5CVS0S7aRNZLAyF2ep/R+fSL
	nkMRDDImql4XmJOaCPsD3Wxu7cl0IeV3IQ3mwVI5REr10Oi4gjNlhs52fKPChd2+bG51cRqODfJbx
	3auoCE7vPf6FGRULs1mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtolB-0000000EOoj-41Qs;
	Tue, 11 Aug 2026 15:51:25 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtol8-0000000EOmJ-2N4k;
	Tue, 11 Aug 2026 15:51:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1786463480;
	bh=r5sxoIDBu+UMeliWhFNjPB2P71r/Kt23EzkhOScMzEc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=XLhCA431ofc9amUVBxgzt9EvqXcXG638L4I2yrpwHRIiH4bjBT2AX+FdhvwRJ4jP5
	 lh/JYYZPzI5xUxEljpKJGcociaoxt+qUeNSN+V5zkFaxIcRwTlVXBZwRUOQKBoM4ix
	 RgZR0n023UL4oCCzsXUzq3K0e88cf6SB/6nSKPjxNon6aMT5lCTSkQAC0+lcRAExXt
	 WUG/oJFyiVbfXkgvQDRX93rz2Km45HoLx6tpGSxpMIW+YThI3UE70wj6pMvOGyGkXl
	 1iPkfSr3yFIE+tUjpg6HEttUziZULCq1ybVp9fr3epdvEnas6gd3yNaAgo8PeAkyCk
	 y8qP6ldgTtKLw==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D1D8D17E06DB;
	Tue, 11 Aug 2026 17:51:19 +0200 (CEST)
Message-ID: <4f6fd388-c07c-436b-9816-a4de9e7fec8c@collabora.com>
Date: Tue, 11 Aug 2026 18:51:19 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 02/10] phy: rockchip: samsung-hdptx: Prevent
 divide-by-zero when computing clk rate
To: Vinod Koul <vkoul@kernel.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
 Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Sashiko <sashiko-bot@kernel.org>, Diederik de Haas
 <diederik@cknow-tech.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Andy Yan <andy.yan@rock-chips.com>
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
 <20260723-hdptx-clk-fixes-v5-2-8e786067865f@collabora.com>
 <qe6i5bvrn32xmwncl4zq3f5w6twpwfwvq5alaacsceq3vxn3nt@mbeytagr77j3>
 <605f96b2-709c-49f6-9446-49ed3bff7d96@collabora.com> <ansGZ9LUA7ItYHe7@vaman>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <ansGZ9LUA7ItYHe7@vaman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_085122_773319_24238933 
X-CRM114-Status: GOOD (  18.44  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 8/11/26 2:24 PM, Vinod Koul wrote:
> On 07-08-26, 17:19, Cristian Ciocaltea wrote:
>> Hi Mani,
>>
>> On 8/7/26 3:56 PM, Manivannan Sadhasivam wrote:
>>> On Thu, Jul 23, 2026 at 10:41:45PM +0300, Cristian Ciocaltea wrote:
>>>> Calculating 'sdm' fraction in rk_hdptx_phy_clk_calc_rate_from_pll_cfg()
>>>> could trigger a divide-by-zero, as it uses div_u64() with a denominator
>>>> read directly from hardware: the values ropll_hw.sdm_deno,
>>>> ropll_hw.sdc_deno, ropll_hw.sdc_n, and ropll_hw.sdc_num are populated
>>>> from PLL registers which, in theory, could be left by the bootloader
>>>> uninitialized/misconfigured.
>>>>
>>>> Provide the necessary sanitization to avoid trusting the hardware state.
>>>>
>>>> Reported-by: Sashiko <sashiko-bot@kernel.org>
>>>> Closes: https://sashiko.dev/#/patchset/20260611-hdptx-clk-fixes-v3-0-67b1b0c00e16@collabora.com?part=1
>>>> Fixes: 3481fc04d969 ("phy: rockchip: samsung-hdptx: Compute clk rate from PLL config")
>>>> Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # NanoPC-T6 LTS
>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>>> Reviewed-by: Andy Yan <andy.yan@rock-chips.com>
>>>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>>>> ---
>>>>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 11 ++++++++---
>>>>  1 file changed, 8 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>>>> index 710603afff86..44e99343f249 100644
>>>> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>>>> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>>>> @@ -2270,10 +2270,15 @@ static u64 rk_hdptx_phy_clk_calc_rate_from_pll_cfg(struct rk_hdptx_phy *hdptx)
>>>>  
>>>>  	fout = PLL_REF_CLK * ropll_hw.pms_mdiv;
>>>>  	if (ropll_hw.sdm_en) {
>>>> +		val = 16U * ropll_hw.sdm_deno *
>>>> +		      (ropll_hw.sdc_deno * ropll_hw.sdc_n - ropll_hw.sdc_num);
>>>> +		if (!val) {
>>>> +			dev_dbg(hdptx->dev, "Invalid ROPLL hw state: deno == 0\n");
>>>
>>> If the hardware state is invalid, why can't this be a hard failure?
>>
>> This is an internal helper called from the .recalc_rate clk_op, which tries to
>> compute the current rate by reading back the hardware state. 
>>
>> Since .recalc_rate returns unsigned long, we cannot propagate errors to the
>> caller.  However, per the clk_ops documentation, the driver is expected to
>> return 0 if it cannot figure out the rate.
>>
>> Moreover, this condition isn't really fatal, as it only means the PLL
>> configuration currently stored in hardware can't be translated into a rate.  The
>> next .set_rate should program a valid configuration and help with the recovery.
> 
> This is a good explanation which may not be obvious to everyone. I would
> think that it would be good idea to add a comment for this here

Ack, handled in v6:

https://lore.kernel.org/all/20260811-hdptx-clk-fixes-v6-2-75bca0ee5753@collabora.com/

Regards,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
