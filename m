Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12048CA0EC1
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Aug 2025 08:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9zZiR2ul46mn8mockMU/43iAlbIctTrE1hFQenNHjro=; b=p7TZfnsTCgWYTf
	Yp4Y3o0kc4Tp8ReLeCbtFWCdUgJc3ee0+N4z7bsnr5TyIDUNISVI6+wtQGTx9+yKOoFKhuVUf0ZDp
	a+qB3IT98I8xByKTLEL0dOUE6lgd+p6Gr1IoFwo2SpTlg0v+zMI5aNH94fq4X/196qCbVWZPg9Zzk
	x7yRuIBTGTKhINH3eU54MEF2ItQgldq0VVyY9sg5q5RA7EB3ObmQoOmn1mTluddb2zN9tIboSmUk8
	6NcPPUrY1VZLVjtc3xmY8Mb4WQSxQUuz0SeWd83I+hXWFOWsoiuvpzFsUXKwRK89AHKF05xp2OzAl
	/1MH3eJLxKWDLMxW0Isw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulNUd-00000006n9d-2vcw;
	Mon, 11 Aug 2025 08:02:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulNKQ-00000006lIZ-2ALR;
	Mon, 11 Aug 2025 07:52:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=nNv2nzNODaoJpRXHRjohmjISg6mTv2ptBLPCr/E1WYs=; b=oipwZOKc0aH/GypMFpRiRIjprK
	4jW6sRlTafcLv/E/uRvTYRVMwW7XOqze4pOt/6O5Ntbp4rXhFwUszxpyLL0ph77FAnYSaNHQnZJTd
	fpTxw9+e6s44efhLFMezQt65hnYYBCcGc5ZpFNqqIKaFHQslQFERDNARvDBkGWveGKpRXcQC8vMk6
	5Sk/tj0xsYzdCzQF+ex5PtOnmByhLvBIxfaNOKizBzNIDwq9D7r4t+GvGfrHEmn1nDIr7zT71ZLYA
	iHI6CtxfHPTF3SvlZhB06rLOx3oGlQfw5TNVoM+rGLWdLRoDSGpH/WjLBkJ3kPzP2LtT/E28uAnun
	rUrLBkAQ==;
Received: from i53875a0c.versanet.de ([83.135.90.12] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ulNKL-0007Ro-2c; Mon, 11 Aug 2025 09:52:17 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: jonas@kwiboo.se,
	ziyao@disroot.org,
	amadeus@jmu.edu.cn,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: convert rk3528 power-domains to dt-binding constants
Date: Mon, 11 Aug 2025 09:52:02 +0200
Message-ID: <175489870473.808197.16924579708057907736.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250620201715.1572609-1-heiko@sntech.de>
References: <20250620201715.1572609-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_005222_558303_728F0613 
X-CRM114-Status: UNSURE (   8.55  )
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


On Fri, 20 Jun 2025 22:17:15 +0200, Heiko Stuebner wrote:
> Now that the binding head has been merged, convert the power-domain ids
> back to these constants for easier handling.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: convert rk3528 power-domains to dt-binding constants
      commit: 1bce3444df79910512587a1f18022c396e9430b5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
