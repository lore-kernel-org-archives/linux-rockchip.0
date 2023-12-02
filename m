Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86C3DC10DC1
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 16:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CQmAONNu2KQGe6ATVs2mgFGq+GjIcp5ZgdtLqlhnAtw=; b=GGICnujaLGqvqJ
	lRJfdzS2nCSbyLbr+oIj0QaXmg7lWIcwM51uEiawuuCzA0nadyqoOGADinrHxF+oil48b8xv7bd2b
	Kf9SA9eX3A3efwnESqhhe3MfHon49qUjKb1Vr6kzmuI66iydG2FjZeIJx3JQaIAZlKFjIsLin8lhR
	01ACLSJU+tM9+qC5vzxyDCGtUgy//k0loRG04ZZQuzuve1zMrkgaG40ZDXWkqoQYZtngUxsmUzDDc
	erTMA2CVB2YrdyaQoaA/QflkKm2hW2WRcMKV73hk1B+9774XsAERT5h+nQYuyq+zmP/PaVxwXcpMZ
	IiqEwBsIla9DUmPVsBzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9Syw-00FuFE-1m;
	Sat, 02 Dec 2023 16:36:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9Syt-00FuDx-0j;
	Sat, 02 Dec 2023 16:36:40 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r9Syn-0002Wz-R7; Sat, 02 Dec 2023 17:36:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Sam Edwards <cfsworks@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	Sven Rademakers <sven.rademakers@gmail.com>,
	Sam Edwards <CFSworks@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Lokesh Poovaragan <loki@gimmeapis.com>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix Turing RK1 interrupt pinctrls
Date: Sat,  2 Dec 2023 17:36:31 +0100
Message-Id: <170153497984.380580.16625087945958405832.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231202071212.1606800-1-CFSworks@gmail.com>
References: <20231202071212.1606800-1-CFSworks@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231202_083639_262092_F2A2C62A 
X-CRM114-Status: GOOD (  11.35  )
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

On Fri, 1 Dec 2023 23:12:12 -0800, Sam Edwards wrote:
> The pinctrls for the hym8563 interrupt line and fan-tach input
> were both mistakenly defined as `pcfg_pull_none`. As these are
> active-low signals (level-triggered, in the hym8563 case) which
> may not be driven at times, these should really be pull-up. The
> lack of any bias results in spurious interrupts.
> 
> Fix this by modifying the `rockchip,pins` properties as necessary
> to enable the pull-up resistors.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix Turing RK1 interrupt pinctrls
      commit: 9f6acd2b4dfef81dcc45486ac704cf602c88db02

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
