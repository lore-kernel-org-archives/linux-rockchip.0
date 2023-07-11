Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4813EC001DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jul 2023 14:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xu2s9FOuLkupmyJI0daVIAPOtVeG9g5RrbZYGI1xMZg=; b=hyB8tSozZKLo5q
	E9qXiNQoR9UZtuX8q0dPy9O2nYX9YklIauSVRHGBBNgLQkDTZRQX1AAUa7u9x3YEvmvoRxVAxlqP4
	XrPnc68jQbum1zRefNWGkSs7wa8hPa/MvDoipG9ml4NXySZ5PH0WZcWD2YpTtw51pHlbFEo44XZ4r
	xfaLW9Kji+/lFYQSJjERaz0eB2+trjBm/FMUUP2RHYqU+yaYAOQUb+lQ7azcy4RkJRtrJTr1pOzmn
	1vUBsnZbhyhNCH+EHTFfUuT/yMVCtTgFnbhbeIZ1awB4huW9deQS9AauP/kkqQB9TgYpagXbQ+3t7
	geeriL4V2uR4lkn0KZPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEfp-00FBB0-0I;
	Tue, 11 Jul 2023 14:49:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEfl-00FB80-1g;
	Tue, 11 Jul 2023 14:49:02 +0000
Received: from i53875a50.versanet.de ([83.135.90.80] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qJEfX-0000LD-R0; Tue, 11 Jul 2023 16:48:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: robh+dt@kernel.org,
	Furkan Kardame <f.kardame@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org,
	deller@gmx.de,
	arnd@arndb.de,
	linux-arm-kernel@lists.infradead.org,
	dsterba@suse.com
Subject: Re: [PATCHv4 0/2] Add support for Firefly Station P2 aka rk3568-roc-pc
Date: Tue, 11 Jul 2023 16:48:42 +0200
Message-Id: <168908688812.1964886.18351380238022459812.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230620184746.55391-1-f.kardame@manjaro.org>
References: <20230620184746.55391-1-f.kardame@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_074901_555480_A2E8BD05 
X-CRM114-Status: GOOD (  10.72  )
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

On Tue, 20 Jun 2023 21:47:44 +0300, Furkan Kardame wrote:
> Patch 1 adds the requisite dt-binding.
> Patch 2 adds Firefly Station P2 device tree
> 
> Please review and I hope it is all good this time :)
> 
> Furkan Kardame
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Firefly Station P2
      commit: a1f814f782c3c7316b42e6fee4022c64da3bdf7c
[2/2] arm64: dts: rockchip: add dts for Firefly Station P2 aka rk3568-roc-pc
      commit: 007b4bb47f44ad1f2290b3bebfd1fac3822c9b23

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
