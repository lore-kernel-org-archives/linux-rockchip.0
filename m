Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E300CD11DF
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Mar 2024 22:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+JQywb8q13RvG9NvX0/CuZ7e+eCYUpOVe7af4Sg2bLQ=; b=u+lIAvjL2I1b1B
	uEyPifbih+re4BLoR3EI26AADg1+XabQzEDKdwEWtv+Y0a9UHo6dv4BW+rHwGC695YzlhZdyrZY5L
	2v3sAGs15bw52WTmszZhc2zUnfexGk6Tye4YWRr0cxihk/ga+0Plj3Fyk5TyFi8zwlP6Gt/ArwjKT
	fjyoEaXOoeZJPsbifZtq/VUM8MqmCl/paO55sP5p2nsTnM/7JENddW4UNoUk6PPHalmDbEKXWmuOT
	ZlDbHorCCKESCz50Nkdr3ug3Q5Sfx7hk58ya4hOIzXG+N9IWlkshk39Zgn/5MwOtku/nXwDWkj7rK
	eqiPk4qYgc2keJObmKQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roWUs-0000000Dd4K-1ziJ;
	Sun, 24 Mar 2024 22:39:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roWUn-0000000Dczc-1AWM;
	Sun, 24 Mar 2024 22:39:19 +0000
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1roWUW-0007sn-2T; Sun, 24 Mar 2024 23:39:00 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzysztof.kozlowski+dt@linaro.org,
	Anand Moon <linux.amoon@gmail.com>,
	conor+dt@kernel.org,
	didi.debian@cknow.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add cache information to the SoC dtsi for RK3328
Date: Sun, 24 Mar 2024 23:38:53 +0100
Message-Id: <171131986742.918919.14220098959078401116.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <a681b3c6dbf7b25b1527b11cea5ae0d6d1733714.1709958234.git.dsimic@manjaro.org>
References: <a681b3c6dbf7b25b1527b11cea5ae0d6d1733714.1709958234.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_153917_377773_B55079CF 
X-CRM114-Status: GOOD (  10.56  )
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

On Sat, 9 Mar 2024 05:24:42 +0100, Dragan Simic wrote:
> Add missing cache information to the Rockchip RK3328 SoC dtsi, to allow
> the userspace, which includes lscpu(1) that uses the virtual files provided
> by the kernel under the /sys/devices/system/cpu directory, to display the
> proper RK3328 cache information.
> 
> While there, use a more self-descriptive label for the L2 cache node, which
> also makes it more consistent with other SoC dtsi files.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add cache information to the SoC dtsi for RK3328
      commit: 67a6a98575974416834c2294853b3814376a7ce7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
