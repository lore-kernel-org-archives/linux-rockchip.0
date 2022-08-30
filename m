Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B7D5ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Aug 2022 15:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pow01c/fMz+TsoesSoxg3szj/bi5lU9Yso9eRPaveRg=; b=4pgmS7rp6jjOb+
	gZd/ljNPuaw+0sh4vj8br2ddZuj1Q0Z8BDgzccvnp0rmswnblFJqOdlldTQoUKhUShBHoqVsHO3Tj
	7LmFOoIY4Gif5YDon/+g+aXqHdpnilkPgLMOc0oG8YDtIZvkp7B190aCkrCmj29P9KJZVjl/emNWe
	1hnMZH4qWEN5i8NtuU+ZEoQ/Ch3afALtXt5b7jjOBU/Zr5FErlAz9zPAOeWSxPycuX9ZfqHHmSuZc
	yoCVprl5/wGAGojm+XxZn6qV7+iB71ObxrCdhcGHKoZK1g97s/5vyHj7prcjkOrBT8FdXKSUp1po3
	y6NES84vzQ6ai/181dkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT3Rp-000NQc-La; Tue, 30 Aug 2022 15:46:41 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT3RL-000NFG-UY; Tue, 30 Aug 2022 15:46:17 +0000
Received: from jupiter.universe (dyndsl-091-096-062-005.ewe-ip-backbone.de [91.96.62.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id EC7F96601DC3;
	Tue, 30 Aug 2022 16:46:07 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661874368;
	bh=0TFx+aIcei3lHxXt4Le4PXE+mkoFwuh3ZqXCJ4nXkmo=;
	h=From:To:Cc:Subject:Date:From;
	b=a4gsQhEVprVeJ4q+Z3HyDyP74oWVHQuvluAFx2p0/1Kg7TvcsE3CUPP2NoPNw9D8o
	 ER81Yrjn3gGg4L6tqPICdFY+p/ZyKO6Z9VeXtFQZQIFKSbsPKR/pRspXMj1Ow3bzvF
	 0e8DxthOj/iH3QmF0mg2WYoWIBwuIvvhkLiyAnZ5T8tQAbfpCEdOUhxCqOpaXU3LB3
	 xUhdgCbteKClqlnp5TpmG9V9ZSomLtFUiRWju6uEEQMSWWAWNqNNhbKM/WBCfO8RuR
	 r61nyf+xu0NGKb0xKzSY+QRu2i/6ZEM7iJbfWL0cGTARd+tQNajAH6pAwfOXMspkbr
	 VXnJnlTzv5UdQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0A94948015C; Tue, 30 Aug 2022 17:46:06 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv3 0/2] RK3588 Ethernet Support
Date: Tue, 30 Aug 2022 17:45:57 +0200
Message-Id: <20220830154559.61506-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_084612_214380_B3807A58 
X-CRM114-Status: UNSURE (   7.39  )
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

This adds ethernet support for the RK3588(s) SoCs.

Changes since PATCHv2:
 * Rebased to v6.0-rc1
 * Wrap DT bindings additions at 80 characters
 * Add Acked-by from Krzysztof

Changes since PATCHv1:
 * Drop first patch (not required) and rebase second patch accordingly
 * Rename DT property rockchip,php_grf -> rockchip,php-grf

-- Sebastian

David Wu (1):
  net: ethernet: stmmac: dwmac-rk: Add gmac support for rk3588

Sebastian Reichel (1):
  dt-bindings: net: rockchip-dwmac: add rk3588 gmac compatible

 .../bindings/net/rockchip-dwmac.yaml          |   7 +
 .../devicetree/bindings/net/snps,dwmac.yaml   |   1 +
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 155 ++++++++++++++++++
 3 files changed, 163 insertions(+)

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
