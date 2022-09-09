Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4766ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 18:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ziOTpaFvfrPT1dTWL9ub4zx4QflwDQEohNT4vsgj/5w=; b=mmt1Yzi3SPssGP
	DDwSpZvCfABJGuXHSndBGC+uSMH8X5nNY1mjp4UKoz5bm/kxlt2NglGkgG5tjH03A8A0pFJWLLIig
	sAaFKVkBq0kciN3SbSYvg8jIx/XWTr/jjnS3BnJ832CRtp9VWa0OOyFiFDDdIVmdyfs98YSWMfWbM
	F4P6lMiqHqEmK7kcVVhsqwEeVgeWtqbDdJfAX/D8eZ0HnIJjQvZNBcHmSKsOd5FdsRatduugIM9aS
	ncJH09PiLKk2Bc7GAPrg+TVwLE8iCzQ2k8WSsJZFH0DJ80jgnNtFFhic119G3mE4VcRD9G/AH0+aa
	KZMnK0brWYG2PErftOiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWipM-001Ebt-Q9; Fri, 09 Sep 2022 18:34:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWipK-001EZk-RY; Fri, 09 Sep 2022 18:34:08 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oWipD-0007Ij-TA; Fri, 09 Sep 2022 20:34:01 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Frank Wunderlich <linux@fw-web.de>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Frank Wunderlich <frank-w@public-files.de>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add regulator suffix to BPI-R2-Pro
Date: Fri,  9 Sep 2022 20:33:47 +0200
Message-Id: <166274831283.21181.15879408518357180670.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220906164212.84835-1-linux@fw-web.de>
References: <20220906164212.84835-1-linux@fw-web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_113406_950884_4C5C4572 
X-CRM114-Status: UNSURE (   8.00  )
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

On Tue, 6 Sep 2022 18:42:12 +0200, Frank Wunderlich wrote:
> Add -regulator suffix to regulator names on Banana Pi R2 Pro board as
> discussed on Mailinglist

Applied, thanks!

[1/1] arm64: dts: rockchip: Add regulator suffix to BPI-R2-Pro
      commit: bc17f2b9608fe2fdccd4fef95ef8b407f5c33174

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
