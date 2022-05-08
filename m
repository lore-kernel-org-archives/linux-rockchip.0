Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22FCAC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 20:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GR2Mqob1pbbmyqyAEvQTaHicS3PW1q6UTOI88ydJ/CM=; b=WEcHy7jJO4gt0y
	cQfOHXq2doIxgarIcO1GOmm2Ppj6Pr1GDBOHeNJvn09RFrDlY/hSOtg8uwsn52zzjH1xBrxFmh8Ix
	1+ek4mlZnTj2Dnkx4kbx/CeNg5qezWwol/HjAHEWjHX2hCALOY628H9yvcN0FjFRw+t993yK3HonW
	pWBmg8vScoVJYcv8cbtdV28XqYIHKpGdDhP54POwy4TnKDIJTB1PRq0FSjv2u+mBuJWhUL//qe2DQ
	4kyABF/ko9e6luSs0vobBPBL9kNTg0irfdqy9U0WdJyOOtmDXBpmEbQy2vVZid711Nsx5qLQDH/Qo
	k21kc/lggiXR66X6MqFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnnWl-00BMUI-L2; Sun, 08 May 2022 20:29:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnnW4-00BLwj-5X
 for linux-rockchip@bombadil.infradead.org; Sun, 08 May 2022 20:28:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=ZivRzjlDS3OoPoRTHkJnPDZ3sM1VA8uv4BaZC71qcQ0=; b=TCNKwuhMjcV9SRncsDJgLYZJnK
 GYTol8S/8fRb/y+wLEMLM70nhwR/7e/IYvaYn5YS5irHnI0d3DFgo3Q57NxeBB76GeVbWMo5LYSUR
 GcyUq+pMs5nI4OW3HMsXZRz8pM7U/9mePGUJVtIXMfmmYihUa+TaXOKLStC8AJCC2WmNykbT22l1z
 XKsHOrluKxVXrfRyTOdGfAZfrv9NkfRNJWiwQ3csH+LR7jutzBC4v7ZbmC/P8F0qhSDm1yE7mUN5v
 J6Pbr0ekcsl9vzCdvyKzg9Vo2qxuw4q6PDAmpkdrV1c3k3YAjEfB5b+5A6DEOMa0/RP2G3VuRPEMn
 ZQGyg51w==;
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm8u-00CL24-Oq
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:36 +0000
Received: by mail-wr1-x429.google.com with SMTP id v12so16672049wrv.10
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZivRzjlDS3OoPoRTHkJnPDZ3sM1VA8uv4BaZC71qcQ0=;
 b=q/ppPaIIl+eqJvd8tj15Mlu/trxXjFCeCmxtUyJ5cmEHGhk0rr3TVqFtvFdE2vJYcn
 ElQ3xcAP5TfTxgz7TBisUq0CV2bqoIQ1IlukREGRA5lUKE4LBFGxovImG/SXa5XWw46m
 dLvmZ8is7gwVB9yVwJ4Kekq5/k3HhWUy7lRHeZgzoXuW3jTC/guENjHIyHB9Jom33MB5
 MGfsQK8Tf6Bet2xwwhKIfZYbBLPI3UO/hpwMUznRvhpBmdX/ImnGrp0YyiubDJ6xuaiw
 cJuc/v54Lxvr07H1zWNlyo6vONTs+gsd34B/MPNeAIRL5xpPRoIw/6ezdiQUJqlODTV6
 7b3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZivRzjlDS3OoPoRTHkJnPDZ3sM1VA8uv4BaZC71qcQ0=;
 b=FHO5pyG8oR4cIim603WEq4/l3J1hGmMChw8xkOyrnqtxSx6B8slUDPOlAXp0MHMZOW
 ZMSAUC+sxWbPyb/ZUsMsvmke4P4pRJFjRyR8aFQYt+a0to350Lwp0ndTHSs5Tj6r8jGl
 uDrqZefIYgkv+Pru3Tds2KneDd5vPkPS1sM8PGYyTJqAUuGWhvN6bW+BkAANPndDL2Qe
 U5s1YXqRPhl5NDR/4aIfbB+UTDKTNB38LnW14y9cVuisbDaGdLbWdL/a5KHX+mWBm3lP
 grdpDdy+3s9+nJybDTSJUUvAYec5Uqj9vOzwENt/TEZWeEp/3x3cGs8oOvEXTsOlLqll
 8Wxw==
X-Gm-Message-State: AOAM532NvcQce2RxkgiYcPOfymcfcUmzWAB8mHNXICGIYa3f3DD4gATR
 N3UiJGmrxmTmuNWmLk5dRMEuQRgYYRPFSA==
X-Google-Smtp-Source: ABdhPJzWk7REzNl7td89g1KNSNNFMCGphZgLl+KXy+0Kn28KbOpy+jUc008FX/AJp8UzERzAeDGPKw==
X-Received: by 2002:a05:6000:1707:b0:20c:660c:7c78 with SMTP id
 n7-20020a056000170700b0020c660c7c78mr11031410wrc.150.1652036432499; 
 Sun, 08 May 2022 12:00:32 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:32 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v7 26/33] clk: rk3399: use proper crypto0 name
Date: Sun,  8 May 2022 18:59:50 +0000
Message-Id: <20220508185957.3629088-27-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_200033_635335_605F22E5 
X-CRM114-Status: GOOD (  10.81  )
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

RK3399 has 2 crypto instance, named crypto0 and crypto1 in the TRM.
Only reset for crypto1 is correctly named, but crypto0 is not.
Since nobody use them , add a 0 to be consistent with the TRM and crypto1 entries.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 include/dt-bindings/clock/rk3399-cru.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/dt-bindings/clock/rk3399-cru.h b/include/dt-bindings/clock/rk3399-cru.h
index 44e0a319f077..39169d94a44e 100644
--- a/include/dt-bindings/clock/rk3399-cru.h
+++ b/include/dt-bindings/clock/rk3399-cru.h
@@ -547,8 +547,8 @@
 #define SRST_H_PERILP0			171
 #define SRST_H_PERILP0_NOC		172
 #define SRST_ROM			173
-#define SRST_CRYPTO_S			174
-#define SRST_CRYPTO_M			175
+#define SRST_CRYPTO0_S			174
+#define SRST_CRYPTO0_M			175
 
 /* cru_softrst_con11 */
 #define SRST_P_DCF			176
@@ -556,7 +556,7 @@
 #define SRST_CM0S			178
 #define SRST_CM0S_DBG			179
 #define SRST_CM0S_PO			180
-#define SRST_CRYPTO			181
+#define SRST_CRYPTO0			181
 #define SRST_P_PERILP1_SGRF		182
 #define SRST_P_PERILP1_GRF		183
 #define SRST_CRYPTO1_S			184
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
