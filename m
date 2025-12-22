Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1089E674AF
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Dec 2025 13:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bb3r9Mp1rD9NJCBHaUb+ZUfpNMKY/pQmTGIfIUvxyUg=; b=M9fYHxmEXrUQgt
	3dcuK+cXwjYan70J+d94Dplef1lNTXuSkQA3F/3iaWj16ciRKrj47IZzrEF7ogzJy1pK/zXhozVoY
	xhzTO3EdnM4u2V3OH457U6S6cQRUK+CTkhYiPG55/ADQ31lkXQe4Na4YsGuDR61IAWS6oI3HJcAeK
	9rwc9SHTJugG9hEV9aijGgLykZEquqsT2yRhvFs0/swtXsoW/IrjTvAJX0at/sYAXJxp5AEvvJlT3
	jgU0/UrH7z2gVHPgzCzFM0U0OAzGvG13eWr/LCtZpB5JThmyL4r73UwzTaufDgDmcr6/5WjVwLn6l
	CXdsQUq3xSIARNvgNA+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXg7V-0000000DovE-2Zvh;
	Mon, 22 Dec 2025 13:38:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXg7Q-0000000Dosi-0TUG
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Dec 2025 13:38:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=yvkwNESGL7QxraofkI5HyvpjT7q8OAzBvQiTNY16Mr8=; b=2WHCm6VO/bnFpxeh206BVJZAmK
	s8f3bYXzfJls8MKHU/A434itQzR4RygwXs0/KaUFan2TTIul+G+tfZRj9RxGr01q1a35ZedC/JbhM
	YMXunHQuQXk9T8H5kG7eRVoBykrLXXb7mHgLU1hRSpDwXM9zTqIDTqVC6t/3otUfurVYE64lic3Yo
	2t6v5isJCzv+XaT9aAbrpeiHAlVzj6gxqgWyx56zCq2rDQ5zGlOJPuOoNjIrlZRza20cRuLPd40H7
	d2GLAHc+bbC892XQlBt7tapZgLamkDmp5MGtbPjMIWlup4/wRfzqHTzP7pGbYDIKi8I/hPfcY23rj
	7GJotPlg==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vXg7M-0005s2-19; Mon, 22 Dec 2025 14:38:32 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add dma-coherent for pcie and gmac of RK3576
Date: Mon, 22 Dec 2025 14:38:27 +0100
Message-ID: <176641067350.1648325.3747052157871496482.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <1764313762-78063-1-git-send-email-shawn.lin@rock-chips.com>
References: <1764313762-78063-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_053836_540275_C25E177F 
X-CRM114-Status: GOOD (  11.11  )
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


On Fri, 28 Nov 2025 15:09:22 +0800, Shawn Lin wrote:
> The RK3576 SoC employs ARM CCI for maintaining cache coherency
> between the CPU cluster and high-speed peripherals including USB3,
> SATA, GMAC, and PCIe controllers. While the USB3 and SATA controllers
> were correctly marked as dma-coherent, the GMAC and PCIe nodes were
> overlooked.
> 
> Without dma-coherent, the kernel falls back to software cache maintenance
> for DMA operations, requiring explicit cache flushing and invalidating.
> This adds significant overhead that degrades performance in high-throughput
> workloads.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add dma-coherent for pcie and gmac of RK3576
      commit: 2d6fcdcaf42671dd3fb281d7a2e5ea985af11ce5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
