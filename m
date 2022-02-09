Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7971C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 10:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oI5VVugnMfRDh4BxrkdWMxTAi1Yrnw3qmSojwMa41ao=; b=hw4Znv8DM6L7pr
	Bg+AslPXMr9j9dONzL5mbgGxLA/bKECYuP4Ax//nq5X2BDrmoT22QVBShD8Ek5FK6cKHoidnNun9l
	B3/m0nXICoeW201nsEdoyA/eyL9Vg7CdRUZDlPAWkMRlxiySB+XRR2hHtwLCp0SnSN6JFvf9Tuqtm
	JMfIcwQY+Bip1l52iyf8VMM5uc8qKYLfm2CBrdAnn0AKibirntgrEQ0dNBRzJupVDP3qHGEcA05m4
	AxYrdofoYL4gthjx9Yi+hUHXgVaGCCZWnj1SLS4C3dhaQAnO1L0JlGoBp/RitKfB8JJ7Qu9KffiFu
	BhlqimFUJDY3dcgXYkQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHkBS-00HFGC-Kl; Wed, 09 Feb 2022 10:26:46 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHk2U-00HBZo-P4
 for linux-rockchip@lists.infradead.org; Wed, 09 Feb 2022 10:17:32 +0000
Received: by mail-wr1-x432.google.com with SMTP id e3so3228268wra.0
 for <linux-rockchip@lists.infradead.org>; Wed, 09 Feb 2022 02:17:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vfAV7F+Ro4DbSdjhHkusaJBb3PiMNKM76wOprs+NcNM=;
 b=ny9ULsL/xMEXFfNXPt20i+xiJxpkX2dV9SayL9TBFHnQZRFvyPp0T00z/YJrWXCNrL
 B0x8FxZfCdLVm3CW4kS/+7tgqqUiYKSPATkRb6BF9/tnoNqwZv/b11y/6rIZgRXHpArU
 5ZrEiJM4nHjULj3695Qcc3hqXjmarVseMpa3GxX8WqLmB15DbGwufz+iUoU/ghEJguzj
 cDquRy5IkmwC/jRm7sFTgzlmYvH8aZgZCKq5YnuHF+UFWVn4BrRSvA0mziIkSLydOE98
 sZ68twH4yfcSEuLLynk+EdDdPxZhn45IYbtbIpmC1lWwSRqQk7Bx4jLyBW1ImXROWCFw
 mW8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vfAV7F+Ro4DbSdjhHkusaJBb3PiMNKM76wOprs+NcNM=;
 b=euoU15nKylbWr2ElWijHTXvgeYt2xnlyp+1yk6RDXZoxPcAdBt40kIS3ZW4IvTrax6
 UwRswb3SCzuWNYrqB+NvLuEpq9IyMW6s6DKIV8p4kxZi7ykuz69BChlV2JR2VW2uBgQX
 AVic7+26Rvu9xFuoqNVxDsre84v8GVxvKfOJ3dn2Uo5XrWcNN834WTJLX3566sOEqZmT
 UnqxAhf3K1Fxpm10rKSuieLjKXt42eFSPZv3bMygKGotP68HWJW01BduNMCUBY84V5Xk
 Z9Q4T7gruJD2j9oaYB4KUFSRuhoz+hzPxSK7Ky8w6Jjqam1F/fhOJosV6wOmEbHMIyRk
 Y8GA==
X-Gm-Message-State: AOAM533nd3lARQ1uD3VZURUo6p9STTz9o6mPX1nJaNmy29A58xT/wbkE
 CiJxfM41OV6TbJRORkD0pR8vkA==
X-Google-Smtp-Source: ABdhPJy0UdpjCxyiilvCKFqjSjmlR/q7Psi0zrmsidgeyfsV9G3fsYdDsqE4HZdrlSWv1cvyhkKIIg==
X-Received: by 2002:a5d:6d05:: with SMTP id e5mr1504960wrq.214.1644401848828; 
 Wed, 09 Feb 2022 02:17:28 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id e13sm17740929wrq.35.2022.02.09.02.17.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 02:17:28 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH] dt-bindings: crypto: rockchip: fix a typo on crypto-controller
Date: Wed,  9 Feb 2022 10:17:21 +0000
Message-Id: <20220209101721.1659574-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_021730_836426_92458F04 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

crypto-controller had a typo, fix it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt b/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
index 5e2ba385b8c9..53e39d5f94e7 100644
--- a/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
+++ b/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
@@ -16,7 +16,7 @@ Required properties:
 
 Examples:
 
-	crypto: cypto-controller@ff8a0000 {
+	crypto: crypto-controller@ff8a0000 {
 		compatible = "rockchip,rk3288-crypto";
 		reg = <0xff8a0000 0x4000>;
 		interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
