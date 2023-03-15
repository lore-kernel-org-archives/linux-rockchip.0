Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7235AC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 07:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QgRP2clJGJ4IQ4NVzWLKnL2+oBdFekilbo/UiW0rejM=; b=JMbSZZwRFFxPA7
	N/bL54kzXI/JAXLJazPT7D1vNygxw/6DOIwZb2fVY8GcJgkVdGUCef9WZHEsbQPh/hCD1vlDzaYsN
	p9wDdm5qHxj4yOuCrrEeZymHMK9VQPcYc96q042Tmk8GnpbItvshtTEfbz0012UEsqwiHalnOE4Le
	831wY0/+rGkohB6saNIOPgdfyS09ngYLyfYTEBrBA7Ubgc7RpCHEdcMH5DBV3oiUiiaUlhaa/HTtB
	t89YijMBse885kkvW6Rp4O0xF1/TsU+QE30A7/pjlMgRJEd5yvm+DnOGPpa8BDZCkL1G/JOnyZbEl
	dtQm3LEgT5dm7YdnOIbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcLyZ-00CheS-2s;
	Wed, 15 Mar 2023 07:55:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcLyL-00ChZx-2s;
	Wed, 15 Mar 2023 07:54:59 +0000
Received: from [46.183.103.17] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pcLxz-00079f-Kq; Wed, 15 Mar 2023 08:54:35 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Chris Morgan <macromorgan@hotmail.com>,
	Vasily Khoruzhick <anarsoul@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Andrew Lunn <andrew@lunn.ch>,
	Peter Geis <pgwipeout@gmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@amarulasolutions.com>,
	Brian Norris <briannorris@chromium.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tianling Shen <cnsztl@gmail.com>,
	devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R5S
Date: Wed, 15 Mar 2023 08:54:22 +0100
Message-Id: <167886685402.704797.14306613030362913076.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230308063240.107178-1-anarsoul@gmail.com>
References: <20230308063240.107178-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_005458_603360_02DC9F39 
X-CRM114-Status: UNSURE (   8.28  )
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

On Tue, 7 Mar 2023 22:32:39 -0800, Vasily Khoruzhick wrote:
> Add devicetree binding documentation for the FriendlyARM NanoPi R5S.
> 
> 

Applied, thanks!

[1/2] dt-bindings: Add doc for FriendlyARM NanoPi R5S
      commit: fd7370159c36b925c842ae1c2400d4729451ec82
[2/2] arm64: dts: rockchip: rk3568: Add FriednlyElec Nanopi R5S
      commit: c6629b9a6738a64507478527da6c7b83c10a6d2c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
