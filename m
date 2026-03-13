Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEF9C105F7A2
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 13:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BrjB7/YWfftIIFA3pAxMrPCJnxxgIUfLups9scnjPQY=; b=nBzTo0q6zo1aBT
	wAigtEknukPuAARN0X22nSvAQ9sBGOurdnoAiZdFnqM3R/zt9EIqV4LXzl/cB7gGRcyf4YfwK7moY
	URBJoDX3I9y1F1LjJ0JQi+4WS8mvG3AFapmVaFtGu8Yn3AvALyxbiH9px+fincnRz7Eve5x+7a1dy
	jctxSPLj5HqxTh5uCPnmpcFqlgM+7h/yGiN9bzuFxN8DNV1HCVFXmwOlM3v4xabfSs+qNVILqpJ3W
	mrBQjFW7MoEc831bReEBEONB8U4Ivfx2J0TRpPk5AyMr5iKyYvu4TV8e4agwYj4kvmB6Ib+q66REk
	TkVe3FJ7jdeTNmVXwn9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12Id-00000000BUS-3HWw;
	Fri, 13 Mar 2026 13:11:34 +0000
Received: from mail-dy1-x132f.google.com ([2607:f8b0:4864:20::132f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12IX-00000000BOa-49oM
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Mar 2026 13:11:27 +0000
Received: by mail-dy1-x132f.google.com with SMTP id 5a478bee46e88-2be1b5fe11cso3337429eec.0
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Mar 2026 06:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773407485; x=1774012285; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dX6awnM4LP0GNDRiHh+rtw/bMTX5xX0dYocQAg/Nrfk=;
        b=OUOoKCl6XpHTf0JUx1q+denra5TSQ/R9MhU901aCJLjOt5qHyRn9EDkznxmHCqBiAt
         s0hJ6HVIZYmBCfDm/61WELsKfTKanh+3KKeLEb0NcWdIpQYv17Hr45Fm9snW8FePcQto
         4FlA/BLyPVz0AemSN4kNiP7gmzXJdIQyDZUcfN1XyqOz92NA9ueV+BDkGEOCo2evdJ0s
         PbHKLJHofurU/CuwRN3XTD7Ltf4aGIBeb2F7erLsWpoonZnwsins0by5OqLXnT+FEHgp
         vIpfbHEfPx2tl/3gh6XCqeIlGaGJ3G3nyG4hZHRukrvEMr/X6zzm56tNhAMYS6fmm50d
         KqAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773407485; x=1774012285;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dX6awnM4LP0GNDRiHh+rtw/bMTX5xX0dYocQAg/Nrfk=;
        b=N6iivBJNhfuEgQDcv//TVy7bTk0sBFOjZwNdB2SbGr6SlH92L3bV9ulMLIH49My/ZK
         1dWLgA1Y6MfrMTDyZBd9ru3CK08jlBff2PZZaMY9rg2oTL+NLkwjooJS+a++rLOQujZT
         r9mCnVJcbe3Ss6xRBY+UG/pYAZP3mgtjkncEeoRF/lr0Ccb7wH37rEPDR/TH2MCj/vpJ
         68P73RnSt/DJbTROneJPTI9fwMJTioFJwuxcPk2wi3RTVUwMokDLOcoNDfJmKvk465lO
         NOHE+uYE21YQ5aqII/LqjIclYlZv4ahmbLUALrxkaNu7G0P1EL8sq5yO6KhX4RBwqgZC
         yBQA==
X-Forwarded-Encrypted: i=1; AJvYcCXuoPOevLH729qie1HRLfgOfu5EfLm1DUHhu/TRGZhbOqBGfB76KIU045hJgb/cL+olHJ8ZAS1BOnBExCNR3w==@lists.infradead.org
X-Gm-Message-State: AOJu0YyDfgGvaQLyyscFZcwtMk+N2EpVFJgP1hkLtzLaLeNK7wJyFFry
	u5dc1zh9NJ1ZhxJmKoC94KvFDxvbW7hWUbudS7OdX5cDyMO1hdY3JkBK
X-Gm-Gg: ATEYQzxN6HMR5eQ+z1dPl5siGG81oMnMhZIEOMUH8BJEtlDyLKFEgGaBnlsOhVRkLU5
	wX4z+C/ddsRe7nq6VxAShE6xKscbSGU5Ay+uQnYjthxtABGduiiCw0F8JqSXAVE506W75rWW7It
	83OvX95YQJ3RPkCtOhhF//Dxf9ETzJSBeNDzCBlQRkR3usp0XYNKXQB25uPotmvjWso0lwhqhR7
	2nALbAcLgQJb2C2Mf2t4FQkmW5o5WxBFc7RfsMIUR9/UwNPXQpqnjXIzufRGe02hia09+dJBgOG
	ujmF+CQ+8qU4bY6s8HF/HuwAL7rGDhuxOJMv2mbZHOzyQnCDi9NEd35RJXKVbFCgFGrMIaMRlfe
	+YM49ML3auhau/CoRnjJ5OLrFJbAW4+PFdb8WV2MpvugPyxxn/CyeMDmEURlBOjmNKxdxLojcrJ
	xu9YWeJzTebPgXboQaeS1lIVtyWpnns21OXL3Io3rGvpeO90o16z4AHf71cDI8L4q1xakvJ6E09
	Dgv
X-Received: by 2002:a05:7300:e887:b0:2a4:3593:c7d3 with SMTP id 5a478bee46e88-2bea54ff553mr1560973eec.19.1773407484713;
        Fri, 13 Mar 2026 06:11:24 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a803:148f:b6b5:4:db6e:9a2c])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab5702e5sm2602315eec.29.2026.03.13.06.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 06:11:23 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	shawn.lin@rock-chips.com,
	Fabio Estevam <festevam@nabladev.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v7 3/4] dt-bindings: arm: rockchip: Add Omega4 Evaluation board
Date: Fri, 13 Mar 2026 10:10:57 -0300
Message-ID: <20260313131058.708361-3-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260313131058.708361-1-festevam@gmail.com>
References: <20260313131058.708361-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_061126_025528_137DC94B 
X-CRM114-Status: UNSURE (   7.27  )
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

From: Fabio Estevam <festevam@nabladev.com>

Onion Omega4 board is a board based on the RV1103B SoC.

Document its compatible.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes since v6:
- None.

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 91a387621bcb..1e5be6c809fb 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -808,6 +808,12 @@ properties:
           - const: netxeon,r89
           - const: rockchip,rk3288
 
+      - description: Onion Omega4 Evaluation board
+        items:
+          - const: onion,omega4-evb
+          - const: onion,omega4
+          - const: rockchip,rv1103b
+
       - description: OPEN AI LAB EAIDK-610
         items:
           - const: openailab,eaidk-610
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
