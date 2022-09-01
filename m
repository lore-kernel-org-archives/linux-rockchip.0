Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 111E6ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 14:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tpnxtp6McNG3omDOfhILLpvLv0lwwQMIIfEcwut4GDc=; b=bQQFZWDDv6yh84
	KRhC2GCOemcS3aVRTBp+SYbjf69reEqimtqnfqFvs2doGO5uYpTieQJo8MztxoTmZYSriL58e4pgB
	P+N2nMiXIidQc34D3sGnlS4f0jF6gVI8dwIm89I2LXO/PDj6sp7xbfy2rtMGjLwtJmO6/d/8K7JzN
	oVUMGje4h1Y+1MlvY+oIm0Cd/5c3I4GkHKGvktfojbxIrXII6PwSbvQPOEiNR0dkEEmc/hTAt3G74
	yb23WzyJwAGdgm/xc3jIJgQQ97/cY8j1jYuVI+0d2N27tqrTWF+LOEsPUddTrgxgB1XcEEmY1Hil3
	H6sDlLgNGy7sX314ZRuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkp8-00CK7c-79; Thu, 01 Sep 2022 14:05:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkmz-00CIuS-S6
	for linux-rockchip@bombadil.infradead.org; Thu, 01 Sep 2022 14:03:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=qYOSVQA00qKQWFxzKb0fHdJciS5yaHqqvfwattGS0xE=; b=n6ZMnyw4n0NFnmud+sjk0cUUrL
	rUQbgXlGVbyG2JTc3UIEcDVNs4ljgj1xM7iVKuEh9e21pgKqaC7Q27OVlyZE6MU7YJQ+NS2CQEyQ4
	n5EXHkkVhdxmKBa6oPynz9f9OCNShBjnbNfjFg0tk9UqHTJQ6soZmJd+iUPJMsEuepwvr9fhEg1ym
	wSW94qIJHjZHDLz396d5Coe82BrZ8xTVtdvS5YrSbhofjXoWaKDUdLK/zfu5X1k9Fs8lauN6WZjz9
	Dvtcrug6htAv2RO0OT+NHvAfN4ocOCWz9Gb5O39QWuZ0b6RwR20aci6KgHHUZCQQry6H/IRsIzOhB
	NLLwrDig==;
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjlH-008P4L-5M
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 12:57:39 +0000
Received: by mail-wm1-x32b.google.com with SMTP id h204-20020a1c21d5000000b003a5b467c3abso1309220wmh.5
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 05:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=qYOSVQA00qKQWFxzKb0fHdJciS5yaHqqvfwattGS0xE=;
        b=2+iF+D6WVvOVPhWmt3VhXPhVo7vs9Qa0FFtQAOBo4PE8DZfXZz7lh8WxymFJ4+QRbQ
         2WSmKTBwOuAYnUOdNqFfGewU7fEoUCPoJMJZxBhc8SOIb/d3fnHSWFMP7SbmTy6pqXuc
         2GkKXnmUKealcrZReOi+Hx/Fsirdh4ERmfZP0k2rx02TOG2PreRG+NDG/uGsdipUERG7
         aJcUVISOxFJbnHd2IhHLAwawZW3IgV6UY1qiyF+Tm6FfLNxIFxhbTh+7AvCta+2MkYuj
         3jHFjxj55W9hSdZNyIbD+4Z6BPCtUosTXaM7CdKP0+K3izjb05pD4lkB+8qoXTLuPR9l
         uudA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=qYOSVQA00qKQWFxzKb0fHdJciS5yaHqqvfwattGS0xE=;
        b=oYVHTzj7y1mzl7i/5zvLcxgagBPQakiObqxsDv8YJi/VxUsT5h1VQ+/xSbesyOizf2
         6sRyGO0gR1i7kCMWj4nbaI17XjIA/EXtjpbHsqAG1xdtTZkFlcDeBtwtsEeHLVCqKWD2
         BLWcfi7qyk42jHOGARczS1WwVrSXysOAWfTfjt8FKxJFfYKhztag9QsZJVDR5/NI20WA
         JazFGyQ0BolHtJYl4znF6iUXziAaCeTIPRq/XnzkIE+kumOBLGADGOayL5Zt8+s8xlY2
         UtwUbmSZalLywbiUFCxw7dAM5QNP53MGMwRmnE99x1X34AWbkAAKMB67s9zPp83qLk5I
         mYsw==
X-Gm-Message-State: ACgBeo2OZqwBXpkxJy388PN0GsiWXdfaWi3Ksp0W1Ccdjot2S/LNt9E9
	cX/fn3797UlFVzSOoVeKM8jbrQ==
X-Google-Smtp-Source: AA6agR4kbiHdLlaGGwQg6Xh12lZinJ19XjKY2Eji3lirOvZkAHqrjDhtM5Ma1oLDbWcu3DdQz/iaQw==
X-Received: by 2002:a05:600c:a199:b0:3a5:dddf:ac6d with SMTP id id25-20020a05600ca19900b003a5dddfac6dmr5066111wmb.44.1662037053356;
        Thu, 01 Sep 2022 05:57:33 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:32 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	ardb@kernel.org,
	davem@davemloft.net,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Corentin Labbe <clabbe@baylibre.com>,
	John Keeping <john@metanate.com>
Subject: [PATCH v9 16/33] crypto: rockchip: add myself as maintainer
Date: Thu,  1 Sep 2022 12:56:53 +0000
Message-Id: <20220901125710.3733083-17-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_135735_346176_887E1A25 
X-CRM114-Status: UNSURE (   8.66  )
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

Nobody is set as maintainer of rockchip crypto, I propose to do it as I
have already reworked lot of this code.

Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 41762df1be0c..399d2bb08a4a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17626,6 +17626,13 @@ F:	Documentation/ABI/*/sysfs-driver-hid-roccat*
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
