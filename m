Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FEFFE7718A
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 02:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S/UGlAjPRqGrARpfQh5ZzO1wv5pwSqA6om35AFVWLZY=; b=IhFmraRk9GSlC5k09E6vwPa0Ns
	lovKcdgkvLXwrbKyIVHH2ybIVgqHFLaUCJqbKzvrkHa+TZAQuJT37wqsvSPpo2CgS2PRdRjxOwk6K
	zMsZwZv8IfuayzK+GXLXeizqFm7DONaAG/pTqg31Bhh8PUGhxO4Q1AuX1vTDgUOnLzV+c0AWdjfMw
	76r9y8B9QuCWI2Y6/QA9PkfvLzDZa8DLOVwTD357Oy/Mkuso6fQOwZBF5ani9w6luHOOaPstlJNKG
	42UJRjUrL7NJa6oErqSWz4tZLXmoRAydAMx/rDITIDcfNWC2DnPMRYzVWGwiw0iHBzMdEK8ZlDRy3
	J6E8Hk/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOTAj-00000003kyJ-2kEl;
	Fri, 20 Dec 2024 02:55:25 +0000
Received: from mail-m12794.qiye.163.com ([115.236.127.94])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOS64-00000003fBg-2igp;
	Fri, 20 Dec 2024 01:46:34 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 64555da6;
	Fri, 20 Dec 2024 09:46:23 +0800 (GMT+08:00)
Message-ID: <20d95d18-ddbc-423e-ab15-d246dc605527@rock-chips.com>
Date: Fri, 20 Dec 2024 09:46:24 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 04/15] phy: phy-rockchip-samsung-hdptx: Rename some
 register names related to DP
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-5-damon.ding@rock-chips.com>
 <rkdp44csph6stq2e7emhgjziiwypcas7uqsvcdo7i6ypvg64uz@gnqikl5fzxqd>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <rkdp44csph6stq2e7emhgjziiwypcas7uqsvcdo7i6ypvg64uz@gnqikl5fzxqd>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGksYT1ZMGUwZGR0eQh8ZSR1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e1be94b303a3kunm64555da6
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PCI6DQw4MTIWFAoIAyIXCE1K
	ITUwFFFVSlVKTEhPTU5CSkNOT0hMVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFOTU1LNwY+
DKIM-Signature: a=rsa-sha256;
	b=SCDtr1iP7grdk/3VZASTnC1OltzueJrozkvIBdbI6n3fYffWx+FGmBMgiEl80YxxkSjYV8BzO2REeBvGazfwDG6sWKuIN/KV6ijXaVGasDNZEvEBxcY4TNgwfEwyYrg5PQPVozKD3kbz006xt8/EIxsceC9IyuznsggjKUCnkE4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=CReTqJKUWrNj+lfZ2doUitw3k9N3xnNBLkgV9sHlt+c=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_174632_879759_04BC9F80 
X-CRM114-Status: GOOD (  15.88  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dmitry,

On 2024/12/20 8:22, Dmitry Baryshkov wrote:
> On Thu, Dec 19, 2024 at 04:05:53PM +0800, Damon Ding wrote:
>> The modifications of DP register names are as follows:
>> - Add the '_MASK' suffix to some registers to ensure consistency.
>> - Complete the names of some register to their full names.
>> - Swap the definitions of LCPLL_REF and ROPLL_REF.
> 
> Three unrelated changes, ideally means three commits (I won't insist on
> that though). Also please mention that LCPLL_REF and ROPLL_REF were not
> used by the existing driver, so it's not a bug and there is no need to
> backport it.
> 

Indeed, it would be better to split this patch into three different 
commits. However, I still want to keep the fixes for LCPLL_REF and 
ROPLL_REF because, according to the datasheet, they are indeed 
incorrect. And I will describe the suggestions you mentioned in the 
commit message.

>>
>> Fixes: 553be2830c5f ("phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver")
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>> ---
>>   .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 64 +++++++++----------
>>   1 file changed, 32 insertions(+), 32 deletions(-)
>>
>> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> index ceab9c71d3b5..c1b9c73f5f9f 100644
>> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> @@ -69,41 +69,41 @@
>>   #define ROPLL_PMS_IQDIV_RSTN		BIT(5)
>>   /* CMN_REG(005e) */
>>   #define ROPLL_SDM_EN_MASK		BIT(6)
>> -#define ROPLL_SDM_FRAC_EN_RBR		BIT(3)
>> -#define ROPLL_SDM_FRAC_EN_HBR		BIT(2)
>> -#define ROPLL_SDM_FRAC_EN_HBR2		BIT(1)
>> -#define ROPLL_SDM_FRAC_EN_HBR3		BIT(0)
>> +#define ROPLL_SDC_FRAC_EN_RBR_MASK	BIT(3)
>> +#define ROPLL_SDC_FRAC_EN_HBR_MASK	BIT(2)
>> +#define ROPLL_SDC_FRAC_EN_HBR2_MASK	BIT(1)
>> +#define ROPLL_SDM_FRAC_EN_HBR3_MASK	BIT(0)
>>   /* CMN_REG(0064) */
>>   #define ROPLL_SDM_NUM_SIGN_RBR_MASK	BIT(3)
>>   /* CMN_REG(0069) */
>>   #define ROPLL_SDC_N_RBR_MASK		GENMASK(2, 0)
>>   /* CMN_REG(0074) */
>> -#define ROPLL_SDC_NDIV_RSTN		BIT(2)
>> -#define ROPLL_SSC_EN			BIT(0)
>> +#define ROPLL_SDC_NDIV_RSTN_MASK	BIT(2)
>> +#define ROPLL_SSC_EN_MASK		BIT(0)
>>   /* CMN_REG(0081) */
>> -#define OVRD_PLL_CD_CLK_EN		BIT(8)
>> -#define PLL_CD_HSCLK_EAST_EN		BIT(0)
>> +#define OVRD_PLL_CD_CLK_EN_MASK		BIT(8)
>> +#define ANA_PLL_CD_HSCLK_EAST_EN_MASK	BIT(0)
>>   /* CMN_REG(0086) */
>>   #define PLL_PCG_POSTDIV_SEL_MASK	GENMASK(7, 4)
>>   #define PLL_PCG_CLK_SEL_MASK		GENMASK(3, 1)
>   >  #define PLL_PCG_CLK_EN			BIT(0)
>>   /* CMN_REG(0087) */
>> -#define PLL_FRL_MODE_EN			BIT(3)
>> -#define PLL_TX_HS_CLK_EN		BIT(2)
>> +#define ANA_PLL_FRL_MODE_EN_MASK	BIT(3)
>> +#define ANA_PLL_TX_HS_CLK_EN_MASK	BIT(2)
>>   /* CMN_REG(0089) */
>>   #define LCPLL_ALONE_MODE		BIT(1)
>>   /* CMN_REG(0097) */
>> -#define DIG_CLK_SEL			BIT(1)
>> -#define ROPLL_REF			BIT(1)
>> -#define LCPLL_REF			0
>> +#define DIG_CLK_SEL_MASK		BIT(1)
>> +#define LCPLL_REF			BIT(1)
>> +#define ROPLL_REF			0
>>   /* CMN_REG(0099) */
>>   #define CMN_ROPLL_ALONE_MODE		BIT(2)
>>   #define ROPLL_ALONE_MODE		BIT(2)
>>   /* CMN_REG(009a) */
>> -#define HS_SPEED_SEL			BIT(0)
>> +#define HS_SPEED_SEL_MASK		BIT(0)
>>   #define DIV_10_CLOCK			BIT(0)
>>   /* CMN_REG(009b) */
>> -#define IS_SPEED_SEL			BIT(4)
>> +#define LS_SPEED_SEL_MASK		BIT(4)
>>   #define LINK_SYMBOL_CLOCK		BIT(4)
>>   #define LINK_SYMBOL_CLOCK1_2		0
>>   
>> @@ -165,32 +165,32 @@
>>   #define HDMI_MODE			BIT(2)
>>   #define HDMI_TMDS_FRL_SEL		BIT(1)
>>   /* LNTOP_REG(0206) */
>> -#define DATA_BUS_SEL			BIT(0)
>> +#define DATA_BUS_WIDTH_SEL_MASK		BIT(0)
>>   #define DATA_BUS_36_40			BIT(0)
>>   /* LNTOP_REG(0207) */
>>   #define LANE_EN				0xf
>>   #define ALL_LANE_EN			0xf
>>   
>>   /* LANE_REG(0312) */
>> -#define LN0_TX_SER_RATE_SEL_RBR		BIT(5)
>> -#define LN0_TX_SER_RATE_SEL_HBR		BIT(4)
>> -#define LN0_TX_SER_RATE_SEL_HBR2	BIT(3)
>> -#define LN0_TX_SER_RATE_SEL_HBR3	BIT(2)
>> +#define LN0_TX_SER_RATE_SEL_RBR_MASK	BIT(5)
>> +#define LN0_TX_SER_RATE_SEL_HBR_MASK	BIT(4)
>> +#define LN0_TX_SER_RATE_SEL_HBR2_MASK	BIT(3)
>> +#define LN0_TX_SER_RATE_SEL_HBR3_MASK	BIT(2)
>>   /* LANE_REG(0412) */
>> -#define LN1_TX_SER_RATE_SEL_RBR		BIT(5)
>> -#define LN1_TX_SER_RATE_SEL_HBR		BIT(4)
>> -#define LN1_TX_SER_RATE_SEL_HBR2	BIT(3)
>> -#define LN1_TX_SER_RATE_SEL_HBR3	BIT(2)
>> +#define LN1_TX_SER_RATE_SEL_RBR_MASK	BIT(5)
>> +#define LN1_TX_SER_RATE_SEL_HBR_MASK	BIT(4)
>> +#define LN1_TX_SER_RATE_SEL_HBR2_MASK	BIT(3)
>> +#define LN1_TX_SER_RATE_SEL_HBR3_MASK	BIT(2)
>>   /* LANE_REG(0512) */
>> -#define LN2_TX_SER_RATE_SEL_RBR		BIT(5)
>> -#define LN2_TX_SER_RATE_SEL_HBR		BIT(4)
>> -#define LN2_TX_SER_RATE_SEL_HBR2	BIT(3)
>> -#define LN2_TX_SER_RATE_SEL_HBR3	BIT(2)
>> +#define LN2_TX_SER_RATE_SEL_RBR_MASK	BIT(5)
>> +#define LN2_TX_SER_RATE_SEL_HBR_MASK	BIT(4)
>> +#define LN2_TX_SER_RATE_SEL_HBR2_MASK	BIT(3)
>> +#define LN2_TX_SER_RATE_SEL_HBR3_MASK	BIT(2)
>>   /* LANE_REG(0612) */
>> -#define LN3_TX_SER_RATE_SEL_RBR		BIT(5)
>> -#define LN3_TX_SER_RATE_SEL_HBR		BIT(4)
>> -#define LN3_TX_SER_RATE_SEL_HBR2	BIT(3)
>> -#define LN3_TX_SER_RATE_SEL_HBR3	BIT(2)
>> +#define LN3_TX_SER_RATE_SEL_RBR_MASK	BIT(5)
>> +#define LN3_TX_SER_RATE_SEL_HBR_MASK	BIT(4)
>> +#define LN3_TX_SER_RATE_SEL_HBR2_MASK	BIT(3)
>> +#define LN3_TX_SER_RATE_SEL_HBR3_MASK	BIT(2)
>>   
>>   #define HDMI20_MAX_RATE			600000000
>>   
>> -- 
>> 2.34.1
>>
> 

Best regards,
Damon

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
