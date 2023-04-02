Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E428C7619A
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Apr 2023 14:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=saTx6sOIMCxctxsVJaxCkp4NEqKWHvdD1nk1hQVNtjo=; b=Yv2r8B5jUDegWE
	d4OVgNu4K3bTWy2Hs73jyiaAR5Q4GHXhvRVuuNiK5+veALTNczqYn2tnblW/szG0psrhttnZCDDZ2
	eOkYQL/fV32gr7Ag4Anl1IjgfcsvGgy8cJX0aNm9T31jMatB9HQzsfaZx9U16lwc1HdF3lVT7MGiJ
	w/dINogMZH4lMBjLWwK5VdenfMEwJtb8XKKj884b9CbF08lkhJgdqnG1COSR8RijbuAHDsD3gwnF2
	aXEOxW72sd/5e401+gFmbqbJ5YrDHRV/q85QK/sHvI52m45yDu7rtE/PUhiP6MOx9zZh6Y9LYbVmA
	nsKacaq1++alVl6rEmqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piyni-00CdPI-1y;
	Sun, 02 Apr 2023 14:35:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piyne-00CdN8-1a;
	Sun, 02 Apr 2023 14:35:19 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1piynZ-0000Gv-Nv; Sun, 02 Apr 2023 16:35:13 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: mturquette@baylibre.com, sboyd@kernel.org, abelvesa@kernel.org,
 peng.fan@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject:  Re: [PATCH v2 3/4] clk: rockchip: Remove values for mmask and nmask in struct
 clk_fractional_divider
Date: Sun, 02 Apr 2023 16:35:12 +0200
Message-ID: <2235297.tdWV9SEqCh@diego>
In-Reply-To:  <58e1950566e40e2fbb31004baee57a164ca6a390.1680423909.git.christophe.jaillet@wanadoo.fr>
References:  <cover.1680423909.git.christophe.jaillet@wanadoo.fr>
 <58e1950566e40e2fbb31004baee57a164ca6a390.1680423909.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230402_073518_525932_DC3986E9 
X-CRM114-Status: UNSURE (   8.51  )
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

Am Sonntag, 2. April 2023, 11:42:06 CEST schrieb Christophe JAILLET:
> Now that fractional_divider clk computes mmask and nmask when needed, there
> is no more need to provide them explicitly anymore.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
