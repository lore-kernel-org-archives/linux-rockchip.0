Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07A36C05027
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Jan 2023 13:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bK8P86Zb2Jvc4cLIZy9wJvpQWRQ1rwyf/2sYdEBegm8=; b=qQB9wZnUD+8wBP
	axDlQe0Mcaeo+rHSrb/TVWdSqyYTQvUDbd5LChZ8E++xbYeij+FBLaAwYIPUIu7kUN7acOuSddhbX
	/FewN6qCkw+g7p8hlsFp/NUNLrtajnPoWsK+luUom37Ej0QBHnLqtnSh7pMmooXx0t0R1X3oKw8l5
	6fBpSdljZF0RfTvnw1p6k4HzD/fdtnsAWabpdsLCxxld8Ku3wL+VXeIX5AlE0/00qgzQq3e3YcAUB
	KqJr3oDmUEdVCSVBCa3tULvqtPfrMizFZqVXcMGRVz/1N7HXRp2B/lGBPUIpw1niZP54cr5qv70/u
	yQIZ3nwr7NpFcdFsnySQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM7u8-001VvZ-Bb; Sun, 29 Jan 2023 13:39:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM7tx-001VqY-G8; Sun, 29 Jan 2023 13:39:22 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pM7tr-0003rM-Vi; Sun, 29 Jan 2023 14:39:16 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: align rk3399 DMC OPP table with bindings
Date: Sun, 29 Jan 2023 14:39:09 +0100
Message-Id: <167499930029.3595793.8500719965840161860.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230119124631.91080-1-krzysztof.kozlowski@linaro.org>
References: <20230119124631.91080-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_053921_556908_779493D9 
X-CRM114-Status: UNSURE (   8.45  )
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

On Thu, 19 Jan 2023 13:46:31 +0100, Krzysztof Kozlowski wrote:
> Bindings expect certain pattern for OPP table node name and underscores
> are not allowed:
> 
>   rk3399-rock-pi-4a-plus.dtb: dmc_opp_table: $nodename:0: 'dmc_opp_table' does not match '^opp-table(-[a-z0-9]+)?$'
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: align rk3399 DMC OPP table with bindings
      commit: 65b3fb36073a1a79c0cc291281ea1e478ef388d1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
