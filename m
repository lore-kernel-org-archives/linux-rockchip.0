Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87215C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 20:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aujqP+RsJRw7/LkYNpvf2oAFEaSozVGlURPYL57NP44=; b=X8tC3Cq1uZgG2h
	mSZnpr4EA6yrnIZ9BUR1pbDbnLJ+NGT1jSoB8O6ckB5liqMgF38GEhC9pyEK283UwDP7JBkwULrlH
	1techJwmIusGi/97V8tZlTXAC7YyBHQaONFqwmDxRL3ZkF+EMLtJ1aPrcxVXGYUp8dOpCZtT4Is4U
	aK5O1mZl96ni6KeKzmaxobxrAZBYUQzgyZM9A+WKMG/CkRuPxHgZjFiAYwWBVGksY4Q6J0Foe/SVy
	fUj8T52PzqQyK9KaTnHEiGWpK2PG/WSoEUvefRZHFKwklyTgN2xKQoaK26X+xLIsMDUkIoJaYqSwN
	nOnlaPf4LAoToCSSz3Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1segvz-0000000AyA6-3GC0;
	Thu, 15 Aug 2024 20:18:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1segvw-0000000Ay8M-0whB;
	Thu, 15 Aug 2024 20:18:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=KKgkR8ojg4wvNEdG2ZIzvqY8AZXl6+a4eWkFHmnNGLQ=; b=dJrKcURpBeeaDIq0qrO5P5Q7Vh
	6Q0PTYOmKsCZP+pl+Maj+k0ww9sSDQHUz80HnRF+m5DbLb4zBPQJRrzr633WWDikx8y/uqchFKj9p
	MV7uaN7pRfk7cParKKZ9nYBBifYpR40Yj1ZbJz3N1IGePDeMrIH9i1E6ceC7xIcO8YBhCXLpCnPx+
	N1vyNnVHBUjTZ1gnU5rRSCVzeJyztGwfZPv01W7ol9SAGOtM4HfmW/VUjeTBmiPofH78EoC/P8bKJ
	0rLFk/cu612UzgKYGr5y1t90Gqh3pnT/8yZPm+tRCa3nZSJCnnDzGZn+DxXfTg96kTBJrodp6jP2q
	mSNIphfg==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1segvn-00089v-Rc; Thu, 15 Aug 2024 22:18:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	aurelien@aurel32.net,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: drop obsolete reset-names from rk356x rng node
Date: Thu, 15 Aug 2024 22:18:44 +0200
Message-Id: <172375308158.820196.13213858925251248943.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240815162519.751193-1-heiko@sntech.de>
References: <20240815162519.751193-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_131856_310369_CDB91B2A 
X-CRM114-Status: GOOD (  10.06  )
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

On Thu, 15 Aug 2024 18:25:19 +0200, Heiko Stuebner wrote:
> The reset-names property is not part of the binding, so drop it.
> It is also not used by the driver, so that property was likely
> a leftover from some vendor-kernel node.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: drop obsolete reset-names from rk356x rng node
      commit: ec532f3591ce6e6ed5ec6c35773a66aae118e1f0

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
