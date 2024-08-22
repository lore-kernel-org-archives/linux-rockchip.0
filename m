Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15D9AC5321D
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 21:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VsC0J77xHYNX9EkdfYxAHJIaN5H1LrJpBFRmv5gbNJI=; b=KIDhg7/6IZwlTQ
	F4NUO7FyjGK8CyLLq7NHM/iajLvSt6GojU8aujC0H8VW3n1C1V6eOBrR7bQNECn8ZJxsS5mSBrVd/
	tIm7Nb0tFovAA8XL/xVRvvBhX96J9jwHIeuiWc84ElfzxkJFEsd8yFfqi06CmE9sSVZIx2AUFk8eC
	UojXqdCh1R/rzetNxz7odlO0C38xez3cNO/SwOOySli+PuNSLrQroBbXu1A5eo+oL8OXz80Z/OqbX
	G8ps+nAAKd92Q107mGyn34XBZFWTTYpgOjE/Ha69EGvBVzBM4ln/uL3YFMSJ3kEW0Iwlohs54G0uO
	20PbtD5B6xGWh7recBiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shFIc-0000000ELkw-220P;
	Thu, 22 Aug 2024 21:24:54 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shFIV-0000000ELhL-1lQz;
	Thu, 22 Aug 2024 21:24:48 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724361878; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=SKAst/GSUDdpDsFfaCCUvjT+DpgUBLoA3iDBj9JSQZBj4iy0/gbaEyPSfv7j2d454jUWgsnpLbF+3dHNhUPRq0rRsHTan1cJuEaX3TIVM/KXJIr4/5WLAJ92IkJUvDEHYDs0xT5EjqQZPOr9Z9s1ad9ffEUwK64y2/czSoA6smI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724361878; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=U9XVsD5fvKJmyv7C72+pHv7QCs88k6hh5p5gXJ49Tv0=; 
	b=kGee4qNF1CjouS8zw1FNBVRBixtWD5JpvifX62Oxa/Pj+n+eSfSmU1bJhs9SjWGStYts+oIB3aoYphB/qkvDwcGMtZ8JNhQEVCFJF1kEW/6OSpaYPjXC9VB9GlyF7rQ4BSPlMJXDDpgf98iXwL1VOEFqmBfb4hBUs0m7Ww+FYoc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724361878;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=U9XVsD5fvKJmyv7C72+pHv7QCs88k6hh5p5gXJ49Tv0=;
	b=WiV99nXBDLXF0B4t61a61Fz3kBa5BuTFn8hnpVE+d+7bxFSRViQehu7Xobr7WvsP
	gv+JgsSXAVG6CPFtajw8dFO8X0dQBclymCoWhWczRVUS1HI7qMLgrYtF0P/C3rJTX3o
	DhIgx7HlgU8lFfHIGVY3b1Vt6SS3lK0pSWaZdVE4=
Received: by mx.zohomail.com with SMTPS id 1724361877557950.7494035533349;
	Thu, 22 Aug 2024 14:24:37 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v4 3/4] mmc: dw_mmc-rockchip: Skip all phases bigger than 270 degrees
Date: Thu, 22 Aug 2024 17:15:33 -0400
Message-ID: <20240822212418.982927-4-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240822212418.982927-1-detlev.casanova@collabora.com>
References: <20240822212418.982927-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_142447_541448_47CD3511 
X-CRM114-Status: GOOD (  12.17  )
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

From: Shawn Lin <shawn.lin@rock-chips.com>

Per design recommendation, it'd better not try to use any phase
which is bigger than 270. Let's officially follow this.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
(cherry picked from commit 2a53aab5cfa43065b2e979959d727332a8a03c03)
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 drivers/mmc/host/dw_mmc-rockchip.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
index 2748f9bf2691..1458cb5fd5c7 100644
--- a/drivers/mmc/host/dw_mmc-rockchip.c
+++ b/drivers/mmc/host/dw_mmc-rockchip.c
@@ -310,6 +310,9 @@ static int dw_mci_rk3288_execute_tuning(struct dw_mci_slot *slot, u32 opcode)
 
 	/* Try each phase and extract good ranges */
 	for (i = 0; i < priv->num_phases; ) {
+		/* Cannot guarantee any phases larger than 270 would work well */
+		if (TUNING_ITERATION_TO_PHASE(i, priv->num_phases) > 270)
+			break;
 		rockchip_mmc_set_phase(host, true,
 				       TUNING_ITERATION_TO_PHASE(
 						i,
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
