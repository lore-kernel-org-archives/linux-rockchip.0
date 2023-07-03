Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AB06EB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Jul 2023 08:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AG4K5Jrw+RePMvdiQBAEJZC/uJJwKThYx7gQLVmSuPQ=; b=NnKL6vLcffzSqL
	q0eU8KtpfP59utyukUUb3ihRBnXJd1FE6qI4h2KbbNIkT0zS0DzFSA8OuGIyWeJ+2xzrwm5jd3AqX
	uEumNKQ0c80ul7xTtdtiiFiQYf4gBqR5LBYt9fry+a8sLtzlXLUfX790mEmBnEAwhrmqLYmD6JVwK
	8oPFJmGLJSkSUIxErE6iEgL6Oqd742rNiJWbGs7b+8KGR/X37sOsfJB3Qeq0ev3+poaL/ueOmWYq6
	cQh+S/ZJPe4OMRQFeUeYU+sa1o4yWp5oLY1z96/9LFz8eT+bFyvE/7yT5hmuaiIydlCrq430KCLV7
	Tc8b1iHwSGl2yNgpAP9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGFPC-009piw-1W;
	Mon, 03 Jul 2023 08:59:34 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGFPA-009piL-0j;
	Mon, 03 Jul 2023 08:59:33 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-51d88f1c476so4675509a12.0;
        Mon, 03 Jul 2023 01:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688374770; x=1690966770;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gIU+W3KyfXyLBg7kXWXihpWayTsoJV4YZPC0K6yLsJA=;
        b=JUWUA2aOc9Dgh4V5Q7UhO675h2MALJ5NW9MdQo101rjli8W6OLSSe1OswnGwmKyxrB
         NHAUqn0UPLG4yGtZMWH7AeC8CxBMCMXdg6abYWBNi1BfS5zfu3f6898+i89v95xWw6kp
         GvEUWvuhCV1ZkHG39MFp0vYwtTJL6f+XzqaRfT0A4yfCYG2gv4hqb6YxgSbaPiHijGpv
         L7RL9qE6EPs2sbXSVEPx8EXype00i4baQGWNbw5zRK7QmYI3Mx97966lUGfTL9jcQprI
         83RZ8yj/3MfV3dBGnVVyK91IqrR4m9MmA5Unj1F+ggj93CCca5I2pwNTCWBSJ93JOR2M
         JJtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688374770; x=1690966770;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gIU+W3KyfXyLBg7kXWXihpWayTsoJV4YZPC0K6yLsJA=;
        b=Abpoa9OO+dlqfQQpg7opH8uId6bERwGars7SgnHOW8lKZeuHCOZ3yrxmcNzrRhcbNf
         SV5KJ8g2JYdIkNrMcH4Ownns43kle7td2fzK9apW2lDK3j/1q1lX0Jwr8KhZAH+3NaF8
         pU7Oj25+zEfokSYk80K8IHgP3l6Pno0RQzroG+UYiHFDcgnShEBMSuSprpPSswhU4+x1
         zg14nzGNJOGrTSb0AeePHETpL3TdHm9PlsxXvIAgXXQ9/cDcfFzqaT7ahc36VZxODZmJ
         pp3a2QphTVntIdFTsqVXiazzPtKw3gVfk65nk/DA/vE9Us3aGTOafNW1q+52SWeoRzWs
         6YQg==
X-Gm-Message-State: ABy/qLYomNeaIvNoYWJTNzjYPjlopggPzJTjDogxet+p7+91lNhauEQO
	oyrNhXK2i0Vy5dWoICyfLWU=
X-Google-Smtp-Source: APBJJlEtZ35iuRiAJo32s6RRkTkvahBjWT1OeGN/+dzdJFyZKgH0GZC7TK0lOAP/xxPXzDnniK+bYw==
X-Received: by 2002:a17:906:5a94:b0:96f:c0b0:f137 with SMTP id l20-20020a1709065a9400b0096fc0b0f137mr6850646ejq.16.1688374770463;
        Mon, 03 Jul 2023 01:59:30 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id gx23-20020a170906f1d700b00992dcae806bsm4501159ejb.5.2023.07.03.01.59.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jul 2023 01:59:29 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: dlemoal@kernel.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Dan Carpenter <dan.carpenter@linaro.org>,
	stable@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] PCI: rockchip: Use 64-bit mask on MSI 64-bit PCI address
Date: Mon,  3 Jul 2023 10:58:45 +0200
Message-Id: <20230703085845.2052008-1-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_015932_308927_590E1E6C 
X-CRM114-Status: GOOD (  10.61  )
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

A 32-bit mask was used on the 64-bit PCI address used for mapping MSIs.
This would result in the upper 32 bits being unintentionally zeroed and
MSIs getting mapped to incorrect PCI addresses if the address had any
of the upper bits set.

Replace 32-bit mask by appropriate 64-bit mask.

Fixes: dc73ed0f1b8b ("PCI: rockchip: Fix window mapping and address translation for endpoint")
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: https://lore.kernel.org/linux-pci/8d19e5b7-8fa0-44a4-90e2-9bb06f5eb694@moroto.mountain/
Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: stable@vger.kernel.org
---
 drivers/pci/controller/pcie-rockchip.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index fe0333778fd9..627d08b34827 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -158,7 +158,9 @@
 #define PCIE_RC_CONFIG_THP_CAP		(PCIE_RC_CONFIG_BASE + 0x274)
 #define   PCIE_RC_CONFIG_THP_CAP_NEXT_MASK	GENMASK(31, 20)
 
-#define PCIE_ADDR_MASK			0xffffff00
+#define MAX_AXI_IB_ROOTPORT_REGION_NUM		3
+#define MIN_AXI_ADDR_BITS_PASSED		8
+#define PCIE_ADDR_MASK			GENMASK(63, MIN_AXI_ADDR_BITS_PASSED)
 #define PCIE_CORE_AXI_CONF_BASE		0xc00000
 #define PCIE_CORE_OB_REGION_ADDR0	(PCIE_CORE_AXI_CONF_BASE + 0x0)
 #define   PCIE_CORE_OB_REGION_ADDR0_NUM_BITS	0x3f
@@ -185,8 +187,6 @@
 #define AXI_WRAPPER_TYPE1_CFG			0xb
 #define AXI_WRAPPER_NOR_MSG			0xc
 
-#define MAX_AXI_IB_ROOTPORT_REGION_NUM		3
-#define MIN_AXI_ADDR_BITS_PASSED		8
 #define PCIE_RC_SEND_PME_OFF			0x11960
 #define ROCKCHIP_VENDOR_ID			0x1d87
 #define PCIE_LINK_IS_L2(x) \
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
