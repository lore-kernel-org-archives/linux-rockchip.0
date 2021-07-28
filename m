Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE822C432BE
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 12:26:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A4B7D60F9C
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 12:26:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A4B7D60F9C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c8fr5zr3RcHMCzbUzcS8lL/uutMtbwH8kX4nZ1WJPIc=; b=AR+AFf217QZ0eQ
	Gbn4sNh/+pjjxxvdFicEHRHQGL6fhC+E9q5UiS16kHmi7TDz608OnAevPKXN/XHeDg012wpYD6WCA
	RE8rdTe9CRTZlU/ujp+NBUQxOBrGiN/YgWw2xeW6/D6mAE8Dw0daloKbgZVS5rI4bU1GK5Uha7lGT
	mYAyaycztC24nrr6PhQMrDWbFYgCU3/ISEpXH3XlT8uJ4LY6rezO5WhIX2mfK8/XLGkabih6CWS44
	0Golm69FCujgfOFkDwci41O0JYA4oyxDD3lgaBVzhkWNKxtNgVm/Hxlxvu0SwnbV93SSUwOoUU0gN
	cI35ASuGIUuoQcRHj/UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8ie6-000cmk-B7; Wed, 28 Jul 2021 12:26:46 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8idh-000cec-4F; Wed, 28 Jul 2021 12:26:22 +0000
Received: by mail-qt1-x82b.google.com with SMTP id m11so1161251qtx.7;
 Wed, 28 Jul 2021 05:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1cpOBZXZl+X9zh9reb80OTm+Y4W8Zt/c3AvDZt4KISo=;
 b=vJXvb2Jmlbm70+yCmjiFIleraKYYYJ+oFk0cRA5lKzzVnAChhB3QFlFl0bUDpkHvfX
 53r0RALch+rrgQJM1zkvkguosuCN/W1V2Q9uHeVBjXZD8xK0bO93xihBguGNVexr/Jeh
 QTCxKj50OMfwF3ak0WF9eXh8Q7RRqC5N+p1zhgGbNU9Bp2WaYBeBsv2EkpyLvdBRsH0W
 JYino0wZ7Or+Qfw8WYdAnX3tfOVHpjl3rLktWochoOAQovvHx8piGe1m2ESF0ZhDd6gH
 iMAX7E8FC2NVR9lIfLnEZCboTWg9yatSJoNW85DnzbmYxzlBIKxqtasQKSy/WYXjaFj1
 huIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1cpOBZXZl+X9zh9reb80OTm+Y4W8Zt/c3AvDZt4KISo=;
 b=j36PE+ixWtjm8Z8AW9YvAAyjOBXiJIRjUIwaRWMTUGcpXDkBNO6/UW5QTtu73EPfxE
 w4UiNHxW5Q0QXYAnoEvyUdAvRlAvwt/vqdYn2A7Kt4905LuualKUoqmfZ9q2WKRndD+7
 x7EYEAitrqvslVVF8NJo5AGOfgBhsCGqZhG+gig/n4VPssfTVOqEiH2lnlark5v71xzp
 05BRhReM3KTJyzPVFkehTikQ4vbC+hmACTA7a8xNBDC6QMEbHk47IGYMRP5BGLC/ghH8
 ZPO1Cl54FT7l7glj9a9QCGv3pjpj5mPQqxQkTgdgJq0ag8YFLu7lhqU2NIZIb04kCkQg
 2PfQ==
X-Gm-Message-State: AOAM533z+W5jwOR1F9JUgg8wnmM6LkIV5wGe2YdUq/zlmaE9bm5pER7l
 kGNtkRL3nWkzcJShb2mG0og=
X-Google-Smtp-Source: ABdhPJxZ0V3Jp5j7jIzfzpXOPbo0SByMp8ZIPkpmvH3SLHeS+IK/TXItGd/fCc0GPVXtnhnIL5OTRw==
X-Received: by 2002:a05:622a:1828:: with SMTP id
 t40mr23729089qtc.276.1627475177902; 
 Wed, 28 Jul 2021 05:26:17 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id z9sm2842972qtn.54.2021.07.28.05.26.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 05:26:17 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
Subject: [RFC PATCH 0/9] phy-rockchip-inno-usb2: support rk356x usb2phy
Date: Wed, 28 Jul 2021 08:25:57 -0400
Message-Id: <20210728122606.697619-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_052621_218217_B15ABEA9 
X-CRM114-Status: GOOD (  10.49  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Good Morning,

This is my series to support the usb2 phy devices on the rk356x.
The rk356x phy has a single muxed interrupt and has moved the usb2phy
nodes out of the grf and into their own nodes.
The phy needs to tie back into the grf for register control, similar to
the rv1108.
By moving the phys into their own nodes, they now have full
#address_cells = 2 register addresses, but they still reside below the 32bit
mmio range.

This driver series only supports the host configuration for the rk356x.
I have have tested it on the following:
rk3566 - Pine64 Quartz64 Model A
rk3399 - Pine64 Rockpro64

Please provide feedback and comments as you see fit.

Peter Geis (9):
  dt-bindings: soc: rockchip: add rk3568-usb2phy-grf
  dt-bindings: phy: phy-rockchip-inno-usb2: add rk3568 documentation
  dt-bindings: usb: generic-ohci: increase maximum clocks
  phy: phy-rockchip-inno-usb2: support #address_cells = 2
  phy: phy-rockchip-inno-usb2: support standalone phy nodes
  phy: phy-rockchip-inno-usb2: support muxed interrupts
  phy: phy-rockchip-inno-usb2: add rk3568 support
  arm64: dts: rockchip: add usb2 nodes to rk3568 device tree
  arm64: dts: rockchip: add Quartz64-A usb2 support

 .../bindings/phy/phy-rockchip-inno-usb2.yaml  |   8 +-
 .../devicetree/bindings/soc/rockchip/grf.yaml |   1 +
 .../devicetree/bindings/usb/generic-ohci.yaml |   2 +-
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  52 ++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  97 +++++++
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 259 ++++++++++++++----
 6 files changed, 360 insertions(+), 59 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
