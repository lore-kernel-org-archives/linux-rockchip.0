Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57C69E7717D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 14:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=flOT89qF8CDWzbUVECz7YZKlLfCSD04QGQKpxqTWc3E=; b=IaPxviY7YsVGzB
	ni6kQCKaR3XSLNI+5fScSlDg0j/23JUiDTln7rto7sLhOlFD1g8AON100X+6i2ApVhYxrNq667sFy
	kldWBd6wExooIXb58dlzgAEz6EhYcGmv12r3mmz+FRveTRagBFtO865XDJh8LUgyVghfvpdr0KPnr
	W5kEujlZgWNZclO1sD1pNBId398Uf5X44/tcsePGZkEqYN611VGIG63KdEsFwryX051Vm8AnqtwVj
	KDJz0nIAIgisB56YxL7j2KQdMNz4aWGB+fbJtnKkDoOXJlloX9+m3Ac+qboZl+rCR5yDLE9qaHd5J
	EjWSWtYjLRINU8OXL+pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLO6X-0000000FCiP-2LHc;
	Wed, 11 Dec 2024 14:54:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLO6V-0000000FChk-0ZLg
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Dec 2024 14:54:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=f0ict5pkgGeI+p368kbyJJKZCXQ+MeVCahfdmbeAq6I=; b=gD8uc+gjmkv9ScT6fm2P5axTzj
	4En7tUNJbvKNbGNe810TRcRO+MqsrMUpTXWTEhr/ASELmC5WbzjFDl4iw+x5nAP3kdDvlewgyEN6e
	DPBU8F1dCC4coKT+Y7ps3qe6ZX05LS0SHT/JMCkUyMBmPfnB8m0Gv+jdvT/H8L3sXa397Z+0BQTKF
	hggERW46N9l3ZfMEnhHejV5O8/RfeA+4QSFzSMho4+KUUkJdpyiGw6lwEl3OU926XEe1jmxCUm46N
	r0UzdPe8tItMOyCSOqiSJwnO4xT+WEQxSUYBE4DRqd5NJU0iEh71sAwpvaSxSuEvfwjDAsZH39mmD
	Sx1MkK+Q==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tLO6M-0004Px-JU; Wed, 11 Dec 2024 15:54:10 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Mark Brown <broonie@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 =?ISO-8859-1?Q?Adri=E1n_Mart=EDnez?= Larumbe <adrian.larumbe@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH v5 6/7] pmdomain: rockchip: add regulator support
Date: Wed, 11 Dec 2024 15:54:09 +0100
Message-ID: <3638293.eFTFzoEnKi@diego>
In-Reply-To: <20241211143044.9550-7-sebastian.reichel@collabora.com>
References: <20241211143044.9550-1-sebastian.reichel@collabora.com>
 <20241211143044.9550-7-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_065419_196953_905A33E3 
X-CRM114-Status: GOOD (  20.56  )
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

Am Mittwoch, 11. Dezember 2024, 15:26:51 CET schrieb Sebastian Reichel:
> Some power domains require extra voltages to be applied. For example
> trying to enable the GPU power domain on RK3588 fails when the SoC
> does not have VDD GPU enabled. The same is expected to happen for
> the NPU, which also has a dedicated supply line.
> 
> We get the regulator using devm_of_regulator_get(), so a missing
> dependency in the devicetree is handled gracefully by printing a warning
> and creating a dummy regulator. This is necessary, since existing DTs do
> not have the regulator described. They might still work if the regulator
> is marked as always-on. It is also working if the regulator is enabled
> at boot time and the GPU driver is probed before the kernel disables
> unused regulators.
> 
> The regulator itself is not acquired at driver probe time, since that
> creates an unsolvable circular dependency. The power domain driver must
> be probed early, since SoC peripherals need it. Regulators on the other
> hand depend on SoC peripherals like SPI, I2C or GPIO. MediaTek does not
> run into this, since they have two power domain drivers.
> 
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
