Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3A2DCDB482
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Oct 2023 21:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bmvm71Sl70AKZvl7S1iJE9CAU4FW+OQiI+g1znGrRNs=; b=tvgIZQxgsy+V+C
	H7Vdzno+cCKA6UNiIDMzK+HTtDduLLaObwZ1pvIgRcQJKBQ4czH1l7GhgTP1vtvSzJdexd+ZwVskK
	h9AwdE8fx1HWPq3t3ayNvAn+oyxia2Ke21GqNmt2fQbcV7q1gXTjcVmXKhKBn3qAI4jlYV2tporZF
	cHo1kouRL8LMsOloGvO0hmZqtiZBMYRb/YsKevcZop2ha5B2mQLU0Np1h72NKDgTfXalcrkIBTDbb
	FZEL1LMQ+N9TQgr0qPdk1lbNQG/kpHCmV6sbthO9dSorr2ya6qHopS1GhQ5i6/2zKYj8c0lV9Nqfv
	neWkdmRHx4zD98yrVRPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsUjD-00AY7o-2V;
	Mon, 16 Oct 2023 21:02:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsUjB-00AY7W-0u
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Oct 2023 21:02:18 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qsUj6-0000t6-Mb; Mon, 16 Oct 2023 23:02:12 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	jagan@edgeble.ai,
	kernel@puri.sm,
	sebastian.reichel@collabora.com,
	conor+dt@kernel.org,
	neil.armstrong@linaro.org,
	megous@megous.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	Chris Morgan <macromorgan@hotmail.com>,
	krzysztof.kozlowski+dt@linaro.org,
	dri-devel@lists.freedesktop.org,
	agx@sigxcpu.org,
	andyshrk@163.com,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH 0/5] Add Support for RK3566 Powkiddy RGB30
Date: Mon, 16 Oct 2023 23:02:11 +0200
Message-Id: <169749012381.1030145.4153782284294309362.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231013183918.225666-1-macroalpha82@gmail.com>
References: <20231013183918.225666-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_140217_321907_96656930 
X-CRM114-Status: UNSURE (   9.40  )
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

On Fri, 13 Oct 2023 13:39:13 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Powkiddy RGB30 handheld gaming console.
> 
> Chris Morgan (5):
>   dt-bindings: vendor-prefixes: document Powkiddy
>   dt-bindings: panel: Add Powkiddy RGB30 panel compatible
>   drm/panel: st7703: Add Powkiddy RGB30 Panel Support
>   dt-bindings: arm64: rockchip: add Powkiddy RGB30
>   arm64: dts: rockchip: add support for Powkiddy RGB30
> 
> [...]

Applied, thanks!

[4/5] dt-bindings: arm64: rockchip: add Powkiddy RGB30
      commit: 64d0de4f65c2951ccdc7a7aebe8a7e3455946f5f
[5/5] arm64: dts: rockchip: add support for Powkiddy RGB30
      commit: 1e9ac3e8a6a9d4da9efbad2d8e95cc1140e0e23f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
