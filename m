Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B358C0015E
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jul 2023 15:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NT7raVSMEhzZSZTFeHKHRuNwL6MGWISTdMj1a/+lnBY=; b=KSOcYQ5hS9PYA3
	RYgTYuLx2at2VAXUH0ES1Pa4ZJG4YMLH9vT7iJdy554QeHRWfqCc5zZFxkm3XoUCY9LdzuaHRFfvK
	aq03GERmsGK7rsGDUXL1cgur92oBdNcgjPqTJisRhZ040LpJBtIvspM5f/ShayTVtJMw7InVuzlFp
	Tu7GEMSjVeqlzxb8VzNiTe7Y7ZLtNrRnTZLmKLB41q05M86LrV5+rPJsoenzlBulyIOed0NK6WG4w
	0y37ua8iHvss526m6voCpGjde0PpMM2zuf4onf9w8ePKgskDSZAwWWk+8jLmJh2RRcwXPJpPJs723
	0aR7sx0Ucyy3fwOL2ZjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKKtD-006Xsg-0l;
	Fri, 14 Jul 2023 15:39:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKKt9-006Xqz-2c;
	Fri, 14 Jul 2023 15:39:25 +0000
Received: from i53875a50.versanet.de ([83.135.90.80] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qKKt7-0004Kz-A3; Fri, 14 Jul 2023 17:39:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	kernel@collabora.com,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v1 0/4] RK3588 USB2 support
Date: Fri, 14 Jul 2023 17:39:18 +0200
Message-Id: <168934909031.2268788.17295705108647249284.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230712165106.65603-1-sebastian.reichel@collabora.com>
References: <20230712165106.65603-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230714_083923_847651_771F93DA 
X-CRM114-Status: GOOD (  10.67  )
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

On Wed, 12 Jul 2023 18:51:02 +0200, Sebastian Reichel wrote:
> This adds USB2 support to Rock 5A, 5B and the EVB1. The necessary USB2 PHY
> changes have been queued to the PHY tree and are available in linux-next.
> 
> -- Sebastian
> 
> Sebastian Reichel (4):
>   arm64: dts: rockchip: rk3588: add USB2 support
>   arm64: dts: rockchip: rk3588-evb1: add USB2
>   arm64: dts: rockchip: rk3588-rock5b: add USB2
>   arm64: dts: rockchip: rk3588s-rock5a: add USB2
> 
> [...]

Applied, thanks!

Adapted the patch subjects to "arm64: dts: rockchip: description in prose"

[1/4] arm64: dts: rockchip: rk3588: add USB2 support
      commit: a684cb416414fdd2b2a33e691119608c0e2eba9f
[2/4] arm64: dts: rockchip: rk3588-evb1: add USB2
      commit: e39da1074c20d4fb1114ccafe07a142df5345a53
[3/4] arm64: dts: rockchip: rk3588-rock5b: add USB2
      commit: 488fc7ad2bc8d980cc0599bc1be951938df8a779
[4/4] arm64: dts: rockchip: rk3588s-rock5a: add USB2
      commit: 1642bf66e270d8de7ba27068d1a5ecdbdba14d3b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
