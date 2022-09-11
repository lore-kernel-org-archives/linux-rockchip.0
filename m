Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC204C54EE9
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Sep 2022 17:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ing1pnCzWJt9sGtLHaitbepIWvWsd1Ecu4yN5DdgC2A=; b=o9gD6Bu9psTwJd
	iqW/085ZbA0NgYElEAyIvsdwD9wR9Rwot7pQONzDDeNNbDm7nbHsgygehVtwrYCiLV7QMRL4A+UQI
	VR3sX9ZjPcAr/XLU6dxzTrCrmOfsi3ZW4brbxs6AS/tWstoqx4ryKRTSovdEixciGUn1sUQqTb6Ds
	mgD5nkTd00tS/bE6GCfkURlU2IFA1jKmvBAv/0EWvicB03TQZwWsgExWUk6kSPCausnHU9iUpC1VY
	Jm+aigTreJVQU5Yf1Q41nRHPah4W4jnqpWkxsFFlGxLCuNv7KUXX1am1xagbAiDFikgSn8O1QzG3j
	EZcTJzZtgkV6CIFkegGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXREM-003d9H-Gh; Sun, 11 Sep 2022 17:58:54 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXREB-003d5l-BL; Sun, 11 Sep 2022 17:58:44 +0000
Received: by mail-ed1-x536.google.com with SMTP id b35so9779791edf.0;
        Sun, 11 Sep 2022 10:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=HxRei77Xp8obrUM8ZKH0UQc8VS1BrZDO+yvP75r8n8Y=;
        b=LNVxR1Dl3mdJNHZ6NRC5n4+AdHrxMiNdTjYO0xPECVmNAbS2r4XUNLYwNFrBIVlefq
         ZLV4bnC8XkJYyNzaiSTk9bJzQRmfiZiSSSYjyg9fDyjdWHQElXmw2XsZGrieVJetsBDA
         kTk4x6hjbH63kSNKYf29uWIH0KnF5cqsvbTsaYF89AY5ZvIndt+KHViZbzXRt1mtweyu
         9X3mqEPaA2np+cAUqFmjAyk/aBXHZ9o9VIvaQ056C2pbQ0tjhozAQz2qsPBuETn8SjbH
         VsWX1V2boT/Wl+WxxndsmEX7giquAllWLg63ocX3JJEHTP5uInkvvQszSI7+jdEETzkE
         pg8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=HxRei77Xp8obrUM8ZKH0UQc8VS1BrZDO+yvP75r8n8Y=;
        b=EW4UJHZtBYwdz5LPhfYlAMD6qNAEfMUiluke4rLNbpyboVCFIMCqhW2tnaKIpnxN+x
         zd4ihd1erfluFIEjvJVqelIkwIKLZvVYMFNFw6Mh9xiCeojmXc+wID2e16+cLknVb1zI
         K9xICo0SdE4dKyk4Z1spMUzm00nfsrTDE/FI6Exo8lw84cNe77yEQ2F8V8uJGFyUqC90
         Qcn0LkedE2mDVp436CgrZVNo+tntiALf850nT9kfKImsz5k5GzBHiz/ymjMQ/O1+KXZU
         BlD9M/jdZ9bFLnPRYvyBn1rNuu+lKNTH0NfaMfnigm9eEaF0K1ISDmuZwUce3fUxRX0f
         IDtw==
X-Gm-Message-State: ACgBeo2SYsgbEb0lyexxdM5gyQXmUAzBx0qy6VegZAO08Du+tMMJXw1f
	+yU870HJsrNGKf2rPhH/TvE=
X-Google-Smtp-Source: AA6agR5Y2+l6SqfFS/nrVWrI/d8uzaeNYAGgi3ptnWeCv2FCpvhUWD9McTtnUfb599zcYZsKvTF1TA==
X-Received: by 2002:a05:6402:1f86:b0:447:8edd:1c4b with SMTP id c6-20020a0564021f8600b004478edd1c4bmr19078351edc.163.1662919121378;
        Sun, 11 Sep 2022 10:58:41 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id 1-20020a170906218100b00730b61d8a5esm3243305eju.61.2022.09.11.10.58.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Sep 2022 10:58:40 -0700 (PDT)
Message-ID: <12af4fe6-4d35-cb4a-f5f6-06e3aba990cb@gmail.com>
Date: Sun, 11 Sep 2022 19:58:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2] dt-bindings: spi: rockchip: add power-domains property
To: broonie@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220911_105843_420733_6A9D6FD1 
X-CRM114-Status: UNSURE (   9.33  )
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

The Rockchip rk3399 TRM mentions that pd_sdioaudio includes
sdio, spi, i2s and spdif. Add a power-domains property to
to match reality with spi-rockchip.yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Acked-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Changed V2:
  Fix comment
---
 Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
index 52768894b..66e49947b 100644
--- a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
@@ -82,6 +82,9 @@ properties:
       where the "sleep" configuration may describe the state
       the pins should be in during system suspend.
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
