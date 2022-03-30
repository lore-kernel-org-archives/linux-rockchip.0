Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E59FC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 13:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=961ogZIuJMmBCbYtrw7dNx4gj+kBCP0MejOLzR0yzZ0=; b=4A5IthuZz9l3C8
	Q0nMh3Sc521qd9g5+HUN/N7kMA0E6KXPhM91a96/HelxSbgFuGdG0PDJ2nG+eQ8GDL0iLjHqUtGk7
	MzgxgNwfQIc/IT2+hIfb6k54NBaFoOFWrbCGAP54CIWDZBZzPnNIBZQPWYSjywS7JO1q/9Qn5bn4Y
	MLNv76V7AGLprtPubUu2yL/QkDucVk0e/Ay2Dt2WlGX/sT/UHorGji+SV50eec01WSxdW/us5YmAM
	Pq4hVclPe9deSBLiSkevSvrak8+o+ca0mEGS8ErycTNCRRuxIZuBZOFy0cJzEWH3nBrOUSZj9txs2
	DIhxzt48bZyV8sTUbvFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZYYv-00G7l2-8p; Wed, 30 Mar 2022 13:40:37 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZYYL-00G7Oo-0r; Wed, 30 Mar 2022 13:40:02 +0000
Received: by mail-ej1-x62a.google.com with SMTP id bq8so27644188ejb.10;
 Wed, 30 Mar 2022 06:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ck7b8QF/9VQw0lUYxwomWRlvrWDSmZJvomns1owBa3I=;
 b=CN7r8g2tzDccy0k72Zp/OTB3aVy9lV1PiC0RRwNgByOwMNsVx4lCwHqt3pVMmdsoPx
 40wNmt+BWEZY6SiGjJwwlLub396Yt5TCL9MrzYS9KID9ObvVhWGiKR+Kze2b8jIhuKYq
 mKfVfTvyTfKnhVx/CUNRPoVJWQkMfJaT4sQoHwrhHqKXsWXrRGtncZUL195kOZDT5dhe
 A9HEBgiRs++sGrj5deCL1ixW78C+IZBiRjAkqkzoMuzgXULtZA5SZGrUMf/QRKp01YyM
 F1h2FQB3oITpHCGoD/8Yg5f7FafBBGNRR7mBbBi8UB5kgLQJaN2vo43FQhtrb0LurbcG
 LY9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ck7b8QF/9VQw0lUYxwomWRlvrWDSmZJvomns1owBa3I=;
 b=fOD46cl+YivQUI4mixgJR8Pld0GQ/MCRhPur776zojD6pMOJDh9PAHBtv6f83TN1xJ
 /Y+3FtIDtUjMTquAwwxwoHlgSEB8KL48qp93IG2PjORi6jL7lCFPvNt2lia9YXx6xZrd
 NeMfP4kOO1J93xq2/C+a5nU8UWLl7x57yVKFctBh40OpOHmzWtgR54q//P72AE3daQDc
 ruPJBd0sZNRxKv739w3MdWualW6RqtNAYYHLIHpYeo33KQDwdlmJvkRSn1UX3+sieSgk
 gnaComlnNn458mzMlBWwlo+NPPbTdd5x4ZhEsZtDH0011ZXdzq2m/4+lxQRV1RUl3Wc8
 qmRw==
X-Gm-Message-State: AOAM532yc6RVjBLN5fowkuXaWR9OQKW6piYaIORTHkFg8Ll+Ybumxk4d
 K77R1YbnDF4/41TjccqtOdY9LDT3izE=
X-Google-Smtp-Source: ABdhPJxaATFwp3dpqkvLsICnSN/PNJpESkj+croJfWcHn6PDEVwtfrylAntDfL1OIe65hr6qmX/iCA==
X-Received: by 2002:a17:906:9b8f:b0:6e0:6bcb:fc59 with SMTP id
 dd15-20020a1709069b8f00b006e06bcbfc59mr41136157ejc.624.1648647599534; 
 Wed, 30 Mar 2022 06:39:59 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 do8-20020a170906c10800b006dfe680dbfcsm8375448ejc.43.2022.03.30.06.39.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Mar 2022 06:39:59 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, linus.walleij@linaro.org,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] ARM: dts: rockchip: rk3036: rename pcfg_pull_default
 node name
Date: Wed, 30 Mar 2022 15:39:52 +0200
Message-Id: <20220330133952.1949-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220330133952.1949-1-jbx6244@gmail.com>
References: <20220330133952.1949-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_064001_131712_BC31E605 
X-CRM114-Status: GOOD (  11.18  )
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

Rename pcfg_pull_default node name so that it fits the regex.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index c5aa1636a..9b0f04975 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -616,7 +616,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		pcfg_pull_default: pcfg_pull_default {
+		pcfg_pull_default: pcfg-pull-default {
 			bias-pull-pin-default;
 		};
 
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
