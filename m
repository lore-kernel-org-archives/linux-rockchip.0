Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11DD9C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 16:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P9MGC/f5sQfuo3iXC2zV8SCR1wFcYjHzfj97ls5IhpI=; b=u+Z5clH1CljXsR
	FfRgZP/g04zxFf6xRvTOnncTh41ToOo6ZIhoAiOcyqPu88Svt78Oy/1LVbtdFy0hC6RA+FjZes1nq
	od2qL7k1tg0MtpMvB8tUVboqILfJ9i8iD5HWAaKaKtCbZNidXVUNeo61eNOOSITGsa0YXAB+ZyjV7
	3rO7z0bQbkhIZM7qNxRu1OoQZFLMs8oTuistRePubxrbG8pboKA3c1F2dr0fZhK6FfoueoynOp9bp
	gfZ1Zh7l+CqnFqFMH0pF21sLzySy/Cy1q4jkLMlcODL2UEaSIf4Ztm9JhcILSr1gndYfnZfew1+HJ
	4pszdtfK5SfOnh7vXPug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4PiJ-00FtXJ-FZ; Thu, 23 Jun 2022 16:29:51 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4PhR-00FtCK-5s; Thu, 23 Jun 2022 16:28:58 +0000
Received: from jupiter.universe (unknown [95.33.159.255])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AFEEC66017E7;
	Thu, 23 Jun 2022 17:28:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656001735;
	bh=hb7b3KYBZVOC05uU3r7FVK013oCraF/sZZUgzcmFY1o=;
	h=From:To:Cc:Subject:Date:From;
	b=ZxAB000LQ9uGKeK/JCqcRIwJdfFmzeV9DvdAdUNbnevvmN9s5iM9zOGsn7gulMpAB
	 9sb7LUsGrhEyXY70Fendi0n3L3eTWSyO5Yeie4XkE9/u4A3wd+8d1/LKRgtw1ljIZ5
	 gVOVA/L0ys/qGGKfS8+bDAX2Be5xGvH5fQCnponFGttNkWyYPBaZ8MeuA6iXT6Rj0f
	 nL+IafZQly37yf8bdE6ppXD0d+U5LuHfVCAvlT7bNXyXHMEnSqljkT3p3ePzp2SXhW
	 IvDRire1yR4mfeCEg9v4bNc5SxgJN38FXkR9UNiVGcpQY1Dp3TdITGhfhiWyJkVlN/
	 XHFr2jZM80NZA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 4340C480122; Thu, 23 Jun 2022 18:28:53 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 0/3] RK3588 Ethernet Support
Date: Thu, 23 Jun 2022 18:28:47 +0200
Message-Id: <20220623162850.245608-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_092857_396091_D0584682 
X-CRM114-Status: UNSURE (   7.43  )
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

RK3588 Ethernet Support

This adds ethernet support for the RK3588(s) SoCs.

-- Sebastian

David Wu (2):
  net: ethernet: stmmac: dwmac-rk: Disable delayline if it is invalid
  net: ethernet: stmmac: dwmac-rk: Add gmac support for rk3588

Sebastian Reichel (1):
  dt-bindings: net: rockchip-dwmac: add rk3588 gmac compatible

 .../bindings/net/rockchip-dwmac.yaml          |   6 +
 .../devicetree/bindings/net/snps,dwmac.yaml   |   1 +
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 205 +++++++++++++++---
 3 files changed, 185 insertions(+), 27 deletions(-)

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
