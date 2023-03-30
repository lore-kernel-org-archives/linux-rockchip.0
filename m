Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA0B9C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Mar 2023 11:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjh1d6g7Z6Z/yh66hKz6BmbKOVOW1vb2SW8Jmu1wm94=; b=whVmoopqR4G4su
	6E61/U+OzuKKkDeAL4OuGwqeXozv1b3zJ5fmJERxb+DUGvM2FXrdrkCYVS2Zmw27g0/6e/vMN6To9
	5qCtEWGQzb+xgqxPNGrN1PVuzt/AFMe1GQqMST5tsi/nqJd2kgBfjbmYqDI2r8Pf6Fp7tdWdhQalH
	05K4sKNjdur/SGBoelu5qUb2qyccexyJskc8lk5u98XH6iKRqGyvOZQXfiFihdIGP7d4v+Qx2UHfM
	NZgjtrLvis9fZ4OMQLplVkDyDnquJzV/l9J0aGs40AO+CrGvECBf9a/q1CdOdxeaasuo305GJae6B
	54CQTWl7DF9KAeWA7jcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phqiI-003fQ1-1e;
	Thu, 30 Mar 2023 11:45:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phqiF-003fO7-0u;
	Thu, 30 Mar 2023 11:45:04 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1phqi1-0003YZ-Kn; Thu, 30 Mar 2023 13:44:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Maya Matuszczyk <maccraft123mc@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Andy Yan <andyshrk@163.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Rob Herring <robh+dt@kernel.org>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Vincent Legoll <vincent.legoll@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/4] Add support for NanoPi R2C and OrangePi R1 Plus LTS
Date: Thu, 30 Mar 2023 13:44:44 +0200
Message-Id: <168017666944.2380317.18295584038615074467.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230325074022.9818-1-cnsztl@gmail.com>
References: <20230325074022.9818-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_044503_335563_D3A22810 
X-CRM114-Status: GOOD (  10.07  )
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

On Sat, 25 Mar 2023 15:40:18 +0800, Tianling Shen wrote:
> got supported/fixed in kernel v6.3:
> 
> * FriendlyARM NanoPi R2C - yt8521s
> * Xunlong OrangePi R1 Plus LTS - yt8531c
> 
> Changes since v1:
> * https://lore.kernel.org/linux-rockchip/20230323123807.11882-1-cnsztl@gmail.com/
> * Updated dt-binding description for NanoPi R2C
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: Add doc for FriendlyARM NanoPi R2C
      commit: ceb2e18487c322f3becae0959d48ef12a829a2dc
[2/4] arm64: dts: rockchip: Add FriendlyARM NanoPi R2C
      commit: 004589ff9df5b75672a78b6c3c4cba93202b14c9
[3/4] dt-bindings: Add doc for Xunlong OrangePi R1 Plus LTS
      commit: 564cfdb866535662d74a6a1c5b5e7e99845d7e25
[4/4] arm64: dts: rockchip: Add Xunlong OrangePi R1 Plus LTS
      commit: 387b3bbac5ea6a0a105d685237f033ffe0f184f1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
