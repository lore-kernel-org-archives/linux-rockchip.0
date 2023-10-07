Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3C37E9413F
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Oct 2023 04:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y0htFZJhrjh2ELbyBYCil0M98Q4D3t38a/ZITzsFgBM=; b=GgkRQYIhCJcDtS
	IKrZ0Dz0XZPU+NevjvNxt6H7uxrHWs/gwjh56VPRA320Wb2hjjtKGfVvjdx12Mz/yQBOCclcYil8y
	UNs9KiA/vG5frPnS4Hq7SBm50g/uU3YYm2BkNV0eIC3Pbe9aMixJ+bdGd6h95Z7XKxdFu1mDOTVrK
	ZgM6ivD1geeYAVLE5jU+6UAca2BGvfaybogEL4Gqn31CnMD4O8TTMM4POYRVvitPKTdcyHqxIQleI
	wUIoLkQCFsvIfFPNBtbF/WyfNXuhM6pZg4dndelhQ8kNugaUBKftoVddQ+3gRtgpEl+kEbXlbCdEH
	UvBGg/RLmBojzjAjkslA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoz3O-006x9u-2o;
	Sat, 07 Oct 2023 04:36:38 +0000
Received: from mail-io1-xd2f.google.com ([2607:f8b0:4864:20::d2f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoz3L-006x8e-29;
	Sat, 07 Oct 2023 04:36:36 +0000
Received: by mail-io1-xd2f.google.com with SMTP id ca18e2360f4ac-79fca042ec0so113148339f.3;
        Fri, 06 Oct 2023 21:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696653393; x=1697258193; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ok8Rh3y2ALFjfV49m+uqoRm3bDzIqJbrPJY0knJ9gwg=;
        b=iaNijwNrTz0X3YxUt8jDiHuumD7+9Qmqdu9/QwC1C+gDGIVzlOw6BG14a59C+pwklQ
         JbvSwLWGF3Lcc2cC605rl/dvrleRsbGlkSXi3INjQLJC37qek+cXbnB56V7hij7cDN9I
         Jy47LQdwvfH5jTj9nqbzzZ8TdLGsd/9BdWoKymrihF3SlGkSEKO94NYjtdH1OWlLJZe3
         633Y5poCByvkBeRPkXS0wcsF6EvQyc8a845GrPy1dzwJunXk5RLiw4t+VMcmmuiVR8UH
         4+yHAdFxlUZiHe/DdXJh5eieoMrtN1Gss9Hg8INd5P73Vc9iWkuxHWvtR+KZ1N9x6sF2
         tAoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696653393; x=1697258193;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ok8Rh3y2ALFjfV49m+uqoRm3bDzIqJbrPJY0knJ9gwg=;
        b=U+Dy8o0rhnSYjzzv1gdPL23QZYnlfPgX99Zpww8kXs3nipOq0xUD5bBHA8ur44aWsb
         ZvCi2y9fDCLTHCn+uvlvTPNtat08ZHwQJwpaqPWDIlBdUp2JNtzkbEqPLGq+np7bVduQ
         DF6uUCe970MY3FMZRKNhJrHvMZ828RgaG7OBTJ8MEGE6sI8+OBu2PDBtZw4D1NAsMbNd
         1Wadv/toayBSlmKZB5KPOOm7zd57aFxv5doSb1OqYQpgPBc0wCz5exMZ5RVKBbxeOhql
         kS0gXu2ypKopg3bwV8DF20m7FmiycE02FRLVb/z6g3X572x22d1RSRk1mP28mdz9qXxD
         IXIg==
X-Gm-Message-State: AOJu0YwzAOSnO0g3+/r+N9n93fvTq1JekNCjF1WM0zx9PmszDNADLYC4
	DFfiQlDW+RPo22ChZ1So1FY=
X-Google-Smtp-Source: AGHT+IGhLckTYtMKqGkgFLX/i8qTq5r32gXSFPHAFcqwx410+Tqa7+Semmsr1IEyMXyqd7aTahHTUg==
X-Received: by 2002:a05:6e02:de8:b0:351:5dea:a596 with SMTP id m8-20020a056e020de800b003515deaa596mr9100722ilj.4.1696653393177;
        Fri, 06 Oct 2023 21:36:33 -0700 (PDT)
Received: from celestia.nettie.lan ([2001:470:42c4:101:8a60:ad5:1051:21e3])
        by smtp.gmail.com with ESMTPSA id x7-20020a92de07000000b0035129b9c61bsm1520910ilm.45.2023.10.06.21.36.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 21:36:32 -0700 (PDT)
From: Sam Edwards <cfsworks@gmail.com>
X-Google-Original-From: Sam Edwards <CFSworks@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Sven Rademakers <sven.rademakers@gmail.com>,
	Lokesh Poovaragan <loki@gimmeapis.com>,
	Sam Edwards <CFSworks@gmail.com>
Subject: [PATCH 0/3] Add initial devicetree for Turing RK1
Date: Fri,  6 Oct 2023 22:35:57 -0600
Message-ID: <20231007043600.151908-1-CFSworks@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_213635_744563_DFB9AB48 
X-CRM114-Status: GOOD (  11.67  )
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

Hi list,

The Turing RK1 is an upcoming RK3588-based SoM built on the NVIDIA Jetson-style
SO-DIMM form factor, meant for compatibility with Jetson carrier boards
(but by far primarily the Turing Pi 2 cluster board, from the same vendor).

This patch series adds the initial devicetree, which enables most of the card's
I/O functions. I also have USB and thermal management working, but this depends
on other patches that haven't yet made their way upstream.

Reviewers, be on your toes: this is my first DT contribution to the kernel.
Please be tough but patient! :)

Thanks,
Sam

Sam Edwards (3):
  dt-bindings: vendor-prefixes: add turing
  dt-bindings: arm: rockchip: Add Turing RK1
  arm64: dts: rockchip: Add Turing RK1 SoM support

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3588-turing-rk1.dts   | 627 ++++++++++++++++++
 4 files changed, 635 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dts

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
