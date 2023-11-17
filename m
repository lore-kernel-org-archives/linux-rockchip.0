Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77A86C5AE4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Nov 2023 20:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MnGxnfY6vn8qnOa5FDTcnFEtH+rxo7pJ9URUqMWLT+w=; b=bELcjC3z0N2K9D
	aQ0c1ikqKjB/eCbjXuMmVsEqSbG7L6YGwvwARkxKA+Dqgpdu6NMjPFSXBB5E2HlWOFxq5hFlXRdx0
	yPgwD1o6sE9Ef7HBY1dKprlmjwhhPR9uzDuWAosmELWYOLc+fFRJcg/BiL9itfLSuDlpfSZLwBBV4
	WAykO6MDH8YWwQJR22gqfYwkuc3ZFm51XEJwn4cgJt66mayfHhcWlv9awR/TkZgK8oqyARoRsJmgp
	q10tL9AfUD0mCA5FifVjmvuKx3ZrwMKh441M17UZmn/O7qWzAWJlKlWuM+U6mp1JTU8j7AeXSgQ1H
	4uxWIw5xCt1XT9lr8a4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r45PS-007Eld-08;
	Fri, 17 Nov 2023 20:25:50 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r45PN-007Eii-0M
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Nov 2023 20:25:46 +0000
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-6ce344fa7e4so1439073a34.0
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Nov 2023 12:25:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700252742; x=1700857542; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cC5x0F16yoqZZUwJiOcaoVUGZ+6c1n2rTIUkTxQENLo=;
        b=V77pghpe3DdWsTsRDz1DGNbnGPPVsl2R1IOxbC9B0kplcbjvqLsXpn3Ozn64taP4/a
         Q08Q+l15i51oZCwZuxNbTv0LasvQGX8ZIOsxqAKmjXhfWOLjQSalF9+tjF5COhSxjk2g
         Wz0AvIjUlQwxIIvMGdcx58k7DSQz+iZTKXeWjlAAnIYPDG80A5c+C2cdG+YEd+3MEm4t
         3NyD6lxmhs/Q2asZBui7g/OpGTJe7Xi66J7CGlRwAPOEe0XMObvd5jt/nCruh3UvPJ/P
         CK9nvU/7WuYZaTqTro8ENCTWNc85FRNW9F9CDVJJMtFSQv4GycYIyVhJGY/XgZkAVSbL
         LErQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252742; x=1700857542;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cC5x0F16yoqZZUwJiOcaoVUGZ+6c1n2rTIUkTxQENLo=;
        b=uesRFZWiIMDrAPoU1tN4hMoUDQ+CLymPGzT3t86aAKM2e3uzZI76wnpCMjnQK4HKoV
         LPkPtAXccSD/fwVt4n/gv6CooxMEQXxsZIXaYBdv4DrkKN/DfwdH2ZDR420tH/SZKplh
         EdpWWtjPCueSTz5peMfvwVlAUSQPKcMLTTKSFiOi9CRR2btjY1Fpv6ILNYS4J65xoz4K
         6PC0E6vOAxSOySsvYJ3llg/ozsZWHk7vkiJpor9bpcCaHosWMYWawTTvoSeDA+ej06P7
         /yk33Eqtl6TEUL4GpHeCBxEn4HDNBu22c64LkSsJ0PabJx9AKpohl0+XPimmq1Y43EYG
         M4Yg==
X-Gm-Message-State: AOJu0YyBFl0PGC6adVo2mbtFpPfApYvz/32NlIKO+QYZqNnMnRXLIk25
	d/XIiLqp6WCwRPqdM2PCs9I9JVqVUhU=
X-Google-Smtp-Source: AGHT+IFQOquKVOXG/4AQKC/d569hIg3KFrQ+5ydclll/CqbXqTN/HkPoQrM1TYkxfdA7MK0TmxIopg==
X-Received: by 2002:a05:6871:5221:b0:1f5:b586:6cd7 with SMTP id ht33-20020a056871522100b001f5b5866cd7mr410990oac.16.1700252741055;
        Fri, 17 Nov 2023 12:25:41 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id zf15-20020a0568716a8f00b001f224cbbde1sm390543oab.41.2023.11.17.12.25.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:25:40 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 0/6] rockchip: Add Powkiddy RK2023
Date: Fri, 17 Nov 2023 14:25:30 -0600
Message-Id: <20231117202536.1387815-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_122545_162651_E484EE57 
X-CRM114-Status: GOOD (  13.46  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Powkiddy RK2023, which is extremely similar to
existing Powkiddy RGB30 device.

Changes since V3:
 - Corrected commit subject lines.

Changes since V2:
 - Split "hold panel in reset" to a separate patch for the NV3051D.
 - Changed replaced common include to a new Powkiddy specific include
   to better reflect the similarity of these two devices (and so as
   to not have to delete so many nodes).

Changes since V1:
 - Necessary clock changes have been accepted to mainline, so removed
   from this series.
   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?id=f1db0865b4628d5e2e85347350c077a71f0629d2
 - Combined Powkiddy RK3566 devices in devicetree documentation.
   Dropped ack from binding as this change is vastly different than
   the previous update.
 - Updated panel driver to hold panel in reset status after unprepare.

Chris Morgan (6):
  dt-bindings: display: panel: Update NewVision NV3051D compatibles
  drm/panel: nv3051d: Hold panel in reset for unprepare
  nv3051d: Add Powkiddy RK2023 Panel Support
  dt-bindings: arm: rockchip: Add Powkiddy RK2023
  arm64: dts: rockchip: Update powkiddy,rgb30 include to rk2023 DTSI
  arm: dts: rockchip: Add Powkiddy RK2023

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +-
 .../display/panel/newvision,nv3051d.yaml      |   2 +-
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3566-powkiddy-rgb30.dts    | 154 +--
 .../dts/rockchip/rk3566-powkiddy-rk2023.dts   |  38 +
 .../dts/rockchip/rk3566-powkiddy-rk2023.dtsi  | 875 ++++++++++++++++++
 .../gpu/drm/panel/panel-newvision-nv3051d.c   |  57 +-
 7 files changed, 981 insertions(+), 152 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
