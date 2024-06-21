Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C41BFC2BBCA
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 13:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zMZjwsBzYpHRn+jW89x1fmpV3B66uVoywMTyTZIy3Bo=; b=XdnPLGup90XtiH
	DpK9tmMuZZyXNaieznC2BBX0QNKwaRAxcxI+Pf61bWlJllKM8Z9pQueZ0jcebDs5HjP29+SV3jbY+
	SJQrFSd9IuuC8v0R4EBxmrZsUjkguLbzZRnyPRLatWAUXiYIx70dLJ4bsaSFR5efcbkeQGsiWz2d8
	hL6j0mFy5EoerC8g793uETjAB8qT8iNggsmz5VvJeOLCDVDXJUFcTe/FLqIHmMPGwlBJCB5sPVovw
	98mx0d2MVy2NoEaBuWqA44jNtdM6yMdiijJK77eU5NNEagPEbQFirWlOF+fH2nilHu3fuRpGJ9PJX
	MyCiYs+gxLq4EeP5o07g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKeVP-00000009Mdu-2lDT;
	Fri, 21 Jun 2024 13:40:43 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKeVI-00000009MZZ-18tg;
	Fri, 21 Jun 2024 13:40:38 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-57d106e69a2so243256a12.0;
        Fri, 21 Jun 2024 06:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718977233; x=1719582033; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HO8YbNgusDOc+w+m1b18tvlpjQ6nHTLOVFIcczCcZXE=;
        b=dFsOU6sLUr/94gRzoxGyEmlmEPL4tvxnWfFmB/usdrAuK6BO4Cf4UbQ8dKk7X4UInY
         XAfxUV46ACU02mts1Z557RXJj1cMv+XKWF6f5QcS8uFXEv5kxPGj4/Mcf/sWVRCx+bv4
         Y+STwaERqP13WEYHeo6rimvnw+rGXlSf2g+kt2YvAkFvz+W1zcX60k0hzWNEQxOKz00g
         QpupG3BwDxJc6KLOKTk9S+BjI9mE6rdBCGxeiUQpRAFl+xhkIKUgsqNMLFWiUWGwXjEQ
         j5E+FKwHmLNadnkwNs2e9Adq7Ciheoytzganm0SC7s4L8p/MYCHmBDqY/tC6HsNhZait
         KiGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718977233; x=1719582033;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HO8YbNgusDOc+w+m1b18tvlpjQ6nHTLOVFIcczCcZXE=;
        b=egs+Ni7G0Qa9SD+3LZ5kNG7ovRtA4w2yFtO5i7bDjcaDonhQ4w6q4sLjeQzbEwKdR2
         VlsktNP9mfPl73xc6AvgAnH+dKYctxHS+m+863mpdkqaNAy7e3QpwHM9gsjaqjUkcAcz
         lCgJRsIlnPBRHKR8Eugl0daHUc7hj95teEGkw02WmpYhj4V8v7H/uh3bTnqxJEtKn4hP
         hqATJKe4hZuzPdx9wgsR1EwYyG62oop8h03x0Z1o/2z4nSyZShfKpGwqc3HvN+Fww4c6
         vhYn3o8SWGppngX8nAGvRIDPPu09RaXtHfDrIOdgDLOpS4hEuT5bVrBQh588YTe0/ETC
         e5mg==
X-Forwarded-Encrypted: i=1; AJvYcCWDOx3os3knn+mSFY1QT2aJGAPiRdmQF94Rsho56i4/MrCOzlF5XX9k/jkg58GnNE4H7ncdvpzP2ak+YTtnyU3QiBB8zBJKVRWnk1OJwxhNldc/UUo0UrPnyk6SkAKA8/3HDIzNByCOttroK7SrN2k9CugVaAs0fJU=
X-Gm-Message-State: AOJu0Yw5viwUWfgxBED5g4BSzNf4tKL9F8XdeQQQ7Q8p0yjenGSqDt+c
	M679h043G9jBP6pQNoNqMoFmQQyD+uMmM4jrWZ6P6LOFpINm03k=
X-Google-Smtp-Source: AGHT+IF80rrq09Pob3DPsGOTdKXgb+35KYXWIJaGBuqcU9+0ap2q4ps0fkqx4Pp0KMSYOl1t91xmdA==
X-Received: by 2002:a50:9359:0:b0:57c:c41c:c0cd with SMTP id 4fb4d7f45d1cf-57d069af610mr5811498a12.4.1718977233052;
        Fri, 21 Jun 2024 06:40:33 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:1b6a:5399:9a4f:7217])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57d30562cb6sm962059a12.83.2024.06.21.06.40.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 06:40:32 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 0/4] Add LBA3368 board
Date: Fri, 21 Jun 2024 15:40:26 +0200
Message-ID: <20240621134030.243646-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_064036_353421_6C0C170F 
X-CRM114-Status: GOOD (  12.60  )
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


Alex Bee (4):
  dt-bindings: vendor-prefixes: Add Neardi Technology
  dt-bindings: arm: rockchip: Add Neardi LBA3368
  arm64: dts: rockchip: Add sound-dai-cells for RK3368
  arm64: dts: rockchip: Add Neardi LBA3368 board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3368-lba3368.dts      | 666 ++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3368.dtsi      |   3 +
 5 files changed, 677 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
