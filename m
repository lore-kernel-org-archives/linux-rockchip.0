Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4424E606A32C
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 22:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dp0NLVoy;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=JEDs5hS+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=VX/rtTdH0YxdDywNMV6iE//tilYmMVJ91h44ldyVXXI=; b=dp0NLVoyoCQBhi4zD+lXEJy1tf
	S3y3i6q8HkwtPAD/sZXNYJc/Ab87tliy8sUy+c5+u4O2+CiNBttx50hiOgz1FjjAFQ2RtWFN+tPia
	5zyYfcH4oFmSlmkjI+m2oxcRYgU5Nb9/PbsGxDYSIUL/omHjLMkzJE2yKfBnXQczgDzzuJs3xLTnL
	IRZQW3zaH4tE2XSHtfkTzbHwMnQng7VLN/03tw9uY3X5vGiDul2o5aOTNjWeiQKjv/WRAtglxc1XO
	wsBT3vREVgFg8cKcFIdKpazQglsbHMohHGMXuUOKN6LSsJjoU43A4LoFwEBb7q0HPM0W1EHgkkrVS
	0xg1lz+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdsd-0000000F6GK-2sro;
	Sun, 01 Nov 2026 22:18:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdsS-0000000F0Xu-35Vk
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Nov 2026 22:18:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=S2s+4JdjjEeOFEP8ZWyRwRLvfKHbTdhwvT6E1sN0k7A=; b=JEDs5hS+q4zd/+QR6XSdNL4HmD
	cLw/K8XDCmRr8aV/Ietrn5JN9+/Vewcr/gXthGsu6VDAOiB4Buhx1JWc+rhEXeWKCFp85G4aeO0sM
	xWKyJW7Ore2VfXk1mSmu9m5BQVJMnuSEU8MABcFoxMKqAsHKEJcHt1OUuiVfKTeMbU8j0qq2UyeiR
	ynNct0j1ajr6ZOKLRMzTM0n4KBoO6latcs2SbnDtj8BCNDJNu6KQEtsv+3bVH5VQiqtmfcZ0HUn/q
	vpz7EwtpqLJ599TE5T3RDyLzNxZKBka2bGbhYyvuiDGv5KOBi+NiUociceGYiZZHD6V+gKXEIErAh
	QHXKqIVA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney+clk@redhat.com>,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH 0/2] Two fixes for clk driver of RV1103B and RK3562
Date: Sun,  1 Nov 2026 23:16:36 +0100
Message-ID: <179357139332.4108484.2588788612920888710.b4-ty@b4>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <1791641839-74584-1-git-send-email-shawn.lin@rock-chips.com>
References: <1791641839-74584-1-git-send-email-shawn.lin@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_141812_791312_892437AD 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Sat, 10 Oct 2026 22:17:17 +0800, Shawn Lin wrote:
> They are basiclly copy-paste errors from the initial submissons.
> 
> 
> 
> Shawn Lin (2):
>   clk: rockchip: fix wrong gate register for clk_gpll_mux_to_ddr on
>     rk3562
>   clk: rockchip: fix wrong PMU CLKSEL register on rv1103b
> 
> [...]

Applied, thanks!

[1/2] clk: rockchip: fix wrong gate register for clk_gpll_mux_to_ddr on rk3562
      commit: d317c599db2f8649f6f14408f34788d9f78737b5
[2/2] clk: rockchip: fix wrong PMU CLKSEL register on rv1103b
      commit: e937f8ec9317dbee4669d323d955ec26cd8dbcef

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
