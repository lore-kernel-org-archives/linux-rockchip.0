Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23A81C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 20:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+rf9nyKToirLFdZ1RJxNbQLvYC6EbZ6H+7XTiDSPJCY=; b=jwBgo7Si1toVo8
	gTCe3GoNIdz09zYVUNiIXVMi8A5LDICmOY4ITnewnJGAtfwmRx8fgdfFt2zDuxZ/Q/3fCq9E3lxSj
	0juS7IT5QyC/FB7C3kLPfbrEsQQ8m/C6s9xK4M/uRU+UyyYdvjzdHhq+Hf5dsRvS/Y3TKwj6jKj7k
	fYbo3hiw1aVmFUGoBpA+jLihqVEjhLQVqe0Ev1dGrL7v3iaGrKl2be4fIElBh0gXB8prallgsTVp0
	ub4iiulujPpMNjm4WpGlcM1e0N9eElj9PKsnBkaLRoZ+jrlN14pFo2KwVW4cvSxptGLcivI/7Gz9Q
	nhD1kCJIYiDXNKyGciHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFMAX-007Ew9-1X; Sat, 23 Jul 2022 20:56:13 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFLzv-0078tg-LX
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:45:16 +0000
Received: by mail-pj1-x1036.google.com with SMTP id pc13so7084967pjb.4
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ezgIU92TGTh3k+nvQV1T8rkmKebJlhTSHvtDSPStOw0=;
        b=j0nENz6mw1+vYU4uyoRbbQQFN66er97J7sSik2o+dJa0UDH3Wd5vYdGooDZ/EHNOMn
         +2oQwrYizlF/GPH4zWINTs9bwQrk9/2Pbb4SOxTz2ktcjyckzLHXV56tjvmQQIF867li
         PUcNHjhC+dw8y5qsIPBrTMAGhcb5UGfbjfx0tFTKsHB+kRx51ikj0xWq4uiI8pYn9H6e
         X/voKuZWF3ZgAvt8ZYwAk+NJalXdzkhLTqF/yJgo1z0V6OoutZQBgARJg8LkSpnEjxVz
         005BxGupv6ULOgXEuCQ9h1rIsciYzo2LLeSWIG+X7ee+tYi20yHM/2+F/6+i4kmprefF
         rKYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ezgIU92TGTh3k+nvQV1T8rkmKebJlhTSHvtDSPStOw0=;
        b=woLlQt82XmSQfQzNUIK/xzLx/knjnTFsqHcPYhb4qnOz+YvFUDy4Jfj0mxbmSNH3Qk
         RkvTGIrBj8wzkPc+uAiOb88dFCUD4yr84wk/nBJHSMJ1GOsDJAuX9M9D17za5hV1Tku6
         tFgE5mduJ6TTlOtk6+RUBJlenJb85CgppCybT98zyJSNoRGagAvc6dMMpsAZzQcSMlXs
         kfSqe/RYcbyIxnImPaAhZK5u96orJpHNGJ3kE0DyyC1Jspbx6q5FKFhOgGdNVHSHvL0k
         IzQn+eyoTHDVuTSvoqS/eQQt1QBT/i+Z5Ux97tGncMbJNloSIoIqlq28H9MFRG3b47R0
         RtOA==
X-Gm-Message-State: AJIora9oK7oV+GSvDZeTwarX6IV1yIVOkgTBQy7YWyBjxMeAdIua/NgJ
	kUG2/boLarQbb+amzFR9wF1Ycw==
X-Google-Smtp-Source: AGRyM1ujJGBg20yZAb2hOyJvhfvF+qbkcNy5mluhGBezoBEAxHIj9bUKUcByvp9+vXdemwgC/bP9dQ==
X-Received: by 2002:a17:90a:7a8b:b0:1f0:80db:129c with SMTP id q11-20020a17090a7a8b00b001f080db129cmr6537103pjf.209.1658609115137;
        Sat, 23 Jul 2022 13:45:15 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.45.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:45:14 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	Lee Jones <lee.jones@linaro.org>
Subject: [PATCH 16/22] dt-bindings: mfd: syscon: Add Rockchip RV1126 QoS register
Date: Sun, 24 Jul 2022 02:13:29 +0530
Message-Id: <20220723204335.750095-17-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_134515_763210_343DF682 
X-CRM114-Status: UNSURE (   8.86  )
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

Document dt-bindings for Rockchip RV1126 QoS registers.

Cc: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index fb784045013f..32cd2ebccaf2 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -59,6 +59,7 @@ properties:
               - rockchip,rk3368-qos
               - rockchip,rk3399-qos
               - rockchip,rk3568-qos
+              - rockchip,rv1126-qos
               - samsung,exynos3-sysreg
               - samsung,exynos4-sysreg
               - samsung,exynos5-sysreg
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
