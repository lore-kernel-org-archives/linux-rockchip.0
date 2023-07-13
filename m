Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49FB9C001E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jul 2023 14:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=galoLV54L/VBEziWgIZVEbxylDv4/G77u9mm0Y6a27Q=; b=mTniKjlGk0SghB
	rm1Cg/mbw4DZGtuElEN043ERnMXErYZ3WnbCojHg+9hrxoWrbY8lTbmp9A0FuvdDBjKiSYk5lGQml
	Ig3ca0EyapQISDR0S1LA1yM0tK5AyuSY/mzsuH5f9nJfkCDBIRREL+5CHiKKtrsza4rRx/h8GAWKr
	1lxVyrcFQB2Mek/oGbK1jENVVj5yc9LDck76YLZwJFcdyKrSL3h24Jj+RgPAX51xDFPV3VtlQK+/+
	g0BYQzV0msskPWX8WK3VKwu9Pf5k7uQzqxB1QfH/5/B75Cbo4HQAVTSFj6njaT2ZMa6Xbvu2bGSO1
	/UIXolzY/x0AKwlWF6Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJxU7-003aWt-0p;
	Thu, 13 Jul 2023 14:39:59 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJxU4-003aUW-0Q
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Jul 2023 14:39:57 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-6689430d803so528337b3a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Jul 2023 07:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1689259193; x=1691851193;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7zB1XPfhcNMtArl3vuKIcc3WSzGrnVrigx9OQGKNyiw=;
        b=0P9DSscAeX+uPqfiFSd7MFJE+7fGIgHocGha1bu7Htu/PibTRPvs9ejyWs30Xu4P0b
         Y3gw6m2vuG3owKyw4f0o+vsf5uY4tKVVmXnsKKbrrZ6vvvbarfmJpBYG/qvbnU0UT0b4
         KfYAZpqx3M14d10JPpEz8jjsYeJIYwZ20Adf9bnvYTiTdOpjthd8bw4f/pOzxbzNNF6r
         jl71izEVFl104mYK5YpiD2SLHo+9FCncm44HAH2/nS5C1WRgVcEG5jm5IxTiT2YDNAzU
         4j8A4KLsW0fBa7uiWg+Z0RzXYZYdL4OYMzn/boYrl5UpSVXR8CXrd8wmQjBeGVVH3C91
         Bxwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689259193; x=1691851193;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7zB1XPfhcNMtArl3vuKIcc3WSzGrnVrigx9OQGKNyiw=;
        b=e0cCfg0c2/9s9ADvVH/0yKoF/ZqoxDKSaetpqftivZILZzC7E4QnagF2eAHsw/jthx
         wyQjksFKl2Zd0RFE14QY6dFSH17zmJJX24lr3BY1MiyVv+dAkWtyJhAvSL4abwd9EL3S
         vLJqTsuKPKPc8tgVU22HB5YA++DfYzpJvtb059PXvP89ZXq0iISgurcPPkpO2sKCf0MH
         foekU/rJ07gkWsMQCNPgL9Mubkq15dYLa/2slrNJlriIrHJeri/0fabxL6+xe6lE2RTI
         /Hw8fTzEBaFZWckqhBD5BpBUZwOtklq2eDzTt/7V9Cx+m5zXqfJ77sCN7UQdCW23ZOAS
         7Gcg==
X-Gm-Message-State: ABy/qLbRcSg04h8lozStXZqDci0TWhXA8KXGvMct+VOOa784AmSEGQ47
	UmtpOwWS9tWvt/21odN7NQwxUQ==
X-Google-Smtp-Source: APBJJlHHasrwoctMJrPEurc6F42vi24LFPbZDgofhEE1TweUVlUzY/otWUJ5rUuxaRvD+CXflZW8cw==
X-Received: by 2002:a05:6300:800a:b0:118:2e5a:efab with SMTP id an10-20020a056300800a00b001182e5aefabmr1166089pzc.4.1689259193164;
        Thu, 13 Jul 2023 07:39:53 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a208:4984:5087:308e:21ca])
        by smtp.gmail.com with ESMTPSA id d18-20020aa78692000000b0067a50223e44sm5565764pfo.74.2023.07.13.07.39.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 07:39:52 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 3/8] arm64: dts: rockchip: Enable SATA for edgeble-neu6b
Date: Thu, 13 Jul 2023 20:09:36 +0530
Message-Id: <20230713143941.1756849-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230713143941.1756849-1-jagan@edgeble.ai>
References: <20230713143941.1756849-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_073956_171638_C987B134 
X-CRM114-Status: UNSURE (   9.43  )
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

Add SATA support for Edgeble Neu6B NCM IO board.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
index 7f9e2c750287..0b6f32e9b820 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
@@ -21,6 +21,14 @@ chosen {
 	};
 };
 
+&combphy0_ps {
+	status = "okay";
+};
+
+&sata0 {
+	status = "okay";
+};
+
 &sdmmc {
 	no-sdio;
 	no-mmc;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
