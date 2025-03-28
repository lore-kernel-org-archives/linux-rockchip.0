Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7D5CC28B20
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Mar 2025 11:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rq0D4VnyK3vG9eGkwSY5SUPYBGfBO8tAaIBkpTb49Os=; b=YSic9J6lv1SFgi
	rMI/ca3uozvwex5mkr+gEGnPu5dALROrxbIMQS9omTXS1L0T60p0PoW7lhT7TpU4cyx7WiW4Q7+Xf
	7WP6zVXxiGc3nU0S5ZcbIzJmfIvi6Jdj6kSzYke6asH19Jvbu908eIfcc4rft44hS8UwiSR+o40mQ
	Il2uZespAforhwLdQbhuOXkwUU6qbAxeCu4RecasyCOWtDiKl++YdPMMXw0u0az23zFS8uLndiubo
	8Ehp2/FFGYLVxXUQLlvolMyHNIXPLHyRfITJYIXI1lguM9on7wI6eHaY3xyEg8Z/IURtaX0LDBq3O
	tlyD+NFsbEdYU14r6BeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty7Vc-0000000DCW6-1TBw;
	Fri, 28 Mar 2025 11:04:20 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty7R1-0000000DBjm-1Huu
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Mar 2025 10:59:37 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-2ff64550991so2465571a91.0
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Mar 2025 03:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=friendlyarm-com.20230601.gappssmtp.com; s=20230601; t=1743159574; x=1743764374; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vHj6gQ1zeVt3QGQTw+FIAxu8YW4dxt5y3xOPYH0BIdw=;
        b=GmSYKabAXIsN/5hdaqnLHTaRSod7hZrpGEOV85x7OrXgW3sfwGGWxzzYtEdeYd7DfA
         kipcSK4ila/Upg03uPZaX1biuii6t08CDZEGrn+3EdsUK2PKiAXb2+6NFx3ljGHRoN+7
         fKwSU9XYLZYwBQ7eUg34AzFZRfnt5PDKyV7uw4wR7cstwzLWkqIYpRpf7MK3ZzqGV2qM
         r4zr2uWeCNHVgfVyZ039/sWlnNdbdnP+TYs5drU5vSlF/gshXT/ZbP8hFZ6qGHpF9OBu
         bygTiNhF+UN+ZDc5LE9pLU/ibbvX/h3G0F95uj/5c2iTWnBtJjFYkwc0aYr724efNGXx
         fY3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743159574; x=1743764374;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vHj6gQ1zeVt3QGQTw+FIAxu8YW4dxt5y3xOPYH0BIdw=;
        b=FPXEBbzTwe7wp36ug+Q7q5vcw5dtoa/vY/WOXsZobBxEvJXKV0q+uQaqw0/if0lJrK
         z0MIHfksJxPmJoCUlMltz7Lac46MIuz28xfH0HxetRckonCKy/FaeaNtnSsXUr1tXzYL
         2rgI78QT62VL5h8Gf0CfztnaXF5ZqT802kGLbKKN1ovU2SFH4Qrw5HJM2lT7oSc/CJ9n
         f42HXGV8qogFXW/8XTMUdFjWz2Nm1/OuxIl/s5pWcdR11VArfmfJKP3TViEEDtn2pccp
         ZZdZ/6ctuOPXSjTvCVyBEscGPZDnSgQsQcYFIzBUHhy7ZRffaYCerEeJbC2aj9+4owbE
         2HsA==
X-Forwarded-Encrypted: i=1; AJvYcCWU2sIy92nZuYTeBIad9W1Aqs6TRgB1QOiLtMTFtz1KYZtTPyNZrZY7VDGmjqjefSESTgRJ9rnaBr7GWzPh5w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxyi3ZxDaAs7SDmP3wy3B1MOcaX/TKxMaaBEQw4CVBfjMqAYAty
	Z2kxX8845Co0YMRRZ0bh84IKRzKoANZWUeyK0d0//SOeVv15sPslN3FURjm5a4c=
X-Gm-Gg: ASbGnctWo1cFWG6NOd8wJPZjot1mcR0F/yW4B01LOm5lRXTaLLVN9FIztnIROpvRG/S
	jdDRAtIKp0bYvKULNUEXbzNjEKJKzuSLXcDgFe4rkRsmRWvLV4znEDNl04mO8vGLV/Q7YyaOcBu
	yJ1KtbJOiJ/xpIrG1B6mzRadZyg/8wZHXm/A3o4Uu0lE9fQvAVR9Gl0fxZADRaiaxMaw5djYEcZ
	bZf1f5rTMkutpo+eDgC8qaYsH/tds27HPTqB+RpizjPwl6m9FiHp287CSoynrqlofZuD4Z9LCEp
	cy7j9gZSNUW/VxO2sUWh6E8wUBEbjjpUHdiRCj9XLBFyfprm2TnXcB0XCvlB/yTjLm2b
X-Google-Smtp-Source: AGHT+IHCY/P45TjdQpykRBnac2GduXlszHbzvBxCFlitCRhl0UAFu8AkE4JL9IObg2JicXApsmQMBg==
X-Received: by 2002:a17:90b:2645:b0:2ff:4bac:6fba with SMTP id 98e67ed59e1d1-303a85c1c47mr11926254a91.24.1743159573765;
        Fri, 28 Mar 2025 03:59:33 -0700 (PDT)
Received: from localhost.localdomain ([113.119.38.251])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3039f1d4efdsm3844649a91.34.2025.03.28.03.59.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 03:59:33 -0700 (PDT)
From: Jensen Huang <jensenhuang@friendlyarm.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Anand Moon <linux.amoon@gmail.com>
Cc: Jensen Huang <jensenhuang@friendlyarm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] PCI: rockchip: Fix order of rockchip_pci_core_rsts
Date: Fri, 28 Mar 2025 18:58:22 +0800
Message-ID: <20250328105822.3946767-1-jensenhuang@friendlyarm.com>
X-Mailer: git-send-email 2.49.0-1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250328_035935_474468_14ED92F8 
X-CRM114-Status: GOOD (  10.91  )
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

The order of rockchip_pci_core_rsts follows the previous comments suggesting
to avoid reordering. However, reset_control_bulk_deassert() applies resets in
reverse, which may lead to the link downgrading to 2.5 GT/s.

This patch restores the deassert order and comments for core_rsts, introduced in
commit 58c6990c5ee7 ("PCI: rockchip: Improve the deassert sequence of four reset pins").

Tested on NanoPC-T4 with Samsung 970 Pro.

Fixes: 18715931a5c0 ("PCI: rockchip: Simplify reset control handling by using reset_control_bulk*() function")
Signed-off-by: Jensen Huang <jensenhuang@friendlyarm.com>
---
 drivers/pci/controller/pcie-rockchip.h | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 11def598534b..4f63a03d535c 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -320,11 +320,15 @@ static const char * const rockchip_pci_pm_rsts[] = {
 	"aclk",
 };
 
+/*
+ * Please don't reorder the deassert sequence of the following
+ * four reset pins.
+ */
 static const char * const rockchip_pci_core_rsts[] = {
-	"mgmt-sticky",
-	"core",
-	"mgmt",
 	"pipe",
+	"mgmt",
+	"core",
+	"mgmt-sticky",
 };
 
 struct rockchip_pcie {
-- 
2.49.0-1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
