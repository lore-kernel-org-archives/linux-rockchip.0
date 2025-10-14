Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED482CCD195
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Oct 2025 18:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S4swSuviveBeT0rAZRsys3DIscjhFHaV5SUQxgoTWUQ=; b=A7ucSMffFD0p+5
	TX1896/YF+Q/rQwGMiA+TG4sLRGGuAE5fWz8uGKWsL6aSdMpSA+ve/8VXDRq7qZiF79N8sVXc37cr
	QcZfvzqf50XqxsSIL7lk9dwVs90wpZox3bHBreTTb3KZ2jB34hVvKVA4xSuxb04E52hqiWJwsXLnI
	3SiW9fGY+xqlZZxH4tZMbfD6n8W7YHHnB+1/iTrki//Yfq0wSWB7CTeuin5mpznHYPqdmS4qjWHom
	7TKhj8sLNpziayBMzm0PB0ZSq640B4HQ+zyLqM+a8kIq7vKJRSTD8pYV34v/3lkofApmeyk6dnPQb
	XKyjs2tZRPXPFGkl5pTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8jQS-0000000H93y-1aZX;
	Tue, 14 Oct 2025 18:07:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8jQG-0000000H8sS-0q36;
	Tue, 14 Oct 2025 18:06:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=VKxAQI/icwrsALd3yt9ZYYrax5U+WNqBH1n83Wd3UMA=; b=HG6OWkST/IexkAxDFqbAPDCqBA
	vjIkyhoHebXbSiI+rqLwCIlMLt2SoF/Q+cKr2s5zNU3490kQB0BiwLPZPkrI9FllyKmJxO+JCt8bx
	Tsvmn1VbTch4GIjjCafL1PK4NDAnBFYWCaIusVzssG6dCKKo+IYwp8i8bXNydV8BHvAdfGx7w533Q
	xHcgroIL5A0HON64oxXNhMIyR2xerN5VmIEO/zeFpRXn48nunWgAz9MuJRLO0fF4FHPEb+SMBU69w
	uBI8UtEiLYar8OQE8hJ3AGtvbTTxtQuXMzw1M4iyGoPiIC+DaTDuWQHBR3rwKuOCUtFI7cdjxJdhB
	rfRQje4A==;
Received: from i53875b75.versanet.de ([83.135.91.117] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1v8jQB-0001Gj-6X; Tue, 14 Oct 2025 20:06:51 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Alex Bee <knaerzche@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Drop 'rockchip,grf' prop from tsadc on rk3328
Date: Tue, 14 Oct 2025 20:06:35 +0200
Message-ID: <176046473175.1662867.15777985050220275071.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251008082143.242270-1-didi.debian@cknow.org>
References: <20251008082143.242270-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_110656_284418_6764AB51 
X-CRM114-Status: GOOD (  11.81  )
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


On Wed, 08 Oct 2025 10:21:22 +0200, Diederik de Haas wrote:
> The 'rockchip,grf' property for tsadc in rk3328 wasn't actually used in
> the driver and is no longer allowed in the DT since commit
> e881662aa06a ("dt-bindings: thermal: rockchip: Tighten grf requirements")
> 
> So remove that property which fixes the following DT validation issue
> 
>   tsadc@ff250000 (rockchip,rk3328-tsadc): rockchip,grf: False schema does not allow [[58]]
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Drop 'rockchip,grf' prop from tsadc on rk3328
      commit: afb5f84b216d14a71e2962ed569edcea30cf9763

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
