Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BC40C3064D
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jul 2024 13:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CnAuhFEJUkqQZxagISeS2oO3cTwMq54NNigL190cKPs=; b=J2Bs2XvH//Z6yA
	EckYLZ1WBaymdUSQr09BeQ2LIJueGcVIIcI3bb9BxsPt0ojDUMcXI87+TnMk6YePXcWIiqJYDED1L
	Outu1sqnZ/1iPas3uGUJpoVvQG6WcGl/KkuvOViyQGtmjw6gVM4qFFpuBUEsKiuzgL+IvIV8CgqAg
	o9ktQ9i/ActmTilZa7t7Vj75j3yWVjRXFxFahZhGS/RUxLIf5pjhPYQYUwoJzf9SEOR0gI8EqIt86
	J26xhW9n0Cv1cJnKEobYBvfpSxWpNJ3dHLR7baLqCovtMoF9+vW3V0xSjNDMP2Sz/tlTb7WqrGRgS
	pPpDMx3T6f+e4dlN1sAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdgc-00000006sYq-2wxp;
	Tue, 02 Jul 2024 13:36:46 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdgE-00000006sLK-21FK;
	Tue, 02 Jul 2024 13:36:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C2A44CE1DF3;
	Tue,  2 Jul 2024 13:36:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 626F3C4AF0D;
	Tue,  2 Jul 2024 13:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719927380;
	bh=44/04iEfSWZJOuq7DzquvfVUDBFC9Eq1hI75oOfnXIs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=jVci5KtqNo3GJS9u7LJbYxh/4jq6YhT4F//kmuRhytaqnhc7EvRekBO1pD/dd3WOh
	 K9jNhs9L/sya9xTFciiZOoCazKFzcX/gkAV6VYR8POvAQgzaLlV6w7pHBWzMBcYsdJ
	 xMY1C17123lRebRssDu9O+VdQgxM9tvh/197nYBprSrDSCnueZNL7FIXTdAV81fGV7
	 8Lg9F/5F9+96m3INFmptqbVTY+MByZQWKKBb9L3knZVjCOrnD5sGJCbFUCMlDdud3q
	 IyKZofoN0zy4Ih9int/zQ+z28TRsTm1hGUWb1mxFtx7Z4XBS14xdMRNgMW72NCAk6p
	 kVfbVFgCjg47A==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, heiko@sntech.de, sebastian.reichel@collabora.com, 
 andy.yan@rock-chips.com, s.hauer@pengutronix.de, jbx6244@yandex.com, 
 Shresth Prasad <shresthprasad7@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, javier.carrasco.cruz@gmail.com, 
 skhan@linuxfoundation.org
In-Reply-To: <20240620212806.3011-2-shresthprasad7@gmail.com>
References: <20240620212806.3011-2-shresthprasad7@gmail.com>
Subject: Re: [PATCH v5] dt-bindings: phy: rockchip-emmc-phy: Convert to
 dtschema
Message-Id: <171992737501.699169.18109328511977115085.b4-ty@kernel.org>
Date: Tue, 02 Jul 2024 19:06:15 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_063622_839995_D2DFD2FA 
X-CRM114-Status: UNSURE (   4.86  )
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


On Fri, 21 Jun 2024 02:58:07 +0530, Shresth Prasad wrote:
> Convert txt bindings of Rockchip EMMC PHY to dtschema to allow
> for validation.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: rockchip-emmc-phy: Convert to dtschema
      commit: e245c725c72f8c94e5fe435fdefd6852851450b5

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
