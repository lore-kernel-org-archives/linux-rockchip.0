Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28433C4321E
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 19:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QFEfT956Wfx5RCzVMT37qeKx2DLXkH3N1SMT/8ZqbCs=; b=jDwkXGaOwWU4C7
	W5rQJVV08nS5pjhqA8voGkx7CNLdyXqWkUYuyqShH2Grkdy+0xcXhLlQ/tap/SaEa/cFCEVrbVpdH
	TCchAaK+oqRNzbhVJMVWLF/XrqSLP3faMyVyW40XI5IxbHEgjhg6z8qzTan7tRyHJgivbvsu1Sins
	fHvCbYYIGLd24mD8m27jHasCBdeqTXZg3zi2/1/PAeJqSNc8R33FU6j/rviPP0ZpnVqvHD5Iso//h
	0oUt8Ylv9mclF49+y1h8PH01n7KK8EG41kdzMD/vseakVseiVaH+gRrhZV6JbxciKrlYSpykZX8LB
	sRoRmvFh6MMHAWNg6yIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnmQP-00B6hc-UY; Sun, 08 May 2022 19:18:38 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm8m-00Ayew-NR
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:26 +0000
Received: by mail-wm1-x32e.google.com with SMTP id
 125-20020a1c1983000000b003941f354c62so7175893wmz.0
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nfRYAmvDSOfkn9xCnjz0sEuzUzffI51ibzudBubF+DM=;
 b=JbtmNvF8ZkRrmp0ZVDodTU7WGYDq/nJm5K36IhG0xquVIIW4xufQWZm7uzfcVk27MZ
 lirnIjLT4sWIjLTkJSy6Ba9N3kz4F4f8oTL7JiC85NXLlCCmFD1OJEg7C7Qi+VzC6SGU
 CL/ff6uZYMgNmZJ++ZtPmceDlgFhTBOUleq3ooznPJNWslMiiXR9u+6JUAIpeUrZQ6L6
 vqCaans+gc7FQxTlqKsCgfAFE16dnqOs7nP3AwPdbU1p7hEdCX9OXPT3jfixxHcwzcoZ
 ck4mAdzN127Vw/XTLuAwVAVz8qTWF4kulGqzP0DvMo/aqLZ3IPfyhWrTGrxgm8RTb0dc
 QwGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nfRYAmvDSOfkn9xCnjz0sEuzUzffI51ibzudBubF+DM=;
 b=DKeP3OhEzgAd5CFgT1XpNzueDM6rOBTCEYdywzrGwRX0shCrobhzTR/DtJfzqw/3mG
 WBA2lT98NVfkRIkdbJMj/DnnnV/coakvQPp01lCA29fLLZ0hJt6nOdIdskH8x7ETAeXX
 weud6tSzUf+/wI8YscFFulujB6kusuIUcYL51Q2WANAPj/Ea0DEB5/zXoJigD1/hnmLJ
 OB2Bbh/Nu8ljab4UX4+LdHNU3AJ59Kb3acl0JHH5qd+bCXmCiy06BUYlVARucnuSVrVH
 1/AxbouTl1lHGZisrp8+jcERH3jVmGH26E06WtPtJAALf/H1RKaSXzIm1vn30KBTA66J
 U3Ow==
X-Gm-Message-State: AOAM533PKuSnMSKtuOafLwSmnQJA1XBqo0iGkgBil4XOR4uQRbr73UWL
 wG75BOr7YhHhr4gNN3XrSXRnkg==
X-Google-Smtp-Source: ABdhPJyyKOdVyYhTCQquA5X3hW0+KtTAcADNYPmxezkDmayc+tb1Atxs9r1zLvCxNR9rBZ2DltO3Sg==
X-Received: by 2002:a05:600c:3388:b0:393:ed53:4ee6 with SMTP id
 o8-20020a05600c338800b00393ed534ee6mr18991538wmp.1.1652036421657; 
 Sun, 08 May 2022 12:00:21 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:21 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v7 16/33] crypto: rockchip: add myself as maintainer
Date: Sun,  8 May 2022 18:59:40 +0000
Message-Id: <20220508185957.3629088-17-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_120024_827588_5FA6D066 
X-CRM114-Status: UNSURE (   8.44  )
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

Nobody is set as maintainer of rockchip crypto, I propose to do it as I
have already reworked lot of this code.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index d4d4aa20fd08..d673e7ae3872 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17026,6 +17026,13 @@ F:	Documentation/ABI/*/sysfs-driver-hid-roccat*
 F:	drivers/hid/hid-roccat*
 F:	include/linux/hid-roccat*
 
+ROCKCHIP CRYPTO DRIVERS
+M:	Corentin Labbe <clabbe@baylibre.com>
+L:	linux-crypto@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
+F:	drivers/crypto/rockchip/
+
 ROCKCHIP I2S TDM DRIVER
 M:	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
 L:	linux-rockchip@lists.infradead.org
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
