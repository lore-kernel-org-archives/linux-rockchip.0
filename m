Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40B2FC433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Oct 2022 22:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8b8E9oTCU0XarjXQE4d1Jw4QnQxBA81rLugfFZod6M=; b=yB+mP8jLRYQmPh
	OP5vQYM5sbpJ8NSPhYMYdxO3VPWi50oVODLUO3lleQ+fQXWSyc+8Y3IF7NUea2M5vN6Z3XRgr1rvz
	Zn/s50TC0vM5sgyXdjyD91r9SBkdRanhSIRLjpTYIKlNrwQ3ofh5l7R80whSyaW6GvvGnI6HKeKdv
	zU6ZooU9kQYiDPqcogT6qXRSp71lSIFVzZLT1pRoqeP2SXcoAO8dqJ05+8HnH4jd3HcPKBwxPAu0g
	B5oUzaDVDeD7qGHZeHDVcT52n00kVoCz5g+8OVltegqBRsOzn/r48k5w2cqSGZ6Q1A01DMFfZbvTw
	QQ2q06y25kOR+rNzh5gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oou18-009pSt-Ey; Sat, 29 Oct 2022 22:09:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oou0c-009p0u-0a; Sat, 29 Oct 2022 22:08:55 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oou0W-0008NZ-Gj; Sun, 30 Oct 2022 00:08:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	dri-devel@lists.freedesktop.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org,
	kernel@pengutronix.de,
	linux-rockchip@lists.infradead.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] drm/rockchip: vop2: Register Esmart0-win0 as primary plane
Date: Sun, 30 Oct 2022 00:08:44 +0200
Message-Id: <166708118164.1656095.9357091352577403281.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220926081643.304759-1-s.hauer@pengutronix.de>
References: <20220926081643.304759-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_150854_067378_DF19D1F4 
X-CRM114-Status: GOOD (  10.73  )
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

On Mon, 26 Sep 2022 10:16:43 +0200, Sascha Hauer wrote:
> Esmart0-win0 could serve as primary plane, so mark it as such. On
> RK3568 this window will never be used as primary plane, because the
> three windows at the beginning of the rk3568_vop_win_data[] array
> will be used. On RK3566 however, two of the windows at the beginning
> of the rk3568_vop_win_data[] array cannot not be used due to hardware
> limitations, so without this patch we end up with CRTCs without primary
> planes when multiple VPs are active.
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: vop2: Register Esmart0-win0 as primary plane
      commit: de4a4c8f64021b02aaa8ab21a82fe1f11a17b975

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
