Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1D66CD128A
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Apr 2024 21:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zOR3m+OXOTsLSEYKkDpb2RdYP9ISyjQ99WTYsDjKLO8=; b=FTOfSbO0wyvQR9
	By7A2PEWYqwhTCbi3vqQM3NYyDrkYTIkqP2cm+tZQkgW6KVpmaampemCGQ2RUhWAR2jmCLVJ4U1G9
	NjoyI8e9OWQcS90qtje6Mb3Skd0/n9BU1wVKLMVxESjvNtjOMb7YeYHYGev3zTZXuMk1oXP1lsMhm
	i04FeinXI2QNBu6Sqrem0oYkLx6xyVCp9sn8YoAkO6jkezrxVtMWGU2sWzXhOmGJ4dKcTqDNs9hgQ
	kd5hSNjNPiWC9QHH1WZtOUQ3jV96ApQl5Rz7XPqfuzko1PA+1kczWmLuwmpXD/9JBcCzNZ8Qu8kvC
	cdHlLvZUFkPk1e/lBTGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrPd6-00000008weq-2TzJ;
	Mon, 01 Apr 2024 21:55:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrPd4-00000008wcz-1E4a;
	Mon, 01 Apr 2024 21:55:47 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rrPct-0008FL-J2; Mon, 01 Apr 2024 23:55:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Remove unsupported node from the Pinebook Pro dts
Date: Mon,  1 Apr 2024 23:55:31 +0200
Message-Id: <171200852040.1394042.4883299945962544319.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <0f82c3f97cb798d012270d13b34d8d15305ef293.1711923520.git.dsimic@manjaro.org>
References: <0f82c3f97cb798d012270d13b34d8d15305ef293.1711923520.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240401_145546_354841_93685E44 
X-CRM114-Status: GOOD (  11.95  )
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

On Mon, 1 Apr 2024 00:20:56 +0200, Dragan Simic wrote:
> Remove a redundant node from the Pine64 Pinebook Pro dts, which is intended
> to provide a value for the delay in PCI Express enumeration, but that isn't
> supported without additional out-of-tree kernel patches.
> 
> There were already efforts to upstream those kernel patches, because they
> reportedly make some PCI Express cards (such as LSI SAS HBAs) usable in
> Pine64 RockPro64 (which is also based on the RK3399);  otherwise, those PCI
> Express cards fail to enumerate.  However, providing the required background
> and explanations proved to be a tough nut to crack, which is the reason why
> those patches remain outside of the kernel mainline for now.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Remove unsupported node from the Pinebook Pro dts
      commit: 43853e843aa6c3d47ff2b0cce898318839483d05

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
