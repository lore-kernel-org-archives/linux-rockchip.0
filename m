Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AFD5D68BD5
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Dec 2025 10:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rWgeKRL/gonOOCQcrdXcqhKCt6VmP9VT1JYfc86CvjM=; b=HOmU2rs2Mg2T6m
	BU6xtDiwJu4hnHOAnsZ18AUSUXP3YkAckWMZseJqcRHx5qa9TitmLL5dOee5hb40HJ6oXtNIdUiB6
	ugKATEMpYbz2gCUE7vl0UJL+Hldt/l8o6OYkWniDN8yqWr9tBkQDjjJ0gVbzcKMvEqmKwGlxodJmd
	Tw8rkvQIf7zIy7b9rMJ/k2FgR1YL9+N+7O6DO/eEJAxK0GlZz3kgEHLIrnBrkiY0e3kFNMxCsU5Dc
	rNYxk8ruPk1Lm/E6/fXMo4JfVidf+2gNaGUmpQL46Pgs5Jbn/7w2/Dtz8R4DeXZt8WqcxwDCgE9Oh
	5A2mcDMdcVvVDS11cQdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXGo3-0000000CKF5-2hNj;
	Sun, 21 Dec 2025 10:36:55 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXGny-0000000CKC2-3Aq0;
	Sun, 21 Dec 2025 10:36:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1766313405;
	bh=ujVnojW6AgiKVSa/eIq7ThAvbxoWp74PA0F4JYID/3M=;
	h=From:Subject:Date:To:Cc:From;
	b=fkxDi6l7+h67pGPxGJlYpP/Vx5jgg8nzfijMzPNfFSA5jIZXf+AKP1OspMR/Ai2Mr
	 71m+IbZGYPq7kqSJOV/BQJWPWpjBFO1+UoTmGJdTeul19gcvVGRJmT8sCEAyc7wYX9
	 a77aJZ1o5Yb4tIa5mzg8b7VLYKf5gZNHnFkcJUJ+KYF7qjLqYJ/+2FWkwARk5p42Vu
	 FztH0nZqQlnGU9mAYvpYcCFuw1MYwC3k0kBavXWzFqQvksZBkusqNYVX2SvPpumosz
	 POXzFPV17LRFQOccCj46PtfeSPEL78qkap7Djk7BUNMHO+1dqeph+DuTgbSXqCkBCW
	 vNN0UPqilOEJA==
Received: from localhost (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5E85417E12C4;
	Sun, 21 Dec 2025 11:36:45 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v2 0/2] Fixup HDMI PLL for phy-rockchip-samsung-hdptx
Date: Sun, 21 Dec 2025 12:36:22 +0200
Message-Id: <20251221-phy-hdptx-pll-fix-v2-0-ae4abf7f75a1@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKbNR2kC/32NQQ6DIBBFr2Jm3WmQaK1d9R6NC4ShkFAhYIjGc
 PdSD9Dle8l//4BE0VKCR3NApGyT9UsFfmlAGrG8Ca2qDJzxvuWsw2B2NCqsGwbnUNsN2XAf5Mi
 JSU1QdyFS1WfzNVU2Nq0+7udFbn/2Xy23yFCNnVY3qVU/zk/pnROzj+Iq/QemUsoXSVB2g7YAA
 AA=
X-Change-ID: 20251204-phy-hdptx-pll-fix-0787c92e0cfe
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Derek Foreman <derek.foreman@collabora.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251221_023650_973249_A0FF5281 
X-CRM114-Status: UNSURE (   7.44  )
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

The Samsung HDMI/eDP TX PHY is currently not able to provide an accurate
enough PLL output frequency to match the TMDS rate of a 1080p@120Hz
display mode, when used with 10 bpc RGB.

This patch set adds a new entry to the TMDS configuration table,
providing the necessary frequency division coefficients for the PHY PLL
to generate the expected 461.101250 MHz output.

Additionally, it drops a bunch of unused members from struct
ropll_config and makes the configuration table more readable.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Changes in v2:
- Dropped one more unused member from struct ropll_config (sdm_clk_div)
- Swapped the TMDS config entry corresponding to the 108000000ULL rate
  with 106500000ULL, to fix an unspotted ordering issue
- Collected Tested-by tag from Derek
- Rebased series onto v6.19-rc1
- Link to v1: https://lore.kernel.org/r/20251204-phy-hdptx-pll-fix-v1-0-d94fd6cfd59b@collabora.com

---
Cristian Ciocaltea (2):
      phy: rockchip: samsung-hdptx: Pre-compute HDMI PLL config for 461.10125 MHz output
      phy: rockchip: samsung-hdptx: Cleanup TMDS PLL config table

 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 80 +++++++----------------
 1 file changed, 24 insertions(+), 56 deletions(-)
---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20251204-phy-hdptx-pll-fix-0787c92e0cfe


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
