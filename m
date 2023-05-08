Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5A22C7EE24
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 May 2023 16:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p9JnEK6iNYJDQTai2YpKnIm9YLyx9rLNWwdTGGuILDw=; b=jn/CxHo0OH5dwc
	cTcLOF1kV9bOiy5dXA53gyWEgEBAD1G8MM+OsZjLj/hduKygxGBy2DhrrtY4edyaifD4kjphrEwdo
	mJQh7oKjmsRUey2XCBWjcmrE+OQ+xo5jeJGAZFY5UILImYqe0sTqzVPS5vxKyebEXWJR2xS3twxEu
	bEBidQTaUqZKFENPh38nFOypxskUX8dbBUhvufdUqQ0xDam7HwnaX//B54eEzhDYpH+uqerP8xeeB
	zoGk2321SHe0/JRSJ1ajQjDRNAt8lztDeAuxdFJ8bbR5Q5JQ5TRWrmqyqbOOqx/KgV20ufL7VzPzE
	zrILtLbuXB1k73PkaiEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pw3PV-000vtm-1z;
	Mon, 08 May 2023 16:08:25 +0000
Received: from mail-oa1-x2e.google.com ([2001:4860:4864:20::2e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pw3PR-000vrp-0D
	for linux-rockchip@lists.infradead.org;
	Mon, 08 May 2023 16:08:23 +0000
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-18f4a6d2822so32313680fac.1
        for <linux-rockchip@lists.infradead.org>; Mon, 08 May 2023 09:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683562097; x=1686154097;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U1Sdn3cY34mbROpVOZmUz0voYYViR2D+rO4YXIzNRJw=;
        b=eg/BLvUR/R6QusB1qBcDlIKIz97DNjMmM3OOfHlPMz1tuyNvX7i6Y+u37hNz+uf5m1
         hRiSkYpV0a8C99cm7J98yFUQ0xjw0KCaoniBstHSNOKMwwQxrD1RscqOj4iI8vZcGerI
         5uzExLyjQ3dnCfGD5OTqnuR03O09kVIOKjODYwbooriUD6yeEMlZ8+dfWwEs92bWcQqI
         tbiOyT5XoC/WjuhyfMK6F52yQcA8q50dOOOdcm4qMlKnzjaX4a5iON1/Zcok+++ZiVi2
         3NsYYcjF6yhl4570C5u+Uvj5S77drfaNCStarSTugY+57/mTHn93T1XtNd5EDzVkUJe/
         fL1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683562097; x=1686154097;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U1Sdn3cY34mbROpVOZmUz0voYYViR2D+rO4YXIzNRJw=;
        b=In2ye8RcyH5sDq7Wn67iWTXKP5FElhlw92uwDv7nnHLBYFHberXZtGUsMiymqpzwxk
         joHIoItndKY5LPYze3DEletBGjByHU04ZIOSXrGHhVa5gMDVL6C53cB0l797zyrZ8j7i
         T4gCywUsKI1wTwCFhdIRc2VvVF1YxmjF6dzb06dDaAkyEpHNqa0mgSwJvI0ZUU1TsbGb
         ChnBozg/pVinztlaBF+NQsFtuItXujVm7lGCvSHLE8VoJdVkEqB/VWIlXtA3mM21HM1T
         QX3GNULHzrqRTV6OotN1hOtNlNjgPnho9pLVikJagnC0Pmxr+q/TUxJoaR/6B3Qh5hl7
         XijQ==
X-Gm-Message-State: AC+VfDzUOjnOGgPngaKUiH7GM+XnfXk+S5rC842O/0oUErvo+XKRPNaV
	HGMs7xqB1dncUi8eNL9gsRE=
X-Google-Smtp-Source: ACHHUZ5/eRTQpv8E/Y3Thhptmhz9PhabAPNQN0tpgRgv8byeyOTsb+fGYFuQyGJ68QzxXv1web228w==
X-Received: by 2002:aca:2b14:0:b0:38d:ec3f:3117 with SMTP id i20-20020aca2b14000000b0038dec3f3117mr4746310oik.25.1683562097322;
        Mon, 08 May 2023 09:08:17 -0700 (PDT)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id v206-20020aca61d7000000b0038c0a359e74sm136391oib.31.2023.05.08.09.08.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 May 2023 09:08:16 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	netdev@vger.kernel.org,
	anarsoul@gmail.com,
	alistair@alistair23.me,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	pabeni@redhat.com,
	kuba@kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/2] dt-bindings: net: realtek-bluetooth: Fix RTL8821CS binding
Date: Mon,  8 May 2023 11:08:10 -0500
Message-Id: <20230508160811.3568213-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230508160811.3568213-1-macroalpha82@gmail.com>
References: <20230508160811.3568213-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_090821_102529_6C3FBB62 
X-CRM114-Status: GOOD (  12.24  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Update the fallback string for the RTL8821CS from realtek,rtl8822cs-bt
to realtek,rtl8723bs-bt. The difference between these two strings is
that the 8822cs enables power saving features that the 8723bs does not,
and in testing the 8821cs seems to have issues with these power saving
modes enabled.

Fixes: 95ee3a93239e ("dt-bindings: net: realtek-bluetooth: Add RTL8821CS")
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/net/realtek-bluetooth.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
index 8cc2b9924680..506ea9b17668 100644
--- a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
@@ -27,7 +27,7 @@ properties:
       - items:
           - enum:
               - realtek,rtl8821cs-bt
-          - const: realtek,rtl8822cs-bt
+          - const: realtek,rtl8723bs-bt
 
   device-wake-gpios:
     maxItems: 1
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
