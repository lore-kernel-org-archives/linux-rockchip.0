Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 624D1C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jan 2022 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rh3janl0u1k0t9ZuMUoe1ee5sjE+F6PWHoULl+g5JlY=; b=lsyAjBNKE+ViDD
	OyXmxCKi3BBQc3+GsDAfVMLpmj6wX845UwAqq09P2Ayz1PlV6vTponfrbX7OdRtWsH5mWfuID2PMN
	WdyYjrb+Q5aictvnQWlcLWyP3wVU0JInvfyyAivZCK8YNp9qLSdwxj9TMnXBAyxO6H+og6+I9Gr44
	E3S8UyLVaWeHKDJ51Wg8Nogw+yxqHHmsHOR7AczknKfv5PvmZVl5HBJs9AAlwi1c/+7LaRVElv2yw
	vppDMkBIgpGRRN+8cQq9OyWkCSire5qjZJhtDPp+z/Dzuf4Axwdd2zLClIstN5PGHZ8rGDLcLjBKK
	q31//5H8cGX2Tof/WZYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDFja-0000Ws-Lk; Fri, 28 Jan 2022 01:07:26 +0000
Received: from mail-qv1-xf2e.google.com ([2607:f8b0:4864:20::f2e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDFHO-00HVZD-Gg; Fri, 28 Jan 2022 00:38:19 +0000
Received: by mail-qv1-xf2e.google.com with SMTP id i19so4380327qvx.12;
 Thu, 27 Jan 2022 16:38:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pLFwv7MjOQ+N54vrBm9216io6/o12k65yBVIhwcPg5Y=;
 b=LxbFlMhLkImQU7BenMFSJxGZJe7qA50NBhuhQySXdCmKQOPYYjk6mWtu6ikBn35pca
 3+mCL1QKPT2X0fBzscixX63/zFpbqu4oIK8Z/y6xelxW61p94+DgEU/WP9KX3k1TaHIe
 somjPHKZ+svAFdzQvVqmxibq414ThT1PZq66WMG6XfkpmFhE7bzMS+KAcLJj2eqhPLiu
 DlVUcm6n07Hwymu9QlH9YHlchrZ2W7mwjJwK1klkWGvXtqFEWRqMh0/rIZDj/65aRQUz
 fZxMxzxG6ziSLO4idnclWdYFXqsZQBllQWdfAQFOLN92XE5cZJrNjK0Gmf5E9qlUwf7C
 dpZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pLFwv7MjOQ+N54vrBm9216io6/o12k65yBVIhwcPg5Y=;
 b=RqyhH4VSBHqMT83/gIoUk6HLpGEWopmt4hfZmHwIb5LVJIfCsOaY31vRiunKjun3pb
 0nB3GXAOZpc+lxeeb1HiUnY68TByoa0fGNRZARkewY79DjMY73ILk+1bpIBMi/ymBrAf
 XL27TYzuaoJ+K9e8Wc6KOl28FbyydmW9rdjV++UUubGSdXpyqZtEL+K0eHrsX+4p1DYh
 RN3/8eyw102/WWqSEp6tea5O5tsNqMhFv+rDHj+wEknpbNXN2o2Rnsir4bkE4/lmi6tU
 GJfiwi5QSgk+x+WuyB4PMSznDWXAiPyrEB3TxJFlWOH10f5o3t4kgNZi9ikikYB3VMRf
 DwYQ==
X-Gm-Message-State: AOAM531sdPByNUHOA2sj2Bj8X+GcMkF6NQZ0CmDkba3clVFFBj52KND8
 aUDwCICwdy29EibgJSvJp08=
X-Google-Smtp-Source: ABdhPJwrhsjuD03NSeUskaZoQXKK7d36ovsnIB0/+BjyXAkBfGW8Owu0kBbjWXKy0HrxScJjC41hRw==
X-Received: by 2002:a05:6214:238a:: with SMTP id
 fw10mr5286173qvb.15.1643330296577; 
 Thu, 27 Jan 2022 16:38:16 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.dc.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id t1sm2142883qtc.48.2022.01.27.16.38.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Jan 2022 16:38:16 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/4] arm64: dts: rockchip: add Quartz64-A pmu_io_domains
Date: Thu, 27 Jan 2022 19:38:06 -0500
Message-Id: <20220128003809.3291407-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220128003809.3291407-1-pgwipeout@gmail.com>
References: <20220128003809.3291407-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_163818_610386_C1F7B94F 
X-CRM114-Status: GOOD (  10.85  )
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

Several io power domains on the Quartz64-A operate at 1.8v.
Add the pmu_io_domains definition to enable support for this.
This permits the enablement of the following features:
sdio - wifi support
sdhci - mmc-hs200-1_8v

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index d9eb92d59099..33c2c18caaa9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -482,6 +482,19 @@ vcc_sd_h: vcc-sd-h {
 	};
 };
 
+&pmu_io_domains {
+	pmuio1-supply = <&vcc3v3_pmu>;
+	pmuio2-supply = <&vcc3v3_pmu>;
+	vccio1-supply = <&vccio_acodec>;
+	vccio2-supply = <&vcc_1v8>;
+	vccio3-supply = <&vccio_sd>;
+	vccio4-supply = <&vcc_1v8>;
+	vccio5-supply = <&vcc_3v3>;
+	vccio6-supply = <&vcc1v8_dvp>;
+	vccio7-supply = <&vcc_3v3>;
+	status = "okay";
+};
+
 &sdhci {
 	bus-width = <8>;
 	mmc-hs200-1_8v;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
