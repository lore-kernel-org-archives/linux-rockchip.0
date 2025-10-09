Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D2C6CCD183
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Oct 2025 08:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J5vAkZ1Moms6kDFmXYQUQG/5JkEPqySktB2XMbv+NB8=; b=xORaI2/QJnY6RX
	LZ6Xd4zAKLWu2zDIFuO2bn49RY7QrpEoxkk8h8elBC87QX6E9qBqvJWpIWULI8PPQIpn6ZWMvGPSL
	3HUIWWC+1/YDR0tXNuDkGaFjLmCn/eSevJKKygPi+msC/5LqhnSceJHiSj6pkQqhf+kBbHHz7xaW6
	YlmJg0MFqsM4comA/33Mc02PKhdgFHcqBZK5+dXigzPp2gwUL5xa1l405V2QcvE4fnTGQ93/gCp/o
	+9VWOi0p6Two19I9cFodkpZsFodKBrqIUk3R49MA/oThMFSVYxn+17zfy6iGCj8tZtsT98PtUU38r
	HzLITrJwyXr/pDn7GNaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6mHV-00000005YDe-3psJ;
	Thu, 09 Oct 2025 08:45:49 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6mHS-00000005YCn-3Org
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Oct 2025 08:45:48 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-7930132f59aso1004821b3a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Oct 2025 01:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759999546; x=1760604346; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UFxKPtmjjPmsPSDnSGoXW+doirX8MuPaFEG2TG4+iXU=;
        b=N5AdUMdk40J3BuA36HdIKLbBHgV9+f09JJvhAIVnJcvNa1vEN0je2vjyzMJY70qCwy
         Jd+j7Iff6pD7qUfZp5bLcTU/5xWqaKlUia+fKLW4sCs+OOMLDGlYHMvFERRgfZHU3nNl
         ZLtSrSrhXOdUufXN+Sf0MAgQIYRNjSPrApTNtHeFf3k2Hyr3ZcWUItAr5Hm8lwiE1CW9
         jYIs6H/Jk45Mkf6DsLse7+Mo+pHjGXeVuXFqx8h9g6NjlQmib+TOnXi5Pppi4xkKIy4C
         S+fH0wNi3m6iREx9QD9XkwexbAeZeKVRyd16qJrJXtFEpy3XDYuZFLrabTHuvIZe5ZsJ
         WfGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759999546; x=1760604346;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UFxKPtmjjPmsPSDnSGoXW+doirX8MuPaFEG2TG4+iXU=;
        b=Xhv72YDWL642wH4A4DbNKEreqcl74LsCw6mhjhOEMTTwpur19q77fDQK160i+BqfN3
         F0XTtGz/T3WqjzbfI58lepqq961H7mjlEIU3YRRjxeD66SWGmGqE+/IJHUE6Z3uSjUli
         TOnZ7ksoONAiVlzmB/fV/Via5Ypz1Nf/JnK/KNUqV76j70Mh6AbpNKlPsb0Tx6L6rq4V
         /wK8vTVpo0M39g37p5xx5DzYffsgWkEosF3KP1CFkaWuLvKuDJj9Tz3xC1Oo6oTNHk32
         aYGx0bg7XUaQOoShoCjFXmjyUwjsUv0sbLUBt+Ue8cBSulgRVDQhmyW2QCR+nPHsY3x9
         XnPA==
X-Forwarded-Encrypted: i=1; AJvYcCVrxn/rYyNtEozh2D106fBgK08576aie2qQdqLISE6xtz0zgBIDb/Sy//h1RBqJ6NwimefauuN/kO7DsxYTkg==@lists.infradead.org
X-Gm-Message-State: AOJu0YygUcTbdTfod4XnUEVOWZjbO09zZ17jZmQrG5vMGTcAHqmyJfVV
	61b357Ra2wTcocNQAQrrmbNikLCSFMGTHQg0A8oumv2O0REykEEXqeZd
X-Gm-Gg: ASbGnctR2EJrJtiMJqT2XEe+LI74WOrbb9TXEbSk7uBHJ3keauApN6s/lu2RfPJnHcu
	6y/d7pebIKMcKAkB+pdce95gV77OuypCT734OfpoojFB2x/tp2bNf4Wm2nhKYFA9HUhVEUyAtV1
	jTiqItyZoF86dLZEdNrogUyAb3dq6nR/nv18BkyDUtzQ9fZ3azIi8vAmtuJv3k/HLPEoxAM3vaJ
	rpKnlRXjdHRVi9KNVYWP63boB1cBB4lsDeKdHZi8OE3hC3bmcCfXqBG62CPmfBHlaYwg/AneyDh
	86rs+8plmEvzeI2Ek3RLmVnQ4QvJ9EyW7/X5sj8xNmDcn8FNgPy+vra4mNtsQ7Hyn0cfDlA88Vt
	JX1an59xdqa9YhiyCRgicC+oVpZvRDBtGr3fEoa32BWFg40zk8BvZ6QmWu5sgJ7ql+w==
X-Google-Smtp-Source: AGHT+IEVp0sgA10BvrRwBHxoUMhCzRyjJK1eNd6qK3tx+tcCEvpD74MNSsa4zglDlT5r0XodRH8KuQ==
X-Received: by 2002:a05:6a00:2443:b0:781:4f6:a409 with SMTP id d2e1a72fcca58-793858fb715mr7279720b3a.11.1759999545797;
        Thu, 09 Oct 2025 01:45:45 -0700 (PDT)
Received: from localhost.localdomain ([223.74.108.47])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-794e1bf7604sm2130924b3a.55.2025.10.09.01.45.40
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 09 Oct 2025 01:45:45 -0700 (PDT)
From: Liangbin Lian <jjm2473@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	kever.yang@rock-chips.com,
	naoki@radxa.com,
	honyuenkwun@gmail.com,
	inindev@gmail.com,
	ivan8215145640@gmail.com,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	dsimic@manjaro.org,
	pbrobinson@gmail.com,
	alchark@gmail.com,
	didi.debian@cknow.org,
	jjm2473@gmail.com,
	jbx6244@gmail.com,
	andrew@lunn.ch
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/3] arm64: dts: rockchip: introduce LinkEase EasePi R1
Date: Thu,  9 Oct 2025 16:44:13 +0800
Message-ID: <20251009084416.45542-1-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_014546_851149_F8E3131B 
X-CRM114-Status: UNSURE (   8.44  )
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

LinkEase EasePi R1 [1] is a high-performance mini router.

Specification:
- Rockchip RK3568
- 2GB/4GB LPDDR4 RAM
- 16GB on-board eMMC
- 1x M.2 key for 2280 NVMe (PCIe 3.0)
- 1x USB 3.0 Type-A
- 1x USB 2.0 Type-C (for USB flashing)
- 2x 1000 Base-T (native, RTL8211F)
- 2x 2500 Base-T (PCIe, RTL8125B)
- 1x HDMI 2.0 Output
- 12v DC Jack
- 1x Power key connected to PMIC
- 2x LEDs (one static power supplied, one GPIO controlled)

[1] https://doc.linkease.com/zh/guide/easepi-r1/hardware.html

Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---

Changes in v2:
- Change deprecated "rockchip,system-power-controller" to "system-power-controller"
- Link to v1: https://lore.kernel.org/r/20250925055906.83375-1-jjm2473@gmail.com/

Changes in v3:
- Fix typo ('status = "disable"' -> 'status = "disabled"') found by kernel test robot https://lore.kernel.org/all/202509261328.Grjhp029-lkp@intel.com/
- Link to v2: https://lore.kernel.org/r/20250925092037.13582-1-jjm2473@gmail.com/

Changes in v4:
- Fix missing "Acked-by" message in patch 1/3 and 2/3
- Link to v3: https://lore.kernel.org/r/20250929065714.27741-1-jjm2473@gmail.com/

Changes in v5:
- Change gmac phy-mode to 'rgmii-id' and remove {tx|rx}_delay as suggested by Andrew Lunn <andrew@lunn.ch>
- Fix comments ('not mounted' -> 'not populated') for unpopulated devices as suggested by Andrew Lunn <andrew@lunn.ch>
- Link to v4: https://lore.kernel.org/r/20250930055017.67610-1-jjm2473@gmail.com/

---

Liangbin Lian (3):
  dt-bindings: vendor-prefixes: Document LinkEase
  dt-bindings: arm: rockchip: Add LinkEase EasePi R1
  arm64: dts: rockchip: add LinkEase EasePi R1

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-easepi-r1.dts    | 686 ++++++++++++++++++
 4 files changed, 694 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-easepi-r1.dts


base-commit: 30d4efb2f5a515a60fe6b0ca85362cbebea21e2f
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
