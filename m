Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 775F8C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Apr 2024 15:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lxHa3LDfkAlghYoVkARWn1xnobsAK5uSQMZsIJIvB5M=; b=U69Ofn4a5o+TIE
	/eophk8+JKQCc47mDaMKNYS72IV7Yze5RnmtLc3vwOfNO3U+zzrDBHvGEV/vRiTcPi1JNrqmYg6tp
	cfkb7lf1U9tJ4xiaZPovToDqOysWpAMjh5L5hEHQK1jdSsJrttiZqv7NW+hmhujE+jxjZIw/kQesb
	1VOnGZayJsIvDN+Du9T9IY7UmTv5JTQncT8YrnX/SZAlpST7wMOt/9Wqrj6HUeyifujnIhOBiACkN
	L1GmQbLpmePWCw/BbBlpNQxJRSLGpPqK91WKAfrgEMMlMryzPpEpIu0S24xazPec8x5vgQwVtWJTb
	AcfkCAprUnBRPIalAwGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s00tU-000000095vt-0SCZ;
	Thu, 25 Apr 2024 15:20:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s00tQ-000000095u7-3tz8;
	Thu, 25 Apr 2024 15:20:14 +0000
Received: from i5e861d82.versanet.de ([94.134.29.130] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s00tE-0003kV-3Z; Thu, 25 Apr 2024 17:20:00 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	mripard@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	hjc@rock-chips.com,
	tzimmermann@suse.de,
	dri-devel@lists.freedesktop.org,
	s.hauer@pengutronix.de,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 0/1] Fix the port mux of VP2
Date: Thu, 25 Apr 2024 17:19:58 +0200
Message-Id: <171405838036.2897712.4067984796758491640.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240422101905.32703-1-andyshrk@163.com>
References: <20240422101905.32703-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_082012_996773_C5426FB3 
X-CRM114-Status: GOOD (  14.38  )
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

On Mon, 22 Apr 2024 18:19:04 +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> 
> The port mux bits of VP2 should be defined by RK3568_OVL_PORT_SET__PORT2_MUX,
> this maybe a copy and paste error when this driver first introduced.
> Hi Heiko:
>    Maybe thi is the problem you met when you porting the dsi2 driver.
> I previously sent you this patch when you ask me about this issue on
> email,but I'm not sure if you received it.
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: vop2: Fix the port mux of VP2
      commit: 2bdb481bf7a93c22b9fea8daefa2834aab23a70f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
