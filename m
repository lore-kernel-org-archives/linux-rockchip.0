Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39A75C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Mar 2022 20:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WLQgSLgfnsnqLtMCAtFIjmD5mZ5MdAS3Y6cv5mwljyg=; b=15zZHKCmzNCf8r
	LOnNckddGgeY63wvAQEJB3SEuRxwN6xg1VJm/b7Aa4bIyA8oc9oX22qLoGFTwfhb7TMF/O8Fz+SAh
	shbACyHqZcDbqRSXsOGbeCkFC17yWBOJ+AKwzC5Bt7xLTjGkXOUR0D4VPYqDqy3nR06WHy2d8579C
	+q+CnDG7/YqabcDH0OER9dyGhuGcQU/O2FVOQ5P77bTnBrAgPqXM3B7B0HwCL/cRfX9nlvZwLvW3i
	TbJFhDweqxzsiOwe87H2mRTFNmbQ9Lt77IyMfiVJsNPAWmGjZ2Z0mYluFtcXvx1hcbJZtaMm/ygxI
	0KqCpD2lpmIVVYH2M7hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWOXe-0091Ja-LM; Mon, 21 Mar 2022 20:22:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWOK6-008tgT-LF
 for linux-rockchip@bombadil.infradead.org; Mon, 21 Mar 2022 20:08:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=4gMoepUVOvRDAwTmdAmkWkLiyH53f2JJghRF0kAYUp8=; b=PJevrf5LL0unEqnNKePkRTY89M
 8ryk7b8Rbj2nxvle5GxIBYKHhCu8t9sPXt1hL2hWbmJaJUPn3bnHwck6unjd3drQTp4YRwOC5S4PD
 SGRe2g3NGEyyr3Y9tHJDenZtVig8IJwJJa+vZroHxy50JOavFIn+qe3Hv0A5RTQ7geajQXi/tTk2s
 wfwSCBd7XxBDEmFrC4cG29zMR0693sBzk7jj7iDEUM+4SMXQdPymydJSrfqCWEeqV/DwU2ZxoFUPi
 m3TVrjvy0OhgkGoL8CfWHgIe2N39GMyn3o8Gm4KZeY6irfSzwtGF0M+Cw6xhpppDbfUBtDP89jkGG
 hk4h/j2g==;
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWOK1-003E62-UD
 for linux-rockchip@lists.infradead.org; Mon, 21 Mar 2022 20:08:12 +0000
Received: by mail-wm1-x336.google.com with SMTP id
 r190-20020a1c2bc7000000b0038a1013241dso178010wmr.1
 for <linux-rockchip@lists.infradead.org>; Mon, 21 Mar 2022 13:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4gMoepUVOvRDAwTmdAmkWkLiyH53f2JJghRF0kAYUp8=;
 b=RDx+GXVUtpQmfbr16DO6Yq2LL7DbfVvfRBqBwtb6SSusIn9ZBx50PKSTikg0mRz6tc
 6oxmv4dy2wKCWPdKx9D7rxLiZbRgyRs/vQu1V2merbLQjyFP/G0iT7zz/q3t9N7A6jt3
 YLFAynrGGAnpEVVGUhBzCoA6t5wBknbzxTFFi0Gdy8lpKDyGwBOK3bdgMY8oY4/hMxB9
 fOXBdOAkwGQhaLdRNWRHd66hiC+vndiHtkb158AufTRG3S2JhvwCYPagu93Xie5VkfJr
 k7eDzzS4x/f6cQ8uj4b/dNiRFrPoEyy+9+s1/r+A8XFZh+aXGywRjmweWthRxEpScRA+
 QbTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4gMoepUVOvRDAwTmdAmkWkLiyH53f2JJghRF0kAYUp8=;
 b=1RHjsgMebHHJIFtCwvVJK4LezMUXyFUW4UK7Ka3520lQq2EihboJ+jNVrGxVrkhq0h
 gMZruSjB3HLo+nPhnawJFQ0tLGz+tveyH5/0mPNqWKbeTbtBnOtl1KQ0KkEuItc+MKyw
 C8rqUEMztrDpaHCdo7ZwoikyJxS1+oZrb4pVGNOBZipRnZgdKSTTguRU1O/H6mboT1R1
 fFrQ4oGDCUP8szNJ7oS6F6BKJFn+DHZW3CTFtqeKX3OyArClfOtCFW97QGLUGGphyUjb
 5XCb2feWcsh4NueeCRPakTizbvywe9bc15QE01id09poN1auzY9cZmt8fucOmLkuuwzA
 BHHw==
X-Gm-Message-State: AOAM533ODmyCoxqn2R04ouIZuz4Jb2EZj8CCyuV4+di13I6DfxlbZNdT
 vQbWF8N/dz4g8xygwYWGAJw2Ow==
X-Google-Smtp-Source: ABdhPJwulLc2e95bjKUvggoQfu0QNbRnAFa6ydl55NbQ/vrr36S8Y+UYDhSh6EwwXvT6NSWfbKDUdg==
X-Received: by 2002:a05:600c:5110:b0:38c:9521:8ef1 with SMTP id
 o16-20020a05600c511000b0038c95218ef1mr650466wms.107.1647893288443; 
 Mon, 21 Mar 2022 13:08:08 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 i14-20020a0560001ace00b00203da1fa749sm24426988wry.72.2022.03.21.13.08.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Mar 2022 13:08:08 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3 24/26] crypto: rockchip: add myself as maintainer
Date: Mon, 21 Mar 2022 20:07:37 +0000
Message-Id: <20220321200739.3572792-25-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220321200739.3572792-1-clabbe@baylibre.com>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_200810_344826_0847D137 
X-CRM114-Status: UNSURE (   8.26  )
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
index c520915a3222..df4c72d37116 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16937,6 +16937,13 @@ F:	Documentation/ABI/*/sysfs-driver-hid-roccat*
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
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
