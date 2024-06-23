Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 571D7C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 09:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=86K5wbvXWnemHP0CYsRPbnhNLvO6GOEzitiYv2mcfsY=; b=NZSrlxyJujkbCJ
	e5toqY3Jnl1yJ5jyHzfFsbN2/9vCI5aiYUJgGZVCHNUAy9Y5xYy5PAvyNHTzNZcZIseRhJlTv+zr8
	OLcPLprcyYjwXSVC0zTSLhe5jrdLtDwjEN5RRJ6JueqL31ivOo/oRbaBSWe+5WY8EnFAXtzjW8k7b
	R+afQwuloJ/XF3MEWbIpC60IwQiWOBknxkucmy4XLwqFaYYnPUMCjlawS2pdlrHPdVPUfp6QpZaCL
	2CxPsMVGvwj5x3DKGQp2FEDL8r4b2+jDPHDPz71+M+WRyYuAY7+FPkIJhxV/Tv0r0EP5QAA+GbLBP
	aTWWzM8ppB/8yRvvrU0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLJ6E-0000000Deua-3szG;
	Sun, 23 Jun 2024 09:01:26 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLJ69-0000000DesI-0jYc;
	Sun, 23 Jun 2024 09:01:22 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-a689ad8d1f6so417874066b.2;
        Sun, 23 Jun 2024 02:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719133278; x=1719738078; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Bfapa9SgzqCNXQ+ua5hqiXbP09HQfeNOv4RtNIhA0mk=;
        b=gbo8SeqtuDxqGgIsdF9KJYKVBh1ZFbBdNrR2nqccmrSkrBVpZyBgA9kZwYuFU6of5i
         YjDRgKc0o1eFdqPzDbTr0+zfKVbhE6uJSqZSZNamR5piQB58IrP7jI07ubJhVOkQPSKJ
         QqR7rED2IzfN7VZ5dFbDxYSqMALFvM8luG97pAYdK1gVLyb1GKUOFPhcPhkbn1Ql3RBb
         QKfhTY7kYak8WDXIWtpPHuj8Q0R3IeF00W8SnNH4CIl2nVYGZ/77IYRjAdK4msrdaKvx
         NotQvwtEK2F39Eozi7JXVteg/zZ/DUjRZ7RPc/tDjkH4QL3FAKi040vQ+rxKpmRfMmWR
         11FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719133278; x=1719738078;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bfapa9SgzqCNXQ+ua5hqiXbP09HQfeNOv4RtNIhA0mk=;
        b=tJxLCcf6eWGc2gl1oG40fBzB4trcJqIWp90mzrvuGDmqols8N1Dow66wR6DmNm4dD7
         y5sqaYEUSDY3vLERKCcJmFYPdIbym/H2R9Y6/hdaVEbnGgu5KNfDjMYYwUZMGc4KtBK3
         PprbvDFeu3LEr12hDLjQrGgr2KODKuZuprrayAkXsj9h0qodgrukyOSbidvCedWWEzTq
         J9o497OEaAq1vBb0pRUBDGiYATI35aWwCT7HcRb3QR+M7TKXP5eEu3OebXikfQ3OroqQ
         VBKSzr8pA4bNHr6V/QvVYCBkyzEllCEZLH9LubqLKQ/tnXecwafwulUbXH2CdLjRS5Zq
         iaAA==
X-Forwarded-Encrypted: i=1; AJvYcCX5PcF2ST5Ias+foxcrsAeeUyrusrg4N5wbKcMDHEpBpeirFzG+DPDL2wpS1AF161Fc0hsA4jraIwnBA4D2DT7WVYhPeE1qHj66m/vhiqkeawoIWF9WqLD4UzmRcS/WIOIaqbkR9+Oa/Ken+hTLexvcV5vFka3Q5Mk=
X-Gm-Message-State: AOJu0YyeMcp5igQM2e763pcU4VfNYNsuyKKL7AuRHs00dCjeu71kq3QG
	CDZKo8D5Z64P5hVYfz3ZjmPVYC4/0t8Dsb5sADNc1+Lry5KDc/E=
X-Google-Smtp-Source: AGHT+IFb8Ln/H3WBmDbysVXgbESrSqt7qHeL2iCt/qomXfg/Y9rcuFjXxu/WAzdAqR2l4A1G4nhtYg==
X-Received: by 2002:a17:907:8e93:b0:a6e:f62d:bd02 with SMTP id a640c23a62f3a-a7245c84f2emr101106466b.7.1719133278146;
        Sun, 23 Jun 2024 02:01:18 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:eac1:5757:d323:9544])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6fcf549385sm282003966b.105.2024.06.23.02.01.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 02:01:17 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Sugar Zhang <sugar.zhang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	inux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 0/4] Add LBA3368 board
Date: Sun, 23 Jun 2024 11:01:12 +0200
Message-ID: <20240623090116.670607-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_020121_243459_07B00DDF 
X-CRM114-Status: GOOD (  12.52  )
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

This series aims to add support for RK3368 based LBA3368 industrial board
form Neardi. The device tree currently only contains entries for which both
bindings and linux driver exists and is expected to be exended in future.

NB: checkpatch throws me a warning that no venddor-prefix for "usb5e3"
exists - which is true - but "usb5e3,610" has a valid binding.

Changes in v2:
 - board DT property re-ordering / fixes

Link to v1:
 https://lore.kernel.org/all/20240621134030.243646-1-knaerzche@gmail.com/

Alex Bee (4):
  dt-bindings: vendor-prefixes: Add Neardi Technology
  dt-bindings: arm: rockchip: Add Neardi LBA3368
  arm64: dts: rockchip: Add sound-dai-cells for RK3368
  arm64: dts: rockchip: Add Neardi LBA3368 board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3368-lba3368.dts      | 661 ++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3368.dtsi      |   3 +
 5 files changed, 672 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
