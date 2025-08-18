Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28AEECA0EE4
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Aug 2025 19:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0SfDFj9KODu/a30yMaMd8Js6giH9X6QXenukuUeXj3I=; b=yZYJCVqqbdeYwP
	FBUfDSkvsuK1yUGB8rF1Hw8jTe0s1PUSu22r9Dv0wMb0WXJv+tjczd8KcJN8LdXkqjcJtBhjf5y3b
	POIujosCX006aZ0YEro+3Wb7K22OqWH14nEKm3r/DPPMoFFTXWwEa2RcosVIPrFRCDPl+6s03t3+7
	PmgXtzjb0859NQvoOorP3w02hV9LgyQAJw1Girr4UT5yYDmDnk3ftJMg0dw55nBYIS9rh3sxtPh21
	S1pm1UHiokxvnKpnibquP7FBxH/Sg6+Osoa9kNLv1xvAVvr++pVwlbjheDXGxrtITBDpT7YCisOyd
	3u5Gy4N26b4qWT8JteMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo5X4-00000008W5b-3nm2;
	Mon, 18 Aug 2025 19:28:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo4zF-00000008QCr-490T;
	Mon, 18 Aug 2025 18:53:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=v67FTl7/3pAGnT117jwj1Kky+Zn0Dzi8FyiIKcG5uNU=; b=Yxxn+AilLBgCshk+YlYiGfJLN4
	t7GbOGRxzt4fcIGb+pKqyKn9YLzRstci8FqVlkEMv83nJNmgjQIuQBCn6oYkxfR491cpfGypQhUTW
	pXNmCi64Ut1Y831/QZbzdhbYl6yK2cz2WbfAjPutWccMJroFSNu1oyJv7V+9dQX+T0bzYCmHnEWkM
	yKjt42lziFUTd0TjOo9oCl5OIoDMIC9F4d8D8Kva4o8Y77vhwAUCRFyfN+0mTpDb5RozJfX7ifudq
	nzHwM47yiQu3wZuHQ8TJIPmq6dONr6hvnDjB4vQGNmFjT51rjxwhiisQcUDGbQn3cZZnsCA1+Ry/W
	erBEfEEQ==;
Received: from i53875ad4.versanet.de ([83.135.90.212] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uo4zE-0000jH-Hn; Mon, 18 Aug 2025 20:53:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Describe the nvmem provided by the Qnap MCU
Date: Mon, 18 Aug 2025 20:53:35 +0200
Message-ID: <20250818185337.2584590-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_115342_020957_0CBF43EF 
X-CRM114-Status: UNSURE (   8.63  )
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

Describe the nvmem-cells found inside the MCU of Qnap RK3568-based NAS
devices. And move the cpu thermal node to its correct position.


Heiko Stuebner (2):
  arm64: dts: rockchip: move cpu_thermal node to the correct position
  arm64: dts: rockchip: describe mcu eeprom cells on rk3568-ts433

 .../boot/dts/rockchip/rk3568-qnap-ts433.dts   | 158 ++++++++++++------
 1 file changed, 110 insertions(+), 48 deletions(-)

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
