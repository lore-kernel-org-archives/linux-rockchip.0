Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07491EE0AE7
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Feb 2026 13:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jkhgvKF3rnU+e0ybzGN+OqRQJnZHZMOgvoMi4xDgutI=; b=r0XuY0a2lVedId
	NTLocD5FBPT/kBesSy6B4t2GVpbkJQ8d11xxL7jfX1n3cMbDYbhxsIMhyjsYy8s/1vAiU6wokI1RA
	BzKZ0uDKgBpLvl5xjDOSJzI+aqVnaKiO8NYSJM8P3pcQ/1kk9uiGiCjI6zn4IY9givQpY+1vOBneq
	J8Chu8jpC90dpxPKftmv9UuMZ6serc1nNRKhwyKfeSD0dJ3lyFtTxfks/JHPXoECuRfrgMgnNZoQe
	xtxcvP1FaiJNpcO139LXKC/RVG/8DXUOnyS808C2ip9pFuiu4OGhk7I+mTR47kTys1KMERN5iGjyV
	mlCHPRz8fJzh28wroSzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voiCc-0000000CTDL-42Hy;
	Sat, 07 Feb 2026 13:18:22 +0000
Received: from mail-dy1-x1335.google.com ([2607:f8b0:4864:20::1335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voiCa-0000000CTAZ-2UA9
	for linux-rockchip@lists.infradead.org;
	Sat, 07 Feb 2026 13:18:21 +0000
Received: by mail-dy1-x1335.google.com with SMTP id 5a478bee46e88-2b8397e3e09so3608255eec.0
        for <linux-rockchip@lists.infradead.org>; Sat, 07 Feb 2026 05:18:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770470300; x=1771075100; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PGbAXMH3pEHrAeasqKpMCINB/rzrMFrYvbmEBtzsJ6g=;
        b=drid9XNe1ZiD786Ye4ljTwe6STEe+bJY+opy5cdue72u2B4zNX4ALPAw9BK52IFgQc
         Serxcdug+qdSMb9xMKXc4kL7+eqr1RDvqomswM4AVwIE595UeB1V88HIPHX8OdiU4zoO
         cuFTDm5oiVtWI8tDiYck7pfi2LtLtD4u4SsfeQf2aMScd8AkzlOtA9FMOpH7eFvKcAsd
         t8OntQ2xnCSbejc1w79qVATxOupCleRb0Q2cCXLVXzayI8lrUgLRdLACuZ64gAtuD08M
         prpgAu608frErNwLbtmeXYsVBdZ7R6D+hyEOoIsIEMasIMOIrJSTZfIiApoUCYuBENlo
         S3Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770470300; x=1771075100;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PGbAXMH3pEHrAeasqKpMCINB/rzrMFrYvbmEBtzsJ6g=;
        b=fNPQ+gPqiosdOn+2JgJ02C41SngZyMrP5tPRN30ALtUEkIBFmN6HRQl5Y4AkQRWKVm
         puAsUIuNXJRSxiQj0CNSbdIHpEVWqcBLhHf3AeLCii01w3WXuzJ8f/sw/E5AXtVktNTU
         LqwuCUUVoz+ukXg70JIVoEnswTLGFZ6DeliTfxlGW6ZqnOuqAZZV/dUV6KjgZJVe9Pbe
         7SypaVuOH7UPOxLzuVZ9FSs7h+tGwZY5d1WctYU947P93dMf7KIwluhtmgzRsKNt4BS1
         qWbJlSlxb60mwGxeqQOldMPno04TwazVebBYzV0x+eJQVSOUaaKSHrJG3IwpyFR43sbk
         yq9g==
X-Forwarded-Encrypted: i=1; AJvYcCW6Iev9sHv5k8E1nXALCJwMOX9oxaYZZRUeQxvgsMplZK2GU40bAfxVh6JYG2eODZfrqhfIqgqDXxVjHCFXNw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1b7SnYj1chmENmILR8Fj1ewuclGCjtm4FxRcsfRU+mIZkBShf
	Akrl8i5c/TZsMyuyP44IkG/k158bZ+rrRj8juooTBH7gUMV+HF+89UMh
X-Gm-Gg: AZuq6aL2yNV/N2jf1E1umosJZ8MNv/3bteAl9xItIBcqEtmytdpw4nF/R+umxfYdpNh
	nU1o0p8+d6vGzENFwEd6Ho3zoRr7w9lyhElyE5a+QsOWzOJWHiX5Jo3q9gs6DuyROr86tWp0r4K
	H8TWcfND2QK0i9J0qT3MM8NFlNByk7LUrQmd7wUzFjOxXjYEMLITGxCLmn8kCnWe7fbb9+pTW6V
	IopUrKBH6frU8OXTdjtkGiGWERIQz9pVVaomg/32vS0L9P6O+ev9IbznfpHBjpbiBEBSax2apHZ
	sPlcDEDg1GLHmS9uBnxvMyGzXpD9HhaGP6KCO1ksvZQG19tF/3gBwyTIx1Ux2VZtsOGkzwEDBhK
	YwyqjB401ziABuwU73dsjZkaxCK2P7qBhnzKEG70aRC539lSFyd8JxEn4q5JiQes5SQ9Aniv5cZ
	U4dHY3dfeqEdAWi2LuZfWcABq+
X-Received: by 2002:a05:7301:1293:b0:2b4:7c92:3f7c with SMTP id 5a478bee46e88-2b85645ef66mr3452021eec.6.1770470299657;
        Sat, 07 Feb 2026 05:18:19 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b1ab:5cb0:a2f8:764b])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b855c7f5fcsm3688627eec.29.2026.02.07.05.18.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 05:18:19 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v2 3/4] dt-bindings: arm: rockchip: Add Onion RV1103B Omega4
Date: Sat,  7 Feb 2026 10:18:02 -0300
Message-Id: <20260207131803.2834749-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260207131803.2834749-1-festevam@gmail.com>
References: <20260207131803.2834749-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260207_051820_633075_8CCD6525 
X-CRM114-Status: UNSURE (   7.87  )
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
---
Changes since v1:
- Fixed sorting.

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d496421dbd87..2d90df71475b 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -802,6 +802,11 @@ properties:
           - const: netxeon,r89
           - const: rockchip,rk3288
 
+      - description: Onion RV1103B Omega4 board
+        items:
+          - const: onion,rv1103b-omega4
+          - const: rockchip,rv1103b
+
       - description: OPEN AI LAB EAIDK-610
         items:
           - const: openailab,eaidk-610
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
