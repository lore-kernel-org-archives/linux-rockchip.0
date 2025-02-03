Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D001CC02195
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Feb 2025 08:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3TntgsKgSm4T3Y6BvAIXHEQxCHCrIzO3qePiuBJnhNw=; b=csvNPGgxX56g/s
	zhkuIBAAl3qay7xMLZOUDyWyH0XMfm/qP+Rkbt/M6AE0E4IZn/lNtNDDFxJXdxEn3F6sVb3qphOnP
	Vlojoibq68aSwKX28y1pK26eZBG2/JSVHopC1IZtYI3fVD1O+jAZQOg1Dx3Ysgld2LUm8NInwZLzN
	Moyoeu6aCqstufw6RcORj7YEDF9fMSps0JJHKc7GOPOXwY63rtW+dsiilsw06i4pX+1A8lGfS4F84
	V1pUzDnfsnuTGyXgRlwdDjgTm8tFywTOnD3KW/Q7JBfefK2ldmDS1fUF6znPaBylJuKWGOhK2WH67
	OckG12z497Vk9xVNyD+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1terjd-0000000EpBv-07VS;
	Mon, 03 Feb 2025 08:23:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tercp-0000000EnWy-0DFX;
	Mon, 03 Feb 2025 08:16:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=jbaX86Vv1lBq83NgqcccZ8mOTJ42/HTehRVjxGwkm0U=; b=GgmKnNv6FAgIQv4tMugK1+eBHc
	+b1WEH4vrQqN6pBfNEUMbP5Ro3V9+JjnBm76d4pODXAKFgG2PsRjyoTanO6AKsHAK0bgK7Tl316S8
	31SWcz4bXnl5vLu5mtR3ejF+vfJ9H+KvCPCpMrO8aZ3V2S31FJgkr/6abgXR0n4on9WHp/tWCwNHv
	6O+npo3Nke0HiIMep76ma6Y5IYgLkadKVTeksWUGSyOBD6U0m/SFxf6LdIIawgzDYVGvs3q7IoEMe
	4Jj/BCNeBt6+YVqMXpFT5uu1LDb6rzhH+9YfJ8EL7zCnaumwumuKqlMNEQrYEIA0VdczJMrxMtuBi
	vUIPZh1w==;
Received: from i53875b5c.versanet.de ([83.135.91.92] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tercl-0005Vr-VB; Mon, 03 Feb 2025 09:16:08 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Quentin Schulz <foss+kernel@0leil.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Quentin Schulz <quentin.schulz@cherry.de>
Subject: Re: [PATCH] arm64: dts: rockchip: add support for sound output over HDMI on RK3399 Puma Haikou
Date: Mon,  3 Feb 2025 09:15:58 +0100
Message-ID: <173857053615.78657.12726189850185217501.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250130-rk3399-hdmi-audio-v1-1-406244333111@cherry.de>
References: <20250130-rk3399-hdmi-audio-v1-1-406244333111@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_001611_102144_0B09CF51 
X-CRM114-Status: UNSURE (   9.81  )
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


On Thu, 30 Jan 2025 16:14:25 +0100, Quentin Schulz wrote:
> The Haikou carrierboard exposes an HDMI connector and audio can also
> be output, therefore let's enable it on RK3399 Puma.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: add support for sound output over HDMI on RK3399 Puma Haikou
      commit: 29fd3d7f8317d738b340ca7f5144bf915243cdea

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
