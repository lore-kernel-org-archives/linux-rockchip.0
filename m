Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2611C021B8
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 19:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XDppITrAKYyE92Ug1RGTKYyXa72OHQJ5eh9z1Z1itA0=; b=CzOrn8xl7b6ilX
	1RGY7Vl8REGSNfekOsVkd1/yK3nl7BC+m/WickL5OL8/YYIONTRi1EwugI79r+CSy9UmLZRbYdBHJ
	akVmlJZ5ttWr+Zdlegnrw/L6AjyOqOeDeHQmWtiA4H5nmPP/5YsulOdBMfUsoDxg+s4cPIltU1AIt
	yc81FR8o4zVXIhFSprLLSB6k0iC2IRvsW9p7hmKMkbnYvp6CfFQkBLS6NupwpqVl8cJfUnSZmaN+S
	2yj3B4yceSDHl6HfwTK1p9pamrzRrWJkJh3iCzPEXW6eJFrtFxomgIzEBYHV2oCY3FgjwQ/69g90W
	rSvt/FCLuDsx92dw68eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnNQw-00000005DG9-2GwH;
	Wed, 26 Feb 2025 19:51:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnNPP-00000005D1O-0KbA;
	Wed, 26 Feb 2025 19:49:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=GLZdc6tOIF5nduifR9lrHwuFKRBnecGDrzTfzHlsOlg=; b=tYl0Bv2PGRPpK7fegZRkJEgzyn
	N6hqQI18rCeNECtz7ZuAIwrj5sh5IfSORwRKP5beUELWM/Xju/TgF/bVftDCk8Z6y3urYXgJOcW9m
	Axpu6754sDj35NWybbSk8XvUj32+E0BjlsJXhZT6+ABOXcpD2MZh7POS2i6SWykZ+j0De9GC207Uh
	+ay2sSc3dd7uOJ2SKDnEm1ZFRW5uRCxAbmIXMI4Iyt5fZYIEVQzyyhQfSOt2jnIe729giYZPhQvjG
	M+8MXaTdRZdQJOkK3cxngovLMRlxQev9pWONkgYpDCFOr43FFGRorndSZkX4+TXgVMcUsJ4/sWpLj
	JbOq7I9w==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tnNPK-0002zz-9p; Wed, 26 Feb 2025 20:49:26 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Michael Riesch <michael.riesch@wolfvision.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] clk: rockchip: mark hclk_vi as critical on rk3568
Date: Wed, 26 Feb 2025 20:49:13 +0100
Message-ID: <174059933834.4008853.3726921345547930127.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250210-rk3568-hclk-vi-v1-1-9ade2626f638@wolfvision.net>
References: <20250210-rk3568-hclk-vi-v1-1-9ade2626f638@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_114931_143453_1F4B30B8 
X-CRM114-Status: GOOD (  12.47  )
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


On Mon, 10 Feb 2025 09:29:02 +0100, Michael Riesch wrote:
> The clock 'pclk_vi_niu' has a dependency on 'hclk_vi_niu' according
> to the Technical Reference Manual section '2.8.6 NIU Clock gating
> reliance'. However, this kind of dependency cannot be addressed
> properly at the moment (until the support for linked clocks is
> implemented for the RK3568).
> As an intermediate solution, mark the hclk_vi as critical on the
> Rockchip RK3568.
> 
> [...]

Applied, thanks!

[1/1] clk: rockchip: mark hclk_vi as critical on rk3568
      commit: 83dbeca33f7422f4a30c8a91a79d6c0dba4fb6af

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
