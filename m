Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 764E1C77B73
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Jun 2023 20:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HUlooUYut6r6cr9poXoDz1L8p/PQeU8K3xzEbjata5I=; b=J+FO6dttkJglNV
	aDnLii2Kc1TsL8As6KcBpD3lKlxPx2ph20GkZdkdBCn+8jQVw/m75w0vh98ZRqu+v+F0d8xfeCMhA
	AcnBXIP69L97EE61gE67ZBjXXmYwn2mqVceFQBiOfR8wZ48vfpDWJ5OUi8g3bO1xdhIoY3RTJm4Z0
	MayY2rBWhB0/Hd3cW5qoYyZhseuVc1aDCrKp8tBB7AOgzw4/JAVm5oJoR+Wknl5g4sf+EHTZUr0Hm
	I4yhkMXVLFHRh6Eqeanvk75zYjiQEWML6RfREJol3O/ezGahws6MYIbLJ5uvzMvHVtb89tUVRud4X
	h4DV8dLz/Acjm1fwlj2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5YAT-00AZXf-0U;
	Sat, 03 Jun 2023 20:48:09 +0000
Received: from fgw20-7.mail.saunalahti.fi ([62.142.5.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5YAO-00AZW9-30
	for linux-rockchip@lists.infradead.org;
	Sat, 03 Jun 2023 20:48:07 +0000
Received: from localhost (88-113-26-95.elisa-laajakaista.fi [88.113.26.95])
	by fgw20.mail.saunalahti.fi (Halon) with ESMTP
	id ed5e4d7a-024f-11ee-b3cf-005056bd6ce9;
	Sat, 03 Jun 2023 23:48:01 +0300 (EEST)
From: andy.shevchenko@gmail.com
Date: Sat, 3 Jun 2023 23:48:00 +0300
To: Shreeya Patel <shreeya.patel@collabora.com>
Cc: jic23@kernel.org, lars@metafoo.de, heiko@sntech.de, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, sebastian.reichel@collabora.com,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	gustavo.padovan@collabora.com, kernel@collabora.com,
	serge.broslavsky@collabora.com, Simon Xue <xxm@rock-chips.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v3 2/8] iio: adc: rockchip_saradc: Add support for RK3588
Message-ID: <ZHunAIbK7-tIvsm1@surfacebook>
References: <20230603185340.13838-1-shreeya.patel@collabora.com>
 <20230603185340.13838-3-shreeya.patel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230603185340.13838-3-shreeya.patel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230603_134806_042976_1D534D9B 
X-CRM114-Status: UNSURE (   7.08  )
X-CRM114-Notice: Please train this message.
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

Sun, Jun 04, 2023 at 12:23:34AM +0530, Shreeya Patel kirjoitti:
> From: Simon Xue <xxm@rock-chips.com>
> 
> Add new start and read functions to support rk3588 device.
> Also, add a device compatible string for the same.

...

> +/* v2 registers */
> +#define SARADC2_CONV_CON		0x0
> +#define SARADC_T_PD_SOC			0x4
> +#define SARADC_T_DAS_SOC		0xc

Can you use fixed-width values for all registers?

	0x000
	0x004
	0x00c

> +#define SARADC2_END_INT_EN		0x104
> +#define SARADC2_ST_CON			0x108
> +#define SARADC2_STATUS			0x10c
> +#define SARADC2_END_INT_ST		0x110
> +#define SARADC2_DATA_BASE		0x120

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
