Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B672DC001B0
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Aug 2023 12:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bj/VCwDKezicjijmC1VQVrHMjWu5By2FEFBtg4eZ1iQ=; b=RboBQfhZfEzjSz
	9Lw8SyaSqLDbCYMahJB42cxyZtvyVOpLUnCxyFN0PD/t4TqtvNCzHt2YaiiGAxyBq0DUh452Cm31G
	OoTREkkRb16wp/L19lN1B7ScuUnR2a6FGY9cTiYNPkK/MLnvY+pGWHpwLcl8xpllFcDqLBJoxPSIa
	Gocj7UPBpp4JSBvq55PU3nZ814lp4xxm7jeeyq4D5RNABvKzVkN170DbAvcc4TkrmXYR+KOzhVTaK
	zc46+fPfqCYwNp5M2mU3p37Q2rtTLQvhNbQO5PG+xDhqPdzB4y/IyeNhF0CsuLEz3rVcGlRVGT6BE
	qfZi1Chw2echmOrYgrnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUo8W-00DQhe-2X;
	Sat, 12 Aug 2023 12:54:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUo8S-00DQh4-1s;
	Sat, 12 Aug 2023 12:54:29 +0000
Received: from i53875bbf.versanet.de ([83.135.91.191] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qUo8Q-0000UJ-FE; Sat, 12 Aug 2023 14:54:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jagan Teki <jagan@edgeble.ai>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: (subset) [PATCH 00/14] drm: rockchip: Add RV1126 Display (MIPI DSI) support
Date: Sat, 12 Aug 2023 14:54:25 +0200
Message-Id: <169184485478.3621595.14307420749821320608.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230812_055428_641127_C2A76029 
X-CRM114-Status: UNSURE (   9.59  )
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

On Mon, 31 Jul 2023 16:29:58 +0530, Jagan Teki wrote:
> Rockchip RV1126 has VOP_LITE Display engine which can route
> RGB and MIPI DSI display interfaces.
> 
> This patchset adds MIPI-DSI pipeline support for RV1126.
> 
> Any inputs?
> Jagan.
> 
> [...]

Applied, thanks!

[01/14] genpd: rockchip: Add PD_VO entry for rv1126
        commit: 45c5edd7d2728d2614cf84b3d50fa192516881d5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
