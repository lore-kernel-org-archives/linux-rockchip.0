Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCF5DC32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 12:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gEqYaB0knZY+MwMB6MVpdY/mVH1bIvjDy6N5w4SvUAw=; b=s55r/QzDRpzTQp
	ucVtY8eqXsE+WYmHarxk8cgKsT4BoHrNFjtsR7yctIbRpwmqDGIqv4RrDO0qhVFXwK40ZZZWnMMos
	dRfLfcWoQmaOODWTWlth4LfqOL/UyFmLOMR5hxCbZxODZRuxwPRZF6+0i2itSLacT1lePsPSGRjVI
	hO9Zrcmc+HJZbv3lgh1AzY//kKhGMeGtGAv10OgQRuzBi2LCULFo7iQkRNY1QVtZ4m9f035WiQutJ
	FX89C6zpGblMtL/wh6sCih9yUxhpuFAMtMqkcDmReP5EZEPDrrU9XhVVWlViVBlJscVShNvANWwPP
	nxtD6SOfDvEdu7ye7vrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQTIg-0060ZT-UK; Tue, 23 Aug 2022 12:46:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQT9Y-005vpz-2E; Tue, 23 Aug 2022 12:37:11 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oQT9Q-0004gV-4j; Tue, 23 Aug 2022 14:37:00 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Lower sd speed on quartz64-b
Date: Tue, 23 Aug 2022 14:36:55 +0200
Message-Id: <166125820548.1301371.1518743032133249224.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220721044307.48641-1-frattaroli.nicolas@gmail.com>
References: <20220721044307.48641-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_053708_169948_87EE111F 
X-CRM114-Status: GOOD (  11.04  )
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

On Thu, 21 Jul 2022 06:43:06 +0200, Nicolas Frattaroli wrote:
> The previously stated speed of sdr-104 is too high for the hardware
> to reliably communicate with some fast SD cards.
> 
> Lower this to sd-uhs-sdr50 to fix this.
> 
> Fixes: dcc8c66bef79 ("arm64: dts: rockchip: add Pine64 Quartz64-B device tree")

Applied, thanks!

[1/1] arm64: dts: rockchip: Lower sd speed on quartz64-b
      commit: 1ea90b2d293fd8b1f3377c9ed08364ff6f2a8562

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
