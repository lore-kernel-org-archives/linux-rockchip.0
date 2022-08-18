Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D3C5C32772
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 13:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FYh1X8twWRHpiTL2g64r6elSeRdonGZjjG9TDJPk4XM=; b=EVDlE5clcvbTTD
	xtSjP6J4Q80W6RtE0XcHIc6EVOKxfTGLbv06dVVer5uYBpZv4rETVGiA+/4peGOnn3K36ZUQbj+J6
	wkv/hkGqNOre5nCEXfcejx2CYG22/LqBopzZ+zJDq7TVdmr0n8wXrw8GsY8jT075c7BO1vwO1ieXd
	2LqvokH/75xAIe1aaCTbACXOw+FJGck3EbxkupNgUX2fVOp48swgbBJHZ+TgzbFCIkE6FGqt5Hnan
	3Cl+bHWRxc9516otS/Fp6EXiu7QhTn0QOpOp4u4UbbMJo5LTzgCadRmsrUjc/ADT3BLmDm0lGSZLp
	kN3c8YyR/VeUF6k2gjmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOfDd-0053de-TV; Thu, 18 Aug 2022 13:05:53 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOeqc-004jza-Li
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 12:42:08 +0000
Received: by mail-pj1-x102c.google.com with SMTP id o5-20020a17090a3d4500b001ef76490983so1722201pjf.2
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Aug 2022 05:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=/jwzXk27cMZ6FExh0uoOw9BLTKmtlMZNBpJukme0F8E=;
        b=A7YMiIIt13p4t1dUwQXHF3saHO62+fpD6e0ZUy3PSNLo2d1P3Xc/QObW/L8lPeGb1A
         etenHHrZYHI5PCgm+DXFb5ZPhDE1LBhQK46pDD+Q0Ly9d0FRH7FDB7HDgYuiisr/ze6r
         7VFoVSguuMPsVVJ6Yg/H0j41vKIVSYY4ZOLMD8Ras9V64Daet4QcKRxkWvKEkCSQjl5d
         +VMuC6gXml2IT7trjan0glaAKsj7d2iDIKtOHx2CMA+7MEws8e5Vk6BMWPSKT+JDRK+N
         l6h6qnbtsDck8+OtFvH8qNJYDJ/YZtW7jKMo4CdJIaNUCbA9yg5ggjMhAdA8pgr+zc9E
         zb7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=/jwzXk27cMZ6FExh0uoOw9BLTKmtlMZNBpJukme0F8E=;
        b=XAjMdu9Y1X+4idsb2zGWpZuvJuCYMkOq9gNBywr4SDUCTsMBf4+jDJlrHCGMncvy3p
         YUGkJ5VQmU6ipgwrcqJYhLFuwKAfI4FoQor/+0qwsY0zTZLXLXcqCcNAlDaxMAZlQuiJ
         p63WbHqnP1N1xdbbFcynEodkdaE8owACeD5ivSx/l3jQLZurxD4lZkGIDsJCGrBNig21
         jRFqyu7F5f8fwmBVDRgTUZguhpmhD2+xskd7APe68bWt2JJfmU8jAUGrqfZ6e2X0CpY6
         zqWN2YrT5uuN73has3zNc/H4vm/Ut/K/kJfRtvnOoq8HYF1hYuXuJg9yk9QuF3z+l59U
         fPMw==
X-Gm-Message-State: ACgBeo1i3ZpTiYSUV4S7n5SygTBXy7/mQBC/mZuRu6T8Fzrhx36aY5xA
	NAV+A18yikvYNG8KTVlwFD/LwA==
X-Google-Smtp-Source: AA6agR5PFGBPqbKRlSM05nYD9NjQjJYUOnEF0KRAcV0nMtDmpv/3qPlecBCYhNWJQwfsgS2GeRoA6A==
X-Received: by 2002:a17:90a:c402:b0:1f2:ca71:93a5 with SMTP id i2-20020a17090ac40200b001f2ca7193a5mr2966362pjt.34.1660826523751;
        Thu, 18 Aug 2022 05:42:03 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:42:03 -0700 (PDT)
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
	Linus Walleij <linus.walleij@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 06/19] dt-bindings: pinctrl: rockchip: Document RV1126 pinctrl
Date: Thu, 18 Aug 2022 18:11:19 +0530
Message-Id: <20220818124132.125304-7-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_054206_779370_26ED6C7F 
X-CRM114-Status: UNSURE (   9.42  )
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
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v3:
- none
Changes for v2:
- collect Krzysztof ack

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
