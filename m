Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5080DC6FD1C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Mar 2023 23:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ex7NrI+fhu1A8dYxUOMlu6EEkOgL/60thQGiOJi9D/k=; b=SERvVmh6TJFEI4
	rVbVpzjWesY1IKQ4J3F4cYgkhNGdMucKHEdVam+mp5fbzn3acnFoGMy5iv0RTD2h+3SG/rHNh6Kp2
	BrZ53mS3EuyWMAmjfKE8DzbMXd/CzdFEJi9J+qqThSsl0r7XdYmQO8cZArB+7JYr6c1sZN8eMztdO
	H/oLp2JVLyDTUfPz27/tyL8dQxvy07Wz/3tm5sKNmsSCkPIsi0NRdMRWdR82om38XfQZguHSeGbpa
	B9813nqJmRYdYYJOgCleEZVfY9oEtumI9gMYgChpO9cxDicIiGYaXsPqwlZxWZQITxrwtie/zOb6+
	MXrSM2TdoIqlR5Anpr+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pf84n-000BPa-0Z;
	Wed, 22 Mar 2023 23:41:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pf84d-000BKp-1A;
	Wed, 22 Mar 2023 23:40:56 +0000
Received: from p508fd58e.dip0.t-ipconnect.de ([80.143.213.142] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pf84R-0005ZV-7W; Thu, 23 Mar 2023 00:40:43 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andrew Powers-Holmes <aholmes@omnom.net>,
	Andy Yan <andyshrk@163.com>,
	Vasily Khoruzhick <anarsoul@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 0/5] arm64: dts: rockchip: improve support for NanoPi R5 series
Date: Thu, 23 Mar 2023 00:40:39 +0100
Message-Id: <167952842629.1588125.15840907021514918930.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230318083745.6181-1-cnsztl@gmail.com>
References: <20230318083745.6181-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_164055_400543_A3D604E9 
X-CRM114-Status: GOOD (  11.01  )
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

On Sat, 18 Mar 2023 16:37:40 +0800, Tianling Shen wrote:
> (gmac, i2s1) for the NanoPi R5S.
> 
> Changes since v1:
> - https://lore.kernel.org/linux-rockchip/20230315160228.2362-1-cnsztl@gmail.com/
> - Added Fixes tag
> - Collected Acked-by tag
> - Fixed a typo error in dt-bindings (board -> boards)
> - Removed non-existent audio node for NanoPi R5 series
> - Updated my E-mail in NanoPi R5C dts
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: rockchip: create common dtsi for NanoPi R5 series
      commit: c8ec73b05a95d9f0969ae0f28dd8799a54fcdfc7
[2/5] dt-bindings: Add doc for FriendlyARM NanoPi R5C
      commit: 7d4fc70351d155699fe41949d16ce696885a4ca8
[3/5] arm64: dts: rockchip: Add FriendlyARM NanoPi R5C
      commit: 05620031408ac6cfc6d5c048431827e49aa0ade1
[4/5] arm64: dts: rockchip: fix gmac support for NanoPi R5S
      commit: 31425b1fadb2040b359e52ffc24c049a78d56c96
[5/5] arm64: dts: rockchip: remove I2S1 TDM node for the NanoPi R5 series
      commit: 975e9bbad11950fc8276f1fa260d8bf2c341aa41

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
