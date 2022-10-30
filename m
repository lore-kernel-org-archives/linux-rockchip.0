Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AC46C38A02
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Oct 2022 20:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2jxVi5yHMbHyzAWAzsbtERfB5QVUEwvWkgH054nffF0=; b=PwBtoX1yL2fgfZ
	DQDkklxCY9GzcCwGmG19Dq2cGCMCOcfVK0S3gccFjvG2qK1F2h/G6n2XoSZdqw4ZHzenIsL9//qie
	lI6jdtcPnPpOLvcXzQUCc/a9nWd0ddLgMHNQ3ti0SJpG8E2BTRXltfQDH/SFlj81+kMlZi/UIsWKm
	WLD0N9JsKzFX9HsZ/cyC4Xhe2u/Hgi6keQgfnYf20nzpHVwDk6BEdPyzfMHgAPwQcXulT2KFPq9hi
	K6FH8XHF+acudtw2nAlO6PLUrg54eX2NY4eKnFWenNUTiWKb5NVVCQUBlqPS6JujqCxJnHjTXxs84
	tfA7VBFUklIs91JZZbRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opEbj-002ga7-8c; Sun, 30 Oct 2022 20:08:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opEbc-002gTK-DI
	for linux-rockchip@lists.infradead.org; Sun, 30 Oct 2022 20:08:29 +0000
Received: from [185.156.123.69] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1opEbV-0005ci-IQ; Sun, 30 Oct 2022 21:08:21 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh+dt@kernel.org,
	pgwipeout@gmail.com,
	linux-rockchip@lists.infradead.org,
	Chris Morgan <macromorgan@hotmail.com>,
	jagan@amarulasolutions.com,
	frattaroli.nicolas@gmail.com,
	krzysztof.kozlowski+dt@linaro.org,
	michael.riesch@wolfvision.net
Subject: Re: [PATCH 0/4] Add Anbernic RG353V and RG353VS
Date: Sun, 30 Oct 2022 21:08:15 +0100
Message-Id: <166716040323.1678541.11778892065439320693.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221028184045.13113-1-macroalpha82@gmail.com>
References: <20221028184045.13113-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221030_130828_470059_7DD55088 
X-CRM114-Status: GOOD (  11.75  )
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

On Fri, 28 Oct 2022 13:40:41 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Anbernic RG353V and RG353VS handheld gaming
> consoles. These devices are extremely similar to the existing
> Anbernic RG353P.
> 
> Add support for the battery of the existing RG353P and RG503 too
> as part of this change, as to keep things compact we must first split
> the 353p devicetree into attributes common to all 353 devices and
> attributes that only exist for the 353P, 353V, and 353VS devices
> (which includes a different battery in the V and VS).
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: arm: rockchip: Add Anbernic RG353V and RG353VS
      commit: e1cc1e712d85c10ad47a083186c222210dab5b23
[2/4] arm64: dts: rockchip: add Anbernic RG353V and RG353VS
      commit: 1e141cf127262150d053ed3f80d0d3c42de11c43
[3/4] arm64: dts: rockchip: add rk817 chg to RG353P and RG503
      commit: 22a91b7614132ce0651d0ddd6e0bcee119370840
[4/4] arm64: dts: rockchip: add poll-interval to RGxx3 devices
      commit: 60bd5ee7c8a855a7917fe41771b0e297912a7626

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
