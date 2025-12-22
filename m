Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E311E674B2
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Dec 2025 13:56:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l38JxU4coX2/Eacn23OCwMadWfFZSP5C9DBWianq39Q=; b=o5yr4w1teqLev+
	JaeqOnQCbFA0dUI5PIRGCu6tPAgtALzYhK+GO/TFW7UfxOFOBPrRojDNA8OzTAuoIITy8aBYNh6UZ
	LwhKFZT3PWW1rC9eL2q7Yd91jpnw5DK2+DF0p1wUo2ZBQknEPKAthdXNIAqTFwRN5NeXVg9Dtv7XB
	FZPI4zaW4Z6Bg6e6QdpGd8FcHi3o1+2JGVWyGdlDE9V1Lbu6NCfK/+cYC9oQcZsAET9ikNiKoOV1y
	Nvpgh1WGP6H7xZl5bVRSMvMUGzUP34nG91O1qBpGMpvM6Lx0/fRIBaG9bb9iUxLaJMJOZQ8UcHvhO
	DLX2d1lxUSZ+5xYDdxCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXgOs-0000000DqRH-200f;
	Mon, 22 Dec 2025 13:56:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXgOp-0000000DqQT-31tb;
	Mon, 22 Dec 2025 13:56:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=eK/p7e3fc7SsB4duKbPsHZOKCFMC2c5QBc/M4q5ovsI=; b=Q4L3gBuCZBzEg26fPqZlRTWkzr
	MdFKz0OZZcbe91brQ5tz6mes7nwc5M379wVTndK3VRBzUYk5LOsbgbEt64nQXPfy14Rso5WfKjsaM
	bUszP23NhLINiV5eJeIFsU9bGJEupqeQv729tUWQVvtQT6UPjOr7+mOlGz4+P+T+MrIvzlLxRZWjL
	HtWzpWSyyniaxihgvZ5361mDv69CdWiEF9yhP4dReRol11GVgRRD4lIVCknzh8d7hfmKYL+tV6foJ
	nHGEa+pHCHYVdSbYAL5AxykQCCTGkzaEMSgXCN1bJMMw5nqVmlsqYcLiNYWQIGmVjpGif2FofqZc4
	TIeZMRQw==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vXgOn-00063E-7i; Mon, 22 Dec 2025 14:56:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: quentin.schulz@cherry.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] Move RK3368 Lion ethernet phy to a mdio subnode
Date: Mon, 22 Dec 2025 14:56:28 +0100
Message-ID: <176641178736.1651325.8963970192002690160.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251020100757.3669681-1-heiko@sntech.de>
References: <20251020100757.3669681-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_055635_787474_306FC9B0 
X-CRM114-Status: GOOD (  11.50  )
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


On Mon, 20 Oct 2025 12:07:54 +0200, Heiko Stuebner wrote:
> Don't use deprecated snps properties to describe the phy reset,
> but instead add the mdio bus subnode to the gmac and correctly
> describe the phy there.
> 
> This will also help us later to handle a lion-specific oddity where
> the phy needs to enable its clock output for the needed mac clock.
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: add gmac reset property to rk3368
      commit: 396870f53c4e736366b4ed2e127874c30ce2f965
[2/3] arm64: dts: rockchip: add mdio subnode to gmac on rk3368
      commit: bce933a74b8e785a8090da74bee8ec3f38be40b7
[3/3] arm64: dts: rockchip: Correctly describe the ethernet phy on rk3368-lion
      commit: 1cb0958a26aeffe315a60b3cbbc56b94246cc25a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
