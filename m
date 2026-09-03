Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83987C61DD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 08:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9H7HoqfQrZXzYXkZR3tAqlezBGswjlGkMvaVJaAMB0A=; b=mrKRnNPn9S3Y8i
	aBEhvtY/TRskpoDd4GJmDWDX2qurG65ie+vgy7l35BeI7sxMcw3xDhGJsrZSHsN5VrYfnwYHqaURP
	qtpvmLHrGEoZO7xjofYdOFmIpt8bzLLkskg2jhPQ38bBNlia2004MhaWT37woHWoriOPuJ9EX/Oef
	0W0AtiOBnuYwuNETC4UWgbfd+ISdWbtl4whCsGsHMF+bhXK9ezpZEoYXDsk2cqgURMuKdaaNEUD/e
	hNazMxz1mGO2Fj+9LJ6XKSKm8xnBpBH4ZScJtY2zzcViDmFeC52Q4BDKZH4YXxAC3U039QkMHQtFC
	3IIcSj0W5dMfd1py7vgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x22uA-0000000Go2C-0G0Y;
	Thu, 03 Sep 2026 08:34:42 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x22u7-0000000Go15-3MzS;
	Thu, 03 Sep 2026 08:34:41 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 192294E414E3;
	Thu,  3 Sep 2026 08:34:38 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D530B602B8;
	Thu,  3 Sep 2026 08:34:37 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 2BB8B11C791C9;
	Thu,  3 Sep 2026 10:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1788424472; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=xhPvOIjM4meUOojWE0gNF30Vl/5xG2LrjXeemmGp+cQ=;
	b=BgoM3hq27qChOnoFp6bquvP3ejeOK+suMBAE4qgREVwodpZYX/vb505KLP1KSgKcab5dxf
	czVxdWPlwQqPb9cqkEKWo0PKCUL6X6uBxc2XNKy3do7SFPWb8Op4Jy6ErpNWGvhGO3hgSQ
	dyG22a2vkqi7SL60lKQCYp7Gsx2j+CKNsgnxvD92PuXpgU8DFtBZr9K60edsvp5xhAAGav
	h8N7zGQwG5QqY2EEnULWQ8S9HiHyxWA1OxN/8n2t//rTO1EcqmWUFQ1W5MBQszlrWWbSND
	QshIyDtba80p9tBhc4hEeQyZQ/EnrerqXzQmsnCSWFx6lLVoYZZSGtf/e5JE8Q==
Message-ID: <f07c64b4-3018-4e9d-8aea-12454f132419@bootlin.com>
Date: Thu, 3 Sep 2026 10:34:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v3 08/10] net: stmmac: dwmac-rk: add SGMII
 support for RK3568
To: Coia Prant <coiaprant@gmail.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Romain Gantois <romain.gantois@bootlin.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Shawn Lin <shawn.lin@rock-chips.com>,
 David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-renesas-soc@vger.kernel.org
References: <20260901150111.141037-1-coiaprant@gmail.com>
 <20260901150111.141037-9-coiaprant@gmail.com>
Content-Language: en-US
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
In-Reply-To: <20260901150111.141037-9-coiaprant@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_013440_009601_BD8717E8 
X-CRM114-Status: GOOD (  20.95  )
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

Hi

On 9/1/26 17:01, Coia Prant wrote:
> The RK3568 SoC integrates a Synopsys DesignWare XPCS that can be
> connected to GMAC0 or GMAC1 in SGMII mode.  Add the necessary glue
> logic to support this configuration.
> 
> The current dwmac-rk driver does not support SGMII mode.  SGMII
> requires a PCS to handle auto-negotiation and link state reporting,
> but the existing driver only supports RGMII and RMII.
> 
> Add a set_to_sgmii() callback to configure the GMAC GRF register for
> SGMII mode (bit 7 set, interface selection bits 4:6 cleared).  Also
> add a supports_sgmii flag to indicate SGMII capability.
> 
> Provide pcs_init/pcs_exit callbacks to create/destroy the XPCS via
> xpcs_rk_create() from the Rockchip XPCS platform driver, and a
> select_pcs callback to return the XPCS to phylink.
> 
> While at it, fix the clock enable ordering in rk_gmac_powerup():
> gmac_clk_enable() is now called before any register access, including
> the SGMII mode setup path.  Previously SGMII mode would bypass the
> clock enable via a goto, which could cause synchronous external abort
> when accessing MAC registers with the clock domain disabled.
> 
> Also clean up the error handling in rk_gmac_powerup() by using a
> unified clk_disable label, and add error handling for the default
> (unhandled interface) case.
> 
> SGMII In-band vs Out-of-band
> ============================
> On RK3568, the MAC clock is fixed at 125 MHz and cannot be dynamically
> changed by the stmmac core's set_clk_tx_rate callback.  In-band mode
> works because the PCS handles rate adaptation internally.  Out-of-band
> mode does not work because the MAC would need to change the clock rate
> to 125/12.5/1.25 MHz for 1000/100/10 Mbps respectively, and the clock
> is fixed.
> 
> Enable default_an_inband for SGMII and disable the generic stmmac
> set_clk_tx_rate callback.  This forces phylink to use in-band mode,
> where the PCS is responsible for speed/duplex negotiation.  Without
> this, the stmmac core would attempt to change the clock rate on speed
> changes, causing TX to work but RX to fail.
> 
> Link: https://dl.radxa.com/rock3/docs/hw/datasheet/Rockchip%20RK3568%20TRM%20Part1%20V1.1-20210301.pdf (Page 386)
> Signed-off-by: Coia Prant <coiaprant@gmail.com>

[...]

> +static int rk_pcs_init(struct stmmac_priv *priv)
> +{
> +	struct device_node *np = priv->device->of_node;
> +	struct device_node *pcs_node;
> +	struct dw_xpcs *xpcs;
> +
> +	pcs_node = of_parse_phandle(np, "pcs-handle", 0);
> +	if (!pcs_node)
> +		return -ENODEV;

Here aswell you make it mandatory to have a PCS, as the generic pcs logic
introduced in patch 1 doesn't handle -ENODEV, it treats it as any other
error.

So, either you return 0 when there's no PCS (so that we don't break platforms
that don't have one), or you handle -ENODEV gracefully in patch 1.

Maxime


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
