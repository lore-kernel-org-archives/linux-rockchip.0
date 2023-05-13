Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD8A3C77B7D
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 May 2023 16:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g8avCAEQgf2HeQuyWJgPsBievKc7KoIxIFnV5AhSM/4=; b=whCDILcbMXsbAP
	Fh16UmzdE3q+uGieDDzfcxHOfJyb/mYgssHicUBZuq2O2ZEOii7b2ogi+sQgljmmeg5YxBDA8C2M7
	LQwSYRDI0RqHVugSTZJz+8rf71Ag9aLNATTNjQNFme40IhoulNagUtxFz4aqn5EX5py6WqBKX4Ok9
	TPSUmXaH+MbJMQO4cXILNMdRM03V8PSYvrAYjFXfp6D/suM4K6+pyr2tgrwae1g2D2M5+GbTpAxfH
	c5QEdkwjNHGN+5Zxl5XVjantmzbvJ+KYXyInSLj823UB6Fmj/eIAd9WuALDT/ieHwTPr0nT8eLx+r
	pvi3m2pkGL+4rfaoAU4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxsRM-00FQZW-2p;
	Sat, 13 May 2023 16:49:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxsRA-00FQTA-0q;
	Sat, 13 May 2023 16:49:41 +0000
Received: from p508fce4f.dip0.t-ipconnect.de ([80.143.206.79] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pxsR0-0000Vh-WE; Sat, 13 May 2023 18:49:31 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andrew Powers-Holmes <aholmes@omnom.net>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Brian Norris <briannorris@chromium.org>,
	Tianling Shen <cnsztl@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Chris Morgan <macromorgan@hotmail.com>,
	Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: add FriendlyARM NanoPi R2C Plus
Date: Sat, 13 May 2023 18:49:25 +0200
Message-Id: <168399655506.610817.996905574714533571.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230513135307.26554-1-cnsztl@gmail.com>
References: <20230513135307.26554-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230513_094940_293996_FD22833B 
X-CRM114-Status: UNSURE (   8.41  )
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

On Sat, 13 May 2023 21:53:06 +0800, Tianling Shen wrote:
> Add devicetree binding documentation for the NanoPi R2C Plus.
> 
> 

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: add FriendlyARM NanoPi R2C Plus
      commit: 8788595d66b9d6ac62d844af013edc3b393d8aef
[2/2] arm64: dts: rockchip: Add FriendlyARM NanoPi R2C Plus
      commit: d211665c5a833873ee37e501af58adbf028e6b5f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
