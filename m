Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD29CCD5BB0
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 May 2026 17:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2sy9YlvmAiLgh3pEEuuti4qcY2VBHxNLcGhTvBy9hn8=; b=ZG3k5QMqAUHEG5
	bkTDP395avcN/TUPw0J42gPqnPwc5YLP4ELCtzDqLHZWV9vt2UGwHqp0/tRq/CMsrj53nFfzwVn73
	b7Wn33YUDsVXtKoKsXaEh+qeIOTOl0beTwjz5Y0q7ZXEFj3j/XzjOIerbRewak2jX9e/OhA9mKYxM
	/1FxrVnN/JsHKun6QPY8GtxKKcePJaesX+3SPIisQ7vrWR5OxJLFBl2PUUwUGL3GbhYDtbRI8zFSs
	KerKhG1iHZ5WsXHgyRuSsk98Ek+pXo4WQ1bqwk1IP5S+nerPNjuNA/TsfdVgbhoUwo/h7Ce3BRHHr
	xagNx2XJVoixlzva71uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQU06-0000000BbWk-1AWG;
	Fri, 22 May 2026 17:49:34 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQU03-0000000BbVP-3oE3
	for linux-rockchip@lists.infradead.org;
	Fri, 22 May 2026 17:49:33 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-bdb3eb93e20so475569566b.0
        for <linux-rockchip@lists.infradead.org>; Fri, 22 May 2026 10:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1779472170; x=1780076970; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sLvNmT5N9xfhkp9ppRLQBuLBsM9Wf1Ff3VMJ6yk6VUQ=;
        b=cNjzM2KCTBQMh3zJXw9NNEDhJW9jk5Mxna9qrBRv+4+I3gktLyenNJVrlPW3apOPAB
         axASD3YnKFIu7WNaPLRDmiMHe2RH1EinibL9RnV7gHamrH1sCf7cZMXLbDwfD4iteev2
         PEackU28Abd8RkD33mflq1bw6jTP6ISqJ2zdI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779472170; x=1780076970;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sLvNmT5N9xfhkp9ppRLQBuLBsM9Wf1Ff3VMJ6yk6VUQ=;
        b=R66fr4t63EL/xd67a/3E9jLy2VfCKnuXxFKyJneU+sGO2adE/GbOMyI0XhRq0vED9q
         OK1YfoECSY5Sxf2xXNd60JNNP7/ZnaPRHZaXJRD82Rev88QIqR+0n04Lg9EPNyNE3pCN
         ggvLzI+KjUt3zw1uqwbjZx6Ry/kPyunCtyw9LWI9foV5QNqH7L8ZDu9i8o5XjgZR2I7G
         tOOpjzv8iQT1/mKuaOWzAc9t+RfrtodSLvqGXcIWs8QCX5rIHgbRIRptirdHTWdkUbXc
         sJYaaQ4vGs6WMtAx3Ay42CGBhVM3e5l9Nqds/gPp2DyHOV8xVhjT3bhPp+QxJb3CgJqT
         XzDQ==
X-Forwarded-Encrypted: i=1; AFNElJ/ByYqlRWfCiR9khpRYpuR3bdsslyCDvc6UCd300LxjeXTAhvO20/LzDDi0/ux5yXLJDhecOkTGP1/8nxfcHg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxweXxm6i1oAqAkTqKMTG01wo8V59vtZ6/zCdGRPWxY62IXlbsa
	y4SEL+hL2wVBTDTjhw+1DuQIF8iSewhQcBVMrh0Wd/uUNhAakGOXclhQPBZrM9eBpZA=
X-Gm-Gg: Acq92OFnldTOm5sUD/QgKglWi3dbYnApYNtgOdDRFF1EJl4IVmGF6uvjoAbVRZoe3Qf
	lYnBLtQ3WJgQPE8HevSFY7c43K/zAXhDFqELi58bg/24WnIfG/qUfQ6VbMk3cmnmul0L5hbH6rU
	XpuY85s3C3aHSkJ5N6U9+HoGJPkYC2lLRFGqAuTRL7G0HDTL14otqV6mU+MnrjV67qiYIFOcHSQ
	hRWjo3lv0sQ+vcwmY7PgNFIPwog5pivLwdqGTzCLWdDVyL37cWogeYVupQeIj6RXNoYwtyvBgFU
	TiqjAG/jyemcLIxD97JpUXNwz225ZrM+JxePw0GeX4TJLT/L4tE6SM9Ww2taNQe0weS6uUv2VkV
	CjF4fe+93INbiE1fH5C0r8RSfi8NRCV1yskdYzA+6ss0QXLV5EpZwUKbG9KrlieEO7el6JG2lGH
	bJrt3qfLj+E/LRjM0RndPhmI5L1JbN2hkrEMTTULf/5j7RZ3yO7JAPMlmCSfcUnGXiytDXYA==
X-Received: by 2002:a17:907:75d4:b0:bd5:405c:7964 with SMTP id a640c23a62f3a-bdd26fcb78amr208821466b.48.1779472169899;
        Fri, 22 May 2026 10:49:29 -0700 (PDT)
Received: from thinkpat.amarulasolutions.com ([94.162.24.211])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bddc5eca6f9sm74302366b.38.2026.05.22.10.49.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 10:49:28 -0700 (PDT)
From: Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
To: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-amarula@amarulasolutions.com,
	michael@amarulasolutions.com,
	dario.binacchi@amarulasolutions.com,
	Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Axelera AI
Date: Fri, 22 May 2026 19:49:16 +0200
Message-ID: <20260522174918.61523-2-patrick.barsanti@amarulasolutions.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260522174918.61523-1-patrick.barsanti@amarulasolutions.com>
References: <20260522174918.61523-1-patrick.barsanti@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_104931_960424_EB83A703 
X-CRM114-Status: UNSURE (   7.35  )
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

Axelera AI is an EU-based provider of AIPUs for edge AI inference.

Link: https://axelera.ai/
Signed-off-by: Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 28784d66ae7b..595ad9423ece 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -217,6 +217,8 @@ patternProperties:
     description: Avnet, Inc.
   "^awinic,.*":
     description: Shanghai Awinic Technology Co., Ltd.
+  "^axelera,.*":
+    description: Axelera AI
   "^axentia,.*":
     description: Axentia Technologies AB
   "^axiado,.*":
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
