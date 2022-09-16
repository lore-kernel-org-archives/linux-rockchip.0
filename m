Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BECB4C54EE9
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Sep 2022 10:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F+yHOqU/mtMJiRtm/I9UEJlfNSkXDxkdBj+zblcDQc0=; b=aNz2+Pdf30OkRE
	NrPhvEIptDYfiDCv7XJMT0vMuXD7md2nK4l4m1fZ8aVA6UIDj6JucAf+E520SgKYYMJBw1ic7aVm0
	E5CUQoJJtmoerK4WqHawSeAUXKjlsuOOPXtOJGkWLcfNmbl4/V+auyeDH/WjE1N53UBQTtZm1fvkM
	g0+WxoC4Ohm9qgV32qLvi4QKxdKe8oK072T311T1oqGDrtX4qv2fdAOzCv1Rovo9bAf8oRh+riMCf
	FJ+U+5tzEkL2yIQQ5LYQJ2NpEk/WKORH+/EHz14qKAiXLHWJaGCq4hrKpfzI3V4kfOqKfY2dOv++S
	80sXm8UrIybWGIVqOnHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ93n-00CRZJ-2u; Fri, 16 Sep 2022 10:59:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ93k-00CRT0-85; Fri, 16 Sep 2022 10:59:01 +0000
Received: from [89.101.193.72] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oZ93U-0002Gh-Oy; Fri, 16 Sep 2022 12:58:44 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	jbx6244@gmail.com,
	linus.walleij@linaro.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	linux-rockchip@lists.infradead.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	devicetree@vger.kernel.org,
	david@ixit.cz,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add i2s0 I2S/PDM/TDM 8ch controller to px30
Date: Fri, 16 Sep 2022 12:58:43 +0200
Message-Id: <166332591117.210113.10532001908680538652.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220916091746.35108-1-foss+kernel@0leil.net>
References: <20220916091746.35108-1-foss+kernel@0leil.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_035900_313421_84392FC5 
X-CRM114-Status: GOOD (  11.06  )
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

On Fri, 16 Sep 2022 11:17:46 +0200, Quentin Schulz wrote:
> The Rockchip PX30 SoC has three I2S controllers, i2s1 and i2s2 are
> 2-channel I2S/PCM controllers handled by the same controller driver, and
> i2s0 a 8-channel I2S/PCM/TDM controller handled by another controller
> driver.
> 
> This adds the device tree node required to enable I2S0 on PX30.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add i2s0 I2S/PDM/TDM 8ch controller to px30
      commit: 27c92c60d1e6d37e2c34fc18e1e36186fade2186

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
