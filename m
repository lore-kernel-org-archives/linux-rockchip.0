Return-Path: <SRS0=fNsx=LT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C3CC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 11:18:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7986761477
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 11:18:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7986761477
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jnc4EuC3p62crrh1l82u7Ak9NCbUqV8DlYg14sdDIKA=; b=1Qp2vNrfEsGYxT
	UMnhL9IhhzQ0rt8wWXznoxLKRVyPWKEtE0D/KsjyQZmZ2J6D9U7bnX9OT5poJ0XOpjq8gbLQ4LVJc
	mOGE8cE/kn8ANLhBWk3+fUC3dzUV1xny7o1hNB7bwjoAt7OwUzVkRGZXVnj2VMhzkPksryqWYyA/K
	I+IINVIvOr9Cv2/n9FxUhPTOuOiEQY4fn5vR2eYrh+Ivjz4I34cnfzZDWj9HB+uiHzjPdZKZVIuz+
	1VYj6ejo9Wzp8DppSki3c0XJchzpb6lSt+xXMHIuCm476NE1xB66M8vjuCNKG5hbxlQSiysaz0tSx
	4s35dQYTjKuX2e5dB0xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwjqR-001H1y-O2; Fri, 25 Jun 2021 11:17:59 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwjqO-001GzW-1G; Fri, 25 Jun 2021 11:17:57 +0000
Received: by mail-ed1-x52d.google.com with SMTP id h2so12928531edt.3;
 Fri, 25 Jun 2021 04:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dE455QnkJy8nl+5re8Lx5rfD/JYfjqvcjK9bczo6FJE=;
 b=Mw++bRI2fvJIToE3l1vLSDSnUIRZ2OtZ8djFYujC9ikPYvMZJd+v7Wq6zONHxLljX1
 FJyfgjbsgifse+0hxLz8HPEZILcLc9vpSB10z/mb24Y2uUydrbLgXbjbfzLtlRmWwrtq
 n5s9Cu2iEtQk62taei/9dv1pDS9yLYHlNPlKIJWuIaKNqpHEGQNlHKnTX3iO7tVLQe/9
 UVMf78oH9wY32HhNhom8SctA+YxawZEdWaeYCXBTp1zQ4ByFm6s9AZ/Ok71pyItMsWv9
 UxW5aV3mJ+/BlWdAdjEU4KGq8Zc7VKRCG1kZXemBpoDwZeAU7YXOtd/yev+CV/XE3f1O
 MwjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dE455QnkJy8nl+5re8Lx5rfD/JYfjqvcjK9bczo6FJE=;
 b=kaMiCo1OfGnNHPgaK8aQ6sVyY3urwbgIqNgMzcptf1bdfXNCxGqSgQdsMBDGqafgju
 He3ApdfB663zxhaRFNOQ16LTTgFZ8nRacDsmEhBS5DdLX+EcnlnrEnd6frbOIiinyBYh
 Z+nYPsv88y+kkCEAUCN76E7qfIm3Iqx1VdcfRdEBHIh/5KXiGVDaMZGhLQsxlyknBvW7
 zTv2/prA08TvAB8QEO8ip057qd4sQb69ocLlaODMJ26U97RoxLOII7KQ0/aiKlqYi/s0
 qNpOJ0uaCpSDOVixDjXGiYKuD/Pwy5MLS2DAMaaLyVdvagMEaBkKYGW3qLL0nFVK1nyu
 836w==
X-Gm-Message-State: AOAM531E/vrhwLVaAtg4MTmXv6B3+YhbcqoHbqcBQOiV4zA8iy7DB2N0
 WmuTrh3ck8KgSUc+ohelV7s=
X-Google-Smtp-Source: ABdhPJwlz352IyDwadTZbyzTcYUZMoyv1rX/vKfhC48/zXJ7M8/CSKhNrRhs3Yuk/OfAlxs5AI+wsQ==
X-Received: by 2002:a05:6402:1d2d:: with SMTP id
 dh13mr722907edb.282.1624619874547; 
 Fri, 25 Jun 2021 04:17:54 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id b10sm3731238edx.4.2021.06.25.04.17.54
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Jun 2021 04:17:54 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/4] ARM: dts: rockchip: add io-domains node to rk3188.dtsi
Date: Fri, 25 Jun 2021 13:17:45 +0200
Message-Id: <20210625111746.6269-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210625111746.6269-1-jbx6244@gmail.com>
References: <20210625111746.6269-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_041756_144385_B3DDEDE4 
X-CRM114-Status: GOOD (  13.00  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The compatible string below was added to
rockchip-io-domain.txt, but never added to the device tree,
so add a io-domains node to rk3188.dtsi

"rockchip,rk3188-io-voltage-domain"

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3188.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index b36fcdd9a..2721b7285 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -641,6 +641,11 @@
 &grf{
 	compatible = "rockchip,rk3188-grf", "syscon", "simple-mfd";
 
+	io_domains: io-domains {
+		compatible = "rockchip,rk3188-io-voltage-domain";
+		status = "disabled";
+	};
+
 	usbphy: usbphy {
 		compatible = "rockchip,rk3188-usb-phy",
 			     "rockchip,rk3288-usb-phy";
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
