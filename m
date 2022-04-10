Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D837C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Apr 2022 17:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5h+pf0fSDt8a2BwXvFWLzVQ1q92/f3FOGDBiP/GoVQ=; b=dTh1aqFG9s8Tym
	7wcFptlNndP48T/aTBdKEnAhjGTdDUN1UMRKbE9MD30Qi5B4RSEFBLSW6J8xdq4KPXDlBK+p3GZU8
	yF1lGTElilOqDsbKwSkLdm7qoaLsNWcsU/aMc+sIzuAn+jaIzh4j3hJeC12Wr7dUlhHMxQVpPIMWz
	P9PiBEmOHoBmDOJ50rxnW9MjRM1Tmecu/9eUHm7M4QYs5DPjpOY0otpujk4Jeh7rUgj6nl6rKbl28
	D0cXT9pAblKO/cuMq0UCwkNpwkRHb6qYN/xNo1hymCo9F4exy3UpwSFE6WF7FKrpeQkPjR06PPRL5
	BWRM+ArptjXp7uyg2v9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndb7f-005APK-CG; Sun, 10 Apr 2022 17:13:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndb7U-005AMH-Js; Sun, 10 Apr 2022 17:13:02 +0000
Received: from p508fdda7.dip0.t-ipconnect.de ([80.143.221.167]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1ndb7T-0006hD-D1; Sun, 10 Apr 2022 19:12:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Frank Wunderlich <linux@fw-web.de>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Add SATA and USB to BPI-R2-Pro board
Date: Sun, 10 Apr 2022 19:12:55 +0200
Message-Id: <164961074165.23152.4103203935750255805.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220409112136.164481-1-linux@fw-web.de>
References: <20220409112136.164481-1-linux@fw-web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220410_101300_704109_CFF9F066 
X-CRM114-Status: GOOD (  11.37  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Sat, 9 Apr 2022 13:21:34 +0200, Frank Wunderlich wrote:
> Add necessary nodes for SATA and USB-Support on Bananapi-R2-Pro Board.
> 
> it depends on "enable usb support on rk356x" series from Peter Geis
> 
> https://patchwork.kernel.org/project/linux-rockchip/list/?series=630470
> 
> and a fixup-Patch changing clock names which should be squashed into
> above series in v6
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Add USB nodes for BPI-R2-Pro
      commit: f29ffce32b4e1204b67f82fd80584ec4173cca54
[2/2] arm64: dts: rockchip: Add SATA support to BPI-R2-Pro
      commit: 551e645fed5dd2ed4c81c9e3d3b4827862f51dc6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
