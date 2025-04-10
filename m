Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70945C3601E
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Apr 2025 09:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZp1dU2EeEfqloXw2nCU2qF57wB9gJrn0MwkcfIIoWE=; b=DRuC3/V/8iH4bl
	nFwn6hoq5/84tx/RoFK9yK9HainTdk6eYrBuWKAiG0py2VzzlXTG82rqDjXZ8RlPVcwAjI1g1PjpD
	vqvnSiOeVVga+/nQrBmhif3HC0MAEz7RZMJv9VJMd6DzO8KuhdBDxpfvCVapmyEJKsnKjg7j2TEtO
	2g3v4rC8TDsbvulbbRYkCdKJTmb/mIpfDJ7yJXKTC37gUopDUj5oKOiFlOBs3SByqUDlxrLw93BFA
	l5b+m/PCuhST18bu0VWtVWGaB2tw0fl5cdmHBGXKJ7yxpXYtFsAkRlh9gBfEWknTU6Y27MaQ4VsTx
	nk2twW380Rp0JXKjRgfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2nlM-00000009qfN-0k43;
	Thu, 10 Apr 2025 08:59:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2nU4-00000009mpI-2z2f;
	Thu, 10 Apr 2025 08:42:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=PHgurkr3hfzIhUm3LgtYoYaBD5Ipt+sR4+jQYwAKKxg=; b=wVDaAKIYQLbajvye4IbWs10b1p
	/C3Ez7SoN9FvjdXQ3wyMQwdQqvl0I+sukLGw675cakYQUpv/KWIAegmQSiYrbA7n1dDK1vh+RGRA6
	Qlle8/0O/SEhx3WO/v3DwVV7wg7ggwzQs99YUxN1drFtvJYjvH2fxsCExdvsImiLQE5eou/BZf4iS
	r56xWG/gi+UUDOAjoY15WK7Bf5J3YW0axV2hC37g/sspKK26lOb0uDsloxTrpTfmhMcoJw98pNOss
	s5Hc58KIstJg42996lQmlnveFW5Gil2s7Clz6ZOJnnt2jytJDT/fKI9d/e22E990+6GUZPbXEUzoy
	aVgjWJ7Q==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u2nTu-0002qP-Ux; Thu, 10 Apr 2025 10:41:55 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	derek.foreman@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: vop2: Make overlay layer select register configuration take effect by vsync
Date: Thu, 10 Apr 2025 10:41:42 +0200
Message-ID: <174427445692.820310.6392572128244429943.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250318062024.4555-1-andyshrk@163.com>
References: <20250318062024.4555-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_014204_740334_92C85718 
X-CRM114-Status: UNSURE (   9.10  )
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


On Tue, 18 Mar 2025 14:20:17 +0800, Andy Yan wrote:
> Because the layer/window enable/disable is take effect by vsync, if the
> overlay configuration of these layers does not follow vsync and
> takes effect immediately instead, when multiple layers are dynamically
> enable/disable, inconsistent display contents may be seen on the screen.
> 
> 

Applied, thanks!

[1/1] drm/rockchip: vop2: Make overlay layer select register configuration take effect by vsync
      commit: c5996e4ab109c8bb5541453b20647eaaf9350f41

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
