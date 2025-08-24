Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D508CA0EEB
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Aug 2025 11:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zgLkwEo2SvTMj77mtWjGWng4qZiI0nZ/pNf/oPEwLyY=; b=3A12YlDV5iar9h
	4/PT+FKOq3UY6xlS1npOlRcHP/zOecb3nvq8Bwh8J++faQ+FFMr0F9TRZsIr6iU7dCp2rmb+8UxP7
	t7ULr4gzOzQGB8A3Bea3draxsseDVgdxI/LwbblYu7UIifkLOFCt40VJIFWzYEF8slPhiI4SgAq5m
	U4Bra1OrZ9gtA3ah5EVKSQrkryARQk418iYgvROzpcS9QA/BPNhan9skEb2ikVpOYvOxAMi8vWCw3
	8kydgebCbukq2pbOfKv1d5zwqhBB3TUi2Buoh2QYw3rzqPMbczoVhcDaM09KWvvda9HgE/jYGybc3
	BOJViasypmFIFcAGF3jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq8SM-0000000628i-41vV;
	Sun, 24 Aug 2025 11:00:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq8N8-000000061YN-1qcf;
	Sun, 24 Aug 2025 10:54:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=EwTgys468jql8rVpPk9a/paDP+nmzSD0YQvFFWl46ow=; b=ofw47oKNMMAVQYH3GBtMoOvqJk
	GokgYOKqYabSnX/9F65crfkeNIdU558Yfi4SUxG19HW6uCh12I/pFOyNlv7tPEbXmWSE/c9hsZR2K
	yFDAQozCUytnXBB9ZNTD6P4YCKBJo3jTgXvV5l2jQsJF/OjkLhrNzetQdSpOfFW9Tornpj0Sqesc/
	MXSjv3j03tF/B/CSliwuYN9GJMmmjJg3Bv84kd/jhgo5sNSVRxwXWR+5Yc+Kish7k6OgkINoRqMM+
	1iQY2VXS/fGtvH6FCan/NKwjDor+3sH016JEbSrtSpkhY0gNhJ477LoFgsARDwfhUltIT2Hdx7dwP
	hE02SP9Q==;
Received: from [62.245.128.201] (helo=phil.wifi.munich-airport.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uq8N5-0005H4-W0; Sun, 24 Aug 2025 12:54:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexey Charkov <alchark@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pavel Zhovner <pavel@flipperdevices.com>
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Enable RTC, WiFi and Bluetooth on RK3576 EVB1
Date: Sun, 24 Aug 2025 12:54:39 +0200
Message-ID: <175603280232.3445205.16083508502929513202.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250813-evb1-rtcwifibt-v1-0-d13c83422971@gmail.com>
References: <20250813-evb1-rtcwifibt-v1-0-d13c83422971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250824_035450_502173_DDD07914 
X-CRM114-Status: UNSURE (   9.82  )
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


On Wed, 13 Aug 2025 00:30:22 +0400, Alexey Charkov wrote:
> Rockchip RK3576 EVB1 boards follow the usual Rockchip design pattern
> with the I2C connected RTC chip feeding a 32 kHz LPO clock to the
> onboard Ampak AP6275P combo WiFi/BT module. In this case the WiFi
> part is connected by a PCIe link and BT over UART.
> 
> Add required DT nodes to enable them.
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: Add RTC on rk3576-evb1-v10
      commit: 0adaae77862932a19cc14c086d7fd15ec0ef7703
[2/3] arm64: dts: rockchip: Add WiFi on rk3576-evb1-v10
      commit: ebf8183ad08afc4fcabe1379a5098354829d950d
[3/3] arm64: dts: rockchip: Add Bluetooth on rk3576-evb1-v10
      commit: 34f7620912bb0f881a23dfea529e69fd2e8fdcf2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
