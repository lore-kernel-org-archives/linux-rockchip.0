Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BCB2C5B552
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jun 2025 11:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jJxCyuLFR8L/wGsr2I7oyic0dAibw/SmGtCAXVfhF/s=; b=NUKPhgrZGtyU43
	9FRw16B7dk7R1t2PLmssa+TvZP9GsnlRLuINZPZUwkxj32LRoPq42DowQkP35AurIgpU5GNCi8v8V
	3alip0QTQZMIdF5owd2KsP8RDVkuVub4gfyGm2xEYMyYPvgMp3f4X8g6dSUf9RaR4hYrkxqbs8HeZ
	yarxWgA9RhUcKk4LKbQODxBJUDI3ipH7vkis+eIwQ5+jR4Eq17GygAJV4+9/BJkt9B/1RrzknNYj2
	1oefdDCFRHPidVOB5sB6hbKCHy6H63EoXraOzUX1Nbk9epIR4ka2JA0AyMQ7+SlzYp/XuD6hY3eu8
	DtEhxUzXk6DifTwmpKlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOaMI-00000003zBD-46xo;
	Mon, 09 Jun 2025 11:08:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOZvD-00000003vmL-3O6j
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Jun 2025 10:40:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=FMnfj+y9foNf3BdzVUknS9MADmvnm+mSEs0FZJCADyE=; b=1xA2jXiDJYZfqT8i8Ji0z54RGL
	UTZJ4r9YidUhskx8m29eepXqVEFd3J/R3d6vF69TF0EaKsp2c73i66I/RXOJpmURhodxeOwHoHGad
	W49+lcpL5vOobe2uI/gIem5jlWNdumEqhxLHItE5EPI6M0baE9iAcy018GJyggrbiii1IMewppJYR
	8rNMvWwjjR5YiEjwVwBuZrkta3Bb7shMl42IME2k4FhdaoGuNDdmA9957Ddu8T1AWOEcrIlGfUJDa
	JTGV+7CqAxXJ43IKBod3jQyWbZI5wuC7Yne6vZI/oBc6Ygqg6RbMROP0pVINaHTrgpbY46OeRWApo
	pbAr6D4A==;
Received: from i53875b1c.versanet.de ([83.135.91.28] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uOZfG-0006Av-Ez; Mon, 09 Jun 2025 12:23:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix rk3576 pcie1 linux,pci-domain
Date: Mon,  9 Jun 2025 12:23:07 +0200
Message-ID: <174946455534.762051.11240348467873991115.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <1748918140-212263-1-git-send-email-shawn.lin@rock-chips.com>
References: <1748918140-212263-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_034007_849788_558B2AE7 
X-CRM114-Status: UNSURE (   9.58  )
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


On Tue, 03 Jun 2025 10:35:40 +0800, Shawn Lin wrote:
> pcie0 already used 0 as its pci-domain, so pcie1 will fail to
> allocate the same pci-domain if both of them are used.
> 
> rk-pcie 2a210000.pcie: PCIe Link up, LTSSM is 0x130011
> rk-pcie 2a210000.pcie: PCIe Gen.2 x1 link up
> rk-pcie 2a210000.pcie: Scanning root bridge failed
> rk-pcie 2a210000.pcie: failed to initialize host
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: fix rk3576 pcie1 linux,pci-domain
      commit: af0f43d5d0d6e486b6a83190000dfa7ad447f825

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
