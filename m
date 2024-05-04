Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCF28C10F1A
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 May 2024 10:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Y2U/tM73pCjpX7kKzuz9Iz5t3AAYMlE6cknKFGVdxk=; b=zTPB/Y7B1zPnOc
	4+KHs/9exWlzA2ZlhtMl83KsJkZ7o5o6RlbWfTIkrADGbeEhe5d8epGtUwhZCCn3Gv7CADLP3ZX/K
	0Bmk6XX++6YPT8zM1WvEV1WKuX/ca0suTNVORCV5iqbPcIOTx1JKurt5X5gJ+zzVcYvr+JDW8R2NY
	SYvj9oOGospR3f+eaomYYQHRmR8Jh66plbesAMRDPJi5Yuf78c6NswgNwGWvc9NWdgWKcXxk9wFeM
	UnVXD9QN6IOMrASCEUlf0gsAbCV31lUsZf4jXmRDrNxtCIP2WOezQnO+Kk8tgvFRZ8Ka5XAAfYR06
	/J1puapoTfOcY6w4i/nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3Czb-00000001pLE-0oqi;
	Sat, 04 May 2024 10:51:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3CzW-00000001pJH-2upK;
	Sat, 04 May 2024 10:51:44 +0000
Received: from i53875b5d.versanet.de ([83.135.91.93] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s3CzN-0001m9-DI; Sat, 04 May 2024 12:51:33 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	kernel@pengutronix.de,
	patchwork-lst@pengutronix.de,
	linux-rockchip@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH] clk: rockchip: rk3568: Add PLL rate for 724 MHz
Date: Sat,  4 May 2024 12:51:31 +0200
Message-Id: <171481988028.3538483.628614246241628952.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240503153329.3906030-1-l.stach@pengutronix.de>
References: <20240503153329.3906030-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240504_035142_763695_4AADAA66 
X-CRM114-Status: UNSURE (   8.55  )
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

On Fri, 3 May 2024 17:33:29 +0200, Lucas Stach wrote:
> This rate allows to provide a low-jitter 72,4 MHz pixelclock
> for a custom eDP panel from the VPLL.
> 
> 

Applied, thanks!

[1/1] clk: rockchip: rk3568: Add PLL rate for 724 MHz
      commit: f513991b69885025995dcb4ca75d2ee7261e1273

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
