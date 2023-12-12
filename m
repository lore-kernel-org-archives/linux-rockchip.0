Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2ED4C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 20:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iNFDe+pcSbIgpBrElp5XRErcst3IWnh4Q2X8shTuMDE=; b=KZbRPNPeyb7rrh
	FqsE5iuTplY6r8PttGkXEtsSUlysWGADG7zcjBMDaARwXzF5jGs45zR/V+KLFL7bTnFjiF+0DFovn
	kfyWsSFKy8ec7MYV1xU3OJrN2YPUo2KmgdRhFKaN4FxMZQfVEOu5oIHos/sQMJnjUBBgfmRK2+xD2
	7ivK+klJatnAq91CaeApwv1JzsnuQSDp7cpLtbtipTWsxw3FZCI6Vd/lE5nSI7t6W41t2XgFmwlli
	gXRCBSqecIuFc6BokvnwxZLkFJMEc3u+HVXjQG6JGjt8pVq6Ed9HjFavnGJX91ZQ33LAz+VeYpMgP
	kkXJMvD1RV1G6Xe9UBdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rD9B3-00Cg7m-39;
	Tue, 12 Dec 2023 20:16:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rD9B1-00Cg6s-37
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Dec 2023 20:16:25 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rD9B0-0006LK-C1; Tue, 12 Dec 2023 21:16:22 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org,
	maccraft123mc@gmail.com,
	sebastian.reichel@collabora.com,
	Chris Morgan <macromorgan@hotmail.com>,
	robh+dt@kernel.org,
	conor+dt@kernel.org
Subject: Re: [PATCH 0/3] Add Support for Anbernic RG351V
Date: Tue, 12 Dec 2023 21:16:19 +0100
Message-Id: <170241214699.534713.2376141445523333040.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231120230131.57705-1-macroalpha82@gmail.com>
References: <20231120230131.57705-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_121624_002278_1430DA36 
X-CRM114-Status: UNSURE (   8.84  )
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

On Mon, 20 Nov 2023 17:01:28 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Anbernic RG351V handheld gaming console.
> 
> Chris Morgan (3):
>   dt-bindings: arm: rockchip: Add Anbernic RG351V
>   arm64: dts: rockchip: Split RG351M from Odroid Go Advance
>   arm64: dts: rockchip: Add Anbernic RG351V
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: Add Anbernic RG351V
      commit: cc9f1f36f114e5aa67b0cefa8807c83afd5da323
[2/3] arm64: dts: rockchip: Split RG351M from Odroid Go Advance
      commit: 488a3a537fe7f638a7e4e6c738f52b9266cbb0e9
[3/3] arm64: dts: rockchip: Add Anbernic RG351V
      commit: dc6886afad610788d611782d3e87eebda66f7134

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
