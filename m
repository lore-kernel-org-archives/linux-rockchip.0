Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1E61CCA47F
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jun 2022 22:33:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YC3Sj/7gUT1yOwLOsR29JtnwLf58IJgTQ1/2Tqz7tZ0=; b=Wahj+WOr//2B+/
	IHp47HokG5YZKMFxWFeWYfV8pD1bbVavsd+ZpgGPTqN8Wodvmqr/AjW6UIt1QexGFpCIueEDaMUyi
	6UA4MH+vQ0dKCNcqmBkLbqeaUnQ6YOLqlhWvMZ9asO9Yg34Ypj/oA3bCQ3y1jqEdx6ZAx2dmRlcvL
	+RkO5T9BHP/RabNAAuNqBkXq7fgvm2FYArBJkrLTUu12qftYiwI2Mn6n7EeO8nl+xETkdg0kFkUY/
	TlxnaIRTQHRUw0oOW4CXYWofeFbM/3d/0nW88Q2nCp7Lr0Wz5ghdxUA0HSOxRiP/KxPMoWqBcno5w
	ydOa9P1bWi4XNcC40iow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0W93-000LhR-2o; Sun, 12 Jun 2022 22:33:21 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0W8o-000LXj-8N
	for linux-rockchip@lists.infradead.org; Sun, 12 Jun 2022 22:33:09 +0000
Received: by mail-ej1-x632.google.com with SMTP id s12so7860195ejx.3
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Jun 2022 15:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GLJQeEH3p5fiLEdDryGdSBZutsbru9ZsnpEkB8AS6xk=;
        b=ACM313W/AffvNt+bytbIN21PiIxxWyv7QLe842MBuX/acrhynlILn5Mc1sjNaEsVcH
         uDQz//0wYgHcZZo2KJ4a7d5OFTpkuI3iJhv8R90LNT47Bd07Anqxx753OE2icYM3Ikaz
         V4Il7uezteXLTrAG0TDuThbaEjDRLnydMiid7CRhUUbFJXciiestl4/ZyZrNivqvHq34
         8EmCaV9LJCpDii68hBDpeB1JPRsX1AwSZkk2nH05XGVQzTZyeyjwn/DwkMwk6dzYbx6n
         AzYNFlf361RiKxVqGoHhkZHIrduZ67nxwtYZHQtCdaaZFmA3s7NOQhzPkDZgz8jIvnyf
         aiKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GLJQeEH3p5fiLEdDryGdSBZutsbru9ZsnpEkB8AS6xk=;
        b=YLobW+73RX8yaMXzTttgTX5/Ssm6QJnzL6+jpp7g2NixqBY1aZxyENXFaXm8JURhUd
         3bZAPZRXD8Jo4JkgBKXYyRYd6i6cfkSVAMLGlKXRVsgHMyB97IpWe/1j7NULUH/R+mp/
         nVD5DmOtBnCDX01P1B77mgXW5wWKRT5p2qCbGe4xcFydlqvOMNh24310pOrbJos6YTRj
         r0x/K9K/gnM8sj5MZpWjUYy4eBBZpAssWr81LtdPTvvQNawWydvsYNuuPuyPV6YxnY1t
         3TRFQSwyOuX7Zp5Goghr4wpCZ80oVWtEUSa8SqNrrIOXjpnWpLwMiTSBLWqaEYNxIUYL
         06ug==
X-Gm-Message-State: AOAM530ZtRnWP7pkw8sSXc++H9Ub1Wv83I1UKSae8fhVqdLZ33QuwZVN
	0TkCfHg/nf6DGubj96w4jkFcqQ==
X-Google-Smtp-Source: ABdhPJwUqJaNwWQdvBdBwV2ZDKqaf2kjTt7sfxVF4lZSmguLeVk+4kYZBzm05N4NuXuwtQe8yofPWA==
X-Received: by 2002:a17:907:8a17:b0:711:e3fe:7767 with SMTP id sc23-20020a1709078a1700b00711e3fe7767mr24623468ejc.380.1655073184059;
        Sun, 12 Jun 2022 15:33:04 -0700 (PDT)
Received: from bismarck.berto.se (p4fca22cf.dip0.t-ipconnect.de. [79.202.34.207])
        by smtp.googlemail.com with ESMTPSA id e3-20020a056402104300b0042b5cf75d6esm3766559edu.97.2022.06.12.15.33.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 15:33:03 -0700 (PDT)
From: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org
Cc: Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	Shawn Guo <shawnguo@kernel.org>,
	Li Yang <leoyang.li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	kernel@pengutronix.de,
	Fabio Estevam <festevam@gmail.com>,
	linux-imx@nxp.com,
	Wei Xu <xuwei5@hisilicon.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Subject: [PATCH 1/6] arm64: dts: broadcom: Add missing space around status property
Date: Mon, 13 Jun 2022 00:31:56 +0200
Message-Id: <20220612223201.2740248-2-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
References: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220612_153306_329327_AC0EBB3F 
X-CRM114-Status: GOOD (  10.95  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QWRkIHRoZSBtaXNzaW5nIHNwYWNlIGFyb3VuZCB0aGUgc3RhdHVzIHByb3BlcnR5IGJlZm9yZSB0
aGUgdHlwbyBzcHJlYWRzCnRvIG90aGVyIGZpbGVzLgoKU2lnbmVkLW9mZi1ieTogTmlrbGFzIFPD
tmRlcmx1bmQgPG5pa2xhcy5zb2Rlcmx1bmQrcmVuZXNhc0ByYWduYXRlY2guc2U+Ci0tLQogYXJj
aC9hcm02NC9ib290L2R0cy9icm9hZGNvbS9zdGluZ3JheS9zdGluZ3JheS5kdHNpIHwgMiArLQog
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9icm9hZGNvbS9zdGluZ3JheS9zdGluZ3JheS5kdHNpIGIv
YXJjaC9hcm02NC9ib290L2R0cy9icm9hZGNvbS9zdGluZ3JheS9zdGluZ3JheS5kdHNpCmluZGV4
IDA5ZDRhYThhZTFkNmVlODkuLjhmOGMyNWU1MTE5NGRlODMgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvYnJvYWRjb20vc3RpbmdyYXkvc3RpbmdyYXkuZHRzaQorKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL2Jyb2FkY29tL3N0aW5ncmF5L3N0aW5ncmF5LmR0c2kKQEAgLTU2Nyw3ICs1
NjcsNyBAQCBlbmV0OiBldGhlcm5ldEAzNDAwMDB7CiAJCQlyZWctbmFtZXMgPSAiYW1hY19iYXNl
IjsKIAkJCWRtYS1jb2hlcmVudDsKIAkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAyMTMgSVJRX1RZ
UEVfTEVWRUxfSElHSD47Ci0JCQlzdGF0dXM9ICJkaXNhYmxlZCI7CisJCQlzdGF0dXMgPSAiZGlz
YWJsZWQiOwogCQl9OwogCiAJCW5hbmQ6IG5hbmRAMzYwMDAwIHsKLS0gCjIuMzYuMQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
