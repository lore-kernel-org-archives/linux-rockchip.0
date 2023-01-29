Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 761DAC05027
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Jan 2023 13:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xRpL/zFJqoCZ6k6AaFf85ofYk+WR+1bzhpO59ULMirw=; b=BEFIngP6LjRvnK
	jgUFPrOKilyBRfF6BjHl+3jUcxXSLS3kZvGGfeMELT3a7/tZVhOuZHb1YiG7RCrQ1voDfn9MMAxzb
	FiLCl7QECiMPR7PQhz4EhcimDL6ddxzBxE34JGbG8qER+bU4tj2aaylO3WEUbLoHhqpmM5m5lax2V
	QsphF19WHzR24HYKR4SNlEV2O6sGq+jkOCYggmo9g89riciHXTUvaIPEcf1U9xhqjHwhayEcXbExt
	we/QEPM8w0F5qbFmNRo5WMMgZt9oB8ZiVRCbrYd4uIdOayznjnnLPQKjpuGTULkiappDSwxFvI5ct
	M1wQ0kZW4QR3F6QcryXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM7ur-001WGS-I0; Sun, 29 Jan 2023 13:40:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM7u3-001VtH-T6
	for linux-rockchip@lists.infradead.org; Sun, 29 Jan 2023 13:39:29 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pM7tt-0003rM-4x; Sun, 29 Jan 2023 14:39:17 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	Dan Johansen <strit@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: set sdmmc0 speed to sd-uhs-sdr50
Date: Sun, 29 Jan 2023 14:39:12 +0100
Message-Id: <167499930023.3595793.8532598817436240668.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230128112432.132302-1-strit@manjaro.org>
References: <20230128112432.132302-1-strit@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_053928_026685_E4840074 
X-CRM114-Status: UNSURE (   8.95  )
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

On Sat, 28 Jan 2023 12:24:32 +0100, Dan Johansen wrote:
> As other rk336x based devices, the Rock 3 Model A has issues with high
> speed SD cards, so lower the speed to 50 instead of 104 in the same
> manor has the Quartz64 Model B has.
> 
> Fixes: 22a442e6 ("arm64: dts: rockchip: add basic dts for the radxa
> rock3 model a")
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: set sdmmc0 speed to sd-uhs-sdr50
      commit: 96e908b46e65b623ea325c984a0034307a0d456a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
