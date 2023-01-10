Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76593C46467
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 14:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c4BH+f+QOf34rSGqEd4L0ZvPsQ+tKSyiltW/fthCwCs=; b=SordFzkdZBURjy
	RlTnyhSOGyspS3+rkDVQL+7PZnp6dihS16UYpxlBRNnNPK/8uuHE+QJkPmg+KTag8v8RX2pzHNTKi
	jinSRpABzAh8uNbz9W8DNabq37k/e6uN7M8GC9YJaVIFnRaC9mtWDysDTD21GM3qOv6jSxKe1ZuOz
	8aiXQYsCEc18Vl/PfxIpgcOuKKs8VDxsU8qJlNDbP42yapsF1tT0KyViMgJEzD0vDz0AJWFqjrDaL
	c7SCEx03o2sGDJ1TC2x8bCq2GDcTh7bbXEoedTIO54kZF5xD5t3DzycLD9qak/Gsn3297QObTL8KP
	EX5cRBFUgh2u/VvruNEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFFo-007Bas-W8; Tue, 10 Jan 2023 14:05:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFF9-007BDT-Qf; Tue, 10 Jan 2023 14:04:50 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFFF4-0004vx-Fp; Tue, 10 Jan 2023 15:04:42 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Frank Wunderlich <linux@fw-web.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alex Riabchenko <d3adme4t@gmail.com>,
	Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add IR receiver to BPI-R2Pro
Date: Tue, 10 Jan 2023 15:04:37 +0100
Message-Id: <167335938205.2550251.6143947309802400390.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221214155433.112257-1-linux@fw-web.de>
References: <20221214155433.112257-1-linux@fw-web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_060447_962059_8D358A05 
X-CRM114-Status: GOOD (  10.18  )
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

On Wed, 14 Dec 2022 16:54:33 +0100, Frank Wunderlich wrote:
> From: Alex Riabchenko <d3adme4t@gmail.com>
> 
> Add the infrared receiver and its associated pinctrl entry.
> 
> Based on Aurelien Jarno's patchset:
> https://lore.kernel.org/lkml/20220930051246.391614-14-aurelien@aurel32.net/
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add IR receiver to BPI-R2Pro
      commit: 91ab5a0dcf3f6718099b894312dee2f1a235348d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
