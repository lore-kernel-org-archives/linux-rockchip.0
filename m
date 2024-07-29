Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49B2DC3DA70
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 20:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CxouVSG2hBHYgKwJMOHq4S9JuotXZbGbfIAz7R7KoNQ=; b=olHXFzPzsvixhy
	iYgre43ncLruTYPG8RhB3KuG/4a85TMK0TEZ1FXlspG/Lk8swtby9dIpbKUPfQ4yHE7V9v8HvwOMh
	EfHBf2Mz8vPzAxsu2PQsrCEpJWEAYsfO6W2kErYZXXWdTZx06AtwlADX382e63j1bgvZnJoWlfBB6
	jhVH04s4nymG9jTk/E1+ghtFkXbINKPLLfWIahJ6l4ClY90Les73cB9dDjO06ramPwU17D+NeZ+YB
	AI8uVvmFBeAh/JzOmAAGYckOo0g07PkDkOZD8ceerygfmM8/lVcFLWqAaZqUwLWDDAj97es9x5m1e
	+QONOppanwAm7Wwm5eYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYWw6-0000000CdeK-3lIS;
	Mon, 29 Jul 2024 20:25:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYWrq-0000000Cc6c-3nwC;
	Mon, 29 Jul 2024 20:21:16 +0000
Received: from i5e86192c.versanet.de ([94.134.25.44] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sYWrp-0007Xp-IC; Mon, 29 Jul 2024 22:21:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org,
	knaerzche@gmail.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: rockchip: use constant for HCLK_SFC on rk3128
Date: Mon, 29 Jul 2024 22:21:05 +0200
Message-Id: <172228429365.2312452.3614804571724238590.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240623215631.440399-1-heiko@sntech.de>
References: <20240623215631.440399-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_132115_035699_984F33E2 
X-CRM114-Status: GOOD (  11.28  )
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

On Sun, 23 Jun 2024 23:56:31 +0200, Heiko Stuebner wrote:
> Due to inter-branch dependencies, it was necessary to add the rk3128
> sfc controller with its hclk_sfc using the numeric clock id value
> instead of the nicer constant from the binding.
> 
> Now that it's available, change over to this constant.
> 
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: use constant for HCLK_SFC on rk3128
      commit: a24fc58198084194796486698e779963636c9065

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
