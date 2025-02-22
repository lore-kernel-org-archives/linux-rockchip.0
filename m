Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C24CC021B2
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Feb 2025 23:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7lAvY8s3A7wQ7YbO3QykE5rFgJSCnwNIY/CqmIsFoLg=; b=ZX7XQIM2bF8h+7
	+j8Ev4DB5ddJHKVH+GevNWzHkdcZN3mhCKjgiE4l52rh9jBdS6VllGIIoecpKVhc+aqh9Pl7sAUxH
	JeLGbVoaIQcewWFWrZylyiuASEG4pu5gHpPHv3EM3lmlJvpIX7kFQUK319gqPCvN/1AVZw559y1Rq
	gN7rA/QHfxSaZ+UJEsxrDJhRuffQT9XUMAAibF0RCpzEDWIjtJ0B0ZosZeWjZhyMS9jQosiY9KEzC
	yJ7Z8EMCGh6poNzlM5qPSM+I64cUK4dk7uM/YDeLJ2RnQBEymo6lyEcTLnA33xMOr4/PrDLLoyJmb
	eU2YBP5QiK3f4A21VuiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlzIu-00000009K9u-0Kg2;
	Sat, 22 Feb 2025 23:53:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlzES-00000009InK-0ycF;
	Sat, 22 Feb 2025 23:48:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=5tD/n9p77JLIQnsXhSkhebyHF5kKTn39LJUodlTkHgk=; b=1M2KCIl0fzgWFlfeseAap/GMIX
	UBEUlJlSaRdsFDrhiemPWzgPVbx3B+LnJp0y7LMlYUPIXN7biIF5TKPpCZLGidhJG8ucDkPv1ZOmk
	/a3CK2K7NwJ9PFOIWlcOzM+XabT2gzOqXrQ2JQmjw/pd4dSSUR0lWKNcxq7HOGIUoKHxqUrLe0RgK
	adKjocvTDFbO7Ib20w9J5J3Wl3CBijPs2WesLDymFn9sYj06Lcmir+jW0GY1q0lTu7lkWr4i1ruem
	PpVfcSJ3KK11Az330+SuBgBVKtrR3PWsfM/KcZe/tuVH6wYLepY33t5bq4vOKqjzvw5yOtyUvXUY0
	6/A3lznw==;
Received: from i53875a10.versanet.de ([83.135.90.16] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tlzEO-0004TL-QF; Sun, 23 Feb 2025 00:48:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Farouk Bouabid <farouk.bouabid@theobroma-systems.com>,
	Quentin Schulz <foss+kernel@0leil.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Quentin Schulz <quentin.schulz@cherry.de>,
	stable@vger.kernel.org
Subject: Re: [PATCH v2 0/5] (subset) arm64: dts: rockchip: pinmux fixes and support for 2 adapters for Theobroma boards
Date: Sun, 23 Feb 2025 00:48:18 +0100
Message-ID: <174026756671.3008209.2772154778070237628.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250221-ringneck-dtbos-v2-0-310c0b9a3909@cherry.de>
References: <20250221-ringneck-dtbos-v2-0-310c0b9a3909@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250222_154828_269733_6D4B5C5F 
X-CRM114-Status: GOOD (  14.39  )
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


On Fri, 21 Feb 2025 15:04:32 +0100, Quentin Schulz wrote:
> This is based on top of
> https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/log/?h=v6.15-armsoc/dts64
> 6ee0b9ad3995 ("arm64: dts: rockchip: Add rng node to RK3588") as it
> depends on the (merged) series from
> https://lore.kernel.org/all/20250211-pre-ict-jaguar-v6-0-4484b0f88cfc@cherry.de/
> 
> Patches for Haikou Video Demo adapter for PX30 Ringneck and RK3399 Puma
> (patches 4 and 5) also depend on the following patch series:
> https://lore.kernel.org/linux-devicetree/20250220-pca976x-reset-driver-v1-0-6abbf043050e@cherry.de/
> 
> [...]

Applied, thanks!

[3/5] arm64: dts: rockchip: add support for HAIKOU-LVDS-9904379 adapter for PX30 Ringneck
[4/5] arm64: dts: rockchip: add overlay for PX30 Ringneck Haikou Video Demo adapter
[5/5] arm64: dts: rockchip: add overlay for RK3399 Puma Haikou Video Demo adapter

I've not taken the uart pinctrl patches, as they seem to conflict with
Lucasz' Ringneck pinctrl patches that moved into 6.14-rc now.

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=4eee627ea59304cdd66c5d4194ef13486a6c44fc


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
