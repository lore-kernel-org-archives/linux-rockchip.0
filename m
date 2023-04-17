Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2FF0C77B76
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 09:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qfhhw9VISw0tKDlvzJIt46VoI9qSos/pKKIu2dviZ0g=; b=vXXIuwcyWcgTtF
	vtFaBP7T1FCX9NO7JCZqL8HKyb5RcNU8SNTt9oKu7UDt/Rte6VVvZD6tPVp/BXy5VRcgeSYaU8DhZ
	02X7bC1V0vF2GYUKOeAY2jn6IA55HfCx8LRsecNTfWDI/DFaoqZy8SpT0MfA6YwsvBeitmIwIZUY5
	z69Fu/4RSR9N59fzK+irx/ToBU4NuwHuoozgoShTpkH5ebkEgAIe2+fM2TP8LFIY8pGvWvc6qNLVR
	aJk6Z4I3YIWCrw3hFcStD3nEoY7CGV2F/T30ZJvICDQqZxh6zLjB0eJf/laSRWkbhRrVK9Sg4bZ0t
	NmoTdhzSYMhAJCKRxnrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poLHJ-00FaqW-26;
	Mon, 17 Apr 2023 09:36:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poLHF-00FaoI-2L;
	Mon, 17 Apr 2023 09:36:02 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1poLHB-00027c-EW; Mon, 17 Apr 2023 11:35:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Rob Herring <robh+dt@kernel.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	kernel@collabora.com,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/3] Add regulators to Rock 5B's CPU big cores
Date: Mon, 17 Apr 2023 11:35:54 +0200
Message-Id: <168172146374.3844162.4496409077876685871.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230414125425.124994-1-cristian.ciocaltea@collabora.com>
References: <20230414125425.124994-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_023601_760926_4289D6A0 
X-CRM114-Status: GOOD (  10.90  )
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

On Fri, 14 Apr 2023 15:54:22 +0300, Cristian Ciocaltea wrote:
> The CPU big cores on the Rock 5B board are powered by the RK8602/RK8603
> regulators. Since the support for those regulators has been recently
> merged via [1], add the necessary device tree nodes and bind them to
> the corresponding CPU nodes.
> 
> Additionally, provide a couple of unrelated DTS fixes/improvements.
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: Drop RTC clock-frequency on rk3588-rock-5b
      commit: d7f5e83913d1bcd50968972a7b50e49c9a14b2af
[2/3] arm64: dts: rockchip: Use generic name for es8316 on Pinebook Pro and Rock 5B
      commit: 0af7164cb0e076dbfeed28956658a1ad94bd5927
[3/3] arm64: dts: rockchip: Add vdd_cpu_big regulators to rk3588-rock-5b
      commit: 1bb69cd4a344299a382695a2de1a84c0b23fe6da

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
