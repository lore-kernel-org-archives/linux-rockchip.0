Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06F84C87FD6
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 20:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HOb93PSoRLeuFcy6xoWfWBO48QCnVNHcFLe/+PFnesI=; b=GnI7ZHb0+1OE7B
	sNssCume9Y0XfDZINP4nJlOD9YlhMnyBh6Yq7DtA1q+OW0oiBEg7Hujg8AOXJV9jGk2GTVU0o5VXv
	J/Uq/jAwX6WbPDt41c56SPS3E+KW5AJPPzTZuDVFup7n2oSzEBVIgfNVyTBoLN/b8Y7qp3pn0WxZO
	AlLDsRnJoXQP7iz3tOUKc2/3J+Fejnhh2ua9qHuSjal11X1qil2z3hp21GsLp3NZxJA1tKPhCVGbw
	IHfCzEu1u+6ZSRKcf8DIinJQvPsAUjP1xE4ixhjr7qTRGadNvGPGrK9EE2Huv1VqcObNjwKz/lgrJ
	M/2MGKXeYMUjrs9DbAEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjljU-00000003XSs-3R25;
	Thu, 29 Aug 2024 20:27:04 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjlia-00000003XFR-2Ir3;
	Thu, 29 Aug 2024 20:26:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1724963165;
	bh=BaxomN37nDwtcnmBYKiF+VC28hwTR6bK3LpyB9OgCgM=;
	h=From:To:Cc:Subject:Date:From;
	b=jZEN+jeH7HMlHpowmFwVY7eRAT9EXQ8uctKj5VMlTqiADsOZZpCG/5EtuXGzxUnSJ
	 0Kj/LdRiBz8u1ES371B2MfcpzoLYRt30QAjkxD6Tz6vFJu8+CO78F1gGAopT0jO2u6
	 3EXHuRaesdIQZ48YhlT1h2iAWAMgyzPfMQiYUpQXeL+uPPg4TxK2O/HH+t8GjmB6ZW
	 /+PjmgQAgQR1XKtxLxux2SEQ09NIDp++fjJsbKq/TX1VwTWM66WCtw1CL0MV2Dx+OF
	 DGCXhB+zS5va3dxb6/TNMWwH4uKlCFXASD89fh4NI/C63PqdCj3Jc8XAsG1O04G7DM
	 8gxcenifnjmiA==
Received: from trenzalore.hitronhub.home (unknown [23.233.251.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id ED21A17E0EA9;
	Thu, 29 Aug 2024 22:26:03 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Linus Walleij <linus.walleij@linaro.org>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 0/2] pmdomain: rockchip: Add gating support for rk3576
Date: Thu, 29 Aug 2024 16:20:46 -0400
Message-ID: <20240829202732.75961-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_132608_814726_C8612393 
X-CRM114-Status: UNSURE (   8.08  )
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

The rk3576 SoC needs to ungate power domains before it can manipulate
their status.

This makes to to ungate the PM, changes the status, and gate it again.

Detlev.

Detlev Casanova (2):
  pmdomain: rockchip: Add gating support
  pmdomain: rockchip: Add gating masks for rk3576

 drivers/pmdomain/rockchip/pm-domains.c | 87 +++++++++++++++++++-------
 1 file changed, 66 insertions(+), 21 deletions(-)

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
