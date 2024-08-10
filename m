Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CA59C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Aug 2024 21:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K7YVcLx4plsZDHyRSgzb1hQzZ3o9aS//nDC+BzkxZM0=; b=UoEAwcxzwkVPbQ
	Pa5DPpSydq8+V0zBV3KvCSBKHn05YWtx5xxNxzzpGgIpKjFyBFYjzI2oajh+1eVJvSSxIQBI6X3J9
	yTUh6nzcO+0lgQchGvT6AUKO+qdVMLor+JLl3YVIxgGTtT2+rqlCixhWniMvjne8E9txuG9r6n2bT
	BYZbvxoExu6lF/z0J+DadILCtuRra/xg7/oerqXkQxUhteMk/6VFlWF92kgO48CYTLbVEpTDwZ9KZ
	Bb0/s5Vb2nOUKhw6CMQcYoHkaA3jfyRpPP8DZd+eidGceuXsVK3MsWTsxQP6WMfi/YnBGjxA7hmw1
	QhNGBGW7FOcJ51RoChWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scu7j-0000000Ef9b-15ji;
	Sat, 10 Aug 2024 21:59:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scu7g-0000000Ef8S-08Jo
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Aug 2024 21:59:41 +0000
Received: from i53875b02.versanet.de ([83.135.91.2] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1scu7b-0007sP-Mb; Sat, 10 Aug 2024 23:59:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	jonas@kwiboo.se,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: drop dr_mode for Radxa ZERO 3W/3E
Date: Sat, 10 Aug 2024 23:59:33 +0200
Message-Id: <172332716790.290487.15675443936946104724.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240802051508.498-1-naoki@radxa.com>
References: <20240802051508.498-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240810_145940_090754_A0754348 
X-CRM114-Status: UNSURE (   8.29  )
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

On Fri, 2 Aug 2024 14:15:08 +0900, FUKAUMI Naoki wrote:
> since dr_mode = "otg" can be used for USB gadget functions for U-Boot
> and Linux, there is no reason to set it to "peripheral". drop it.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: drop dr_mode for Radxa ZERO 3W/3E
      commit: 2c04a4defcedfff1e6f99a898b068db0962f3ba2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
