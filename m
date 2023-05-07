Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 757A5C77B75
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 May 2023 10:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dn+H1P3cl981/3kcLZLYaXIzxOlPERYqqEQ7lrvELUM=; b=mSE+MaAH+JwDgY
	twH/yfjusaPUIbv1FcsiA5D96hANFLbB5+PGNFRuw2Wqv5DQkWKu3vviolutRJJPJH/eQDobs4F9n
	K01rY8wC8f0ZBnoYbQ+0K10jAN5u0k6pLlkf+IWM/JuchfOirzZw61yP97yp0q4XrSmYE5JS1Nn8v
	Sgx4a+TpG9C8COi0fjn5viyrZIi5esiK+UB+oxRSyy9KCieBJcO7rtkaiYHXM8IfY4TZsTu6L0bLL
	ziLzqNO/cuHEnECup3WxkpCDzUTrzmPVzgpiCjoGqLy8fnW61V7jhRuHKfQe3x3ty0/l6uyaEPxsl
	/jLikQil0Z0vXpjxutjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvc2S-00FvdK-1G;
	Sun, 07 May 2023 10:54:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvc2P-00Fvck-2J;
	Sun, 07 May 2023 10:54:46 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pvc25-0005gS-7Q; Sun, 07 May 2023 12:54:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Brian Norris <briannorris@chromium.org>,
	Peter Geis <pgwipeout@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Tianling Shen <cnsztl@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Vasily Khoruzhick <anarsoul@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: Add doc for Fastrhino R66S / R68S
Date: Sun,  7 May 2023 12:54:24 +0200
Message-Id: <168345676639.21260.15276266069370023718.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230506061108.17658-1-cnsztl@gmail.com>
References: <20230506061108.17658-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230507_035445_779028_689CF57F 
X-CRM114-Status: UNSURE (   9.87  )
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

On Sat, 6 May 2023 14:11:06 +0800, Tianling Shen wrote:
> Add devicetree binding documentation for the
> Lunzn Fastrhino R66S and R68S boards.
> 
> 

Applied, thanks!

[1/3] dt-bindings: Add doc for Fastrhino R66S / R68S
      commit: b985ca5261171e559f4d9754481b5f6c6e15ad93
[2/3] arm64: dts: rockchip: Add Lunzn Fastrhino R66S
      commit: ddb6cde1cf59eb57820a6c277b8b5cff45e68d68
[3/3] arm64: dts: rockchip: Add Lunzn Fastrhino R68S
      commit: 5a9447fd17668c34449052e4f77eebc7a98eccf3

[v6.5-armsoc/dts64 branch, will be rebased once more after 6.4-rc1,
 resorted some properties to be more alphabetically sorted
 dropped one empty line at the end of the pmic node]


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
