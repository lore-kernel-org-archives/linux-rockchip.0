Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 243E0CE79AC
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Sep 2023 09:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YnokNHvb5uSBbup1sgPNLYJatc0sHuXHj5FyLr1B62Y=; b=LUJW0tRc9Aa548
	US7g4L1TDqHLLt2kywEI7PCbLtZFEzcGBJ7rx9II8E6d0sFunzomjrHFWQl2B6py/3Mxyd2FoLSh5
	LNFFIM45jreAC1seMnsMdsk5kzh/BMNo7DR81YqDZGPaBmpNDZQNJa3QaV6+cb3iFJlmBFDfWGpyc
	YfEtLZVFs6Zbt2zCFkYMm6bVaBG7uVKxVa3u+rEgpHL9UwDlA2WEPpSNEInzHfxz7P7G5HP2FrFhr
	eL7lTkQIndFT1Ebdbew78PhaLZSQDzl/aDxBLyvOJQMIk6bJTg8BX4MeI83OEMjpdL35+ZjpW/9c3
	c/W2NkmXpCseHvzbXnbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qitda-002U4w-2K;
	Wed, 20 Sep 2023 09:36:50 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qitdX-002U43-2N;
	Wed, 20 Sep 2023 09:36:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 19324CE1AAA;
	Wed, 20 Sep 2023 09:36:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29C12C433C7;
	Wed, 20 Sep 2023 09:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695202604;
	bh=QvrfuDunGeVeEzTT0m7V7qM30d5sUcAJp/nuSRoA/Kw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=QdA1dIKg00oVg/Tj4DG0pqitCVasDs/Wfzz1pmVVUrFxCqOFNFq+rrzIkZnS4JT4w
	 abqTNCAEkvI3Fmv0kF4DI3Qvh5Qbk/TZBx2spbFLJ1EANyqTsg4//fkpwtCVed1V+S
	 eWKWmdU98GAMfD8baYyoe7RMo5Q5oPdaIL8fXrI5FXZWeVuTVa4KJC1jvrrWjROGF4
	 3p8qz7ZVv0Ru6+0F7F/3bnxtEGw7avECx9YrNwNEhcVWav0ubrGOJAT0i9boUZTCkG
	 m7ynqHyfLU6eBbPJMIj+S45/BYpZhRhW/ksj8/qq0iHH9IIHsN1DG+imqr2y1WjNTB
	 PLnMvIH0FWn/w==
From: Lee Jones <lee@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Lee Jones <lee@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Alex Bee <knaerzche@gmail.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, 
 Johan Jonker <jbx6244@gmail.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 alsa-devel@alsa-project.org, linux-clk@vger.kernel.org, 
 linux-phy@lists.infradead.org
In-Reply-To: <20230829171647.187787-2-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
 <20230829171647.187787-2-knaerzche@gmail.com>
Subject: Re: (subset) [PATCH 01/31] dt-bindings: mfd: syscon: Add
 rockchip,rk3128-qos compatible
Message-Id: <169520259990.3354839.11054139849766032688.b4-ty@kernel.org>
Date: Wed, 20 Sep 2023 10:36:39 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_023647_974214_A3F8ABBB 
X-CRM114-Status: UNSURE (   6.89  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCAyOSBBdWcgMjAyMyAxOToxNjoxNyArMDIwMCwgQWxleCBCZWUgd3JvdGU6Cj4gRG9j
dW1lbnQgUm9ja2NoaXAgUkszMTI4IFNvQyBjb21wYXRpYmxlIGZvciBxb3MgcmVnaXN0ZXJzLgo+
IAo+IAoKQXBwbGllZCwgdGhhbmtzIQoKWzAxLzMxXSBkdC1iaW5kaW5nczogbWZkOiBzeXNjb246
IEFkZCByb2NrY2hpcCxyazMxMjgtcW9zIGNvbXBhdGlibGUKICAgICAgICBjb21taXQ6IDRjNTdi
MjViMDk5MzJhY2Y4MWVhZDc4YmQzMjAxOWZjNWQwZWE5MTMKCi0tCkxlZSBKb25lcyBb5p2O55C8
5pavXQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
