Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2118C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:07:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6E3A960F45
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:07:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6E3A960F45
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GPN2Cl/+cwkOpF4LE9QJISvuk4sMQ0bPW2uxNr1bqbI=; b=ZebhhL4fsMG7sP
	683MZ3IZ9NM22STPyJv1FBsc4H7/+p9vRQE/P7+PsscIhUQcpkF34yZDG1UbTsFqdsFG8AptcdIYf
	Uy4kvoNvA7+UK9v429BcdGaT5pyOvRcx3XaqvYi9InhpH41S0GH6d4sKsyzfXkr6cUjx6bsPDdVSY
	/ALda8Zohj+SuG+XDzo1crhrDlc5QSx1HnXERp12vcjuX+HOOzF0CLmyPTuN13IzcGQshc9tcAjMn
	TcUjjJhRz4J1Qg5jMtKO3DofeYFuwU5aG8WLF4F1AD+qR9d+259PBzShJqVnJ5hMxoZq6SQk6EwEJ
	8Uq75oe2enDdt/K6GRMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8kD2-000xCy-9m; Wed, 28 Jul 2021 14:06:56 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8k2O-000rtc-Hj; Wed, 28 Jul 2021 13:55:58 +0000
Received: by mail-qk1-x733.google.com with SMTP id 190so2206483qkk.12;
 Wed, 28 Jul 2021 06:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vXk/J4q5mPEjnLuepFqEKq93BJsZukmkkBYD3V+Z3Tk=;
 b=FMHCoImVFrprWfhN8LCCWjfLHbL6/mwjUYPLJrawre3JFTHn4wzbqn05g3hX5vP42x
 5B56hqiX7ej/9k4CjBcisgJMI+iAmJdkc4jIm/lJtVQ4TrbYWvEPy1EgtvMAKRgp1xkA
 bDlm9XRdoJ2o5Zr+RFnCxhwG+Xclsyd3mSaS8lulGeXwIrLmHCQfBqA4QRLT2kVqrPKo
 Pb2SOa30d457++7mwzRkEgo4L05L9ZMCXa8LLtAJi+LIyQUgdWneKqp9rkAmZMyOPxEp
 5qgB1rRKUpfCrUd3sYdoZg7NRE2MpkKQmOiHnhQY0eTxeVatCP0fIj/Ek7tI4xZu3vAo
 FBZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vXk/J4q5mPEjnLuepFqEKq93BJsZukmkkBYD3V+Z3Tk=;
 b=dJYrwGCmPud5WB/AWoXGq9ClEH7w/VkpEK865ND9wrFZCo4smZgm3rOMAoqCoO8hyE
 LodNZXOZG8QGZC10WUVlbrVzMk1SO2R8h1Ws589hgB2RMbYrCWzjH1Fc9agkuaQVx5sb
 K4rzkDIwwu4+7xFSBL5cDSTy5Aqrn78DiZ/K5jepVjVYScqixlFIxTu6ydszzk20TvHw
 wmIIQ3Xz/l6SBVjcl4hyZ9KOatHoLvoVgHgmEcP/FHzvyZD8gDkKcbo6hLTGGEJvKiJm
 Vg85jLFELbqGORd4HDPERwhjgK9pSdWqFxqmfffw1w32DmPq0jvRNA7JnfKgcT8xq6xr
 CiMA==
X-Gm-Message-State: AOAM532ZIAz7SY3rhNOX2Lh2G6D1zNJhDnzEYufs81P7MlfwYxylixks
 6pZTVPHCS9PaSb1xcmy3ViQ=
X-Google-Smtp-Source: ABdhPJz6f8hVcTQd5Bpdw7dmeHdhawQ5NdaItj5fYAXgvjQHsKkaWbMr6OGvUs/d0SCvBFkFtwwQTQ==
X-Received: by 2002:a05:620a:5f6:: with SMTP id
 z22mr27262899qkg.195.1627480554191; 
 Wed, 28 Jul 2021 06:55:54 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id t64sm27202qkd.71.2021.07.28.06.55.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 06:55:53 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH 2/9] arm64: dts: rockchip: fix rk3568 mbi-alias
Date: Wed, 28 Jul 2021 09:55:27 -0400
Message-Id: <20210728135534.703028-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728135534.703028-1-pgwipeout@gmail.com>
References: <20210728135534.703028-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_065556_677038_689A2439 
X-CRM114-Status: GOOD (  12.99  )
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

The mbi-alias incorrectly points to 0xfd100000 when it should point to
0xfd410000.
This fixes MSIs on rk3568.

Fixes: a3adc0b9071d ("arm64: dts: rockchip: add core dtsi for RK3568
SoC")

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 322971318d5a..f7ecdfd66f86 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -195,7 +195,7 @@ gic: interrupt-controller@fd400000 {
 		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-controller;
 		#interrupt-cells = <3>;
-		mbi-alias = <0x0 0xfd100000>;
+		mbi-alias = <0x0 0xfd410000>;
 		mbi-ranges = <296 24>;
 		msi-controller;
 	};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
