Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E1E4CCD184
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Oct 2025 05:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6KoleNYKT1zljJYjHZELRRoq5c8kFmpYmSSx0J3+qLo=; b=ASgjNkUSsvevQB
	UjCknhrRLzf1IN0z8xKR68YtrEH5LsQCJ8ep7d15MN0kVhuy1TNLoQ575rNpqKJReI/UmXYOTTo3d
	WVmQCgG2gPjjBFcz+3U9CmtfX0nMjLCnw4BME2TDr50HqdvZDI4oxVPii96EV782GCp2R1sX3yuNu
	XLrX5h7Guz2UyKstpd8ohDVFD2bkLpjyyoznN3WWrQoAS3jFbrHilWmFgUwucUXb1FhcmTxIf7R4x
	TArsuZUsFaVkMw+5usTE61TutJ+M/oDhcA4lsCQBesYhoeCf7lpp9jpXF8NHfY2nAMmBaSheuO5Y3
	X3kBgSAMq+aM5FELOT5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8XLX-0000000FB00-2ODk;
	Tue, 14 Oct 2025 05:13:15 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8XLU-0000000FAzG-11nj
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Oct 2025 05:13:13 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-781206cce18so5069029b3a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 22:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760418791; x=1761023591; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h5pJYct9yVXw0oCIW3UzRkZKmjOaGJ9oUwhyyYxVEys=;
        b=U8/QU/H+Q0556SiGOjSK0+akuRKWExaL7K8LdvJSi+uG1i+9hS6s4PQmWCffW6ybWJ
         beNgmkzakDdo79m34TVABVK1ViURA5NeJqwZLRBR5TQNM0euTnbBJdHp6qbBaGmiMdJZ
         4jIhzpKGb7w3KcNKctBfapIs20ZATOAezHDORBUlYUZ0uE7d4M3kIJnQgfRmUc31tSU+
         5MquOkcsubX5wHwFJPMO5MGJBt0MMFKRhnOt75h2HUbqwqanQDndTiV4T/iby5Iix7sD
         Wpiz0yBJRYRFSa8pkuZj++Shon1i+tMa5D48VyBcBruUwGge731OoFZo/8bWTlpjx+oW
         DmzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760418791; x=1761023591;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h5pJYct9yVXw0oCIW3UzRkZKmjOaGJ9oUwhyyYxVEys=;
        b=ahg+59vU/oaritizpxxLSFigWPWfhcx22sDp0m2zs5HtFgLs1xHZiZIfTPZz8FE6/3
         fpKcBdbUcFkcN54r7PjAMBi/Mjxd5cJEyuE7bAWmg3ZVw3zFndEePzBatAfG2U9UaTTd
         XpLlDCadile0JrFaBejbLgSuPyYYKkaC+M05H4EgW8uTONEG1/f23UqNaI6GVGt7vhyC
         ZDiVnOf16x1Pz3soRBIJVLQ+wVZYS4jRrrsHZ2xlYHUnKQw42apefpTF7MaUry0ye/Jy
         gT+sMepVwq5Lx5nQxpwGJhSk0cZc+8lDirspmrXiijl5B/S4G1zh/3v9SvWztj3t47uo
         eBUg==
X-Forwarded-Encrypted: i=1; AJvYcCVL4n1HNmDmlV31jbOWUiIMZP78SBFvaAT/khD5WupIrEGDCEMiBKLUTGyu7EDqLHIeIxCcFBWt728g3PfzXw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzF07L8cXNFZkpAsJZoAxMocJ5JYyzegpRHVpgtnnU2DMEDjF6c
	9DqtKkXiksJHxh0usmCViyeZPRgL7bRgrzbBW30zT1io/fd/dgsTdT07
X-Gm-Gg: ASbGnctcDl7d1FiaqU72WGk/F64BbFRzzWHnXKZduujUGzfrlMvll2t//QzVSQdPAhS
	TVRxr4Y83teESrDhACANakB8ai/a82u86sslGURLe7S2O8wtrvqSe8nKYNQc7QoJpPEML1T0xxB
	6wHQx/Jejkz+yRuzxgv3asvOYrrRgyoohBNhPSM5DtM2t6DW6V00oNMZy18UK5mA2x+WzPJpE5j
	UttSlwNBBOIVnArnPaqJUrri9f3EkeDLRpQyJgaeedCQlq7/qS3MNWgVAfXM6TqwtiGMPQ7Vov/
	xAHofj3gPBS1YW6Hd5zZuZ/3AkOP8vLrJSAtdiZq+EU3gZB/gTGqg5vz+6hXVUu9O1tD+Q9iqZi
	O2eZDHDq3n5jSp7YTuIL722GOkv3PQ+OPkl5K/WDPIeLdPwQLOZRKledCNn1JP0afhg==
X-Google-Smtp-Source: AGHT+IEFCzkkgshVwSNP2mRUNWEuhHD3ijpyLH4r7whNKouoX3vJnv6qHBbE3m/mtSLuTYRMhWSgqw==
X-Received: by 2002:a05:6a20:72a5:b0:2af:65aa:4efa with SMTP id adf61e73a8af0-32d96db58d4mr34629174637.8.1760418791214;
        Mon, 13 Oct 2025 22:13:11 -0700 (PDT)
Received: from localhost.localdomain ([223.74.108.51])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b678ddce4b6sm10902353a12.13.2025.10.13.22.13.05
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 13 Oct 2025 22:13:10 -0700 (PDT)
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
Subject: [PATCH v6 0/3] arm64: dts: rockchip: introduce LinkEase EasePi R1
Date: Tue, 14 Oct 2025 13:12:23 +0800
Message-ID: <20251014051226.64255-1-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_221312_356087_0940BCCE 
X-CRM114-Status: UNSURE (   9.39  )
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

Changes in v6:
- Fix missing 'vpcie3v3-supply' property for PCIe nodes found by Chukun Pan <amadeus@jmu.edu.cn>
- Nodes and properties are sorted alphabetically as requested by Chukun Pan <amadeus@jmu.edu.cn>
- Remove unpopulated devices (sdmmc0, sdmmc2) as suggested by Chukun Pan <amadeus@jmu.edu.cn> and Andrew Lunn <andrew@lunn.ch>
- Remove 'combphy0' node which is unused
- Remove 'clock_in_out' property in gmac nodes as suggested by Russell King (Oracle) <linux@armlinux.org.uk>
- Remove deprecated 'label' property in gpio-leds node as requested by Chukun Pan <amadeus@jmu.edu.cn>
- Link to v5: https://lore.kernel.org/r/20251009084416.45542-1-jjm2473@gmail.com/

---

Liangbin Lian (3):
  dt-bindings: vendor-prefixes: Document LinkEase
  dt-bindings: arm: rockchip: Add LinkEase EasePi R1
  arm64: dts: rockchip: add LinkEase EasePi R1

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-easepi-r1.dts    | 624 ++++++++++++++++++
 4 files changed, 632 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-easepi-r1.dts


base-commit: 30d4efb2f5a515a60fe6b0ca85362cbebea21e2f
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
