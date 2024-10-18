Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B2B1D3C54C
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Oct 2024 06:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N6ohrDWhPeVP2QdxBkBWxi8pTw0MKzFdMiyYn55hrAU=; b=pzQUvLXwNVDYPd
	XSAsPsILRZ9Ejs6NzBmMpJWz8+AbHZmxgmQPAw5/vqHTDuWyN1lvnVEcQr6YCOMaX5XDvDQbcKqP5
	f806rP2cyUcHj6+QV9sFRmYm5TysuFPfDtMhW1r7ci3Y98Fr1Zlu5VolMiZstIjp7NuTsUD8ulvmY
	Pe/c3YkmUw1OOmExS70rrERlnlwZ0nwjDez3V4ApNjRvUCtAMfpiHvfBbZrMWno2YKvDEEgsb1wUi
	PdSsNiRInOIv81TgsNyajxwsyp+wI6DVMtVGCkpSJ6JLDkCEpVrg9AWICESJsehMsBrzHlj6m3puW
	dakBhql90/Y3qw+X1Zow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1gS5-0000000H7nv-22d6;
	Fri, 18 Oct 2024 06:27:09 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1gQa-0000000H7bY-1vow;
	Fri, 18 Oct 2024 06:25:38 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-20c9d8563cbso674235ad.2;
        Thu, 17 Oct 2024 23:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729232735; x=1729837535; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yprsd14/UhfMe85vqYoBkjNPR9l/bSjJtwuT1KvvKb4=;
        b=bZNPFebTjfIdvn3y5FguwQUI6SamJAYAVHsZgimD7MRboyt8p3ikb18VJc4WqJ1w0G
         dmhZ3rAYdgKUnqjMBSieubZyYFtlCnAXpu55Q+IHZIrzemLbk5mul2MgbiusE/K8iyc/
         5RvpD7nVh6P4VAI5MBwwzI+T+gT+OK2iH4hT5+K6d3oPDOrybODGtQUob6YeXKA8pxIm
         3VzhuXELLCGVgWYHl7hLSzaeToWILXarxQMxTU+uQYRY3NfEMqzs7HB2s4z6v61AAIv5
         q3VRnS1BPqXHskXg2+P4RGO6SSz28T8Sj9uQxrcdf7cwm9lENohDCOHIabMpai/FusgH
         R+Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729232735; x=1729837535;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yprsd14/UhfMe85vqYoBkjNPR9l/bSjJtwuT1KvvKb4=;
        b=WztrCUwn3PO+GTwAXixTTfEtPGYbtHSr+E5124VVLWznooVEDx5C7KoFxMJZk9xTWU
         B31uYtbnumiaf5oVxEx3R2nPRLMju+YA1wPakzlLLdN3xvqUuXZ0CCaVhTNZ8lp3YBhb
         woww7oHxCq9nshU0nbRc78hfZkPxbYDnvgM+RmcHwrBTYqxUlgjDhwJcnCfB7ihfzBF7
         9qdn1Dsq1XVJPRtylXhajsWYZ4DpFxQDPgGIchVX7eLkKgexDBSbBn688cPH/y9O5GHL
         Pq2KATuk1p8/1pRvWJlZ47Vwh/I83sY6QhPSuMLs9Gf5cIPnRg0ZqqIwmj+ecRhfnYWq
         nHKw==
X-Forwarded-Encrypted: i=1; AJvYcCUAqj0FTmeC3+BYKcWfH/IXxcEH0aIBQXtbHgvvcbOMHqKYV/pbMGrGil5UkRC63aQoYc4Z5WDbVrqRt31R8vM=@lists.infradead.org, AJvYcCW4Nzke3JmIJrWqyw+pWweP850u+R0ngX/3IBIpHmt4b/suETa3kbqHumeh5xgVyDMnEPD0JsXTzqaeTYB8bLv/@lists.infradead.org
X-Gm-Message-State: AOJu0Yzahg1cw0cWWhR1tisAAmE1GdK8fFXlTmAlyetmfSt1Jmx++LPl
	A70yrVWncs0fJiHvbH/TaiGWFBHat5Ja5b5zqnDXORznShAbEI5I6Pj9zQ==
X-Google-Smtp-Source: AGHT+IF2dAmotnh0dOAlrxHeuqFrtsRPsBS3jwrI7opSJUH6miisW1J66g1K8gQ4g+ORdHqWo93q7w==
X-Received: by 2002:a17:902:f0d4:b0:20c:d8d8:226f with SMTP id d9443c01a7336-20e5a91bd91mr8171395ad.12.1729232734831;
        Thu, 17 Oct 2024 23:25:34 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20e5a8d6579sm5988405ad.172.2024.10.17.23.25.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 23:25:33 -0700 (PDT)
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
Subject: [PATCH v3 1/2] dt-bindings: phy: rockchip: add rk3576 compatible
Date: Fri, 18 Oct 2024 14:25:25 +0800
Message-Id: <20241018062526.33994-1-frawang.cn@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_232536_524418_0A7B92A4 
X-CRM114-Status: UNSURE (   8.61  )
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
v3:
 - no changes.

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
