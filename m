Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D7A8C55838
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 05:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L6FanwKw07RdR+WoakIR+HdENRr8Fe9vprQhNLqLnqM=; b=M0XAnoz7+tfJv6
	tWrTr7XF7xUW2oeQtxgvkvjqBI4XFhqKAiZWoqjl+zxyOxdNPfPgvRzugFql747IMB9E5X9k5T0/P
	BHfZIbBMUC+6E9E+A1PowZVSOcyzhn2hH1QSVcM7upEY12V8pa/VXxrEu4yV5TOUFP6LVV/fAgIIj
	enWKpxcDMLTEpRYqpsgY2b8UvUAmiTuoYnH0+ZIl/nj4qLyAbZUIRkIp/pdDpU5SDao/akawPcmRx
	QDNVM6JrxRJJOGxRLR8wxVySdFngoS6DYUCGG/AFctUpWsRSRcevuehAI1B1UOci9TZ0ih22EQpqg
	ExwIK9gEt3pIP715cehw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqYx-00000004xPq-3bHn;
	Thu, 06 Aug 2026 05:22:39 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqYu-00000004xM6-3dax
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 05:22:38 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-84e3007a2b7so1660250b3a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 22:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785993756; x=1786598556; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6vOL7cmzT8i6DixZXZmGfCOr4Bi06fOU2/O4s9agm2c=;
        b=R7HJCminUki3qI7H3nIiybcAatbDIS+n8qdvjIU0DiGgC1yOzKuthGKRdpkCqRALjP
         GcxKc3riDiAclaxSH8RCbB+vCqBgWxyF70FHinsqMHVEw7LkUvxnviLdhC3xiw+VK8mr
         f6EDXxtI2/ffCwJf+zLqRweZVdUoCAtP9AG5tucj/GwGyHUvNLJn4VWo0ebr92Ua4qzX
         rFn6MfDmu8pTGTK89+kq8bP84zXXsfzQR6nXyz3fdph7o3om+QDZlPD7qe60J4/R+dYV
         pj/gJS8TZ6+NsLlkQ+Qjzse5YR7dNNIm9vHR0AEFzBhJf9PIL1HnuMbbDntlWlDDQ/pj
         QdlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785993756; x=1786598556;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=6vOL7cmzT8i6DixZXZmGfCOr4Bi06fOU2/O4s9agm2c=;
        b=KcYCgky4FFInxqNccXgy2Qq8BJ1uWRQyJfvhvLlyaFjqFaoaeRZZkOblDXgwue2G5j
         e6OLLuxtO7qs9M97QfzsU31tbrqcZ+2N67Qcq0qDWdq7V8aO9K/RM1beWZDZ3o4mxXuO
         /MEDwgoco6EhKWXAx7wSGgethsUiTPTcMI37DDLnZ8UjgTvNnzcr5OY97oIrIYkc5BG7
         pKad/keRmvnHkd93lhNrVCmy+3i591R5zMDdvQI//ka5a9ljNSipsKJZx9LAG/edHHy4
         q9oPU4AcY4yChy0Q1eKsmu2rVaI+UBywVdKfEg6RvZZ1Bcd8Dm9q7jdGm5bh/uQ6Z9TP
         LUHQ==
X-Forwarded-Encrypted: i=1; AHgh+Ro1L8F2tBabqbr+4Wj0w2OSDRK7L/sSqjvK6PnywhEFgN5cNCtN78Npx5Kmexy6frFV2uHHkrw8NC1dDDPOqQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxJso0F7dW/H5AYmBx0hjuCZ21n4I1EGw4YC6kvmAqt6rMg7+CH
	m7VIONtPaOWFzVvkj6RdeGO4c+KoZRBnIzNggpeifOau2z99SB2od152
X-Gm-Gg: AR+sD10oKwC02QzojhPdVA2APEaTzUzqIvVaOnqIiHufk98A5JgHmQUCjKFM/ohIMiF
	TT224p3JMuNHC0upBxjax1Dr0UFjmwzMHRS/jpHODqj2tdOQ7CqW2xx5daxDW70CXnK5ZPjWpw/
	YyJeD0dDm8EEZl909GQ8vUkomJ59x3rE8yL/zacxmOtjOOwpuefeVr+a9s+fXMUDGmkPVJRsqfQ
	dbeYpZl/0plT4IlTXyW39Q+iF3ur4iTAr6Is/f4uTOhCitBH3CIQKI9oIOkeeJXoBGVUUoU9ScE
	uyEb3SBVJ9KMnLJtgT7M+Jf7P5rc3r/E5TK1l+zk3tTl5Ff33gVKiaRER0JuImlSf2VAY4Zu6Vg
	EMrZU7au9uzhwmy682b1EVM7B5eJWRlNJVOVtjYCcWrTNs5XhZOqS+/uygNSK804NZKIlWoiGLX
	V9Zr08yHYytmNx5DHqOde7xmsN2RcmaCitkSxP50LBepPO0gJNHN2IHAMrlx2QcnIWNSkbuvwMn
	TEuYIz+93yhAjTZ/Sih/EWrRxWGdC1Od6im9u4M8LX3Xkc8Oaxl/0JWa+B14YWK+J1+WI1IyJBV
	fKST
X-Received: by 2002:a05:6a00:2d8b:b0:848:3e74:85eb with SMTP id d2e1a72fcca58-84f2e014749mr13013714b3a.1.1785993755907;
        Wed, 05 Aug 2026 22:22:35 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f45bc9cffsm554279b3a.59.2026.08.05.22.22.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 22:22:35 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Mark Brown <broonie@kernel.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH 06/14] ASoC: rockchip: i2s-tdm: Inline PTR_ERR() in dev_err_probe()
Date: Thu,  6 Aug 2026 12:21:28 +0700
Message-ID: <20260806052136.21034-7-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260806052136.21034-1-phucduc.bui@gmail.com>
References: <20260806052136.21034-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_222236_916500_78A9A74F 
X-CRM114-Status: GOOD (  10.56  )
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

From: bui duc phuc <phucduc.bui@gmail.com>

Pass PTR_ERR() directly to dev_err_probe() and avoid assigning it to
the local variable first.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/rockchip/rockchip_i2s_tdm.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
index e6229a325ffe..c9ad769a4072 100644
--- a/sound/soc/rockchip/rockchip_i2s_tdm.c
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
@@ -1263,16 +1263,14 @@ static int rockchip_i2s_tdm_probe(struct platform_device *pdev)
 	i2s_tdm->tx_reset = devm_reset_control_get_optional_exclusive(&pdev->dev,
 								      "tx-m");
 	if (IS_ERR(i2s_tdm->tx_reset)) {
-		ret = PTR_ERR(i2s_tdm->tx_reset);
-		return dev_err_probe(i2s_tdm->dev, ret,
+		return dev_err_probe(i2s_tdm->dev, PTR_ERR(i2s_tdm->tx_reset),
 				     "Error in tx-m reset control\n");
 	}
 
 	i2s_tdm->rx_reset = devm_reset_control_get_optional_exclusive(&pdev->dev,
 								      "rx-m");
 	if (IS_ERR(i2s_tdm->rx_reset)) {
-		ret = PTR_ERR(i2s_tdm->rx_reset);
-		return dev_err_probe(i2s_tdm->dev, ret,
+		return dev_err_probe(i2s_tdm->dev, PTR_ERR(i2s_tdm->rx_reset),
 				     "Error in rx-m reset control\n");
 	}
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
