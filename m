Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1E26EDF170
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Feb 2026 15:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hz3CBjmzg8zW29tagYMLdSC3GK8tg3rcSTg88Va8VPM=; b=ynLF+YX8HveMYa
	PXh3GrmHmlEYYy6p/GCfvohZB/SjiGjkAHLkmsj8AXS4vtRBnR31DIgcODrtixhY0PVoaxxFdVdhN
	j8O5tFB1/pgMaS1Arkx9zdrrTQGTPdnqnRDSYQAJDYa33RreLUYFt5kZ4gRfXkgIMI/vukgsYx1SG
	+Bt6hQa0CQHmdzOvetq63hMQYsARx+g8DOfxlWQC/CEoVNd72eaJVzibwpZFVI5UbXIJD7ELW95XU
	GIPACXrJkUkexjVwp+QtKCyq9ai1c+bc2ICN/vVEHjTosNjucnp+Yhhzq4XqGNphkaD5B24wMkrhu
	TsDvMfHd+kUHhjH0ZhSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqus7-00000003bFw-1eAr;
	Fri, 13 Feb 2026 15:14:19 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqus4-00000003bF6-2YD0
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Feb 2026 15:14:17 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-48371119eacso9714025e9.2
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Feb 2026 07:14:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770995654; x=1771600454; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Gh3/sxP/uDYO1xSje3R4BHnBwgGY2HD14S5Y+6zJzX0=;
        b=CEOoBicarcur28nVKanq9nU0gX+IVrKQy3fRG0YFeZDbGvMgge1AwB0wzkowKZHP3j
         /hVk6D/Ki2vnposiwcUD7qjD7tQcbatIQkUfWl+qaR7JqV1fQvZn46tROIdtBI0R6TZr
         1Kr/qEIPffMvBHZTWccSi0poerUzjAg8T7S2noGjImBMGjz+jmmU2B9K+KX8J9JdGxrQ
         vOEbZ8XjtRvy7/qIxNEOFM7ym5Iezlsvy0+uccn7dumAWpsvQ910K/li7ElM3Mfikh+x
         /yL7ZaKwKyyL0S6RU/dE7aBscPniDk89e99YODdTwMdjIFZPX8Y8Ijq+91Fb9184kRSo
         Y8MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770995654; x=1771600454;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gh3/sxP/uDYO1xSje3R4BHnBwgGY2HD14S5Y+6zJzX0=;
        b=qzRRZy5JubJS6dIGYm2tjLsDQKb32tQ9p8n5NODcKYkj1vU/gyq8522OLid+MwN2ZI
         C4YgompXgvC+9dJWjmlXCwR7kf5YAp3p7c4R5V5Dw8QQN6nD4lgAfZaZi5hlc+bl8SHP
         3jxOboXjm2Xi9k+bNnUSepUd2/bJ67DAXZLCTwtRJXVm4yi61dX6hT1jkHwQwCuCdHe0
         7N6ZmuWYqWNoALwX9fCZLNna98ZcDNtF0LSZuc0UcIP4Od8OxyUguKSBFJNxwXjZ87vz
         N5HAS9Hc7Pf3AXCSQnI4IcKn8QnWrTZvxrOTUHCnGtc4S4DVn8rXzXN0vKN029nj/9T+
         lPtw==
X-Gm-Message-State: AOJu0YzV/OxRpxqIztRqnitgG0A53uQjrcTEUDvbGX0bO6h/LZ74oj26
	R86K8IahecP2lxZDg5OP4DD+LynLAAxkLrZ/wBhcKaK6bVkxHTRoZvNONV5/Hg==
X-Gm-Gg: AZuq6aIKOYzSaMkt4aOYkiQhyXfiCScu+E2og4EY6aBR3513GsG5TVSVNB26ox0i438
	fE0baPzN2x9AM7t37vzsRfXLoZkrIVqBxGFky5olnF/zPqEqs+nYOigCz+xZxsedsGV0pjhtgsq
	p0ELRrJaKpao3OSlWf3NUhtCZQY09zI9q1YaWbfCEnCFbvrvRHYGGz9o92qEJXqGkvdgDF2dGzb
	sxfuMU1lRDXoe0cAS+S46p9ToED+kihJDW1H0ibEh9k703QEqtkcfEx3xyZqkyHWou3d/AobOEd
	VGy3tCEy2qnQvbPfaDw+3OS5kRMdKnNE0rrO/po1xMAmfiWZzWBVR8iHIwrNRd5z52oOZN4i0sq
	aCMB9vkOx19h2vh9XUxOA8mWiSyT9dfx8srfy734sBJwRqIiepm5Ux2FIvf7cZjP7f1haMQpoHY
	pZLCa9uHNJgsoeSZrBCgfhayo=
X-Received: by 2002:a05:600c:4fc8:b0:471:14b1:da13 with SMTP id 5b1f17b1804b1-48373a1b6aamr36437785e9.14.1770995653549;
        Fri, 13 Feb 2026 07:14:13 -0800 (PST)
Received: from debian.lan ([2001:861:3f10:3c80:ba7a:d401:2221:cd75])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d77b3sm296160035e9.2.2026.02.13.07.14.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 07:14:12 -0800 (PST)
From: MidG971 <midgy971@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	jonas@kwiboo.se,
	MidG971 <midgy971@gmail.com>,
	Claude <noreply@anthropic.com>
Subject: [PATCH] arm64: dts: rockchip: rock-3b: Add phy-supply to pcie30phy
Date: Fri, 13 Feb 2026 16:14:52 +0100
Message-Id: <20260213151452.535527-1-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_071416_647856_1F80450B 
X-CRM114-Status: UNSURE (   8.94  )
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

The PCIe 3.0 PHY requires its power supply regulator to be enabled
before initialization. Without the phy-supply property, the PHY
driver does not ensure the regulator is enabled, causing SRAM
initialization to timeout with "lock failed" errors:

  phy phy-fe8c0000.phy.1: phy poweron failed --> -110
  rockchip-snps-pcie3-phy fe8c0000.phy: PCIe3PHY lock failed 0x6890000
  rockchip-pcie fe280000.pcie: phy init failed: -110

This results in NVMe devices in the M.2 slot not being detected.

Add phy-supply referencing vcc3v3_pi6c_03 regulator (which controls
the PI6C PCIe clock generator power via GPIO0_D4) to ensure proper
power sequencing during PHY initialization.

Fixes: 846ef7748fa9 ("arm64: dts: rockchip: Add Radxa ROCK 3B")
Signed-off-by: MidG971 <midgy971@gmail.com>
Co-developed-by: Claude <noreply@anthropic.com>
Signed-off-by: Claude <noreply@anthropic.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
index c5f67dd6dfd9..a1b2c3d4e5f6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
@@ -404,6 +404,7 @@ &pcie2x1 {
 };

 &pcie30phy {
+	phy-supply = <&vcc3v3_pi6c_03>;
 	status = "okay";
 };

--
2.39.5

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
