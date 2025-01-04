Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AF33E77199
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Jan 2025 22:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNGPImUwcsLynxKdqduporyfuzlFf5xVlozWRa+gBzQ=; b=SyU5C92V7J9W4S
	QbsNTDDJS20ezU0Ghv8mZeCO6OI333U9MnVMma2PpxTmLruoJ32dIWUww0KUJovNjPPkPWkURMPWS
	y/Jp57AozkVMKwBAXs1YyTkvO+b0G3Waitt/l5wsNu8RYCFrhAX0YftVkaIAJClABPo62j4ipBhA5
	PSjqqP/UsFI9bEfEezM7g6VUgWlcM94F097DHEW+sGDO191eHsYwODsoxAlFPF3IBrqp+mPQTCfKF
	k/getSCmkqmNlAUZVSKF5wLs0ogK+pt8g0+3QTFRjFQ71vDtuQu4jRVtbR5xClGoYBOaAG7KoTQQQ
	anqMlOJHMBBBYw1rGWfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUCca-0000000Fj6K-0n61;
	Sat, 04 Jan 2025 22:27:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUCbO-0000000Fj28-3MZZ;
	Sat, 04 Jan 2025 22:26:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ujcfpRKEAeXT1T9589mAQuACGTaXWAGgYaTuHKcYIq4=; b=i6iGQ2tPd85SXBX/OGgpILVT2A
	QRQgN3I8cI1mVINs2U2DImtrA731rjtefzyd/7ms73qP7Gg0OBWoqcBDDEMAj7y8gdP1QTRzJE7aC
	v5PEGI40HT4/OzEFE6gLvWZD+qYxCf84rlI9YkElDiDLjXct0N90FIuTcsBamYo/9XOLpZ0HmXdsK
	Z6GfgjPRatEFbRpJCKirCDYr7fKMCvL945tD41Q5Nm0acrxn7oNqmOFJ/oxn4nDbpvQ0S8uyU9toS
	0sOAI3cAUJO1/Rv4oxMOKcN65weCid1/+WngZ++o8mOkEi4ek6iytC5KcYrgIwwG68lcM9lu3/TPC
	vM5CN2WQ==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tUCb6-0005tm-J3; Sat, 04 Jan 2025 23:26:20 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: vkoul@kernel.org, Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v3] dt-bindings: phy: Add rk3576 hdptx phy
Date: Sat, 04 Jan 2025 23:26:19 +0100
Message-ID: <2195662.yKVeVyVuyW@phil>
In-Reply-To: <20241231092721.252405-1-andyshrk@163.com>
References: <20241231092721.252405-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250104_142639_038970_443ACFEC 
X-CRM114-Status: GOOD (  10.80  )
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
Cc: kishon@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 31. Dezember 2024, 10:27:11 CET schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add compatible for the HDPTX PHY on rk3576, which is compatible with
> rk3588, but without rst_phy/rst_ropll/rst_lcpll.
> 
> In fact, these three reset lines are also optional on the rk3588,
> they just used for debug, then they were removed on the rk3576 IC
> design.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
