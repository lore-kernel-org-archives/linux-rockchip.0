Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E453CD6E60
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 10:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hSYrJWW+zfE+uhSeijHvdJ1/pBEvynUBRXMPjZ/hY+Q=; b=YmzTwU4nft8k1M
	zJu2eq8ekfE5VsaMysgdZhlhch5BtGdysla9rXlxmXgomRFagYWsxw4JGjThlliRWZmkjH2SNbaRE
	zFnPZCr8cC9R0QoPHHD9PyzHdzllm13XH9V1EAtO7jzORcHtkjFtcpC2wNQWuoNi18XRJxMJzBB4T
	Jo6pkK7uf0+WdPwGa2I9yrqqnQ09ayGkQ/gf3k/8Vr+9MNR2r9wCyew6Yx7CPRdgFw1VVWOF2p6LV
	t/LRqogOidQrKPkBFAn/Na4XL1o/bo0ZOp0CxBgG1c3g0PlM8PRssJUjcch/ZUDp9p3ZGEzhWX++f
	PYiucXwkMCmqXDN5Ze3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTzkl-0000000AbCi-0kx2;
	Mon, 01 Jun 2026 10:20:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTzkj-0000000AbBN-1MV3
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 10:20:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=vih2sX10b+YArA5nJOOYULDdBvv4rp3a7PZWZiMVUhs=; b=D9ON6zcbalTLogTwXgo7c1NWnM
	Up6/GzpKX+SPOdmb5q+1aOa1+KFsx1bUtj1XeTNv5vUpxXWoQkk24E9Xx5OnWGuUzE4adybg6fioK
	AqExpHpHbg1+yiui+kZsne4Lxhn1Lk72cO0sT+Y78Iqgqfv1t8c54GYzK5LZoL6QhfdgOrybN+dUB
	2xYdR16d/m6to+Urwic488xkTO5h5WNkb29XesXxLO0Plg3rWyh8ZnoyseLVpPFUfavXimdtOPUVi
	x3YAs6v1fISNr4V0cQ7O16CzD5Z3MjF9Syqd+Rf8zqyPgaY1NoKG1el5ldvnNOczFO2RkLhpDHTpb
	XzRgVBtw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3399-nanopi-r4s: Disable removed devices
Date: Mon,  1 Jun 2026 12:20:02 +0200
Message-ID: <178030918398.239725.10006310705727779216.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260505172903.33271-1-wens@kernel.org>
References: <20260505172903.33271-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_032013_382499_0A1D7FA5 
X-CRM114-Status: UNSURE (   9.60  )
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


On Wed, 06 May 2026 01:29:02 +0800, Chen-Yu Tsai wrote:
> While the design of the NanoPi R4S is based on the common NanoPi 4
> family, it is trimmed down a lot.
> 
> Disable all the peripherals on the SoC that are not used, and delete
> all the external components that are not present.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3399-nanopi-r4s: Disable removed devices
      commit: 8333fe46b0010d110b36f1628dd8dfc77d2c389a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
