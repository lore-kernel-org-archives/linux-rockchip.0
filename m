Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70962C43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 20:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+WENg0Ok1bf4wcbLheWemj6CrY+Iey59M4mw0C6xJ8=; b=iPtWszz+r4AL3J
	oNpIbeePC4hj+drUSKvMZMYiAfpvK5YK4UPVHaojzDEQ+ek4S/Uf1jJW/DWSvYDzglQ48N8DbGPs2
	4mKkp3qxJdctasop9wzuRqVZu92oRWgcF67D+gxxW0qM5u9nS3smMJga0xTWFT3ubZx6CchnPY95R
	laHrKyEt2Ntbyys2cdG9b58P1Pn6OF3XVwOF/YmJTRfmgqaRlCaUMAcoc4xaIds8rAMSrJiP5BXWA
	T/qcueY+Uu6VQmB47CKvKVlKJAldqFj1sD3mFDm44szvghNEsjfVjAbPHoq/ZSylSTjKnSuko98Nl
	dQlT7WtIf0T81PyXZb7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFM1E-0079c3-0G; Sat, 23 Jul 2022 20:46:36 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFLz5-0078N7-1n
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:44:24 +0000
Received: by mail-pl1-x634.google.com with SMTP id q5so7211307plr.11
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UIH/FUKfaf3iVr07M5BoFfFgkdWNg4kfOD+oFpaTFV0=;
        b=4ilAccktaqBkbI7AD6uW+TUyoKJ35RQyg9ZWhKczabnUIDgOr6ZuYMrIxO6P1uhKJW
         2fJot/64UaWKxR2vqt4U8g8Y5ax2JuI74Zj7mPI1B+5aDBceN5spmbd0OugCXzHXDGcU
         VzKyXTo5CzobpJXvFvDp/25FWi3kY2cb3wcKmZuHEcIt2a2H6SVdNvuL7iZXhp9byBgF
         IE/jJnjmqa8yeul0BYoMOebKSV09iERaUIr2Ofg/FgI5voU8hojxWN6aae5gBPdipQ0t
         9nLuaK6PT/xF6eKWT8VPjwT06Rg11vrrci3aDGFBVWBrHTe92jo2remrc0k5BwYxiyoa
         yAIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UIH/FUKfaf3iVr07M5BoFfFgkdWNg4kfOD+oFpaTFV0=;
        b=BQCvIJJInKneRjq3w/zmEYXgddjOFqvs4EASRhbXzfWGHhoIXVca/cR4jJj/m/aiz3
         MPzC0Fp75KRyTXRTf/zFK8hNBhRnwOdloSXj5uhiWbrfEsUtE/qJ0ZHxTWWG4+2ACThX
         M3+Odwz7x244mjoFpwvBLWpf4w0VlTMXPnUEtkjOJ36lj75uiLTQwNatYEL2SvyvoL0c
         5P7g1cT9CmP7wX1QQ0H4cvVR5oDbgStPDYQgloRsaN7BGuxRsjikodD15abAskTbCzhM
         QVUW59M6VA2OPORAOaME8Uxmt+qkYY4X/JDzUWskqOyof1Snpujz5mDJTOyMso/u34D2
         nvkQ==
X-Gm-Message-State: AJIora++LSUiVK/THaoRwe1FZhjwJ6r1E5+hxLVbXvAowLfLvD/+wtRx
	IyYfgvod0M95OpoARs/h6jex8A==
X-Google-Smtp-Source: AGRyM1s4yYbf7fdiJdDN4/C/h3NkSLVrRU4nM9zE4lusREcB0ffmV2jDATkpWpR+GKJq1pfEHwPvwQ==
X-Received: by 2002:a17:90b:4d86:b0:1ef:8701:1b4c with SMTP id oj6-20020a17090b4d8600b001ef87011b4cmr6791843pjb.10.1658609061974;
        Sat, 23 Jul 2022 13:44:21 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.44.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:44:21 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	linux-gpio@vger.kernel.org,
	Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 06/22] dt-bindings: pinctrl: rockchip: Document RV1126 pinctrl
Date: Sun, 24 Jul 2022 02:13:19 +0530
Message-Id: <20220723204335.750095-7-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_134423_168062_41D0FBD2 
X-CRM114-Status: UNSURE (   9.16  )
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

Document dt-bindings for RV1126 SoC pinctrl support.

Cc: linux-gpio@vger.kernel.org
Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index 677a285ca416..b486f41df65f 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -47,6 +47,7 @@ properties:
       - rockchip,rk3568-pinctrl
       - rockchip,rk3588-pinctrl
       - rockchip,rv1108-pinctrl
+      - rockchip,rv1126-pinctrl
 
   rockchip,grf:
     $ref: "/schemas/types.yaml#/definitions/phandle"
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
