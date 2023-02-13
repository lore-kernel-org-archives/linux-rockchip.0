Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25102C636D4
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Feb 2023 15:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/I79GRX5XN1IO9lOSu2WXSO4N1ZwJ9or8hSXqVH5Ogc=; b=vjnpyBcYee0opo
	e5UI8K4bKPnz4I+kp8NfNfzDL407ikYK+gaFLV1LbERQYYU5IsXXxE4ZFe0fWeiXyBk5jJ679zmb+
	r+bP+sWiW73dOgtYuyPiF1wCEpd2qqTZpzvR+Pgo5vPdN4N+eLfbojDixwqDI8OC4K2ecJKb0PkSs
	GoDn1rOlGGPQtzD6A2tfaP9XsigmoG6MMGKsu01Q6LolaQ2krEVWPobYkudiRA9eaMXKd7eQvtXE7
	zuoyQ89Cf3Q/7HrFxlg+44nfTPR9TsStCLD3TiejPJMHUAIzFtutW+OiaGnGzM9444QJ3TtD6/FVN
	3uO20Uey9Rn+uUK+dJjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRav5-00FFIg-CU; Mon, 13 Feb 2023 15:39:07 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRauY-00FEyQ-HT; Mon, 13 Feb 2023 15:38:35 +0000
Received: by mail-ej1-x635.google.com with SMTP id dr8so32794814ejc.12;
        Mon, 13 Feb 2023 07:38:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SIsYvjDlZhXseIBbB+cVw5ndep5LtZPlaWmi5dbOsTU=;
        b=A9a0MnNqLSnDTjUV3BMuhDgKa9mn8HK7dC3csSgPGempi1XhOQa/iwu1Fk4B0rLFCN
         ZZMSpoitc06llBvwJdhNOX5JDRpYjr7GW+ygqn91Goe/CkBJ6XPyW474YSLLWH+nj0HO
         lFJDWdXVLYymR5Jd1gUvZGCKXXIANGsGiAdxcojlVZxMcVN75HbG+nwlyNhaZGOghYEj
         gWN++UaTIawQ72Or0PdWLvlBJSx6/DLqWelbUTng8nfHc5O8SplofmbzqJRaNRUDZYqD
         Dd5lMxaRB8174aJk7IgE8knfsBAihtBk/1NzpkkOzn1Lz+Wu1O9ngXpBNyMPYp4n2QYO
         U7YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SIsYvjDlZhXseIBbB+cVw5ndep5LtZPlaWmi5dbOsTU=;
        b=m8HFuqTWhwZBwAQaDACXAOUHvwuWVYhAtLINfLEirBXutmB/zoy15F3UzAWfy1gRin
         0QSG5f7Ahxa3oroMVBHUlPwUXLkYTacWVwGRdr//juzKb/3m+olIxP2uB2WfQ5Oyb4+2
         8Z7g0slzYHOoZHWl1o66mAGKMHlxZWotrtcho0db1jjtSCdmgFIDXcMWgDOi6ZkaeQRj
         35DG3Ugc9/+AUw8CypVASUSAV7HEIt+kuEr5imNX4mRjqQkTtLOmY7dVLSMLCCjITG8Z
         ABD/hCi9RQPO/91kDnPfpKYHPqbBNQajnF2xl4w2x7bJx+FkR5ZD/itUbf5XurQUt++H
         XZKg==
X-Gm-Message-State: AO0yUKVKt+/Bh611hpfE9lNtjPmILFanFl9sVLs7Bo3Do0oEizkS78Eb
	hqUyddaeoldKg/UNRd0Y6+Y=
X-Google-Smtp-Source: AK7set87GQS2ld20hEQYMLoM8dgrjAorL+q0TYeQEhQF8NHsEgUt1E1X7QFkO+0UKyjOOv+II8NPxg==
X-Received: by 2002:a17:907:801:b0:8aa:38da:4547 with SMTP id wv1-20020a170907080100b008aa38da4547mr29512562ejb.70.1676302710836;
        Mon, 13 Feb 2023 07:38:30 -0800 (PST)
Received: from localhost.localdomain (83.24.145.108.ipv4.supernova.orange.pl. [83.24.145.108])
        by smtp.gmail.com with ESMTPSA id gf17-20020a170906e21100b008b12614ee06sm115901ejb.161.2023.02.13.07.38.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Feb 2023 07:38:30 -0800 (PST)
From: Maya Matuszczyk <maccraft123mc@gmail.com>
To: heiko@sntech.de,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/4] arm64: dts: rockchip: Add display support to Odroid Go Super
Date: Mon, 13 Feb 2023 16:38:16 +0100
Message-Id: <20230213153816.213526-5-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230213153816.213526-1-maccraft123mc@gmail.com>
References: <20230213153816.213526-1-maccraft123mc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230213_073834_609576_1F36A8C0 
X-CRM114-Status: GOOD (  11.24  )
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

Note that orientation property in ST7701 driver is currently missing,
And that ST7701 panel driver uses different regulator names compared to
driver for Elida KD35T133 driver.

Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
index 842efbaf1a6a..1b9769ccfdeb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
@@ -142,7 +142,9 @@ button-sw22 {
 };
 
 &internal_display {
-	status = "disabled";
+	compatible = "elida,kd50t048a", "sitronix,st7701";
+	reset-gpios = <&gpio3 RK_PC0 GPIO_ACTIVE_HIGH>;
+	VCC-supply = <&vcc_lcd>;
 };
 
 &rk817_charger {
-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
