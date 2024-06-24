Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BBA8C3064D
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 16:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OshLd6TBWUKdhp5EN1Gok/oboU7/R/7iC6bTFqtFXdU=; b=4HonNiqlY8dFZZ
	bqPk0QXB0MwoGqmhQODIRY4Qt3OgPiQNORlMPtLvbTvFqrvvV6JvTukz1pHnDpfY+9S9QUO76wAIp
	J21LhxKWVXHQ+v5MoRw+AZM2ygVti+K2BzEftioiYZIWyGTintizp+XbO6sE4HI132nmZGLX2mdwf
	RNDPzgT/sTi6KnEwdgqVmx0iSRVRw00eRVj3lT+DrTkECNuwex01ivXIpWNifszHijlzpaX0c/0bH
	atlW+DG930nQtze/UULir6EwrZDaSOtprXMfLB+z56jtHnI7MQ0Fd7Ym/AL9naWb06M7kkmi+v2/8
	+MLHc3VWCjd+g1S7/H7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLmRI-0000000HT2F-3V3S;
	Mon, 24 Jun 2024 16:21:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLmQn-0000000HSeJ-31JV
	for linux-rockchip@lists.infradead.org;
	Mon, 24 Jun 2024 16:20:39 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sLmQb-0001wn-FW; Mon, 24 Jun 2024 18:20:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	jonas@kwiboo.se,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] arm64: dts: rockchip: fix mmc aliases for Radxa ZERO 3E/3W
Date: Mon, 24 Jun 2024 18:20:18 +0200
Message-Id: <171924573797.612064.8311697388124103809.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240620224435.2752-1-naoki@radxa.com>
References: <20240620224435.2752-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_092037_927624_C84770DB 
X-CRM114-Status: UNSURE (   9.21  )
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

On Fri, 21 Jun 2024 07:44:35 +0900, FUKAUMI Naoki wrote:
> align with other Radxa products.
> 
> - mmc0 is eMMC
> - mmc1 is microSD
> 
> for ZERO 3E, there is no eMMC, but aliases should start at 0, so mmc0
> is microSD as exception.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: fix mmc aliases for Radxa ZERO 3E/3W
      commit: 060c1950037e4c54ca4d8186a8f46269e35db901

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
