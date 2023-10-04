Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85343E936E6
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Oct 2023 21:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPhMESxvUD5ZVLuIqFoTxxtuYEmfmjZV9AdRBJPdfrU=; b=iI8Lvhxup8ZM/l
	Mk+NPVjDuYgHA89ottD3NrUu7xGE43rxNyi8QSjRfO3xcV4R4HESLBiXamZfEsY/OfCoYEU+YgAky
	JlncFdawpr1N5TljW7R9k3Fqdm0UTGGRO32RY0KIV3TNyohkFCTzCSidVOfjYmdLIp4IWy059Pjfd
	i9V3fOM2XXW0if7dMOYyRUfgi7DMbMRDYENXYDFkzWE1rSFPDgYgqEskH8l09rEYLdu7/gHyeaoY5
	fBLrKs61FOPgL7rBC/arTxOHCj062uHcgSa5pqZ5dQwZZ5/+afehOtWUSrZKPNUcLWxWBXCHfUf+/
	aTmnXyY1AbBAOCGyA61w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qo9UM-000vu2-1I;
	Wed, 04 Oct 2023 21:33:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qo9UG-000vpW-34;
	Wed, 04 Oct 2023 21:32:59 +0000
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qo9UB-0005RF-Vw; Wed, 04 Oct 2023 23:32:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alex Bee <knaerzche@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/6] Device tree fixes for RK3128
Date: Wed,  4 Oct 2023 23:32:44 +0200
Message-Id: <169645508393.141514.14390917103512726577.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230829203721.281455-4-knaerzche@gmail.com>
References: <20230829203721.281455-4-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_143256_987627_C36328D7 
X-CRM114-Status: GOOD (  12.54  )
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

On Tue, 29 Aug 2023 22:37:19 +0200, Alex Bee wrote:
> This series contains several device tree fixes which currently prevent
> the hardware from actually working.
> Please see commit messages of the individual patches for details.
> 
> These patches have been part of the pretty huge RK3128 fix-up series [0]
> which I've splitted up now, as suggested.
> 
> [...]

Applied, thanks!

[1/5] ARM: dts: rockchip: Fix i2c0 register address for RK3128
      commit: 2e9cbc4167da3134412ce47e4cdadbfdea30bbff
[2/5] ARM: dts: rockchip: Add missing arm timer interrupt for RK3128
      commit: 7e3be9ea299927e6d65242c247eca0a21bc26a58
[3/5] ARM: dts: rockchip: Add missing quirk for RK3128's dma engine
      commit: b0b4e978784943c4ed8412dbb475178f8c51ba8e
[4/5] ARM: dts: rockchip: Fix timer clocks for RK3128
      commit: 2c68d26f072b449bd45427241612cb3f8f997f82

As Robin mentioned, DT describes hardware not Linux's
specificalities, so I ignored patch6.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
