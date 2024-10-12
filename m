Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 100DCCF2571
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 17:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWpnaejlQ2dR/GyB10H1Wy+5KolFHq3bm+PspNvky9s=; b=IFbmHymRcAT/dD
	/hQvj6bFDOE6BnOOe7xWTb1p/ZTazaXbaN6JlUXEsY2kUO5+4sulugZnabt0XTLuXGKAMzjNdqvog
	Yfoy5XzXqjojrqpzusk9KIlBePaFNHGBpWLRABjPgOWpDBz4i3d9V55gHhanb+k5f8ujbEqwZhi2K
	Tc6l1prtAGNmDK4J9zmYUEqZlGksmZ/sghAzmFindxFC1LamIBC+X1fPGjNIgMeBuT92qrEaD/nXB
	KIkQ7pU6/PblPGJg7VS41IYiPaVegTDbQpNPgDmS3NoNuUpeJA0uB3gnbMICDwOaEooKTeO3xHcIO
	mQ2yPkwoGMGG27j3EIPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szg4U-00000001Yn0-33OF;
	Sat, 12 Oct 2024 17:38:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szg1x-00000001YYb-26vx;
	Sat, 12 Oct 2024 17:35:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=AQhSOcq/aIa70jmnVrqHrmUcq5CjjmXv02YVDlavj3k=; b=uNW5X8oQ7/TOXG/4sbWLaBuPTX
	YhTRKIC5395aQiOZ1mAgpFu9zMCVrMdHEvsjMa+K18IBsUeUOB6PobQ3n8OZ+nPxV4Q27YkZe8coz
	qcjrqQmwNZwMQU4iWqxW49gryiGIwmCUHim2VMqBPZ5+pSdfB2lOMP/SnEdQxAQExVutDL1hNZ3Mu
	NkEmQDESZlZPLSRAbYtm/hH2zpiua1nLzyWmBXKnU00t5/6x0ArIsm6/OmjE/JZjOXRtGVoAN35nD
	Q0rBgWgWdfCNun0FhYuVsoavbXds6RNJxe0OlHuDAA9JmVmDGwctciSJegyQVsH4FD7zdVQBf7iMF
	uYUE3DvA==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1szg1D-00019k-IQ; Sat, 12 Oct 2024 19:35:07 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
	Detlev Casanova <detlev.casanova@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Mark Brown <broonie@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Elon Zhang <zhangzj@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	linux-serial@vger.kernel.org,
	Guenter Roeck <linux@roeck-us.net>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	Simona Vetter <simona.vetter@ffwll.ch>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Jamie Iles <jamie@jamieiles.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Andi Shyti <andi.shyti@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Liang Chen <cl@rock-chips.com>,
	dri-devel@lists.freedesktop.org,
	Alexey Charkov <alchark@gmail.com>,
	linux-i2c@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Maxime Ripard <mripard@kernel.org>,
	linux-spi@vger.kernel.org,
	Ondrej Jirman <megi@xff.cz>,
	Andy Yan <andyshrk@163.com>,
	kernel@collabora.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Tim Lunn <tim@feathertop.org>
Subject: Re: (subset) [PATCH v4 0/9] Add device tree for ArmSoM Sige 5 board
Date: Sat, 12 Oct 2024 19:35:04 +0200
Message-ID: <172875437678.35125.9831204281305504545.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240903152308.13565-1-detlev.casanova@collabora.com>
References: <20240903152308.13565-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_103553_549708_9A925562 
X-CRM114-Status: GOOD (  14.11  )
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

On Tue, 3 Sep 2024 11:22:30 -0400, Detlev Casanova wrote:
> Add the rk3576-armsom-sige5 device tree as well as its rk3576.dtsi base
> and pinctrl information in rk3576-pinctrl.dtsi.
> 
> The other commits add DT bindings documentation for the devices that
> already work with the current corresponding drivers.
> 
> Note that as is, the rockchip gpio driver needs the gpio nodes
> to be children of the pinctrl node, even though this is deprecated.
> 
> [...]

Applied, thanks!

[1/9] dt-bindings: arm: rockchip: Add ArmSoM Sige 5
      commit: 78dee7b6ef085c6a1becad536035bdd39557c9b0
[8/9] arm64: dts: rockchip: Add rk3576 SoC base DT
      commit: 4b9dc5d536b988fbd84e68e8d8ac420752b185b6
[9/9] arm64: dts: rockchip: Add rk3576-armsom-sige5 board
      commit: 54a18f63eb1aaf50cad17dd64076293f2817e1d5

changes:
- added some lines between node
- resortet regulator nodes
- removed trailing whitespace from one line
- drop clock-frequency from armsom sige5 rtc@51
- drop rockchip,grf from cru (lookup is done via compatible)
- order gpu interrupts like expected in the binding
- adjust mmc compatible to binding


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
