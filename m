Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7946C61DC6
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Aug 2026 11:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FwNh0GTMGMM+1h0YExN1lAFUgirjWhM8z/7Su6rAYqY=; b=CL0DeoNBV+t8mu
	dp8JmHfuYa+ZTFxUAZSEvz6Az4gXFQF9vOP6W2x2bRcJwWGppd9PSGwmxdr+boY8t0T4NQFPMTKcN
	ng8+tfw/lXHqD4D2kCiN6aOUStVkrQoXkIV/LOfi7fZ5fvKMoWmasl1yCB5W+i+1G2CWeLe1+Fo7r
	PkAhx8auS2U+7MzyU/y2AhYCtpjHDuuopYayjTOy6D6VL+mogFqQbg1jbCab3tbbutGTCR2P3sae+
	+PUAbuJuWay870xDMkQXVEfZwqd+aKWMEvW8r/2vTiKwkm1aNCjloicOwPZgyOdOndpt7eIx2NvLS
	kLhF+39ccgRrJiL+oXAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzYaA-00000003uSU-2kxK;
	Thu, 27 Aug 2026 11:47:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzYa8-00000003uRb-1agQ;
	Thu, 27 Aug 2026 11:47:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B33064148D;
	Thu, 27 Aug 2026 11:47:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 006AF1F000E9;
	Thu, 27 Aug 2026 11:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787831263;
	bh=ZATBeNjSFpBat2ahNrwIKVHAs5jnuY6nAl90N0asjb0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Tf5iJCD46D/gazs6x/ZQbcYUvRy2zVknJWF+v7NnGezwiKRO4VX7Evt+r6bQA1UrL
	 FLk3otlEtEH4j2pSMhrac+FT0J35DonHWn7ThjKSo8tIvahHtvfRX3Lv858X19IWgn
	 nhQ2irTR9X2nSqhTC+GFNfLRQgvVLpgtKWuclpEiteR9QCgyAPWcCIr43NIflzP74R
	 NgTOth6icqIZ5kkADjD//bL5RP8tZRxXlJfdO19XnmCSeNOQ68ADwFhPK2aI2bzApL
	 hhyaW8kbZXL0rqWNM+Z1AVQxpBHMObVEVEC5DI9y2ScR3q5Tf4ei7P9dU6bUVMl9R0
	 zVRhNH6z6N+AA==
Date: Thu, 27 Aug 2026 13:47:39 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jason Yang <jason98166@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Michael Riesch <michael.riesch@collabora.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/7] dt-bindings: phy: rockchip,rk3588-mipi-dcphy:
 Allow DSI and CSI consumers
Message-ID: <20260827-bulky-fanatic-echidna-0f3ffe@quoll>
References: <20260821-dcphy-rx-v1-v4-0-f1797634233d@gmail.com>
 <20260821-dcphy-rx-v1-v4-2-f1797634233d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260821-dcphy-rx-v1-v4-2-f1797634233d@gmail.com>
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

On Fri, Aug 21, 2026 at 08:02:30PM +0800, Jason Yang wrote:
> The Samsung MIPI D-/C-PHY block on RK3588 and RK3576 has a transmitter
> (DSI) and a receiver (CSI) on the same PHY, and two drivers can use them

Please link/show the upstream DTS using simultaneously transmitter and
receiver, where the consumer does not know with whom is it talking to.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
