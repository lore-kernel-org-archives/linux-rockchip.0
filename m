Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75FA4CD3441
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 May 2026 18:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vO6mMSLSgYBg1SvuQ7dWUqsJvDX2AG/XP0udN3MrPKQ=; b=RTbwQ5TySt6kG4
	0bZdhMpZ9l2YKgALn/3KoZulLag6mTMmyvwDI6FQOZkrcZualIrEOJNvKRc4t+lfe2U1ih5BFVJrK
	eEnvuI2YzPyGtNB9XRAAH6Aa9ndvWyTtqdMhin1GOtuzjO9CNcSP4bNP5XoxVAPzUXxhGt8QCzsjh
	SuskomhjcAVWwThHpfD/rs7N8N7ODQhSfZu8POprKHvx/8RBPp7OiUuC2EFTswsJUgtrLGeqom3Gy
	xEKznbKlJSq9Ytu0dCQHUBEehFlnnJtSZRd4LPh+1Qx6Bor5DhPHFBxjHa+r8D4PUzJy582qk8uWc
	1gjA8MQDS/PJqWkj8tqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKKMk-0000000H9Ba-0vF9;
	Tue, 05 May 2026 18:19:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKKMh-0000000H99L-1FLQ;
	Tue, 05 May 2026 18:19:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=CZieGdswKQbAOybvHi0PMqwJLD1M3MBzPazARBFonZA=; b=eveGNBORgDJ20PJlLoNRQhaMgV
	cts1zTnfdjoMi0WghO+3TnFOgTrS0fd173ms8UnoRGUIhXCNlsz/uIDZ89vOiYo7dEQM633M23WHo
	DxyysTzdgLniY+9H/XYKgpFj/oRx2KB1p+4fIUhoR3ncoFa5zhNscugF7TsQNlEuX9a83b22cQcdm
	fxuzxHLN9ks+Os1DVlGI/r0WnBZczEBlt+yJoCCh+WXpyI8UKIDh2MqcrOkvjRy7WX2tIxNnajgRg
	eoCBwkS7QYJ7ZZ719f8TKMjYuclU9iXoPPKUY258ND2tPTJbIKVGWeMg+Yo0ZY9lVAFtMe0FwAZ+4
	OWL0bNTg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	Doug Anderson <dianders@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	chrome-platform@lists.linux.dev,
	linux-rockchip@lists.infradead.org,
	Julius Werner <jwerner@chromium.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 0/7] dts: Add /firmware/#{address,size}-cells to Chromium-based DTs
Date: Tue,  5 May 2026 20:19:08 +0200
Message-ID: <177800448363.3286457.17373798042642521210.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260428200712.2660635-1-briannorris@chromium.org>
References: <20260428200712.2660635-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_111927_335620_2F608EF5 
X-CRM114-Status: GOOD (  10.32  )
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


On Tue, 28 Apr 2026 13:06:52 -0700, Brian Norris wrote:
> Chromium/Depthcharge bootloaders may dynamically add a few device nodes
> to a system's DTB under a /firmware node. A typical DT looks something
> like the following:
> 
>   ## From a RK3399 Gru/Kevin Chromebook:
>   # find /sys/firmware/devicetree/base/firmware
>   /sys/firmware/devicetree/base/firmware
>   /sys/firmware/devicetree/base/firmware/coreboot
>   /sys/firmware/devicetree/base/firmware/coreboot/ram-code
>   /sys/firmware/devicetree/base/firmware/coreboot/compatible
>   /sys/firmware/devicetree/base/firmware/coreboot/board-id
>   /sys/firmware/devicetree/base/firmware/coreboot/reg
>   /sys/firmware/devicetree/base/firmware/coreboot/name
>   /sys/firmware/devicetree/base/firmware/chromeos
>   /sys/firmware/devicetree/base/firmware/chromeos/readonly-firmware-version
>   /sys/firmware/devicetree/base/firmware/chromeos/active-ec-firmware
>   /sys/firmware/devicetree/base/firmware/chromeos/firmware-version
>   /sys/firmware/devicetree/base/firmware/chromeos/nonvolatile-context-storage
>   /sys/firmware/devicetree/base/firmware/chromeos/vboot-shared-data
>   /sys/firmware/devicetree/base/firmware/chromeos/nonvolatile-context-size
>   /sys/firmware/devicetree/base/firmware/chromeos/nonvolatile-context-offset
>   /sys/firmware/devicetree/base/firmware/chromeos/hardware-id
>   /sys/firmware/devicetree/base/firmware/chromeos/compatible
>   /sys/firmware/devicetree/base/firmware/chromeos/firmware-type
>   /sys/firmware/devicetree/base/firmware/chromeos/fmap-offset
>   /sys/firmware/devicetree/base/firmware/chromeos/name
>   /sys/firmware/devicetree/base/firmware/ranges
>   /sys/firmware/devicetree/base/firmware/name
> 
> [...]

Applied, thanks!

[1/7] arm64: dts: rockchip: Add #{address,size}-cells to Chromium-based /firmware
      commit: 0b74f1a037672980c477bbe6b3848fb5341eb4f1
[2/7] ARM: dts: rockchip: Add #{address,size}-cells to Chromium-based /firmware
      commit: 98461edf564a35ee00a97a64f5463eaece586546

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
