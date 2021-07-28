Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51866C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 12:27:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2357860C3E
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 12:27:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2357860C3E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7DjjwKkQZevOZiFaXPZ2TViWSLa4h5+2DKJkmg/TJME=; b=Xk5E03e8g9a8ul
	d8YUT6oAeinASL8kpxyStcEDfy1zeEMao4K+zFPxGLdSlcTbwoX1OuseuEpg+vuaVxFD8y2phkfqP
	34c1doIw9NOCBUTUzIu8p0AEU/bXyNhEUR036LojLw3FcAD1RVrIFgkzjBjtrOIAUF3oukSa0za/3
	Eu3RGrajMX3r86EuWeZF8fvCBrqeSWS0M14yLAP6kLcNX6aOqqlPswUNUZ+Xt1l4YxvM8CusMugC1
	GlWVHVDWhODCcrmvj3SB3m3ffKlv146dP47ABHDI6n/PxdOVt4PspyIcEz1TM+4lo+UMOtdUMa2qa
	mOgSNY/QeHmX4XWLKMlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8iew-000d38-1z; Wed, 28 Jul 2021 12:27:38 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8idh-000cee-Iu; Wed, 28 Jul 2021 12:26:23 +0000
Received: by mail-qk1-x72c.google.com with SMTP id 184so1979365qkh.1;
 Wed, 28 Jul 2021 05:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=saUJiNRMbvLZyMVotP5YuX5FwxQa4tigZr/kaBCa+Io=;
 b=K4v9CqjZNh8twTu5xrnxNT8X9vHL3NFu9kkZsyURLaTJnoNl2/ZwSIiaqs+cqWxZad
 bY/UrFOwxbuO/M3eiSRRA2ymTPp6vYxqfRXnRIq0Q0DGMvpq3qhL2+tIyagxaglPw7mO
 fc2+HnSt+RF7pC/FyHfKjOYOL3IQ1ixEbYK6Gw2i0+PIxY7oK4kmXIoTfj1HxpZJ85j5
 w3/aVtYuvtcc1aiO76NoI7vsstxIhpe3BFfRViapKpgSZ4WJdtOEYF71Qn9SOrrGVTWn
 55Od0ny66He0kH7hV/CAgTWp2YOyiZ69s2/1l1JPUMwT9P1/aLEaKOBiq4qp6iBgcfs6
 9IrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=saUJiNRMbvLZyMVotP5YuX5FwxQa4tigZr/kaBCa+Io=;
 b=E5BLUHX3MB68HV2J1iXqr0BabB0EzcSbaObB4ldc1O9foC3EB46CPuWQfOOZ/yELzk
 PpFpQgyC0wcRopXD9ltLPd6iPwE37oVv1DgjcFIsmFkjjWgKCLBAz84SFR3AZck5W1TR
 6N+0WYIDDs6IX7eBJEL0wYos9jrRqlQbMQq4EWobx9KpbS7+0NoRkFAHRTGsaNjyjAir
 /CnD1teIBoIS2j1IRXo4CKI+a5NdIIEEpzDpoP/P4ndT8s+J5shPD7pLmAYrZflXZUVA
 EC2bB1bf4Ds0qmFPFSrjVJn7clJg3ZZ2neluF9NkoyD7ey9MjsAe/Zjih4H6vfstqzA2
 XjmA==
X-Gm-Message-State: AOAM530TvVeG+cdjTD6IFnSrfaoXUZgHYzZroJKanfDBTooniM9/sWf2
 F3LUPctz7MM/vhzTht4+4uo=
X-Google-Smtp-Source: ABdhPJzxXx1BFjc1KWaI0txpLeQx/KnOb1DN/D+akRYwuwv1Ggv9+kkVmVBuLjNw7rZjDyPaTVd9mg==
X-Received: by 2002:a05:620a:c86:: with SMTP id
 q6mr26855154qki.278.1627475179367; 
 Wed, 28 Jul 2021 05:26:19 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id z9sm2842972qtn.54.2021.07.28.05.26.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 05:26:19 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
Subject: [RFC PATCH 2/9] dt-bindings: phy: phy-rockchip-inno-usb2: add rk3568
 documentation
Date: Wed, 28 Jul 2021 08:25:59 -0400
Message-Id: <20210728122606.697619-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728122606.697619-1-pgwipeout@gmail.com>
References: <20210728122606.697619-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_052621_664875_0BE3331D 
X-CRM114-Status: GOOD (  11.43  )
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

The rk3568 usb2phy node is a standalone node with a single muxed
interrupt.
Add documentation for it to phy-rockchip-inno-usb2.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml   | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
index 5bebd86bf8b6..f16fea5cad1c 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
@@ -18,6 +18,7 @@ properties:
       - rockchip,rk3328-usb2phy
       - rockchip,rk3366-usb2phy
       - rockchip,rk3399-usb2phy
+      - rockchip,rk3568-usb2phy
       - rockchip,rv1108-usb2phy
 
   reg:
@@ -50,6 +51,9 @@ properties:
     description:
       Phandle to the extcon device providing the cable state for the otg phy.
 
+  interrupts:
+    description: Muxed interrupt for both ports
+
   rockchip,usbgrf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
@@ -78,8 +82,6 @@ properties:
 
     required:
       - "#phy-cells"
-      - interrupts
-      - interrupt-names
 
   otg-port:
     type: object
@@ -109,8 +111,6 @@ properties:
 
     required:
       - "#phy-cells"
-      - interrupts
-      - interrupt-names
 
 required:
   - compatible
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
