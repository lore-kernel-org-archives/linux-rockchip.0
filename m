Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 631EFC43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jun 2026 15:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tqgh9XnPUMiYlVHHwuQr6j3KufCSxCOW7QyoQ5co4Bo=; b=wy1HOse9jnClLC
	cq6hAP7MYuUmfZD/8DNbXCQE2KySrTiotdVXb4BGmb3+h7newzalX2Man5WkQnhyBadtkX279MGW0
	VejFe2PPxHc0pgYnQCZ22B/CsmgyF7EO+zrtx7K16+u/CmF+U1qeQ/x+km03AYC9D0z4hiFDBp/Pu
	USU0DjAP60hQT7z3gBc+S6wNiVd4RKCRw0alt/x6e714Z+0v8kWjlS+9hXg5uGkTb57K1qIBebTdu
	epZIgGLBGTZcqusqd/l67QaP9cIST3ATZ33MaPWAUVC+pitIxBF/tPVH1/mczTLVe2TsA6N+rHYM3
	pOjIfntXSGyu2XF1UVNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weaXn-0000000HO5B-3DTa;
	Tue, 30 Jun 2026 15:38:39 +0000
Received: from mail-pz2-x01.google.com ([2607:f8b0:4864:3b::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weaXl-0000000HO3u-0SJe
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Jun 2026 15:38:39 +0000
Received: by mail-pz2-x01.google.com with SMTP id 41be03b00d2f7-c8c1ebd68a1so315402a12.0
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Jun 2026 08:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782833916; x=1783438716; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=p6+QzKXcRNoqQlHz7+u9sgV6eaPwE3xJHdlR/zl3wUs=;
        b=oRtF2phSO+ENTwvozlHxzaP6p3JHzAI5pI8K3zTtWNYcoawTR64SR+sgDbbg9I8jJg
         XUZDyBq+vQAGYXxRP54LA1UMd4bW69CRJDqnFLBbvfuhXv8ct/D19NS8nrQUobKuxUue
         7fQhSGC4L3L4E5iT/wZpFYEtLOi+Q+hfZlf4XzFOZgApwwVikkZriXTeT7a+McRyt7g8
         NCfryJsf9bvSc+7+FkONTB8A4miTR49bNTGMiPUw0sYdly+LZkeykNJA65DxZublpx6O
         eguui98BicofUL/50gHu6bwAZgXk+xCaL7uL52bvtDCGil1sWhUigCrEqMA0u2VpuL3z
         iytg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782833916; x=1783438716;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p6+QzKXcRNoqQlHz7+u9sgV6eaPwE3xJHdlR/zl3wUs=;
        b=eny0uFl8goy4EGb8bfzPrZi/dHtbRB/KYhclCv8Cx5TihkBh3Q8xIj/7m4+iYsx5uD
         pUBAW6otsWBLdPKcHpVkoyBFuQFa1oNkLTlfnU5t8o5g9DvCi04DpywYpwQNi2nzho97
         GNxP1CSusRSauG2Z0SiJ79bSIf0ADzXaXydkAU55c6nrey36ya1dEwFNKlO1f/23S4Af
         by9zVTzTRngNKENp3eIQTL0eVvcTxEmjLl/reQitiKvCMSLTcnK5aBMIKEKylD6WVCe8
         2mejgiBGqug8cK5vyKbvyiiFRHlSgO0RnVuKAXYCJ23Q9kX1YWv8K8yZyh8afSFsrRDh
         gZyw==
X-Forwarded-Encrypted: i=1; AHgh+RrQ7RdjoU/U0mDTMhkFiHQrv3b0c+FsGf/MI5zxQW6ocVf/+cllPz1KBQ5/mru1d3R2eO4xV3GVZCon/jRVyg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxLjaNsbpuL9Gmz4aIQtOHaMviwUry+nOUb2Aa8InLG+bgzgZko
	vSEJZ7n9XyP9HZmrwYQcpx6xb8xfxb9BvNcnGv9wImgVtPCVBCHdp73d
X-Gm-Gg: AfdE7cmz4Cjg5ySHrgWFu29sBXZFkUJucJbJHfSLSKXNeNxB9lpGhs1BN3GjFIPWrQ1
	L00J/ZX8jrRiYPSWmG2w8YIylFHsJ+7V+G6kSVUQV+CEkpzk3EDfNHvq8fHXXLt+87HzIv6xmNf
	ZfcZaPhpzMmRRJj8cfaqRrCPgT5LxcjpE3uw98kd2Woo4OmiEXlUk9aUvlGRH6AdHvd1xtElXT7
	vyq+HsjjS1QRw4potgM+py22btZvad0AejoSYLZ5DBAfLWyhLn0lcA3eoPM0XcwG4AB7IBLsdVv
	Lw2kXZBUO0cy+DpCXlljP69WgAbNLZH/hEuPvvgLRGRlpalVcm4tV2ktbxMC/3AjX86+kiBuGMv
	Zm2cumjpfKiwWUhFnvgZKr4Q2jc0IDdiSFgPkS8BNBbbr0a+ZPoyfTpY1tjfInORv5h9C6upuIC
	cIMMc40OQswNI=
X-Received: by 2002:a05:6a00:174b:b0:842:5a8d:3035 with SMTP id d2e1a72fcca58-8479eee483amr3328451b3a.22.1782833915487;
        Tue, 30 Jun 2026 08:38:35 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847a03cb50esm2413695b3a.60.2026.06.30.08.38.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 08:38:34 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v2 0/3] Add devicetree for the Graperain G3568 v2
Date: Tue, 30 Jun 2026 23:38:07 +0800
Message-ID: <20260630153810.3574714-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_083837_139254_F2061944 
X-CRM114-Status: GOOD (  10.66  )
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

Changes in v2:
- Fix trailing whitespaces and other formatting issues.

Notes/Unchanged from v1:
- ADC keys have been verified with evtest and works fine; kept unchanged.
- The 'regulator-off-in-suspend' property for vqmmc-supply is retained.
  This is a known issue shared by most similar boards and should be
   addressed globally later.

Planned future changes (to be both with the similar X3568 v4 board series):
- Replace the legacy 'gpio' label with 'gpios'.
- Add the Bluetooth UART child node.

Coia Prant (3):
  dt-bindings: vendor-prefixes: Add graperain
  dt-bindings: arm: rockchip: Add Graperain G3568 series
  arm64: dts: rockchip: Add devicetree for the Graperain G3568 v2

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3568-graperain-g3568-v2.dts    | 894 ++++++++++++++++++
 4 files changed, 903 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-graperain-g3568-v2.dts

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
