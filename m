Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C019EC43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 05:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kXmPszPG6vWF/wKjRjCvgsAottVWDh4w3/pSmLw1/aQ=; b=rpfGqLBfm7R7dj
	rh5eDXu5b6vAMRK8ZCAADB4lXNaW19cvpVp93J7oHTW3V3b+h5Xvvn+9UhqE2JoSPbTFa+1Z6P5y7
	Om9SrS3MQHVEU2cUe4/o4AvA8cXY0TWVebdxtt8VCT/ppKHiFUDmi9p6qKdGk9Q6fea1W+SSE9nM/
	QXe2rQo81MYX7+dcQBWms4CJ7vEIkpJymFVlJKj6/DmDabVqF5MSnmSJhNfc8wlE8K70o4Z7G9rMF
	VfUOc9t93v8vWV3apOI2Wcff0CTgd0XOcq3Efu/wL2Wriib1ua8ctk8r7NqSbzEZ9g8pjhiygnNLL
	GqWSF4wuTJ9U2ADHkAKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjVmw-0000000Ax3N-25y5;
	Tue, 14 Jul 2026 05:34:38 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjVmu-0000000Ax1z-1FQz
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 05:34:37 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-ca2fad0ae38so2951284a12.3
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 22:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784007275; x=1784612075; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LDpSrlAQ9FmGRYSN7+/NziOaZpQDg6U0Jmn6QAw/EK4=;
        b=n3Jb7ewvk8teaitYmhh/MJwKiuyNac1CBMrzUaWMCOYUxb6cEehrBk3jmWNt3S3v4V
         Kwxz3ZEabMpyYPjyEMwq+4kaopG0OXHPOYphNf+3d9pxHNAW6+mB2zNPREoGzsJZrGWr
         6vr2YZMac0W7TubBZeZYq7thJJhSI8pQRnvBY2jL+Z77Uo3l/Npa1WjKfiRV1bD+r2SH
         g1/ygQXIGR0h3BtX6sLg+ZwkilbIqZn8+37sbJJtjKJvHbkQBItdT6c/95163c81ciEH
         ekriwkaAnqZY0nSvP9lJyRnlNanv+byok8A2eOHvjkmfaaq1nMFxIz00ki/t4Fl0cQ3B
         1A6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784007275; x=1784612075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=LDpSrlAQ9FmGRYSN7+/NziOaZpQDg6U0Jmn6QAw/EK4=;
        b=oBbcyZC2dJEIdjxxTvlw0V1i+LZTZImNCngs67/vcW6N9QyLVRsGX+5VFDpuFN8Cs5
         lhJYh8Wqx0Uos/xcIY94pJ0d8z16swEpQjMtnN8BZz5mmRSIrfF8SNevzQiVzu8wRDrs
         mHJAyHP9KqJhlFSK7qPlmD05/i1mYgZX0BasDueWtQrPrRwV9XNNa6LmI3QPgr0o1Tun
         JFuZwx17/Jgd9dfakAwReSzeNE8XmNIOdXhL4pSoSrjWlXpaTvCgCd2w4kBsIRGn+r0O
         AoVfDPt5+ftEfg1aaO29GiIFyQBZf8/Xf1VjlA6Q4Ay+GE4LCeoLFHOOVxM88/ZLI/cU
         fjBQ==
X-Gm-Message-State: AOJu0YzV5HrqOfVDjHMSExyNTKhWRIrzHN4gL7FSX+vRq+SG2rJSgVcr
	Myb2VxM1r7L8Q1ztCU/R9JnmTTzzyr37bViWLv3aChnjT26RSXxpYMg/tj+wMlA2
X-Gm-Gg: AfdE7ckXbe0EKpOOt2t+aEhMgAtjcn9+8IwOTM8/wCzV27EgaAiEayZI36nj+Kv910W
	7FsOo9BmHWJbgJjEtAhwsmx3urgxP25MJlwws2vGfWJKQm6SmmqsF3lSi+F3HVxY0fgrELA6Yl+
	KZO/IrTmYLIMdU3xpf8u/KjP3n0PnlFTJQ2pioHcq5wrNPktTP+G4p2QFKul0tpaFlz1+VPHZj0
	TccbWhyeRRhSEeFtb97vZsYYRPwJ7pB1F/0SNX7kmWlRBgmZIqMt29tciN8IR+uPSzRMrBMl4Rf
	XOsZdDbtZnCbUHgW0TgyF/KJqw365j+m/y+69lyWITOXXxh/QmB4yt3fIzwhUrWfzwx24+Lxq1+
	wk/OEaKvKktdprQKoPWUFi0+nvuL7C9WlhRFw0BLiHZxY8P+gkSEgIg9/hdggO4RDLTBawABPYa
	3UzBZL5ywjH7PIu1mrV82K
X-Received: by 2002:a05:6a21:3992:b0:3b3:2703:115 with SMTP id adf61e73a8af0-3c110157a21mr13059658637.16.1784007275323;
        Mon, 13 Jul 2026 22:34:35 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:6882:91b7:8e79:7958])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13b87b92b27sm33047165c88.6.2026.07.13.22.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 22:34:34 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v8 1/2] dt-bindings: arm: rockchip: add Vicharak Axon board
Date: Tue, 14 Jul 2026 11:04:18 +0530
Message-ID: <20260714053419.265523-2-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260714053419.265523-1-hrushirajg23@gmail.com>
References: <20260714053419.265523-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_223436_345089_01B6B0D0 
X-CRM114-Status: UNSURE (   8.33  )
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

Add the device tree binding for the Vicharak Axon single-board
computer based on the Rockchip RK3588 SoC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..b023d4cc9842 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1306,6 +1306,11 @@ properties:
           - const: turing,rk1
           - const: rockchip,rk3588
 
+      - description: Vicharak Axon
+        items:
+          - const: vicharak,axon
+          - const: rockchip,rk3588
+
       - description: WolfVision PF5 mainboard
         items:
           - const: wolfvision,rk3568-pf5
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
