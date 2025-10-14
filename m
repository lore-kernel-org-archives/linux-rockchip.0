Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7436CCCD193
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Oct 2025 18:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aDyH2NBsYyXkzkm47Phw/gAM676sU/sRKeHTkKJEvuI=; b=R8J+hBW7/avbJ7
	hbamPlhByRsQ/gv4wkAR1AbDwfl/iS0yOPuydrbsGG6arOKqA+4QIaFY5MiZjcEwDYIYCWE1MZ83j
	MGvLmPcIHLGKzcypCXCHlsgfkGRm8lxEjUgJhiLT2cOe2kmpn+p1t9AVsS5MGY+cEGCKCbimGHm9A
	TT5d4X9agYDIfo0aCTI1E3zUXiXa5P83wiTxsEDKA3xJN0ltrVvMyy99Y70efjcSy7LN4QpijSr3o
	355VBLWKcDFuHmXMGMzkwPzm0FScVbL95qrjcYzzej9VozcHlsx6iYw4XNXuJ+QRcc1LpFVMVKJNV
	rM+DM1uww3BjRb4jW7fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8jQe-0000000H9JY-0nOQ;
	Tue, 14 Oct 2025 18:07:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8jQO-0000000H8zS-43k0;
	Tue, 14 Oct 2025 18:07:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=mbQ+ubn8SytYB/KuaCT22sbSFvRl1HpEA9kqmRcBXYc=; b=G0EeOtHG30OqAE8Lf/6S/q/BEQ
	cwv8Jm3glnxMBXgg/XtTcJaywJNip817h+Vnk6JZJ2LSDWgwoDRkv6eY9CDEI4QnDHFlK45dc3oKe
	jEs1XHkhQsGlG3Hot7xfFh/ZeSqVBNb7FEpi+r9QdDzolymCnoyRWX+/zOScB4xmfwl4k+bxsnRJU
	B7ToLcw67M1MGKBqZ2fGQiv30J+4okcwqGovj1/AkS8Qa6C0jF8Js+G/iWmSJ4/xV6qSsSJQI/RKM
	IjXplHkpU3dCtC4xSTWdzq9zS1dvmi73xl69Xt4Ni2VRC32NdY7V6LmbUUSMF00+Bqvn91gS1Frbz
	AuTLi56A==;
Received: from i53875b75.versanet.de ([83.135.91.117] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1v8jQC-0001Gj-Qc; Tue, 14 Oct 2025 20:06:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Diederik de Haas <didi.debian@cknow.org>,
	Aurelien Jarno <aurelien@aurel32.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anand Moon <linux.amoon@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v1] arm64: dts: rockchip: odroid-m1: Add pinctrl for I2S1 8ch TX path
Date: Tue, 14 Oct 2025 20:06:38 +0200
Message-ID: <176046473167.1662867.6844476664768210107.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251013152011.131118-1-linux.amoon@gmail.com>
References: <20251013152011.131118-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_110705_031383_2DC3A03D 
X-CRM114-Status: GOOD (  10.87  )
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


On Mon, 13 Oct 2025 20:50:03 +0530, Anand Moon wrote:
> Enable proper pin multiplexing for the I2S1 8-channel transmit interface by
> adding the default pinctrl configuration which esures correct signal routing
> and avoids pinmux conflicts during audio playback.
> 
> Changes fix the error
> [  116.856643] [    T782] rockchip-pinctrl pinctrl: pin gpio1-10 already requested by affinity_hint; cannot claim for fe410000.i2s
> [  116.857567] [    T782] rockchip-pinctrl pinctrl: error -EINVAL: pin-42 (fe410000.i2s)
> [  116.857618] [    T782] rockchip-pinctrl pinctrl: error -EINVAL: could not request pin 42 (gpio1-10) from group i2s1m0-sdi1 on device rockchip-pinctrl
> [  116.857659] [    T782] rockchip-i2s-tdm fe410000.i2s: Error applying setting, reverse things back
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: odroid-m1: Add pinctrl for I2S1 8ch TX path
      commit: d425aef66e62221fa6bb0ccb94296df29e4cc107

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
