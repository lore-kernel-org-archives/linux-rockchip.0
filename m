Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AE6FC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jun 2022 17:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/FZVQJdN19ucdn2uc24m4yeHTkF9INGv67tt2HlnTyM=; b=hvsFvYgbj8EgL1
	m9c7U516ED2/fmZsKvF+hr+Gj4POcayCYRuSmBsY4dRXqeEidDXh6Pp7rEfnqT3iBUaI5Dvj0cWMR
	MCXEanEGCvyzcj+xWRghAsEqX48pgkBHRUsCRlPfxE23nj1OWvWI55eRVhGR+WMzL+4z6Pn4qmgMx
	CdPhYNdsSZOUPUCoiVLkcIR2PAENvL/ehAK73rK53PsPPp068Le8CNtUGcDm0R5Z5cz4CDhhQZVqV
	j3O0eN0n/FkTb7ACm9g+xbIl9wRmDgV461oPoBtL0jediRn18eBZp4iFunSI+rfuR5dJBkbndiH93
	DyC4QsbE1F5e1JqlrQgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5sGC-0024jh-4K; Mon, 27 Jun 2022 17:10:52 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5sDN-0023Ib-AW; Mon, 27 Jun 2022 17:07:59 +0000
Received: from jupiter.universe (dyndsl-095-033-171-114.ewe-ip-backbone.de [95.33.171.114])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 47624660183A;
	Mon, 27 Jun 2022 18:07:52 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656349672;
	bh=+by28bja4DISFnG9bIrL3DrLLe1IkOzJjONdUzVByVQ=;
	h=From:To:Cc:Subject:Date:From;
	b=iYs+67OGIzYfY610OpTT3UfBtOvdtqeeT43OaWV23N82g6B13zRAOZWJ2tKkAPVGg
	 DUx1UK14WCt9AWu32xcASOndFIq9jp0nvwlIkO9NpZ9mVXNwXTRdNwuBdxG1qmni9h
	 VNPNKVpZAgSGC4tLnuHhiw9PUMspvtob7X14177jFDRFrxZGeZOnXZHBCm9jy7Ld2m
	 0cvQyKkZ0dAhtlXBYJar5njaIA7cAeQZTgWNGJJHmcFNAjlezBq6jMDjCtv6EMBTnn
	 fDNt4pMPIw0Gv/MX3dTlDMfYEEpaj/c6zeLxc8Cg9PKm2xK34I90UspqKSMbdOGxze
	 2jC+H3LW4hmcg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id EB80B4800E4; Mon, 27 Jun 2022 19:07:49 +0200 (CEST)
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
Subject: [PATCHv2 0/2] RK3588 Ethernet Support
Date: Mon, 27 Jun 2022 19:07:45 +0200
Message-Id: <20220627170747.137386-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_100757_551540_D2F68C66 
X-CRM114-Status: UNSURE (   7.19  )
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

Changes since PATCHv1:
 * Drop first patch (not required) and rebase second patch accordingly
 * Rename DT property rockchip,php_grf -> rockchip,php-grf

-- Sebastian

David Wu (1):
  net: ethernet: stmmac: dwmac-rk: Add gmac support for rk3588

Sebastian Reichel (1):
  dt-bindings: net: rockchip-dwmac: add rk3588 gmac compatible

 .../bindings/net/rockchip-dwmac.yaml          |   6 +
 .../devicetree/bindings/net/snps,dwmac.yaml   |   1 +
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 155 ++++++++++++++++++
 3 files changed, 162 insertions(+)

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
