Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37A9DC433FE
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Apr 2022 17:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=povvJMCsQWDUSQIFWqXkgRUzMGRkQX2UeNBtdtFj/yk=; b=MOB/d4kz6ZNqLy
	m2KW7HZLkqzfaQFHcvlo2JHFRUvW3BAoN/tX8/S05YhDEN1xciwcPHfHxWoj11Vfnl4AdrbpB/b7R
	Qj778Wqv5c2D9b4VeS1cWjEPS/QG9hEc9oYpcBtM3DonSSl0AQO7Pl/Ua/JnP0sFBcDfWKa8x2j8L
	GlwET+TFghAEtHE7u48bzgGHbLkREIHfBxd+2uUkOyoLxy6WzWCt1xAk1uYvaIOFJq2Z183bLYAJz
	DmjKZsskXLV6naoTAoPEMdatm+1d9LoX8NfNGcaw1mBg7YLel5ZoX1AccrWNKsY1JaNdRvJksel60
	nCtzWpk56tOq4g5YeVmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndb87-005AeJ-QW; Sun, 10 Apr 2022 17:13:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndb7U-005AMI-Vt; Sun, 10 Apr 2022 17:13:02 +0000
Received: from p508fdda7.dip0.t-ipconnect.de ([80.143.221.167]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1ndb7T-0006hD-O7; Sun, 10 Apr 2022 19:12:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 Felipe Balbi <balbi@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/5] enable usb support on rk356x
Date: Sun, 10 Apr 2022 19:12:56 +0200
Message-Id: <164961074165.23152.8964489836130801474.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220408151237.3165046-1-pgwipeout@gmail.com>
References: <20220408151237.3165046-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220410_101301_058535_8EEDD095 
X-CRM114-Status: GOOD (  12.48  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Fri, 8 Apr 2022 11:12:32 -0400, Peter Geis wrote:
> Good Morning,
> 
> This is my patch series that I have maintained out of tree until the
> combophy driver landed.
> 
> This has been rebased on v5.18-rc1, several patches in the previous
> series already landed and have been dropped.
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: soc: grf: add rk3566-pipe-grf compatible
      commit: 2a872dd86eeb349f169df0a204668afa578a94b2
[2/5] soc: rockchip: set dwc3 clock for rk3566
      commit: 5c0bb71138770d85ea840acd379edc6471b867ee
[3/5] arm64: dts: rockchip: add rk356x dwc3 usb3 nodes
      commit: 9f4c480f24e2ce1d464ff9d5f8a249a485acdc7f
[4/5] arm64: dts: rockchip: enable dwc3 on quartz64-a
      commit: e432309ff8bf2a148bbdd4946ca1580c6b5b610c
[5/5] arm64: dts: rockchip: add usb3 support to rk3568-evb1-v10
      commit: d6cfb110b0fdfb4e61ef4e3c3ab89a8f21b4d1b8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
