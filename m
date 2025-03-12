Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 544E1C28B28
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 17:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xCnOJR7ewvNBIDVk7mi3zfSUd6sXO7WXfHMHGuTs/G0=; b=H7oz05IrvZycoP
	eubd6AVYmcSzlkP4tV1i7jB2S5J6KQM0gYMNCv4wOcIa8fJ03R6lrzemlKkc3CQANmUwMjoS8Twbf
	MGPhTSBiMMUc62yr64TKZkneRjsA0+xM0TtVrhm1v9JiPtvNbn4TEaaiC6KSWm88DUeRCraQQncQP
	zeDytNhwGBZsDDZlheL9wYUFLIkVp0xIEm1Hzg7hyDO6XOq36gc3F1orzb/1JQKxGtDNg+7y08h9M
	/ZW+0O4v3k6lz+iasKwufBMVvhvAYOw/d5Xse1UhO5U3xEek/vf12VoAdbW8AQUaj3VKKWDQm46Qh
	rtefM46aNKmzyXAg4nhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsPYV-000000095ev-3WeM;
	Wed, 12 Mar 2025 17:07:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsPWp-000000095Lx-21D6;
	Wed, 12 Mar 2025 17:06:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AD2C35C5D14;
	Wed, 12 Mar 2025 17:03:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78F06C4CEEA;
	Wed, 12 Mar 2025 17:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741799157;
	bh=LXPq0F1Kt1oAn1lVx3bxrsOmLi3993rgPxkGU16ki0w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OYkX+FtI4zXx9OYvx6/6TXS1gT+jC3X9UMrjTPd9qnkI3uCojU/8bMqoFrzg3meR2
	 u2FDelRmenI4gOTbTw6KZRZTNt2DRPdMgH+Tent7RobTby5y9gQBuw2pxMtJXZTYYL
	 61p8o7+MxZEnzKhkV3BNLEe7Zkehwlnt6v98mYsaE5P1AwJarBvHtvvm9Xbkv5kXs2
	 6RNjrreGEv43FbpW6c3N9QvYTZ6esFpQirMa1ZN+GVOkwRtX2cYneROT3mezs7wlbM
	 Xh5H3mCIf7s5FwnkpEUe6iQUb+NLIC1FgDF7ftqnF+PX1uKH/VeuthWVFlHLir8biP
	 nvw/1E05hVTEA==
Date: Wed, 12 Mar 2025 18:05:45 +0100
From: Simon Horman <horms@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH v2 2/3] net: stmmac: dwmac-rk: Validate GRF and
 peripheral GRF during probe
Message-ID: <20250312170545.GV4159220@kernel.org>
References: <20250308213720.2517944-1-jonas@kwiboo.se>
 <20250308213720.2517944-3-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250308213720.2517944-3-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_100559_559648_5577FE79 
X-CRM114-Status: GOOD (  12.11  )
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

On Sat, Mar 08, 2025 at 09:37:14PM +0000, Jonas Karlman wrote:
> All Rockchip GMAC variants typically write to GRF regs to control e.g.
> interface mode, speed and MAC rx/tx delay. Newer SoCs such as RK3576 and
> RK3588 use a mix of GRF and peripheral GRF regs. These syscon regmaps is
> located with help of a rockchip,grf and rockchip,php-grf phandle.
> 
> However, validating the rockchip,grf and rockchip,php-grf syscon regmap
> is deferred until e.g. interface mode or speed is configured, inside the
> individual SoC specific operations.
> 
> Change to validate the rockchip,grf and rockchip,php-grf syscon regmap
> at probe time to simplify all SoC specific operations.
> 
> This should not introduce any backward compatibility issues as all
> GMAC nodes have been added together with a rockchip,grf phandle (and
> rockchip,php-grf where required) in their initial commit.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
