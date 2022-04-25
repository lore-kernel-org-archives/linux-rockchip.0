Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 338CBC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 20:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8v0y4HlRGCohjL0Via3233bLH1BD0ppKajWBq2VgNs=; b=iC7sRAyCXFNbsA
	iO/jEOcZPWGkMpyaChpwVgqdjCn5pMW/QVoIC7nzxQlm/kgqlhY2/PaJLYF0b//ZNfYsfZSTvjVua
	aFGaoWPpqG4WM7Dg0lEwfaDOHru0wXxj1NwfkuYEwebL0TPfImfK/53mL+JiVRXF0phlehRnGnLIO
	jj5AALrNzs1k6E6PZjzzTmdNReihaUQr+Eh8MSYVieh8r/Or7N9ebbLxwZp0T0/jgzg1kbOULDxHo
	ekxlkGKXnM2h4IQKHfyUaRYO2Rj4L8v4olE2p4ycF/lkSdV5veKm11/ti4mF/MixD8SDbRQGVLwEt
	qRxJScb+CFRmHDvmuzdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5Jn-00BEJi-8w; Mon, 25 Apr 2022 20:28:23 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5DM-00BB4K-2z
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 20:21:50 +0000
Received: by mail-wr1-x42a.google.com with SMTP id u3so22499387wrg.3
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 13:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QNKqn6GgSk4bpiHhHcjzWzAApOdvZObjZd/qjun9sbE=;
 b=W0+hzDsyXNRUErPDaVkKaOZ8ON7Row/GsuoUT13wsSaj2QnuxFUn/r5WvW7TNK9xF9
 YSQSKQH80ebP+iHZohlvr4f4lhpiFxEFnBB2um3EWBUifD2390UyrawEW3j0azci7XCR
 VZLV+62XxeC39WNCrZ0VuvBVXNfjAUJr4y7e8uplt++3ldMtWQTUSFAM+JcX/3qluFDG
 0sNkaQ3fPwZeNORGpS4HwZGfQcBgpXKRqd0Vajq024YRA2E53xRlOez6zJ6KGQ31r931
 27fK/PXwWOh1ngC/E4idPt2qNj/p3bb/pcHBQ1EwKoFUfU5+AagnLhO3zjb4UEKMluYM
 LpfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QNKqn6GgSk4bpiHhHcjzWzAApOdvZObjZd/qjun9sbE=;
 b=DLtEroLbiVAdnRjSedBYN8dvhqxi6FzsLxOFJoXPoHigWlJXDbpzUqht5auNuub7Bd
 OTNSFeQkq0LGxYX+BF3XAM8C+sJT/PMH7rdpEYm3BpaT8z1qu1wGcJRJ1v28X3YTZvfP
 rblQvuKem1fxLeiVBLRsnOlyKsfc2h6CmkFxBv0fNBNLLzFgOZnJSL/TO49kVx4G/wVU
 TuaMYA5PbzPJ1dlyK2H7KgLGhdAQ2qL9h4RQC8uaS4SH9pjh3SuMif8qfsdEGzMHzQxW
 Hx5X1TjuHPjBGFjk8Knl+V79zwyx05I2NlKtMVU/zrhDRGpuH7k72grdPCRAHqMgGEiE
 yljA==
X-Gm-Message-State: AOAM533+XncRHTb5JrpyomGLAB3+HCmQFTuhrnklfsAqQFfSqVku2el1
 qrHgmp+81Q8571oK9ubiGEuFvA==
X-Google-Smtp-Source: ABdhPJxo1Ew0MzI0MJNR79IL+3D+t6orpWGHjYg0Sc5MxK8XNn3M5uHQCyKIgUGey+QsAY05sGQ88w==
X-Received: by 2002:adf:ce89:0:b0:20a:d917:5234 with SMTP id
 r9-20020adfce89000000b0020ad9175234mr6749610wrn.265.1650918102961; 
 Mon, 25 Apr 2022 13:21:42 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 13:21:42 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 16/33] crypto: rockchip: add myself as maintainer
Date: Mon, 25 Apr 2022 20:21:02 +0000
Message-Id: <20220425202119.3566743-17-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425202119.3566743-1-clabbe@baylibre.com>
References: <20220425202119.3566743-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_132144_179712_695C0DEF 
X-CRM114-Status: UNSURE (   8.67  )
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
index 6157e706ed02..1f3bd9b5827e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17005,6 +17005,13 @@ F:	Documentation/ABI/*/sysfs-driver-hid-roccat*
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
