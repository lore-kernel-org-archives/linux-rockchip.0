Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF4EEC531D0
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 07:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l70FDqGHezt0MSCJdQ49gdfMswWd2vESM/50QnP9MTw=; b=KJLZcjP8d4m5uv
	h1EA95Il+XCU2Lh3CI9VRnEGmE8CSO8f7nLKzhvHtDDsdtdPPiWhbX8ci3kOAj6Y0jhVZ1GqAkCoV
	4EKJ5/DL72WsBPdW9ZxtitNPM54FJsJhnVLtp5J/JTxlyTKmAai8TheFv78EgcNVg7u/xETAnXUzt
	Q7CrS3TcaDFaI7jP6q1DthUpst7KqRlTwTu8htkCmEuPPEhen4V8R4VlOZN1z/lg6RnIqHk3CBKxV
	hh17U88iPK6ujCTJZEqqV/D++F0EvhPi8IB+dMMjir7CDuD8HC++Ix82KL/hC7Y+WNRWLTr3dHYRe
	/pqpFZlrZYuIg0pv6esQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woFUg-000000025Sx-3if2;
	Mon, 27 Jul 2026 07:11:22 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woFUc-000000025QM-1QR5;
	Mon, 27 Jul 2026 07:11:20 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 1D0354E40F92;
	Mon, 27 Jul 2026 07:11:14 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D976D601BE;
	Mon, 27 Jul 2026 07:11:13 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 0886911C1067F;
	Mon, 27 Jul 2026 09:10:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1785136268; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=SN04qZu7ta/MgrN93457BarUq2CXz/Zpfiel64hteBA=;
	b=offm4kt9itCkBqiu6SCtD6aYb7dQjjySi+Mhklny/vQpgCPVf3BVBaKDYmfyO5Id7gNdPZ
	Fuvc5p+4f+u5PkUk1y8lzYI2pRaCe1Vc4tjwOMenN0Qo8xz8iGf/D6thvR59u7aX3OqT8i
	kvbpigcP6mkI4KAhf4tx5z5am+uzZjW5VaGbXAxbpWIUH6w/1ebzd4rKiA1KhVgbQbmles
	IOzqZLBeecYWCFPPri0/v46UycoK077bLyEXYU6bpTu201J+AZAbqMv/wOYBSy5AUB9AXA
	i/Egx4toEc2eY3vLG/DB9e1TACUwcVOGwcDKKfxBJzHiGjkINlJLp9srldSr2A==
Message-ID: <dae67c46-62b6-4233-92fc-69a09944baa5@bootlin.com>
Date: Mon, 27 Jul 2026 09:10:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 0/3] net: stmmac: dwmac-rk: add RK3576 GMAC 25M
 refout support
To: Gavin Gao <attinagaoxu@gmail.com>, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
 richardcochran@gmail.com, nicolas.frattaroli@collabora.com,
 sebastian.reichel@collabora.com, sashal@kernel.org, alchark@gmail.com,
 chaoyi.chen@rock-chips.com, amadeus@jmu.edu.cn, rmk+kernel@armlinux.org.uk,
 horms@kernel.org, alok.a.tiwari@oracle.com, david.wu@rock-chips.com,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
References: <20260727021048.3375444-1-attinagaoxu@gmail.com>
Content-Language: en-US
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
In-Reply-To: <20260727021048.3375444-1-attinagaoxu@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_001118_544582_6B341E54 
X-CRM114-Status: GOOD (  13.56  )
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

Hi,

On 7/27/26 04:10, Gavin Gao wrote:
> Hi,
> 
> Some Rockchip GMAC instances can provide a 25 MHz reference clock output
> for an external RGMII PHY. Boards already describe the MAC clock direction
> with clock_in_out = "output", but the dwmac-rk driver does not currently
> request or enable the corresponding 25 MHz reference output clock.
> 
> On RK3576, this means the REFCLKO25M_GMACx_OUT clock may be disabled by
> the common clock framework as unused, even though the board expects the
> GMAC block to provide the PHY reference clock.
> 
> This series adds an optional "clk_mac_25m_refout" clock name to the
> Rockchip DWMAC binding, wires it up for RK3576 GMAC0/GMAC1, and enables
> it from the dwmac-rk driver when the MAC is configured for RGMII output
> clock mode.
> 
> The clock remains optional, so existing device trees and SoCs are not
> affected.
> 
> Tested on a PicoCOM RK3576 ACP board with a Motorcomm YT8521 PHY.
> The GMAC 25 MHz reference clock output remains active and Ethernet works.

I have a feeling this is using the common clock framework backwards. The
MAC in this case is a clock provider yet it uses the consumer API.

Shouldn't the MAC instead register a new clock, as a provider, for the ref
out ? The PHY device would then need to get/prepare/enable that clock.

I know we don't have a lot of clock providers in drivers/net/ethernet, but
I think we should have more...

Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
