Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF4EBD3C53F
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Oct 2024 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EahlgTHd02yg3gVAvXPX15sPOVLhDlJyAk1lKW9Trlo=; b=2+b6/iPf08wWsT
	y7xmRdHWo2Z2rfuWBxClj2cKVftdPnmB3Hb8QVGq1CtpA2TRLCoplXBwhxhez13gy4XzrkH+Nw/t5
	eVAh2dWJg6nhjocngBKDmcbUyyLqFKzbid0CIOQlmmw9fX8QvJ0/eUJLS2BmXZKoiFtry8IoajGTa
	ZYAGj8tmDQoMLFhdw8HeKVIw9yZ6itSUcUZa7NIKSdtrs3SqXDos07NaSupZh5MI6AwRldK5KzUT8
	dKD3orHLmUTANoQyLXXtp0R5juEoBKU8Ucj/Nu0XzDkb9xw+DzQj9x6Q3IojybqgwuQ+JE+JElUKi
	cJedqfQEW9pn/2ujPQzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1bwg-0000000GaUc-0vBY;
	Fri, 18 Oct 2024 01:38:26 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1bvC-0000000GaNd-2jwi;
	Fri, 18 Oct 2024 01:36:56 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-2e2b4110341so226062a91.1;
        Thu, 17 Oct 2024 18:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729215414; x=1729820214; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Pq+RtYnwTu+tV+EPidhczlNwvnckhnNKGaN3wMd6h20=;
        b=R+Zz1M8c4v/8fkQ/ICAp8CxDvbhUDMv8YaEmysw7q2bwF72K9nJKBvSmHreLwhAcou
         eWxBACFCbwZBJ3v49H9VO57d0JMcV4GCIofLueS95/JNRv9RAf31n4WGnk7QDxF40ScG
         TtPiy2gF/mq3tzoci+WPVLKmv9tlAjlRZ0fARjfxg1kx66v64wbZ1pIc6imPhRvIW+GD
         65Blo20WSAlMQH+KrxskKnUdVpQX3C+UfFtlfaU/8Fqj18qbzWbui5JnuDwxqw1Dii1U
         fVZ5YpY1NtHBYDJS93ItgLB9JWtNkEmR3zzscRjPlb/0o5Pci8OJQawS1eBSQfZSwfiU
         a9Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729215414; x=1729820214;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Pq+RtYnwTu+tV+EPidhczlNwvnckhnNKGaN3wMd6h20=;
        b=c9ejQ5uA3xSjg5s1zpxClzeky5L4y0oeZcyWvpdEwHx1mp2vsr/3ynA8nbi5fOmKjm
         2LKmsZCTWPpa/fVboyT6hduGazhXxnieSp20dh/rOaJDncIwcpZIuz46IljaeM8RGX5p
         CEtruCwEFLsKXVNr0z5HdTcUoyBLoYfnxgqzPantbq1RMAY/UlkjGetWny0sXrw/j0Lu
         wkRyPB+K6UxRp/O1a0bcdJ5W8MTKrKIf0c4eSpyqd14un2jAvnng6fepEpspFWvctiyr
         paM3YfX+FupcJah1YfyDSYl1rYl8AiUapnminRebtEZnuicb1YQ+dVjfCWCERJKVvaMn
         UlhQ==
X-Forwarded-Encrypted: i=1; AJvYcCUC+KE2T8PZh+Vaw7mPC2/aTwSn3XRgc+5IrXszAGHwEhGcnrr1ZULMW5IBVCsIRSOOkQfwUJ0md/H3zQigk6Ba@lists.infradead.org, AJvYcCUFkto+QS94qx3mRtc6HCT+/Es1wHuqwH7HzDKDkXgQRfSfXD65RpcMFlk6wiRftoua3HlIMrulog3sPPF4qeA=@lists.infradead.org, AJvYcCVQFZmr6fRqFeavguxDI7atLWcNRjl1XELa0gXF7TJ5mVNahgPG/URo4+TnYd4Hs4KpSjovhpSTMXqM@lists.infradead.org
X-Gm-Message-State: AOJu0YxVRfvEauxqI7X/N7Y9gznpXHW3I4U/hrdHslvlMCRriW8B6Za+
	zCf6tAOsshclWIAFQsTgaeaDlaYcMa3/S9V7g1B8ug+Fo480mUdv
X-Google-Smtp-Source: AGHT+IFraYLP89MmMGaLWHqJFkXlo/amHQDE+XSWH3Hog92OGLzw5xKZ73BT2TktxfYdK1JdUmKnhg==
X-Received: by 2002:a17:90a:e607:b0:2e1:682b:361e with SMTP id 98e67ed59e1d1-2e5616eb630mr480804a91.4.1729215413581;
        Thu, 17 Oct 2024 18:36:53 -0700 (PDT)
Received: from [192.168.60.56] ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e5612d0777sm425166a91.53.2024.10.17.18.36.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Oct 2024 18:36:53 -0700 (PDT)
Message-ID: <8f3bd853-55fc-4da5-8d68-eae5754f6933@gmail.com>
Date: Fri, 18 Oct 2024 09:36:46 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] phy: rockchip-naneng-combo: Support rk3576
To: Vinod Koul <vkoul@kernel.org>
Cc: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 william.wu@rock-chips.com, tim.chen@rock-chips.com,
 Kever Yang <kever.yang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>
References: <20241016023533.12018-1-frawang.cn@gmail.com>
 <20241016023533.12018-2-frawang.cn@gmail.com> <ZxEgdHCQ3dTQeMRm@vaman>
Content-Language: en-US
From: Frank Wang <frawang.cn@gmail.com>
In-Reply-To: <ZxEgdHCQ3dTQeMRm@vaman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_183654_743490_8FC42346 
X-CRM114-Status: GOOD (  19.16  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Vinod,

On 2024/10/17 22:34, Vinod Koul wrote:
> On 16-10-24, 10:35, Frank Wang wrote:
>> From: Kever Yang <kever.yang@rock-chips.com>
>>
>> phy0: pcie, sata
>> phy1: pcie, sata, usb3
> Can this be more verbose to explain what is being added in the patch
> below?

Sure, I'll amend and send a new version.

>> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
>> Signed-off-by: William Wu <william.wu@rock-chips.com>
>> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
>> ---
>> Changelog:
>> v2:
>>   - using constants macro instead of magic values.
>>   - add more comments for PHY tuning operations.
>>
>> v1:
>>   - https://patchwork.kernel.org/project/linux-phy/patch/20241015013351.4884-2-frawang.cn@gmail.com/
>>
>>   .../rockchip/phy-rockchip-naneng-combphy.c    | 274 ++++++++++++++++++
>>   1 file changed, 274 insertions(+)
>>
>> diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
>> index 0a9989e41237f..25aa8d1981abc 100644
>> --- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
>> +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
>> @@ -37,6 +37,10 @@
>>   #define PHYREG8				0x1C
>>   #define PHYREG8_SSC_EN			BIT(4)
>>   
>> +#define PHYREG10			0x24
>> +#define PHYREG10_SSC_PCM_MASK		GENMASK(3, 0)
>> +#define PHYREG10_SSC_PCM_3500PPM	7
>> +
>>   #define PHYREG11			0x28
>>   #define PHYREG11_SU_TRIM_0_7		0xF0
>>   
>> @@ -61,12 +65,19 @@
>>   #define PHYREG16			0x3C
>>   #define PHYREG16_SSC_CNT_VALUE		0x5f
>>   
>> +#define PHYREG17			0x40
>> +
>>   #define PHYREG18			0x44
>>   #define PHYREG18_PLL_LOOP		0x32
>>   
>> +#define PHYREG21			0x50
>> +#define PHYREG21_RX_SQUELCH_VAL		0x0D
>> +
>>   #define PHYREG27			0x6C
>>   #define PHYREG27_RX_TRIM_RK3588		0x4C
>>   
>> +#define PHYREG30			0x74
>> +
>>   #define PHYREG32			0x7C
>>   #define PHYREG32_SSC_MASK		GENMASK(7, 4)
>>   #define PHYREG32_SSC_DIR_SHIFT		4
>> @@ -79,6 +90,7 @@
>>   #define PHYREG33_PLL_KVCO_MASK		GENMASK(4, 2)
>>   #define PHYREG33_PLL_KVCO_SHIFT		2
>>   #define PHYREG33_PLL_KVCO_VALUE		2
>> +#define PHYREG33_PLL_KVCO_VALUE_RK3576	4
>>   
>>   struct rockchip_combphy_priv;
>>   
>> @@ -98,6 +110,7 @@ struct rockchip_combphy_grfcfg {
>>   	struct combphy_reg pipe_rxterm_set;
>>   	struct combphy_reg pipe_txelec_set;
>>   	struct combphy_reg pipe_txcomp_set;
>> +	struct combphy_reg pipe_clk_24m;
>>   	struct combphy_reg pipe_clk_25m;
>>   	struct combphy_reg pipe_clk_100m;
>>   	struct combphy_reg pipe_phymode_sel;
>> @@ -584,6 +597,263 @@ static const struct rockchip_combphy_cfg rk3568_combphy_cfgs = {
>>   	.combphy_cfg	= rk3568_combphy_cfg,
>>   };
>>   
>> +static int rk3576_combphy_cfg(struct rockchip_combphy_priv *priv)
>> +{
>> +	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
>> +	unsigned long rate;
>> +	u32 val;
>> +
>> +	switch (priv->type) {
>> +	case PHY_TYPE_PCIE:
>> +		/* Set SSC downward spread spectrum */
>> +		rockchip_combphy_updatel(priv, PHYREG32_SSC_MASK,
>> +					 PHYREG32_SSC_DOWNWARD << PHYREG32_SSC_DIR_SHIFT,
>> +					 PHYREG32);
> If we use FIELD_GET|PREP, we can get rid of SHIFT defines

got it, thanks.

>> +
>> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_pcie, true);
>> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
>> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
>> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->con3_for_pcie, true);
>> +		break;
> Break here and before each case please

Okay.

>> +	case PHY_TYPE_USB3:
>> +		/* Set SSC downward spread spectrum */
>> +		rockchip_combphy_updatel(priv, PHYREG32_SSC_MASK,
>> +					 PHYREG32_SSC_DOWNWARD << PHYREG32_SSC_DIR_SHIFT,
>> +					 PHYREG32);
>> +
>> +		/* Enable adaptive CTLE for USB3.0 Rx */
>> +		val = readl(priv->mmio + PHYREG15);
>> +		val |= PHYREG15_CTLE_EN;
>> +		writel(val, priv->mmio + PHYREG15);
>> +
>> +		/* Set PLL KVCO fine tuning signals */
>> +		rockchip_combphy_updatel(priv, PHYREG33_PLL_KVCO_MASK, BIT(3), PHYREG33);
>> +
>> +		/* Set PLL LPF R1 to su_trim[10:7]=1001 */
>> +		writel(PHYREG12_PLL_LPF_ADJ_VALUE, priv->mmio + PHYREG12);
>> +
>> +		/* Set PLL input clock divider 1/2 */
>> +		rockchip_combphy_updatel(priv, PHYREG6_PLL_DIV_MASK,
>> +					 PHYREG6_PLL_DIV_2 << PHYREG6_PLL_DIV_SHIFT,
>> +					 PHYREG6);
>> +
>> +		/* Set PLL loop divider */
>> +		writel(PHYREG18_PLL_LOOP, priv->mmio + PHYREG18);
>> +
>> +		/* Set PLL KVCO to min and set PLL charge pump current to max */
>> +		writel(PHYREG11_SU_TRIM_0_7, priv->mmio + PHYREG11);
>> +
>> +		/* Set Rx squelch input filler bandwidth */
>> +		writel(PHYREG21_RX_SQUELCH_VAL, priv->mmio + PHYREG21);
>> +
>> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_txcomp_sel, false);
>> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_txelec_sel, false);
>> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->usb_mode_set, true);
>> +		break;
>> +	case PHY_TYPE_SATA:
>> +		/* Enable adaptive CTLE for SATA Rx */
>> +		val = readl(priv->mmio + PHYREG15);
>> +		val |= PHYREG15_CTLE_EN;
>> +		writel(val, priv->mmio + PHYREG15);
>> +
>> +		/* Set tx_rterm = 50 ohm and rx_rterm = 43.5 ohm */
>> +		val = PHYREG7_TX_RTERM_50OHM << PHYREG7_TX_RTERM_SHIFT;
>> +		val |= PHYREG7_RX_RTERM_44OHM << PHYREG7_RX_RTERM_SHIFT;
>> +		writel(val, priv->mmio + PHYREG7);
>> +
>> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_sata, true);
>> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_sata, true);
>> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_sata, true);
>> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->con3_for_sata, true);
>> +		rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_con0_for_sata, true);
>> +		rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_con1_for_sata, true);
>> +		break;
>> +	default:
>> +		dev_err(priv->dev, "incompatible PHY type\n");
>> +		return -EINVAL;
>> +	}
>> +
>> +	rate = clk_get_rate(priv->refclk);
>> +
>> +	switch (rate) {
>> +	case REF_CLOCK_24MHz:
>> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_24m, true);
>> +		if (priv->type == PHY_TYPE_USB3 || priv->type == PHY_TYPE_SATA) {
>> +			/* Set ssc_cnt[9:0]=0101111101 & 31.5KHz */
>> +			val = PHYREG15_SSC_CNT_VALUE << PHYREG15_SSC_CNT_SHIFT;
>> +			rockchip_combphy_updatel(priv, PHYREG15_SSC_CNT_MASK,
>> +						 val, PHYREG15);
>> +
>> +			writel(PHYREG16_SSC_CNT_VALUE, priv->mmio + PHYREG16);
>> +
>> +		} else if (priv->type == PHY_TYPE_PCIE) {
>> +			/* PLL KVCO tuning fine */
>> +			val = PHYREG33_PLL_KVCO_VALUE_RK3576 << PHYREG33_PLL_KVCO_SHIFT;
>> +			rockchip_combphy_updatel(priv, PHYREG33_PLL_KVCO_MASK,
>> +						 val, PHYREG33);
>> +
>> +			/* Set up rx_pck invert and rx msb to disable */
>> +			writel(0x00, priv->mmio + PHYREG27);
>> +
>> +			/*
>> +			 * Set up SU adjust signal:
>> +			 * su_trim[7:0],   PLL KVCO adjust bits[2:0] to min
>> +			 * su_trim[15:8],  PLL LPF R1 adujst bits[9:7]=3'b011
>> +			 * su_trim[31:24], CKDRV adjust
>> +			 */
>> +			writel(0x90, priv->mmio + PHYREG11);
>> +			writel(0x02, priv->mmio + PHYREG12);
>> +			writel(0x57, priv->mmio + PHYREG14);
>> +
>> +			writel(PHYREG16_SSC_CNT_VALUE, priv->mmio + PHYREG16);
>> +		}
>> +		break;
>> +	case REF_CLOCK_25MHz:
>> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_25m, true);
>> +		break;
>> +	case REF_CLOCK_100MHz:
>> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
>> +		if (priv->type == PHY_TYPE_PCIE) {
>> +			/* gate_tx_pck_sel length select work for L1SS */
>> +			writel(0xc0, priv->mmio + PHYREG30);
>> +
>> +			/* PLL KVCO tuning fine */
>> +			val = PHYREG33_PLL_KVCO_VALUE_RK3576 << PHYREG33_PLL_KVCO_SHIFT;
>> +			rockchip_combphy_updatel(priv, PHYREG33_PLL_KVCO_MASK,
>> +						 val, PHYREG33);
>> +
>> +			/* Set up rx_trim: PLL LPF C1 85pf R1 1.25kohm */
>> +			writel(0x4c, priv->mmio + PHYREG27);
>> +
>> +			/*
>> +			 * Set up SU adjust signal:
>> +			 * su_trim[7:0],   PLL KVCO adjust bits[2:0] to min
>> +			 * su_trim[15:8],  bypass PLL loop divider code, and
>> +			 *                 PLL LPF R1 adujst bits[9:7]=3'b101
>> +			 * su_trim[23:16], CKRCV adjust
>> +			 * su_trim[31:24], CKDRV adjust
>> +			 */
>> +			writel(0x90, priv->mmio + PHYREG11);
>> +			writel(0x43, priv->mmio + PHYREG12);
>> +			writel(0x88, priv->mmio + PHYREG13);
>> +			writel(0x56, priv->mmio + PHYREG14);
>> +		} else if (priv->type == PHY_TYPE_SATA) {
>> +			/* downward spread spectrum +500ppm */
>> +			val = PHYREG32_SSC_DOWNWARD << PHYREG32_SSC_DIR_SHIFT;
>> +			val |= PHYREG32_SSC_OFFSET_500PPM << PHYREG32_SSC_OFFSET_SHIFT;
>> +			rockchip_combphy_updatel(priv, PHYREG32_SSC_MASK, val, PHYREG32);
>> +
>> +			/* ssc ppm adjust to 3500ppm */
>> +			rockchip_combphy_updatel(priv, PHYREG10_SSC_PCM_MASK,
>> +						 PHYREG10_SSC_PCM_3500PPM,
>> +						 PHYREG10);
>> +		}
>> +		break;
>> +	default:
>> +		dev_err(priv->dev, "Unsupported rate: %lu\n", rate);
>> +		return -EINVAL;
>> +	}
>> +
>> +	if (priv->ext_refclk) {
>> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_ext, true);
>> +		if (priv->type == PHY_TYPE_PCIE && rate == REF_CLOCK_100MHz) {
>> +			val = PHYREG33_PLL_KVCO_VALUE_RK3576 << PHYREG33_PLL_KVCO_SHIFT;
>> +			rockchip_combphy_updatel(priv, PHYREG33_PLL_KVCO_MASK,
>> +						 val, PHYREG33);
>> +
>> +			/* Set up rx_trim: PLL LPF C1 85pf R1 2.5kohm */
>> +			writel(0x0c, priv->mmio + PHYREG27);
>> +
>> +			/*
>> +			 * Set up SU adjust signal:
>> +			 * su_trim[7:0],   PLL KVCO adjust bits[2:0] to min
>> +			 * su_trim[15:8],  bypass PLL loop divider code, and
>> +			 *                 PLL LPF R1 adujst bits[9:7]=3'b101.
>> +			 * su_trim[23:16], CKRCV adjust
>> +			 * su_trim[31:24], CKDRV adjust
>> +			 */
>> +			writel(0x90, priv->mmio + PHYREG11);
>> +			writel(0x43, priv->mmio + PHYREG12);
>> +			writel(0x88, priv->mmio + PHYREG13);
>> +			writel(0x56, priv->mmio + PHYREG14);
>> +		}
>> +	}
>> +
>> +	if (priv->enable_ssc) {
>> +		val = readl(priv->mmio + PHYREG8);
>> +		val |= PHYREG8_SSC_EN;
>> +		writel(val, priv->mmio + PHYREG8);
>> +
>> +		if (priv->type == PHY_TYPE_PCIE && rate == REF_CLOCK_24MHz) {
>> +			/* Set PLL loop divider */
>> +			writel(0x00, priv->mmio + PHYREG17);
>> +			writel(PHYREG18_PLL_LOOP, priv->mmio + PHYREG18);
>> +
>> +			/* Set up rx_pck invert and rx msb to disable */
>> +			writel(0x00, priv->mmio + PHYREG27);
>> +
>> +			/*
>> +			 * Set up SU adjust signal:
>> +			 * su_trim[7:0],   PLL KVCO adjust bits[2:0] to min
>> +			 * su_trim[15:8],  PLL LPF R1 adujst bits[9:7]=3'b101
>> +			 * su_trim[23:16], CKRCV adjust
>> +			 * su_trim[31:24], CKDRV adjust
>> +			 */
>> +			writel(0x90, priv->mmio + PHYREG11);
>> +			writel(0x02, priv->mmio + PHYREG12);
>> +			writel(0x08, priv->mmio + PHYREG13);
>> +			writel(0x57, priv->mmio + PHYREG14);
>> +			writel(0x40, priv->mmio + PHYREG15);
>> +
>> +			writel(PHYREG16_SSC_CNT_VALUE, priv->mmio + PHYREG16);
>> +			writel(PHYREG33_PLL_KVCO_VALUE_RK3576 << PHYREG33_PLL_KVCO_SHIFT,
>> +			       priv->mmio + PHYREG33);
>> +		}
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static const struct rockchip_combphy_grfcfg rk3576_combphy_grfcfgs = {
>> +	/* pipe-phy-grf */
>> +	.pcie_mode_set		= { 0x0000, 5, 0, 0x00, 0x11 },
>> +	.usb_mode_set		= { 0x0000, 5, 0, 0x00, 0x04 },
>> +	.pipe_rxterm_set	= { 0x0000, 12, 12, 0x00, 0x01 },
>> +	.pipe_txelec_set	= { 0x0004, 1, 1, 0x00, 0x01 },
>> +	.pipe_txcomp_set	= { 0x0004, 4, 4, 0x00, 0x01 },
>> +	.pipe_clk_24m		= { 0x0004, 14, 13, 0x00, 0x00 },
>> +	.pipe_clk_25m		= { 0x0004, 14, 13, 0x00, 0x01 },
>> +	.pipe_clk_100m		= { 0x0004, 14, 13, 0x00, 0x02 },
>> +	.pipe_phymode_sel	= { 0x0008, 1, 1, 0x00, 0x01 },
>> +	.pipe_rate_sel		= { 0x0008, 2, 2, 0x00, 0x01 },
>> +	.pipe_rxterm_sel	= { 0x0008, 8, 8, 0x00, 0x01 },
>> +	.pipe_txelec_sel	= { 0x0008, 12, 12, 0x00, 0x01 },
>> +	.pipe_txcomp_sel	= { 0x0008, 15, 15, 0x00, 0x01 },
>> +	.pipe_clk_ext		= { 0x000c, 9, 8, 0x02, 0x01 },
>> +	.pipe_phy_status	= { 0x0034, 6, 6, 0x01, 0x00 },
>> +	.con0_for_pcie		= { 0x0000, 15, 0, 0x00, 0x1000 },
>> +	.con1_for_pcie		= { 0x0004, 15, 0, 0x00, 0x0000 },
>> +	.con2_for_pcie		= { 0x0008, 15, 0, 0x00, 0x0101 },
>> +	.con3_for_pcie		= { 0x000c, 15, 0, 0x00, 0x0200 },
>> +	.con0_for_sata		= { 0x0000, 15, 0, 0x00, 0x0129 },
>> +	.con1_for_sata		= { 0x0004, 15, 0, 0x00, 0x0000 },
>> +	.con2_for_sata		= { 0x0008, 15, 0, 0x00, 0x80c1 },
>> +	.con3_for_sata		= { 0x000c, 15, 0, 0x00, 0x0407 },
>> +	/* php-grf */
>> +	.pipe_con0_for_sata	= { 0x001C, 2, 0, 0x00, 0x2 },
>> +	.pipe_con1_for_sata	= { 0x0020, 2, 0, 0x00, 0x2 },
>> +};
>> +
>> +static const struct rockchip_combphy_cfg rk3576_combphy_cfgs = {
>> +	.num_phys = 2,
>> +	.phy_ids = {
>> +		0x2b050000,
>> +		0x2b060000
>> +	},
>> +	.grfcfg		= &rk3576_combphy_grfcfgs,
>> +	.combphy_cfg	= rk3576_combphy_cfg,
>> +};
>> +
>>   static int rk3588_combphy_cfg(struct rockchip_combphy_priv *priv)
>>   {
>>   	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
>> @@ -775,6 +1045,10 @@ static const struct of_device_id rockchip_combphy_of_match[] = {
>>   		.compatible = "rockchip,rk3568-naneng-combphy",
>>   		.data = &rk3568_combphy_cfgs,
>>   	},
>> +	{
>> +		.compatible = "rockchip,rk3576-naneng-combphy",
>> +		.data = &rk3576_combphy_cfgs,
>> +	},
>>   	{
>>   		.compatible = "rockchip,rk3588-naneng-combphy",
>>   		.data = &rk3588_combphy_cfgs,
>> -- 
>> 2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
