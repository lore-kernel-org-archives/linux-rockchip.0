Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D0CFC43458
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Jun 2026 19:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sgkZVcnOBqNYDGrtLfvtskBHMk6EMl21sekrE47iEmg=; b=ofz5909xy8F9C/
	hWw3bXFkKUP8Md5rMyOu+CwQYUtnjKuKdhZUaZz08/8S5hbZLHcIthdHic6TxUmzZhVD3YlyGuC0u
	zHz9XBE4w1O/s/1wPOcRb1ijja1it4owqiS5pncz4vGemqinDPgPpDajKyTTmAPpsDCmkTDYZBIMg
	w8lVPzCJVmQveZu4Tztei1Zyz6gtvThGlMCCPhDZIqE8dGM+030p0J5YCoJspR5Qwnvpn2EctuCfW
	qpCYqhJHzbB+coA6Du+jlaZfwv1qavq66exFRMASsPhpY5z8NoSUBsgcBJz5XV/XnY6GyzGROWTmF
	n9kXhszt3BYGdLMVx81g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdux5-0000000DJK9-35TI;
	Sun, 28 Jun 2026 19:13:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wduwq-0000000DJEF-14ud;
	Sun, 28 Jun 2026 19:13:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=oKHWu+eAIE/CZIjLM4PqfERbb2g3EF/Ptw0DlJwxfEM=; b=Mk26mecoq6LVnqwkG20VoTOT58
	yjzkv4G6vhY8fd4Ezlx75RVUft6+m4Fw8lM2iM2joFBRYdfWQSPAAgtBCz83xS/1CtIUAeLLhUUbQ
	c2nfEhhoUeZTH/smRNmwvxUdmvmvkiZKD1bDU7sFRQQR6qNPKkXXfvjtaxEs5FOVBvO6kzn/16Xr9
	arDNpj7OIB6/w6HxaX92wFd6Bfucp9EyZj0+NhKG0Z7gfY/6s1HdXdXNvZ8/n13X0Omk4SrDovtC1
	aGu3/HoWDX6NOjUexXyb3VI4VxlccYEGa0KLJtvZ+KE4ohZr4fotQ5DVtEilybUuf72lnpJSIrILy
	fxDzyZ0A==;
From: Heiko Stuebner <heiko@sntech.de>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Daniele Briguglio <hello@superkali.me>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <diederik@cknow-tech.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Ricardo Pardini <ricardo@pardini.net>
Subject: Re: [PATCH] clk: rockchip: rk3588: don't disable unused I2S MCLK output gates
Date: Sun, 28 Jun 2026 21:13:24 +0200
Message-ID: <178267399833.3089434.5140309637329023610.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260624123914.1767374-1-hello@superkali.me>
References: <20260624123914.1767374-1-hello@superkali.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260628_121344_302781_743CC1BA 
X-CRM114-Status: GOOD (  10.42  )
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


On Wed, 24 Jun 2026 14:39:14 +0200, Daniele Briguglio wrote:
> No in-tree board references these gates yet. Boards drive the codec
> MCLK through the parent I2S*_8CH_MCLKOUT, and now that the gates are
> managed clocks, clk_disable_unused() turns them off at boot. On a board
> that relied on firmware leaving the output enabled, that cuts the MCLK
> and analog audio stops working.
> 
> Mark the four gates CLK_IGNORE_UNUSED so an unreferenced gate keeps the
> state firmware left. A board that wants the kernel to own the gate can
> reference I2S*_8CH_MCLKOUT_TO_IO from DT instead.
> 
> [...]

Applied, thanks!

[1/1] clk: rockchip: rk3588: don't disable unused I2S MCLK output gates
      commit: 946352b2f88fd2378f0341312e47dff1e8dc2fac

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
