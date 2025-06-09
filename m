Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2289AC61CE8
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jun 2025 10:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DqtiHiVicfgSeSb9LmFl+7AWBFrR2taJqhp5tP8aaTw=; b=KJ815TJmd0UHi+
	OAlQh7366xMQ0DJwwxBaf/7+mTPDgeNBrZgAjeBsoBeCnWBwZmn9M0J6IAPd2v767L1jHQFEUDqb8
	BHrGazNs5oZZqoIDunz0GBh1N4IFzSzyaZmr2M38t9ksPUiyJ9A3gtR7dIuU4lqQNVJco7HmhkyAD
	4ptT6kagGvTP+Mb2sPbCKar+DaNTpFZf21kijDN8wfeM/qUeQSj3RfmGBh7UwaW2Fpc66fWcoXChT
	umJlyfWRxTuByhnFyu8dvcAVtg3lP+R+piIJ0NE/7SEpdSXE8K4RlM1xrrivNwX4wiBNXKYD3u0yy
	ZT7na8kC+EtUIuRvQOdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOZu6-00000003vXh-3qER;
	Mon, 09 Jun 2025 10:38:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOZfG-00000003tVT-0fyG;
	Mon, 09 Jun 2025 10:23:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=MUho5YhueRpwOnAS8bp4/Ag/zAqHZPytVl1yhId01gk=; b=PkGkF+fewiq5/dyr93FzNBw2Bb
	VY70GVmhv2OmZBYisNs/ayTNEhe5evbu2m4uDutCQFwVZEEo6LuQw/XBpHC23HIvCLlWmJevTSNF1
	7dyPf4yetY/JM4x5EQV364s7XZhVNlOHzX/uWRz77p8UTyALEIXbQvmQIwIFkVEG8WdKrzEEMJFQ7
	0YoVN+YKMe0ErJZgK3A35yna88uz32a4TiaA+h18TLE2VQIE1n1PphbPbhsaxa/29yu1WJON3sp5+
	wwQyjHeNOUH/VK0IEgC1/ymA5koHoa80ReGUB8gblVR67KibcHFj3GztxNGMFF6/fdjYayb3zsa92
	xfoBKT8w==;
Received: from i53875b1c.versanet.de ([83.135.91.28] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uOZfD-0006Av-9L; Mon, 09 Jun 2025 12:23:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Quentin Schulz <foss+kernel@0leil.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Quentin Schulz <quentin.schulz@cherry.de>
Subject: Re: [PATCH v3] arm64: dts: rockchip: support Ethernet Switch adapter for RK3588 Jaguar
Date: Mon,  9 Jun 2025 12:23:00 +0200
Message-ID: <174946455533.762051.10949954779035634818.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250604-jaguar-mezz-eth-switch-v3-1-c68123240f9e@cherry.de>
References: <20250604-jaguar-mezz-eth-switch-v3-1-c68123240f9e@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_032338_200823_3D004224 
X-CRM114-Status: GOOD (  11.81  )
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


On Wed, 04 Jun 2025 18:18:08 +0200, Quentin Schulz wrote:
> This adds support for the Ethernet Switch adapter connected to the
> mezzanine connector on RK3588 Jaguar.
> 
> This adapter has a KSZ9896 Ethernet Switch with 4 1GbE Ethernet
> connectors, two user controllable LEDs, and an M12 12-pin connector
> which exposes the following signals:
>  - RS232/RS485 (max 250Kbps/500Kbps, RX pin1, TX pin2)
>  - two digital inputs (pin4 routed to GPIO3_C5 on SoC, pin5 to GPIO4_B4)
>  - two digital outputs (pin7 routed to GPIO3_D3 on SoC, pin8 to
>    GPIO3_D1)
>  - two analog inputs (pin10 to channel1 of ADS1015, pin11 to channel2)
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: support Ethernet Switch adapter for RK3588 Jaguar
      commit: 8674f059750571f168db9f43d3c02f1975debcc9

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
