Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66C59C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 21:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K5EiCPLPQ514wFnQMqnlriPp24+XTaFwe1t9EHDlygI=; b=riz0PCigrSK4Mb
	8o/3QWDtgOYscfx8xfu9cfFe4mJ1O6zCYwgQz8CrfkW6pzasNA3q68Hqn+Nik/7y+iK7Bp80bpUwn
	BeSrw0luZ7NKq6wcU4difjOfOuHfenO2sc8wgKmRIjvL1asvQAR8Q0xFRlv3YF00C2wK7j2pmNfSE
	J3KQZxwzHheTfvJOLmakWxN4RljVbkkyo/IDyz1pKTRZeWKJfNFR1o/JGzWgCZip+0ztfPzy7dU8/
	45Uoq1S3rkSH59IUhLqUVNpsIxUAtHLiEJjAcQuaHwI1SuN/UBEQ8kkOCBnPMh6o/HGdnKmUWjgBW
	F6L1oLquBvMJPZ4+gcSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPWad-004LMw-4S; Wed, 02 Mar 2022 21:32:55 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPWG1-004BqW-P6
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 21:11:48 +0000
Received: by mail-wm1-x332.google.com with SMTP id p4so1972824wmg.1
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 13:11:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RX6tCFk3hNm9Gk+PiwU50ATyVkVvp6LIG+MNsngfsTs=;
 b=8IGVmzH/BSis609i9JwFsXDD7H2AbTMD3C+Cucibqc6F49yuajLO1aoJPPFD7V/FKY
 D3QljzlNYGC2BcYWY3GWOR6TsCZNlUzxtYLOHXo0XllaZQmLcw2AhRj44/i/GPIq/pcD
 zaji7LMah++zo+YaSJEU6wRTHRFewQFAn4xS1tXqJHtlGBFyNKBn8R43qBUpiFZ22V60
 hm0tZGfaW22cCDeSVWGPtRMyvFVvKCJFYRQZs6gpsYIUos0pahV9MkNqJjSl6E6UYyRn
 eXCJKi9wCmV4OlvmujJ8JcVQgfuGitj1wkSU8dHp9jSeM9xS7wzfZmHue8OzNlqJOAko
 r82Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RX6tCFk3hNm9Gk+PiwU50ATyVkVvp6LIG+MNsngfsTs=;
 b=4E+zK+B38sQEU3y5omzxYLucQXWm5ydxAyrUmkxo+X0KE7Cit9At6nxev19QQ6MXb9
 yHkyGrrSpKmprZ4/4StvodZCmpFaSeJHyZLKNit0GH30PHO5UcpxFgdAe4OvY6X4YO4s
 tXQ+h/xG58k4rTiGE4bUTT200DDqgXhVntzDOJkbZE5tpUf8DvlEDKQEVYHO548mnMiy
 q9ZCg8T7lwiJL3zqlNT+OSFA5wydWIpkFLCVlwEQQOp/HFoQC1hrzfRHnGdx9+9xFwmX
 MR1NeiULR19SEor+EltQzyrPmjaL2lhlsz5gf29o24jnRFMsPVEZsQQrAIJrw3HF4WsA
 WdEA==
X-Gm-Message-State: AOAM533RfG2QFSkvVb8rIOCzMOo3r6YrOhl3e27Gis2+jFwAZUe0+bDz
 M6jdjYXo2VQF4cG3xxuTGfviDg==
X-Google-Smtp-Source: ABdhPJxn7GN3e1PbdIoruwI0xTr6ME+fNKFNjPs2K7w1yitP5dYdFU4xEo5TIkBM+9WNiMWCOm8mYg==
X-Received: by 2002:a05:600c:6c5:b0:380:dda2:d562 with SMTP id
 b5-20020a05600c06c500b00380dda2d562mr1420983wmn.138.1646255496568; 
 Wed, 02 Mar 2022 13:11:36 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 z5-20020a05600c0a0500b0037fa93193a8sm145776wmp.44.2022.03.02.13.11.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Mar 2022 13:11:36 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, john@metanate.com,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 18/18] crypto: rockchip: add myself as maintainer
Date: Wed,  2 Mar 2022 21:11:13 +0000
Message-Id: <20220302211113.4003816-19-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220302211113.4003816-1-clabbe@baylibre.com>
References: <20220302211113.4003816-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_131137_916170_201EDFF4 
X-CRM114-Status: UNSURE (   9.11  )
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
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 960add1b4079..3279be7d0e32 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16831,6 +16831,12 @@ F:	Documentation/ABI/*/sysfs-driver-hid-roccat*
 F:	drivers/hid/hid-roccat*
 F:	include/linux/hid-roccat*
 
+ROCKCHIP CRYPTO DRIVERS
+M:	Corentin Labbe <clabbe@baylibre.com>
+L:	linux-crypto@vger.kernel.org
+S:	Maintained
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
