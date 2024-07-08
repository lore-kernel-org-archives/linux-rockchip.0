Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D003C3271E
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jul 2024 14:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hBj+pkOiLEfOg+JnlmvG+6BzDUzhC8Ql+1ylpwud6SA=; b=BhDWSM3Jmgp2lm
	oeVNBg8sAIDO9kFYZqFGJEWX11GQLWl9PriHk9XoMTLnyRMtbSvQ+3cqjFVdy7na2H2+4alz7ik3e
	mNt/MDqpZYjybv+jmABNkpSsSbtV0thcnJdx+9TWIzAcSQ9d6T8qrHkv34JEQvDZ34sbQbY72bup1
	iZ2OWaYF9EtygmxxvO7APQg/a5LaxceCahFi27tgSMOpTT/AGcl5157zL7vD2nAc3l2fNNRc+Mqms
	oO6yY0UgIUUCKOcgz2ZMbhBslpWdYgaRNVWwrQqO1gBqPs37vDIAeWGCTPcK9MofS7KBa35XoHIYA
	fHY28tqNJThgnIPb00UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQpLo-000000044Nz-2ipU;
	Mon, 08 Jul 2024 14:28:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQpLl-000000044Mr-3xMt;
	Mon, 08 Jul 2024 14:28:19 +0000
Received: from i5e8616d7.versanet.de ([94.134.22.215] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sQpLb-0001Jx-6W; Mon, 08 Jul 2024 16:28:07 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	dsimic@manjaro.org,
	linux-arm-kernel@lists.infradead.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/2] ROCK 5 ITX devicetree
Date: Mon,  8 Jul 2024 16:28:04 +0200
Message-Id: <172044883547.1350787.1426755647757179113.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240704153815.837392-1-heiko@sntech.de>
References: <20240704153815.837392-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_072817_999512_EBC4ACEC 
X-CRM114-Status: GOOD (  12.30  )
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

On Thu, 4 Jul 2024 17:38:13 +0200, Heiko Stuebner wrote:
> Add a basic support for the Rock 5 ITX board.
> 
> After struggling a bit with the pcie3 ports, thankfully they seem to run
> pretty nice now thanks to me finding the property for the shared-rx-clk
> for the pcie3 phy.
> 
> changes in v3:
> - better sorting (Diederik)
> - fix usb supply (vcc5v0_usb is not a supply of the usb3 hub) (Alex)
> - drop type-c sink elements, type-c cannot power the board (sigmaris)
> - add links to schematics (Dragan)
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add ROCK 5 ITX board
      commit: 8687469a51af609ad4180c3ac2624b836fd55ff8
[2/2] arm64: dts: rockchip: add ROCK 5 ITX board
      commit: 31390eb8ffbf2b6be7d789708ec08b635d7a3eb8

Dropped the disable-wp from the sdio node as suggested by Johan.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
