Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5290EC54FDF
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 05:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gZtqjUGyjJLGfuOllpDtx3e3JmhLpQoSXZwH1b95vh8=; b=ypLxv73u3z2JnM
	aO+5+XR+XH3ZjHhjmt4cEHLhtTyT19Rl8wf0V3QfD+vmF3nq0NEHoVPbi8KCpeKOfCzn3yfdWrN3X
	39VmFl28r+JX+bGvK2Q9+Zfk1riZaI/0CvNgyiVZ7xmpL3ZJyOwlT4VAFi6T49tuI2Bx81Nk1IOnx
	vBm1WNl38tRdGN9J27ULFNrk3U3O/AXFM0Uke5BQ/2AaHpbdaQRKgDW7TqnDjp+CHq+2G9bddwPYn
	5koEUxLjYciQFBnfkjnMXUhmvngyOjaoaUler0dTaCJEVk8iBxhPKxVncfDEOk+2zwfYp2gHRAA4H
	kd286uKbkiJVIPjW6Qsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpIsH-00000009WE0-1qEH;
	Thu, 30 Jul 2026 05:00:05 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpIsA-00000009WCF-2AgZ
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 05:00:03 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 41be03b00d2f7-c9fe3c9bd5fso275184a12.0
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jul 2026 21:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785387597; x=1785992397; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=oLomkV/WERA4unRDmZMMnCa6Bk9H4/ypeqQvvFV/QKQ=;
        b=XhbOYtoX4yxTzQbFEc0AvKET5HJ3OYXT1zPY+9Hwp26Y0zUBxb7iD13SCHtn7EYlt8
         2ZXI17jLrqShks/mZf61vQW1XZiv/BRJ5vO7+dvbwWXC1rs2RcijqhrINSAc/Dw27vrm
         zOfpO4lf4eETruW9ENRldLzkjgCDQdCoJvEPmB/YrHWjG3e3idnqeibu3tJOAzn4FDGz
         HVXb+6BeYuQfFKjAVdJzq0cG9/UZ2Iew8OVx0xZ/TiT2I+aOB2AaIX7ebHUS4jlhKBCA
         dhSm0zg8zuh5v9DR82bbQ741jXuOncno7ySXth7WWOxOO4nBSeSE0/GORPDRmCnokX7b
         yCNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785387597; x=1785992397;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oLomkV/WERA4unRDmZMMnCa6Bk9H4/ypeqQvvFV/QKQ=;
        b=nDEe6uPyt7fRgU0W4EBCr3QDBIUvyf80Vf4TCG5bC0rA0tvO7yXyRJCSag3ITc/aLP
         tEkp6o107JSiu1A/CnpR+Ha4FpFaQxlDzfNmGUSVInK4H6RUq+I20s0CjA5gn3x5C3Hp
         c+Y19ZEvg32pIhgbgNABHw9ygN6CYJSBt66vqNcvDDSv14K47mZ/VQ3b8/glrmyRZtbh
         C0P1QQu/YSiPTXeG8iGUSug+HiB8z8b9vZHfLbDjlxDZHfQWIv7fzstvR/gQ34nnBdGc
         OLyj6AVo/JVuxMspbVvJaho/kai8YJDfNdT3cFP4cDvI4u2cIXlYiO76OAxox81BZqd5
         N80Q==
X-Gm-Message-State: AOJu0YzI5qv1JXwFSI1M7KDYim3kYduK8uBXfMyNLomQ6wZGaXnwyR1G
	DQkkx2G2pR20xaKc9nRYsvMMbMkcmpP3fpxTLWr0vvesJ+MV0QCELDFg98uWeGd3eNM=
X-Gm-Gg: AR+sD11Sx1Drj2AanOucoRMIrzmK82S1GWgbzv+G+oppZx9bxHbJ70/Oj0dGOdQ96Lc
	ArcAP4bWe7pn7SRYm+IZbrpCsdyr4JX58KNLWqlB1SZsjTYVmkQ7a827AxsAUwaDx0FUbcMRaVg
	Ru5qP9Tdgg19IvIyhKItvjD1csICZHYpsWanFutZapLgCAvAbMh9qs+UMk04x5CCeSP4x9luNIE
	qnArlJ6yVP2bpda1J4wABIRs0b08f0dQh23p1m7pWqMP5e8pzv/pSvQnGxiYRtPfkQQ4vqDWRzg
	sisFUlNa1GL7+n+bxfnAOIe1S5/VYoX8rBza0aveRvMf/wAcgelh3T8iiJVhj68SiSw8nFcmMrf
	qLULQ2j+cVx61LTDgwVl/uVoPXPQlB6UYft+Vppp3t2EZyQ8USSDVfAbWYgUPfdA1F7UkkZ7e/t
	n1cE5ESKkXo+ohHHtCssHxK0ZHgVXrtwTRE+38LB+2qQBg8LLXy/XBr03dUHP0xnUOT5ZT
X-Received: by 2002:a05:6a20:d52d:b0:3bf:990d:3fc7 with SMTP id adf61e73a8af0-3c901549430mr881717637.20.1785387597517;
        Wed, 29 Jul 2026 21:59:57 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:6882:91b7:8e79:7958])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13e72556386sm14383898c88.0.2026.07.29.21.59.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 21:59:57 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v3 0/2] Add support for Vicharak Vaaman board
Date: Thu, 30 Jul 2026 10:29:45 +0530
Message-ID: <20260730045947.388660-1-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_220002_395990_227CC4F2 
X-CRM114-Status: GOOD (  11.18  )
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

This series adds initial support for the Vicharak Vaaman, an RK3399-based
single-board computer manufactured by Vicharak.

Patch 1 documents the "vicharak,vaaman" compatible string in the Rockchip
arm bindings. It carries an Acked-by from Krzysztof Kozlowski.

Patch 2 adds the board devicetree, enabling the RK808 PMIC with
SYR827/SYR828 CPU-big/GPU regulators, Mali GPU, Gigabit Ethernet (RGMII,
RTL8211E PHY via a proper mdio subnode), eMMC, microSD, SARADC/TSADC,
PWM-based vdd_log regulator, and UART2 serial console.

The vendor prefix 'vicharak' was previously accepted via:
https://lkml.org/lkml/2026/6/24/929

Changes in v3:
- Replace legacy snps,reset-gpio/snps,reset-active-low/snps,reset-delays-us
  properties on &gmac with a proper mdio subnode (snps,dwmac-mdio) holding
  rtl8211e: ethernet-phy@1 with standard reset-gpios/reset-assert-us/
  reset-deassert-us properties, as requested by the maintainer
- Add phy-handle = <&rtl8211e> to &gmac
- Add gmac pinctrl group with phy_rstb pin for the PHY reset GPIO

Changes in v2:
- Fix fixed-regulator node naming to use 'regulator-[voltage]' prefix
  consistently throughout

Hrushiraj Gandhi (2):
  dt-bindings: arm: rockchip: Add Vicharak Vaaman board
  arm64: dts: rockchip: Add Vicharak Vaaman board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3399-vicharak-vaaman.dts   | 454 ++++++++++++++++++
 3 files changed, 460 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-vicharak-vaaman.dts

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
