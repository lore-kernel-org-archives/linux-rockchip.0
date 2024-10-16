Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66CABD20691
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 02:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PTD4QgFA6WPomkoNyMcVabKQPnyc3kdtCyyT94FedDs=; b=iH8FA6H8LFjMTh
	spq60A90h93//d9MKlK2Mfihz1gxaPCzSpSYR3Fo39dwZ5m7mvP6+J3PtoEiMB/4Yn7XM1Z2S+jzw
	dn9aHtnLngahKKZpe9b35XCLDCx6hhakLys2VAFp4AN2mTty2HfEhy1cC5NLAAJ0paid0LT9N9fqO
	/WBs4b2dwunSpZHzWz6ZaudbjLupl1Z8yW0GjEHHXDmkih64yagNLLjyTgcjbKbJy7/6aatGdHWmG
	GTqb65OVeWpzJvKdLF3xuJdUSp8aA2pucixV1pUDQ0d/o5bfRVzVymn/rG23Ee86Br118grLfSRZS
	97mlUw2Mce0Fo8D8LK9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0tuS-0000000AFEt-3Yji;
	Wed, 16 Oct 2024 02:37:12 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0tt1-0000000AF0O-0gSO;
	Wed, 16 Oct 2024 02:35:44 +0000
Received: by mail-pg1-x536.google.com with SMTP id 41be03b00d2f7-7ea6cbc90b7so121276a12.0;
        Tue, 15 Oct 2024 19:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729046142; x=1729650942; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Tnt5DpGHzegrynfkadyD2B5UMZRREmWTkNZg6fg83aQ=;
        b=NVAi9+2O19uCihoRWcG+Rgh6kl/fUe266y9dBh1rpC7IKR1mpJx8AECzRwCsIhDEU6
         YcqzCoTFBg/+SN6mOqFSmeNFU5NY2jjQ+HuGZdidrtDroNgIrQm8FPFJQpiuBI8piuzr
         0Epuyt8hmXkbPrLGLsPZAdpCmzlLBEs/wveHLmfy7ARzgp7+MHN+6BfiYJxDc430xjBI
         p/pcuHagY4aY2B0QzRQ9w/rogICoRy44M9DnOCgHoy4wq0MVrVYCFWDJHTqNdsWLwd54
         UtyJup0wl0iMYIfO91RVmyU+tkD7Sq7cQNYMPvbWFhhTVKJmkBQ8aFBqX6THkl7cGQQ9
         HHog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729046142; x=1729650942;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tnt5DpGHzegrynfkadyD2B5UMZRREmWTkNZg6fg83aQ=;
        b=b5oHFxna3WtpZvxPFAyQM6qiBQ/KiYFP4xYJ+HJ7Z86Rw5lrfKby4kam2jw191vOF1
         9B1IcSBZ5arcMgNK2Ybu3JPZ4S8wG56yCqAq8392/OuPuY4F+3H9RCVp7D+H/8fkGi/G
         OuT8e3GqBYP1Pwy1nH5TxazX0GxboF0ntx3wmEAPlYBp4/tkXM9BsgWW8ghUeSNYJtqf
         rnPGGCuu+vbw98dSISrc8d8tjA0Xg9o8vNJH21bQ6DKXL5vIKdC3Nbvz7bPRwC1gRWy8
         L9e9zAzru7sxdG0WsCbZ9P8l/NR+CcsBh/q3jb2+L4r7y4eKD/b2HRfrPX/S64nJSGGk
         wqMw==
X-Forwarded-Encrypted: i=1; AJvYcCVASl3UpkLUpitDRlW9JEAxpLPui14Rx8DYNEWlQyl1nJuRZugn40G5OiLIEXZpKIiUYqA+JlaskLzXkbK4Czg=@lists.infradead.org, AJvYcCWjPjFL4BsqY99xeE6AB5xlsEKxMIlrJiRIkusf9fO6qyxbEk7gMdY6S//TmrVMczYK8Xw7gqSBRhAPKDsTa7/+@lists.infradead.org
X-Gm-Message-State: AOJu0Yx3l9Nc3BDy+JibgDOXsR13G7nqBStKktQRyWfuUjGvCeq6gUH0
	XpZETvfbbf+EPSfbohY+QMhp4MNyGJHIdC8j1cHhFzhrGtHeBVCu
X-Google-Smtp-Source: AGHT+IFPA2+Q8qPUGLhCU45KSlCy5f4LjPJeH+FKGYtHQrxltaoOTrgJVlSFnWk9ugDrUn2wtSppLQ==
X-Received: by 2002:a05:6a00:6f12:b0:71e:596a:a392 with SMTP id d2e1a72fcca58-71e596aa3e0mr6809808b3a.2.1729046141498;
        Tue, 15 Oct 2024 19:35:41 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7ea9c70587asm2192920a12.72.2024.10.15.19.35.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 19:35:41 -0700 (PDT)
From: Frank Wang <frawang.cn@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	william.wu@rock-chips.com,
	tim.chen@rock-chips.com,
	Frank Wang <frank.wang@rock-chips.com>
Subject: [PATCH v2 1/2] dt-bindings: phy: rockchip: add rk3576 compatible
Date: Wed, 16 Oct 2024 10:35:32 +0800
Message-Id: <20241016023533.12018-1-frawang.cn@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_193543_233702_CC2D1803 
X-CRM114-Status: UNSURE (   8.75  )
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

From: Frank Wang <frank.wang@rock-chips.com>

Adds the compatible line to support RK3576 SoC.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
Changelog:
v2:
 - add Reviewed and Acked tag.

v1:
 - https://patchwork.kernel.org/project/linux-phy/patch/20241015013351.4884-1-frawang.cn@gmail.com/

 .../devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index d3cd7997879f7..1b3de6678c087 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -13,6 +13,7 @@ properties:
   compatible:
     enum:
       - rockchip,rk3568-naneng-combphy
+      - rockchip,rk3576-naneng-combphy
       - rockchip,rk3588-naneng-combphy
 
   reg:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
