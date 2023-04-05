Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBE81C7619A
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Apr 2023 17:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ms9IscRf8RmIZ5eruSoe6uRgiRe1vbY80m25H+LFlbw=; b=2EvoQvU4UieQlz
	+Ds5cg91Xs9Z3zukO8zIo/tgH6XEAIXplwIbZ3uvC9b61tmevTyJcqptJVxVxOIC9OupE63NX6QcG
	cYmpglwkARYZsLCDQFr8PtztLxV2fcwn0FpVxNxF+FYpyDW7S+gb7QCIByuTl/U8MaI/KxSRzaCWB
	SvY3w5zzIHHzjQvPEpD/eb8fC8iVshZEQlT8nTDW7eJIimAbTl2Dclr08ntiAbUXK3uR7gGuDH28H
	gg3K0FkKZRuk47e+dQHh+o4kyfrS3CxOwDtOQsQcQp6whuTqrB5FCetPmO0Izxyvzu/Qj8gkBLe24
	hgoVBNhJYvPBHtNiEAog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk7D7-005IBc-1T;
	Wed, 05 Apr 2023 17:46:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk7D1-005I7h-2h;
	Wed, 05 Apr 2023 17:46:13 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pk7Cu-0000Me-44; Wed, 05 Apr 2023 19:46:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: correct panel supplies
Date: Wed,  5 Apr 2023 19:45:59 +0200
Message-Id: <168071663561.3186456.11700069193169074843.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230326204520.80859-1-krzysztof.kozlowski@linaro.org>
References: <20230326204520.80859-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_104611_875116_BE24CB55 
X-CRM114-Status: GOOD (  11.24  )
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

On Sun, 26 Mar 2023 22:45:18 +0200, Krzysztof Kozlowski wrote:
> The Anbernic and Odroid Go have different panels and take differently
> named supplies, so move all the supplies to DTS defining actual panel to
> fix warnings like:
> 
>   rk3326-odroid-go3.dtb: panel@0: 'IOVCC-supply' is a required property
>   rk3326-odroid-go3.dtb: panel@0: 'iovcc-supply', 'vdd-supply' do not match any of the regexes: 'pinctrl-[0-9]+'
> 
> [...]

Applied, thanks!

Applied most of the series as fix for 6.3, but split the first patch into
two, as the Odroid Go3 display support only got added for 6.4


[1/3] arm64: dts: rockchip: correct panel supplies
      commit: 60a655debd36e3278a46872accc1a51a54f94f02
      (fixes)

      commit: 07099a551803e05d3ee42fae152bf404f8dc21f9
      (for 6.4)

[2/3] arm64: dts: rockchip: use just "port" in panel on Pinebook Pro
      commit: 5438b349c0512a6fe023976aad8b9f19ca671dd1
[3/3] arm64: dts: rockchip: use just "port" in panel on RockPro64
      commit: 2dd16a23e8c687bde605dbdcfedaed97bb2a0c0e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
