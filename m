Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16017C4452B
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jan 2026 12:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NpLINE4sLApO2iIZe+uITLuBNTWgnFjd8vCyb32us7U=; b=qX+bjlOgzAtHkr
	izXA2HfZJEPj1yHsxyJ6DIA1rww2roSj9rCLpkdUN1L3oYcfUz9tkyvATQCeLItMqCMnpS3lcqaJN
	GLjY63By4ZvqOfO801SeDyHC/4BiHxAB9rv1hbXE1zC0Rkjkal7tQ29gR1rNkDFyHxwdUk+C7URh9
	vv/AxaWC+qXV9o7eoaCaJcmgQwiqQg4OgSymSo1Z+K25tDZA361wU5nnDsVW6N3f1Z8aNDz0gb99A
	GWH4jEamTzB/MNHJFA8hAgiD+8Q9n0xR8Bbsg3ayVPhNT5tWR9DF+vqb6Xlib94+nSSAF2YK2tl5m
	zwr91aDw76Gy8OQi4nFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viXl0-00000005SiR-2nhE;
	Wed, 21 Jan 2026 12:56:22 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viXku-00000005ShS-3tfw;
	Wed, 21 Jan 2026 12:56:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=QjCA++DUfFEMwVur9OmsdI0vgUZoTw8UrQCFGMt/NHM=; b=HG5oS4Qb2N80+3woHabiOAIFBS
	3e+uV4TVaFVFGmHiQqkHBvce3bOE4MIAFDFCGpEBrg1ltRGpAUlRUlBqZZCzlFGUOcX0gjNnRokNy
	zu4SjkKqcTkxxKQYraItvTWlSs95lvP1TkY54JUgu7RJVqYSi/spCRsWu00FhmraSx8Q=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1viXkb-003oo1-FE; Wed, 21 Jan 2026 13:55:57 +0100
Date: Wed, 21 Jan 2026 13:55:57 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Stephen Chen <stephen@radxa.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Change gmac phy-mode to
 rgmii-id for rk3576 evb1
Message-ID: <b87d0c82-b8b7-4e14-85c3-c4ba88aa4000@lunn.ch>
References: <20260121031548.402-1-kernel@airkyi.com>
 <20260121031548.402-2-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260121031548.402-2-kernel@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_045617_947337_DB77AFED 
X-CRM114-Status: UNSURE (   8.21  )
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

> @@ -721,6 +719,7 @@ rgmii_phy0: ethernet-phy@1 {
>  		reset-assert-us = <20000>;
>  		reset-deassert-us = <100000>;
>  		reset-gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_LOW>;
> +		tx-internal-delay-ps = <1950>;

The PHY should add 2000ps, as required by the RGMII standard. The
difference is so small there is no need for tx-internal-delay.

In most cases, 'rmgii-id' should be sufficient, unless the PCB is
badly designed.

      Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
