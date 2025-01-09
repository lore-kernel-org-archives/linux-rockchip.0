Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56140E77197
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 16:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p1An/s9Ln2UjBKIJ8m7bVqruHIgYPFMGMyC1qhIDI9E=; b=0PKJbPYvEclwkJ
	8RlAItnAGuQa05tr9DoV/IY/hpJDvstmogW84AW5+Jpr+2k0ZRTPNlDteZylENfj8C408IHmyYc9n
	g3nfZ/ZGmrwl88Qd975VX5HLoefzsY2aGOxDQez78ZjNWN0ADRXPTwkRgL8wF/UWdlqGaIzGISl3K
	6ctALoT8ntkD0FPfMj/hUyQx8UDVrStdT2bUr23a4kJHX0LOndl4I4f061hymab4jk1g598Jtcb2Y
	wGNkW3YuIjA4Zc1+Cq/QW0E5x5fT7x7uns9wjA58rgaey5cT7ngDX9ZYHBd/1h3Gj+wus3dJ0d53s
	rZZZ/HVYCYEuncetipog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVvsQ-0000000Clfc-3NcJ;
	Thu, 09 Jan 2025 16:59:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVvoj-0000000Ckzb-2Qqc;
	Thu, 09 Jan 2025 16:55:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=MUlm511Gw6bfAKIjKAuptGEWtpuyyApd/0usSGPr4Ss=; b=JW/9qBbBthVjUXuTF2VIHsrJMY
	9I+98CZ+krOTVpX+WqGVAJuGPqnFGLQ2wv5CDmrSacSh5shptRVeHGuByG2nIx/hlAPtK/EPoR0PE
	O9P+M2O/Cfwh8wsHH+bP0WiZ8Fy+FSHew4QoUCh6Z/4drJcHh7veco9nM63E8WzvuCD1k8t58KpWb
	dBlPGeE7D97DQ/16ozDLzsikrO2pKakHYwxWOvS+h/Gc1hGuR4sT6vxAAvlMBqWtoSNwZ8s8VttA9
	CMmYDy5+Bt/jb2qGAfqnhGxFw0vNE9xW53ONJk21F3dSJzb/lSZRPCtbgRWtXsQkontwgaxENTQ62
	5PNOUGNg==;
Received: from i5e860d05.versanet.de ([94.134.13.5] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVvoh-0003hx-TU; Thu, 09 Jan 2025 17:55:31 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	quentin.schulz@cherry.de,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	linux-clk@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH] clk: rockchip: rk3588: make refclko25m_ethX critical
Date: Thu,  9 Jan 2025 17:55:17 +0100
Message-ID: <173644170631.2899934.14400201527459535334.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241214224820.200665-1-heiko@sntech.de>
References: <20241214224820.200665-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_085533_632380_0E9F52EA 
X-CRM114-Status: GOOD (  10.69  )
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


On Sat, 14 Dec 2024 23:48:19 +0100, Heiko Stuebner wrote:
> Ethernet phys normally need a 25MHz refclk input. On a lot of boards
> this is done with a dedicated 25MHz crystal. But the rk3588 CRU also
> provides a means for that via the refclko25m_ethX clock outputs that
> can be used for that function.
> 
> The mdio bus normally probes devices on the bus at runtime, by reading
> specific phy registers. This requires the phy to be running and thus
> also being supplied by its reference clock.
> 
> [...]

Applied, thanks!

[1/1] clk: rockchip: rk3588: make refclko25m_ethX critical
      commit: cd8b5366636bdff0449b789fb2d33abb20804255

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
