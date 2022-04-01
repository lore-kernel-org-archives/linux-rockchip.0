Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90D80C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P+IIUY+evwLGaeBEWKMa2SnaiP6TWfIQJS0QiACIM8A=; b=sHZxm0gvVZOZk4
	82zNJI9tMWSIeATI6DEk8ePsyeV9V+dpjdavp96RiDJquwPXtusJxEXeZiWCkWU/wor5DQVRy59PM
	TwNNdKWNKl6ZDmL7DNaQEsHnmxjqdyZFSPIClXPpG7fktkJoEC4df7+4SDE0tgYTvb6wLctntymjr
	GR9BqWunqKmIsqLoAC8DbWtMfBoZ56SEcv2Mxi5DEUzylFAtFMGCAtAoh978g+1ra7BPizm1SeXEK
	vsAkniF4XQeYWh8uUHfLqvgaLdLUe7xD+pWGZ1asZEWK64l9KIpBlvXuONdHkL1Zg+cLT+HVM9qqy
	nVvDxs/jTC1kQJrpmf+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naNxG-007CVV-Gs; Fri, 01 Apr 2022 20:33:10 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNj8-00759i-1a
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:37 +0000
Received: by mail-wm1-x32a.google.com with SMTP id
 c190-20020a1c35c7000000b0038e37907b5bso4278371wma.0
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VA7lZMI09hkOCb1t1NHcSXDJ/Ud3y9Ws6eCmnd6/DnA=;
 b=60OrDdyHjp9nw+P2Yzcqqx/E/Pf+kRyXjdFpsyRPOyvM6np5kSCIQc5xQApkaVXTiJ
 /VCbx5f9uVjXCF0l8q84Jmztm6ft5y2Sl1mV7i6eg9MfD3VnM8I6aYjn+K4IdglVHoWz
 Vukn604MC0kR9iOZr8PJn701uyNYGY5v/AoVtCcem0cMc05HVEKkBNbLhhIMZy/HM8CW
 BSh0Pn/EMal7uQpN94+YQHP55CTevQ0EWTIUGwUE7lM7So8uWKheD/9gosk27ScdYxom
 OXpXRuwutGvJPJxvuFRdlKLDBT92QezXn1w0HVh6+FR6v/b8f5lEPbWgh2Bw8X8Ujc42
 QRwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VA7lZMI09hkOCb1t1NHcSXDJ/Ud3y9Ws6eCmnd6/DnA=;
 b=nkMYmggA95r6huQ3UMUu1NDlnmXC+le3/WJ3nEIbcPn11rW18hTsQee5wzNXlh0Aor
 uSCD8gFvRFFa+pS0ZGpTkuADwPZG/L7a7jWT+OnnjSkoZZdtVA/i98GrUgjCcS7OGzT0
 qu5SJNOJ6NMw5ThQANLqWiHuAuH4+khAoU22UcOOQ9tcbx0Vlp9+ARNHKHSIv6e1+JHA
 M/cMs3ZCqnzxXIFsk+Ao2C0cKWc7wgUZgw3bxrqYTskZ1lXsOJl03vP5dhhJD1zSOcxj
 JZTMisd1ojCcpK1OUEE95Jhhaw0syETUuSEJtm9e5MQn08N3tPTbpuZcHUpKF8H0Frmv
 XfVQ==
X-Gm-Message-State: AOAM5318ZBDGSI20NTSf2OuBL3xnFr5VKAh7ORFJO5aqxRFZ2cSvyjit
 M2aY3W6wKkKXuZeRcVWDk+hb+w==
X-Google-Smtp-Source: ABdhPJw3yPQvgsyzsSWukxXTGlj1tGCN0xmAmlFqgEF+EK3zw6qbwSFpfb6GYMFhvcLr45hmF5BUtg==
X-Received: by 2002:a05:600c:154b:b0:38c:ca19:357d with SMTP id
 f11-20020a05600c154b00b0038cca19357dmr10443719wmg.51.1648844312844; 
 Fri, 01 Apr 2022 13:18:32 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:32 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 30/33] ARM: dts: rk3288: crypto does not need reset-names
 anymore
Date: Fri,  1 Apr 2022 20:18:01 +0000
Message-Id: <20220401201804.2867154-31-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_131834_134546_3A92C296 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

reset-names are not necessary anymore for the crypto node.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 26b9bbe310af..50f0890b3f6e 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -979,7 +979,6 @@ crypto: crypto@ff8a0000 {
 			 <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC1>;
 		clock-names = "aclk", "hclk", "sclk", "apb_pclk";
 		resets = <&cru SRST_CRYPTO>;
-		reset-names = "crypto-rst";
 	};
 
 	iep_mmu: iommu@ff900800 {
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
