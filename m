Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC2BAC52D7B
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZD1+SKiu3mtr6XPaPKvJ72pOV0TDKmtZR346Y2tELQ8=; b=mGt6PFAA5sLp4l
	Fmii1Xm1YSdyKSaznrfGIj1yyo+EstCRe2w4PW0Zxe1ZBvra23FnGOFpTLRREvp7tj4M6nLPBGteu
	TKNAmZy09xIARzcssMNZmpNm+7ne1YvEZWiywAHAwMrN3D20dW/BQHX1IX3WUwE+pSlezm+c1ciXL
	SytwDob6k71hSElwEuIMbyvJ3w4HAQP7pWciTE4mZC2jFWXz20cHA4dyRgBNFsD21BQnFkKY9ZjIP
	ORaTGJ67PS/xLwXrfjuY5yg35UM183LVfQOwItFDVwBCnPfvfPJE5oeGcgYYip08L3UfMy5IXzQCA
	12FX9YwVYCXoMk2HoTYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc65E-00000008xSU-3pct;
	Thu, 08 Aug 2024 16:33:48 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc65B-00000008xQW-1nPy;
	Thu, 08 Aug 2024 16:33:46 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723134816; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=iDPWYWlOfe54Ce5X5GyGC3aRRR4PDVqFhM4E8MpQuGrgTA+/B7Fz8mJPuzvzFQW1vaFbF941UvuAc7pTfmbAw62cNJXHlcqgWVxaSvCKFPJBvhBCMSeP0DpzH9fSNaM6wwcc/HR2fIZCfMhIYlyP6d+W/4ZeP3p411ARR2TXJR4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723134816; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=NmqcV9imI6SfgcIxSQfScmTXomw4vtotLJTJkgfLYDA=; 
	b=f6O5ysVa4OLVPFzF34YFfUYIKsG4QskrNH4JxANXVMSZ+712mYZhEAYO1pIr143myYNfavCg0EF6wDqohgW+Xfw43ADQJhEkrXqs6LwMV2JBQfHedBZ7AdZ80JveCNXvuhFLLNQ9ECNfb//d2pVrW21DafSK90zrMj/LueDcVDo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723134816;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=NmqcV9imI6SfgcIxSQfScmTXomw4vtotLJTJkgfLYDA=;
	b=W08eMFc3zFZm/8nWGANJGr7fWFSowSiV30h0usWckR1QpSi6cRqQCFEkM/X8U7Ml
	rI+ChtmX8xm9XkXQ71V6Y0l0YzjOR76APf2x2OTibbGtYuvsOfS5Y7RlGlF1Sl04rAs
	RBSeFf4sMNGQ6y5EcsJlYJHAqsWUrYjPNYwTQJOw=
Received: by mx.zohomail.com with SMTPS id 1723134814543747.8071954226422;
	Thu, 8 Aug 2024 09:33:34 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Arnd Bergmann <arnd@arndb.de>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v2 0/2] Add power-controller support for rk3576
Date: Thu,  8 Aug 2024 12:31:03 -0400
Message-ID: <20240808163451.80750-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_093345_548462_3980DACE 
X-CRM114-Status: GOOD (  11.46  )
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

Add support for the power domain controller on the rk3576 SoC.
Patches from downstream have been rebased.

Note that the mentioned TRM is not publicly available.

Changes since v1:
- Rename rk3576-power.h to rockchip,rk3576-power.h
- Add memory reset support
- Squashed header files with bindings commit
- Updated license
- Fix commit messages for subsystem.

Finley Xiao (2):
  dt-bindings: power: Add support for RK3576 SoC
  pmdomain: rockchip: Add support for rk3576 SoC

 .../power/rockchip,power-controller.yaml      |  1 +
 drivers/pmdomain/rockchip/pm-domains.c        | 73 ++++++++++++++++++-
 .../dt-bindings/power/rockchip,rk3576-power.h | 30 ++++++++
 3 files changed, 101 insertions(+), 3 deletions(-)
 create mode 100644 include/dt-bindings/power/rockchip,rk3576-power.h

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
