Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 284A9C19F2E
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 14:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w49BdzUwGNb4Af15WlwsTewbxjp9Gvn5w06WWy9jeLA=; b=DjM5zKK1W6Co8O
	88dfbGbSmipL78ylMvTEzmt65Z77nwPawMaHShSoq6vRDZds+sGkohJ8JSgQ2zIAgiYXtk2OuaF3K
	B/Ger6qNhuOlaSSvDK1/CylfnsnBHiy74avaGxK6nuXwuJ7b5QKZHEMBSLVmhXJxp3hUO9CI4zpEn
	t215ltU8udiEx1OIpkiUnBfgbcbNVVNR3KjHTj0iKcAv67ONfeghpRjyL8nZcHNTziOvjEOid6avD
	80EC8+TqvMQMzm6z7GAqHLnikeKU6xwaDe1KVDqS8+QmmdugMpvIMRhJeD00mv2PaZBGRX2OOSJ9o
	lSy0V+0Rb2UJ1ycSPBFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnf1r-00000007leD-0DIe;
	Thu, 27 Feb 2025 14:38:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tndxq-00000007XXg-3AXB;
	Thu, 27 Feb 2025 13:30:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=rSW8vY1Lz82V3O90pR+pYsVexANwdbEdqaogjvgFhUU=; b=bBg4Du/fOsVoASBNeammEzgOX6
	sMwnZjf9NZkDzTj0cYQWJKCGLoYwFfsb8lyIMEzuKr9THey0k5TY3NOXcFWBpRjR2gyqwzEB1xfgt
	2mBOE5B+A0xBANnFBluQp1wGNR3GIRcD4VVQoL7jIOD9zrA0lja4silnhHjmLUOQDFCh91j4Ha8d+
	aHUWajsW9QhBqZtEH3vh5w3zEtOrIbKaMBiy1z8676q1pJClEF8JHcRjK8sKSijfqPME9MXepcKVM
	887gCUSJLrgZHBu0C9u7QuPlu9coFLqydeNZg8nxZ8mpwzQgEA83dGtAhmc1WpP3b2GOGyNGj/p0r
	VBi7lk3w==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tndxl-000163-FM; Thu, 27 Feb 2025 14:30:05 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Thorsten Blum <thorsten.blum@linux.dev>
Cc: Thorsten Blum <thorsten.blum@linux.dev>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: rockchip: usbdp: Remove unnecessary bool conversion
Date: Thu, 27 Feb 2025 14:30:04 +0100
Message-ID: <6199846.GJh79HuArf@diego>
In-Reply-To: <20250224220339.199180-2-thorsten.blum@linux.dev>
References: <20250224220339.199180-2-thorsten.blum@linux.dev>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_053010_800979_C639B5CC 
X-CRM114-Status: UNSURE (   8.03  )
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

Am Montag, 24. Februar 2025, 23:03:39 MEZ schrieb Thorsten Blum:
> Remove the unnecessary bool conversion and simplify the code.
> 
> Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
