Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 186D4C7EE32
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jun 2023 17:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ljUh8CQsRiOvH2/aInUXCB+FNcPuq+7/aW80P/zU0mw=; b=Ox+sU6Lfkg+B17
	k1kF+u8yOI/VxhRt+Gps0T45v/dLIxh9CU4fcuNxu6VuLlDAj5kpsKCm4B/C5xWPCehtS0A74Ed1t
	1y1AIr3jCvT0B4HBIAOK09dH+FKThlmlR0+cDpbFLrQda9zjCVhuW+02Uhf+NMGGrHiKJwAyxO345
	wIVDQzU0hWR2YrnNcllrTpnaW4SAJ2M+FqYDH8FsvXWPQ7/2j1tks3vM7Fbfy9aiH6J6IeF6zyVyQ
	6n+4R4PJUlvL+PtWdWgdWB2ll2rEigX0cN/yXJ5Ucp93cFrsq2Xt906A2T34Z+0DfL1eIIzGArWed
	h/8Ei58WiO20+gph3gFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6a9Y-002XJG-0t;
	Tue, 06 Jun 2023 17:07:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6a9S-002XFP-2m
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Jun 2023 17:07:25 +0000
Received: from [91.65.34.120] (helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1q6a9O-0001ED-8d; Tue, 06 Jun 2023 19:07:18 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	broonie@kernel.org,
	robh+dt@kernel.org,
	lucas.tanure@collabora.com,
	jagan@amarulasolutions.com,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	Chris Morgan <macromorgan@hotmail.com>,
	yifeng.zhao@rock-chips.com,
	andyshrk@163.com
Subject: Re: [PATCH V2 0/5] Add Support for RK3588s Indiedroid Nova
Date: Tue,  6 Jun 2023 19:07:11 +0200
Message-Id: <168607097309.1436521.8094693391763212853.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230531161220.280744-1-macroalpha82@gmail.com>
References: <20230531161220.280744-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_100722_894267_3E70E72B 
X-CRM114-Status: GOOD (  11.74  )
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

On Wed, 31 May 2023 11:12:15 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the RK3588s based Indiedroid Nova. Note that this
> series is dependent on regulator support for the RK806 being
> upstreamed.
> 
> https://lore.kernel.org/linux-rockchip/20230515152044.GT10825@google.com/
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: rockchip: add default pinctrl for rk3588 emmc
      commit: 47ecb3905715a73b336103cc8d225877ab50143e
[2/5] arm64: dts: rockchip: Add sdio node to rk3588
      commit: 725c47d78ddefd04a94391fafa5f99414c7f88db
[3/5] dt-bindings: vendor-prefixes: add Indiedroid
      commit: e78a863151ede8725fcb360c627e90f76fa584f3
[4/5] dt-bindings: arm: rockchip: Add Indiedroid Nova
      commit: 81154abafbe88ca7a723e34d67748a6a514ac882
[5/5] arm64: dts: rockchip: Add Indiedroid Nova board
      commit: 3900160e164bcba23a111a3ba80f06aff7764c34

Dropped a double empty line and adapted the fixed regulators
to add the "foo-regulator" suffix to them.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
