Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A066ECDB465
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Oct 2023 20:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ZIYvjlzOxwm2hGOM8dh3FXEl4//F/MYHJGIGWMo744=; b=dkrSWRMhVfn5Oc
	DZTqAtnNj+bQAjhSMyAj+v1ewR1lci8m7y/ms+A6YmgoXN0FpKLJQ5tszpwJj5FXLvSfYoE6SWqdD
	Z4z83XKQusxHjK4Qr634c/C+22J9N5HfAGho8DRSfTn6U6XnZxnRBH5Htz2nd17UtqneXb4rmOf0+
	Uc6vTjy1FLF97bOCjBjYfQWJwwTTT2xOI8zXYO+UNrTAjZdpAW3JqVDSv3qLHuXCBfrRsS4DQtrhg
	tbbI1KcNW7U+rjz0A6KD2+GbjpPeTbxMvvqW5kyJhnRzLQgN2Xl/WCJhovdb8wshoUZf/nxjiEYg9
	1TFinMucpbGNhBTR0Okg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsUfQ-00AXlu-0c;
	Mon, 16 Oct 2023 20:58:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsUfM-00AXk4-2o
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Oct 2023 20:58:22 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qsUfI-0000rE-9d; Mon, 16 Oct 2023 22:58:16 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	daniel@ffwll.ch,
	Chris Morgan <macromorgan@hotmail.com>,
	megous@megous.com,
	neil.armstrong@linaro.org,
	airlied@gmail.com,
	jagan@edgeble.ai,
	krzysztof.kozlowski+dt@linaro.org,
	sebastian.reichel@collabora.com,
	dri-devel@lists.freedesktop.org,
	agx@sigxcpu.org,
	robh+dt@kernel.org,
	sam@ravnborg.org,
	kernel@puri.sm,
	andyshrk@163.com,
	conor+dt@kernel.org
Subject: Re: (subset) [PATCH 0/5] Add Support for RK3566 Powkiddy RGB30
Date: Mon, 16 Oct 2023 22:58:14 +0200
Message-Id: <169748877589.1000955.1759474739059635121.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231013183918.225666-1-macroalpha82@gmail.com>
References: <20231013183918.225666-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_135820_931077_BC072C68 
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

[1/5] dt-bindings: vendor-prefixes: document Powkiddy
      commit: 00e395c8edf7fb6fa0830125d91c2b4bc381eefd
[2/5] dt-bindings: panel: Add Powkiddy RGB30 panel compatible
      commit: daee0320a13724e5a584726b693eee87bbd96172
[3/5] drm/panel: st7703: Add Powkiddy RGB30 Panel Support
      commit: 636a989eb4d022e1756009592445aedaaf7424d8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
