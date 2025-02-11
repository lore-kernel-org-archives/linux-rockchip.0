Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FD2AC0219E
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Feb 2025 20:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uqQixaTQz7qwX2NkxDexEy5N9f50QtQe09IFSeXJlfI=; b=iRgiJDbiMn0Arp
	2+wFVNfUcTZG0GdnihaE4/CG72XCEW5rhgTpjEDWSOa8C6A9tnShdpxuBcodt/P4ETirKkl9eLLAR
	FaRWerNGgeNvpuoHNuHghVV82tp5QZLZohimX4gSYpXa9ABgllE81rO+RThKBnDyB7VqLSAB3vymo
	9ZNbmurh1ELhUi5952OrRnJvy0xkgv+BI/TEC7E1qU4ypNhtkCZa+TYkzgJ7lx1bI072aplI9/LHn
	KhELwIyt7fsKt7Q4bKUvLmDs3yKSCnAPeO4aur1vmSCYf0aRJzssHs7O5tUIH6huEapnuN5JJpwbZ
	4i83M6/l1kgqgyJ+yG3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thwz5-00000005DWK-0VB8;
	Tue, 11 Feb 2025 20:35:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thwz2-00000005DUG-2bAJ
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Feb 2025 20:35:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=nzpzQg7exvrKsqBLdbyzVvbOq8XvFl+0SBT4HKJsj2k=; b=IaVrAjGaDOUlG0LBU+woojiRem
	73JINbkdn3LZVV4VkRy8RXjrT2k3BDnlCLpOwSUeQi5mEqsDCtqxjkUJWJtnUDoo8GjtmMs3Xohl4
	Qcm+Psf67mhoQeVoPw5ZYFs7UVuH9tRxsooMk6rADKTwChooqmX5tdNOIRwI6sR42j03OiK1W7n6g
	pc18Mrl42L7a7mWw3zE9iF+TXpKn7w9uWcU5XCSValxEf1puWEpfiVbjlOuywYwVCw7MkZH7xuiBz
	jz0Lij/dAr9s0BevDU0JB41QCGYRe0ltvENBqA8+KHM3SP1ryPc8nFtynJGT9ONSyl2/z4rBCWIbj
	9iJNaaNQ==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1thwz1-0003OL-6m; Tue, 11 Feb 2025 21:35:51 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: remove rk3588 optee node
Date: Tue, 11 Feb 2025 21:35:38 +0100
Message-ID: <173930613282.1358259.17638255312158240919.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250130181005.6319-1-macroalpha82@gmail.com>
References: <20250130181005.6319-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250211_123552_654830_6918E92F 
X-CRM114-Status: GOOD (  11.37  )
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


On Thu, 30 Jan 2025 12:10:04 -0600, Chris Morgan wrote:
> Remove Optee node from rk3588 devicetree. When Optee is present and
> used the node will be added automatically by U-Boot when
> CONFIG_OPTEE_LIB=y and CONFIG_SPL_ATF_NO_PLATFORM_PARAM is not set.
> When Optee is not present or used, the node will trigger a probe
> that generates a (harmless) message on the kernel log.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: remove rk3588 optee node
      commit: b3dc2a9315c4046b330a784c0527c671fd236414

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
