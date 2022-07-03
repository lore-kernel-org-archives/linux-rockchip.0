Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EE84C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Jul 2022 11:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u/l4qxkLeSWCctTq4mw/qWYKfnz+S6a2PtCcJ6NlG7U=; b=v6ubSoU6FfLTIi
	wyC78/6t8uD+gtlHaNlaCyR3K+88bk+EulkB+J+++//1zAkYwiTI7kDiJ+uKLOb/dQJdbn8618TJZ
	J2k3kPetstMsZLu1l0H9YlsVY0PPX+qMxx7EtiDzqOq5sePHl6YaUglzZn8dq+iSvXv4PMmQr0XHC
	Wp9FxgST0AxDL4feSxdbTjMk+q8o0/BDhucqEXUnxnRkeokYyyDQSEtbnKQDIpyk9rjBcXCyrgCiO
	d8RCyXsFdbXK1vNIPOHneqTo7voASWh3jXER1o1VrfttwPQuUjSxu4RDyf5a0jOBF+bRXkQ9i6qbk
	4rjOYqXlzdFPTeDvsJyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7xW9-00FMPb-33; Sun, 03 Jul 2022 11:11:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7xVy-00FMKy-AQ; Sun, 03 Jul 2022 11:11:47 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o7xVi-00047D-JN; Sun, 03 Jul 2022 13:11:30 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Daniel Vetter <daniel@ffwll.ch>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Sandy Huang <hjc@rock-chips.com>,
	Maxime Ripard <maxime@cerno.tech>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	David Airlie <airlied@linux.ie>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] drm/rockchip: Fix an error handling path rockchip_dp_probe()
Date: Sun,  3 Jul 2022 13:11:27 +0200
Message-Id: <165684667536.1187961.10202917102569434363.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <b719d9061bb97eb85145fbd3c5e63f4549f2e13e.1655572071.git.christophe.jaillet@wanadoo.fr>
References: <b719d9061bb97eb85145fbd3c5e63f4549f2e13e.1655572071.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220703_041146_393368_601F1058 
X-CRM114-Status: UNSURE (   8.17  )
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

On Sat, 18 Jun 2022 19:08:05 +0200, Christophe JAILLET wrote:
> Should component_add() fail, we should call analogix_dp_remove() in the
> error handling path, as already done in the remove function.

Applied, thanks!

[1/1] drm/rockchip: Fix an error handling path rockchip_dp_probe()
      commit: 5074376822fe99fa4ce344b851c5016d00c0444f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
