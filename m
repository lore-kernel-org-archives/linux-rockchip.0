Return-Path: <SRS0=YnxI=FB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03FE0C2D0E4
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2020 08:47:22 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 71B9322249
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2020 08:47:21 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="MDhnyt1g";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GTtZEpuC"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 71B9322249
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=32ms9mBNpXgXi8BcXd5vMvgP3xgw5DOkwRVXwxmSJKw=; b=MDhnyt1g4UwoZyyywR/PItReO
	N72uCaYmZ3JFaD5aSA1G45G2e4v12tqdc04m30NOr4/H5qDdmCBWefEc6WL4j/11SsqH0Ds6NqoJ/
	ntTziIubH8SF32uJ9oT7xoed/ydMY1DYBXCOF352Tt3QlElA2r3wJpwONYM9GYonI3sueiRTXlXgX
	0qID+OmFwEthbLitMZ1nf6drKSNXR6JMNLAOOSmKjQdt6D+euqlXj9kqVkmvGNmByoQ0JgnztNvU1
	NebkAoXlFqGjYPCSoPcsvmKVNuLYt0INu7fWxTPEoy3E9SXb/xdr7eJsazN1PR5ZyRcCoqlEiAqxL
	gEmooowOg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kiZPR-00062j-EQ; Fri, 27 Nov 2020 08:47:17 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kiZPG-000602-EN; Fri, 27 Nov 2020 08:47:07 +0000
Received: by mail-ed1-x543.google.com with SMTP id q16so4845626edv.10;
 Fri, 27 Nov 2020 00:47:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=KTIE/o2jqyJK/X2ANcj9bq/vRkfEkTjPjTuCUPnDKmQ=;
 b=GTtZEpuCOCbokJFTWkicqW3cdywyhTN9eFHadwfnQerDW1A1VUdq+emk8XGiFZGzaq
 gCILcPDLBbCU+ot7IEsIBXcRBMchzFmE6xIVg+M/A3hmHNk8vb7w9XJmVP1QJA5tbCw3
 PzKAiqlgHJOqOWYPEYHKHryUuToZHGoz57j9APS9Gehjkf7dud6cgY4x1MxSIHWYBkbJ
 pXGwlbIVwR9DdpYbKcxc8rcHPk8+lBU/2SEZoXz859UtSJsid5/tfXSQGlZf5SPR9Yup
 71vQtYtgNEqmhAru/526AkpobfQz6urmARw+Fw914f9+3tXCZHmH/7Yka7EZ4z03YeaF
 gslQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KTIE/o2jqyJK/X2ANcj9bq/vRkfEkTjPjTuCUPnDKmQ=;
 b=fV5rjT9gWKnNSyGQzF27Pa552VpOulVHAWJ7PYRHBcbG1GPTRWFBSPu2sWJ/kxcTks
 Nl4fGYii3S0Iz26Z739fq+/znsOamaMMcvQt1XTBNrMj+6VRxlSIIrW59ioBTtj/7JDp
 uICUrFn3U+GUksjFs5xDhV/Oh8p5PEPbY8oPoyOXrXLkhK05tAGdmdjLg36rtzxK5hPu
 1aK0WBlFm2BUrYLoukoRp8IIUPncCiF7jqz+YGeBV6vp+ZzbmVlz0e+6apYHZVq4MDuT
 7xVN7HuI3ZyX2ytJMzefg70v6gNjyqlDn3joycw8ocmKNUZbCGYvKevgb5+jtGJyWpdf
 8ExQ==
X-Gm-Message-State: AOAM532rvgTNfPC4qQQqAHy3xPRCB+mU+/dXdS59+LGSIOJDiKCTEd/H
 J6YE7tKwibDPGxH6rn7OTTQ0pqyR4tubcQ==
X-Google-Smtp-Source: ABdhPJzabDabRbKX1EuahGQ3sbSFhVj8hJwlVyypR58ke6Yox3kacVGTBvia26Wq5M0GRPvdmloQKw==
X-Received: by 2002:a50:e0c9:: with SMTP id j9mr6444384edl.380.1606466823262; 
 Fri, 27 Nov 2020 00:47:03 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 cw26sm4514208ejb.47.2020.11.27.00.47.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 27 Nov 2020 00:47:02 -0800 (PST)
Subject: Re: [PATCH 1/2] phy: rockchip: set pulldown for strobe line in dts
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>
References: <20201127033359.32725-1-chris.ruehl@gtsys.com.hk>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <ae0e9ff1-bb88-fd76-fdc5-2ddbf3c18b87@gmail.com>
Date: Fri, 27 Nov 2020 09:47:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201127033359.32725-1-chris.ruehl@gtsys.com.hk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201127_034706_664242_75FC1CBD 
X-CRM114-Status: GOOD (  26.57  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Chris,

Before a new property "enable-strobe-pulldown" is introduced in the code
a change to the documents must be made in a separate patch.
(rockchip-emmc-phy.txt)

./scripts/checkpatch.pl --strict <patch1> <patch2>

On 11/27/20 4:33 AM, Chris Ruehl wrote:
> This patch add support to set the internal pulldown via dt property
> and allow simplify the board design for the trace from emmc-phy to
> the eMMC chipset.
> Default to not set the pull-down.
> 
> This patch was inspired from the 4.4 tree of the
> Rockchip SDK, where it is enabled unconditional.
> The patch had been tested with our rk3399 customized board.
> 
> Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
> ---
>  drivers/phy/rockchip/phy-rockchip-emmc.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c b/drivers/phy/rockchip/phy-rockchip-emmc.c
> index 2dc19ddd120f..d9bc45828f74 100644
> --- a/drivers/phy/rockchip/phy-rockchip-emmc.c
> +++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
> @@ -67,6 +67,10 @@
>  #define PHYCTRL_OTAPDLYENA_SHIFT	0xb
>  #define PHYCTRL_OTAPDLYSEL_MASK		0xf
>  #define PHYCTRL_OTAPDLYSEL_SHIFT	0x7
> +#define PHYCTRL_REN_STRB_DISABLE	0x0

> +#define PHYCTRL_REN_STRB_ENABLE	0x1
> +#define PHYCTRL_REN_STRB_MASK	0x1
> +#define PHYCTRL_REN_STRB_SHIFT	0x9

align with extra TAB ?
check TAB size

>  
>  #define PHYCTRL_IS_CALDONE(x) \
>  	((((x) >> PHYCTRL_CALDONE_SHIFT) & \
> @@ -80,6 +84,7 @@ struct rockchip_emmc_phy {
>  	struct regmap	*reg_base;
>  	struct clk	*emmcclk;
>  	unsigned int drive_impedance;
> +	unsigned int enable_strobe_pulldown;
>  };
>  
>  static int rockchip_emmc_phy_power(struct phy *phy, bool on_off)
> @@ -295,6 +300,13 @@ static int rockchip_emmc_phy_power_on(struct phy *phy)
>  				   PHYCTRL_OTAPDLYSEL_MASK,
>  				   PHYCTRL_OTAPDLYSEL_SHIFT));
>  
> +	/* Internal pull-down for strobe line */
> +	regmap_write(rk_phy->reg_base,

> +			rk_phy->reg_offset + GRF_EMMCPHY_CON2,

CHECK: Alignment should match open parenthesis
#49: FILE: drivers/phy/rockchip/phy-rockchip-emmc.c:305:
+	regmap_write(rk_phy->reg_base,
+			rk_phy->reg_offset + GRF_EMMCPHY_CON2,

> +			HIWORD_UPDATE(rk_phy->enable_strobe_pulldown,
> +				PHYCTRL_REN_STRB_MASK,
> +				PHYCTRL_REN_STRB_SHIFT));

CHECK: Alignment should match open parenthesis
#51: FILE: drivers/phy/rockchip/phy-rockchip-emmc.c:307:
+			HIWORD_UPDATE(rk_phy->enable_strobe_pulldown,
+				PHYCTRL_REN_STRB_MASK,

> +
>  	/* Power up emmc phy analog blocks */
>  	return rockchip_emmc_phy_power(phy, PHYCTRL_PDB_PWR_ON);
>  }
> @@ -359,10 +371,14 @@ static int rockchip_emmc_phy_probe(struct platform_device *pdev)
>  	rk_phy->reg_offset = reg_offset;
>  	rk_phy->reg_base = grf;
>  	rk_phy->drive_impedance = PHYCTRL_DR_50OHM;
> +	rk_phy->enable_strobe_pulldown = PHYCTRL_REN_STRB_DISABLE;
>  
>  	if (!of_property_read_u32(dev->of_node, "drive-impedance-ohm", &val))
>  		rk_phy->drive_impedance = convert_drive_impedance_ohm(pdev, val);
>  
> +	if (of_property_read_bool(dev->of_node, "enable-strobe-pulldown"))
> +		rk_phy->enable_strobe_pulldown = PHYCTRL_REN_STRB_ENABLE;
> +
>  	generic_phy = devm_phy_create(dev, dev->of_node, &ops);
>  	if (IS_ERR(generic_phy)) {
>  		dev_err(dev, "failed to create PHY\n");
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
