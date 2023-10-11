Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 893CACDB465
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Oct 2023 22:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FsnjsilAv+tQWO8+qtEWk37NIRc5x8T5BDptDJNoUHs=; b=JH8aDFgWHU0Zv4
	6D/911p3Pxo/oyclJqzVH7DxE5SYtIx/H/3sjuGgeDztQ6tZt4X04jR6H6FZkDF3KaFEihA17h9dQ
	LPKMMjpTju0X8+tcaEJoUQPt5JEqPGVhIPI/EoqA9ZnUp3+6VQ3dh5xXRWaW1Cug7J9ZAjZdHijt/
	+549HlZZB4oo2tyRu3ITjy4q5KkvEFcqUxoYKd4C/uEGLHLu3RKbzxzceXnooth9L87tT+rccMlvP
	TBzL9ANkkhmsAoyN0n2P9kJqekCygWGy890ZQa+hqb9P6lb/WMz2OW/Q3Zq9O1SEjMJihaP3YJrtM
	3CIgEREQ+OarwoceU09w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqi9x-00Gsej-2v;
	Wed, 11 Oct 2023 22:58:33 +0000
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqi9s-00Gsb7-1I;
	Wed, 11 Oct 2023 22:58:31 +0000
Received: by mail-io1-xd30.google.com with SMTP id ca18e2360f4ac-7a2a3fb0713so15352839f.1;
        Wed, 11 Oct 2023 15:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697065106; x=1697669906; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eZjpywd39e3oUzQ981/tIhqY59XPDyM578u4zxzj7m4=;
        b=Ldg/c0UWMLYDSidE7I1SDjYJ0EpX1/w02dGrIIoftbWCew3iV0cm8CbaEGpY+K2q4o
         WQNLR9X5IEKsCbCSpjOfKuJI/F1QAclUARMDZQ/aK7DP+yTEZD94HFZcbU1HHdT8HwsA
         iysbnKZKv3dp4m8xCxnpXtD6cad801+VlH4PkZNoBh6CSBJNJQ/hzPsYsiqui+xYfWDi
         1Nm1r5igeItmE8jkffZKytEDbxeVqvjRmI+hmEaKDaP5KyhMfevcE3qWK+6mJ1jdOuS8
         4PkqNSEz4pbjomZqg0IrIezRUjD/vypBCxvV69mGobORr+QGqdWnXyjC7jVeTP2mM/YI
         OTvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697065106; x=1697669906;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eZjpywd39e3oUzQ981/tIhqY59XPDyM578u4zxzj7m4=;
        b=LKbX+Rj1hRIEFpHgPS4gHBfJrkYBQWkbcOZE35G+mQhzVK8RGJ95RDD6EM8tDEJ68c
         SfAd/WAnGOhXx9pp2lqbAqEdGVw4w8LWLq7ed6qijDEEZf5MxoSSDx/ArjZeWrmUjD2N
         nlG9Afvv4JTbgJW20vyanD43vnv3U2poJbPEMmpLa7F37ueL0sEQLSKRKwBeLWPF0J9z
         679hWZOh9Dm4tBSbkTcuQERJilzbyk86hvGAHxrLuFgQqkUqU+I5CvI6BqiuoFm0Sw6R
         hVzlIBKN5iy91j3fTJdadjL8nHVccxUgRchhpJSjbtO0NdFpjFM0KPDIO3zsAfjL8Igr
         w2uQ==
X-Gm-Message-State: AOJu0YzupW96K55jOIc0CjFQQD7JiNeCkSJm6+qsLBykDUBC5EC/KmYa
	jcSuuh1gFBE3UnB9EzmoxQI=
X-Google-Smtp-Source: AGHT+IGTV7EFyEohxnKdIIX6IqZ1yzIm0Y7yFYY9oW4EHhmC61OLh6EZN72xVZZe7msvNSr9f7v6Sg==
X-Received: by 2002:a6b:ec17:0:b0:791:7e14:4347 with SMTP id c23-20020a6bec17000000b007917e144347mr24932693ioh.13.1697065105881;
        Wed, 11 Oct 2023 15:58:25 -0700 (PDT)
Received: from celestia.nettie.lan ([2001:470:42c4:101:fcdc:5119:7b2f:72b3])
        by smtp.gmail.com with ESMTPSA id dq15-20020a0566384d0f00b0043a1f6dc8d4sm3632691jab.4.2023.10.11.15.58.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 15:58:25 -0700 (PDT)
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
Subject: [PATCH v2 0/3] Add initial devicetree for Turing RK1
Date: Wed, 11 Oct 2023 16:58:20 -0600
Message-ID: <20231011225823.2542262-1-CFSworks@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_155828_440456_8A35264C 
X-CRM114-Status: GOOD (  17.50  )
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

Hi again list,

This is the second version of my patch to bring in support for the RK3588-based
Turing RK1 SoM. In my previous cover letter, I perhaps should have specified
that the RK1 is a little bit unusual in that, though it *is* a true SoM, it is
targeted toward home-hosting/edge users directly as a compute node, and as a
result the vast majority of users will be seeing it more like a
micro-bladeserver, rather than an off-the-shelf part meant to power a larger
system. This was my rationale for previously sending this as a single .dts,
targeting that use case.

However, Heiko previously made a good point that it still depends on a carrier
board to be "complete," and then I reminded myself that not all users will be
treating the RK1 like a mere "node" -- some will be incorporating them into
larger carriers, which the RK1 is meant to enable (not the other way around).

This version tries to strike a compromise, by moving the SoM-specific stuff to
a .dtsi, introducing a .dts specifically for the "opinionated" view of the RK1
as a carrier-agnostic node, and adding another paragraph to the PATCH 3/3
changelog explaining that.

I am wondering if there will be an objection about the .dts having the exact
same base filename and `compatible` as the .dtsi. I am not sure what word/term
to use to mean "RK1 but thought of as the system itself and not as a piece of a
system," but am open to suggestions. :)

Cheers all,
Sam

Sam Edwards (3):
  dt-bindings: vendor-prefixes: add turing
  dt-bindings: arm: rockchip: Add Turing RK1
  arm64: dts: rockchip: Add Turing RK1 SoM support

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3588-turing-rk1.dts   |  21 +
 .../boot/dts/rockchip/rk3588-turing-rk1.dtsi  | 623 ++++++++++++++++++
 5 files changed, 652 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
