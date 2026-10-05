Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00C3CCA5FFC
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 22:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uSo7CpPjgN+KqosykBZR2xG170yiU/3nqaclsRorapw=; b=JZk73/zHxZ95F3
	wDSX5QUvtOOmPGzvRzw9yZ05A0jZEBIAxHisn8oRNFFiFQE21W4nAfFbmZ7ZgvqvhevdzqAoLCnh0
	AIC2Bqs1xnYt1kKwNtOYLuAH1AQ7C0i0TGcWGAEqTiT4EmuhvPbyqFjOEz+4AmoJXVzWpQsLGCDss
	0YLBMqYFSBVG4bg+twm5A2yfxtl4iyi+Qoo4ls6jPPA6aMWYG/qNYeCxBpTSVvSn8OnYcr2x3YBVV
	qv6SAoK9ZXHNHVGuoQgrejGCpfMwbFNltd+TtSD6QldoAqXf4I4yMhE5e/PDcpg5dbdP1O2r1nKdb
	3r4h7iV4os6FLuNCzWtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDrMS-0000000HHcv-11o2;
	Mon, 05 Oct 2026 22:40:44 +0000
Received: from mail-pj2-x08.google.com ([2607:f8b0:4864:39::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDrMM-0000000HHbT-2nCf
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Oct 2026 22:40:40 +0000
Received: by mail-pj2-x08.google.com with SMTP id 98e67ed59e1d1-398b9f722abso1217722a91.0
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Oct 2026 15:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791240038; x=1791844838; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=3O5Pix90BvrGtShH3HWLTeak2Koa8dPqPpawpalPiLo=;
        b=JApHDOihALXn9cLoQJ9drOORpl717BcuQSm4rB8EH2jSHlSi3iWUOmeFWvKVvnK9F6
         sSSR28b7u7ZSByGpS5O9+9ToBIerIRXrmgVdLhiXBHVWkXK7yG+NVqlWBNaIvofgmAee
         J6meLA1ZGgsVVj5XEL/Cw+qfZbIm/heLKzqDfcVTG9SK1v8SOucWoFlZj6+WSZCzKGNM
         5jSyc/1ZSGNkPI/eMan5GwRf1MtQiOhKg+4XxXGlMX78xmxM2eEK1+U75dBcBfcKC87E
         hXJGx88VghM3KlC/B7Xch/8hHORRkQA9UktC+ZeqlUDiboCQnvgdIOoCzfUNY2zsf7CQ
         zVYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791240038; x=1791844838;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3O5Pix90BvrGtShH3HWLTeak2Koa8dPqPpawpalPiLo=;
        b=IITzGgVIqX0mSBi1zLlSIMAeISpj5R+ydlSoqIpFoW3h9dyMj9ME9lfsd16bSUi8t2
         Z1XqVCTh2diDoUDU1WY2Sx4AQ2ogXGocKqujGU9UkSS7bI/d3ACwZWF+m+x6SsgFUbKR
         6zk1yqvlFfjZMPpdTPDdtNrVwR9ckTavsg5yVW4me0Rs9qjCKUKNLmdxcZVwlBzHF7ij
         G5oJn5Xu4mK27HEW2Po9fQ1POGJsS1xlTDdm8cfd06zt0G4VoOF9DINC7e/P93r2aZfi
         l5zwBN/erQhdyVmLe7YukIgSxzrgrTS2o/FCkr+54559QNOd1GDdWEpefNO78Xi3HEJy
         IfPw==
X-Forwarded-Encrypted: i=1; AKwUvBycYN9spDTbbVCyrNBrvqqemMYBgXe9Atge1W8gh45Xmol0hqN3erLZ7JYmo96YII6gjmZc2bMSg3wTgb0Arg==@lists.infradead.org
X-Gm-Message-State: AFq9FYKlctTx2QWm9XL2ig4VZ8V3E4eCTACiCz7yJfyt1EW8tSuqNsNR
	5ZaOvj1BwLKy6UmyfRnyPXElGnUWAbMUWsazrAtn3uvEioFc032yqszG
X-Gm-Gg: AYBFou3jpMyViaHfjN98KPgL9tpMdJz7asb2sQDGS9HtWoEC0lLAjx0VeyM62QEbGRU
	FallTBuOQopH2PmjfgNnUHfD0XcEpYUBi7ZeI64WxMzko/RDEJwTXuTjxnBoOR1JxmNw6k7NWEQ
	hyYMYL4DDhYhUEyJztCXClCV3WZVbTPzlvPq0bSx90+L2/zcijcgH0kp/pTfnXHBSkjVV6Pd1Bi
	955DE+zeMdv/H7smi+6PJqFP5ngwswlXMA4zYaI9Hiz+QFwRZ7mReZlP2cblhEkwCJMtQakvo5I
	eTthhhBemyedrtA3dIebfGEJTc3fO9iDUG+Qb4rDomw2Sh60Sw7EqO3Hk14rSqQ7Q/oAIfCDXy6
	gyFjw8yyQoYlTNHWpRJvBUtSN7j0eTqVDpvGCHqRWM+4zKXT2XQKcdsX6XNJGNpna8miH4J9o37
	cuBa45uYo7FUOJQ1q/6+FPnlhtcNoNRSCZRRYgrSUn+y1LT6ms1nQkrd/uD0EJXmaW0gyH
X-Received: by 2002:a17:90b:3803:b0:3a0:7591:ad7a with SMTP id 98e67ed59e1d1-3a6ce3b92f2mr9535670a91.5.1791240037537;
        Mon, 05 Oct 2026 15:40:37 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a853e66d7fsm1496243a91.5.2026.10.05.15.40.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 15:40:37 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v10 0/2] arm64: dts: rockchip: add RK3568 XPCS nodes and enable SGMII on Photonicat
Date: Tue,  6 Oct 2026 06:40:06 +0800
Message-ID: <20261005224008.1140250-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_154038_698341_6F174C28 
X-CRM114-Status: UNSURE (   7.42  )
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

This series adds the RK3568 XPCS and fixed-clock nodes, and enables the
SGMII LAN port on the Ariaboard Photonicat.

Dependencies:
- Generic PM domain (genpd) changes:
  https://lore.kernel.org/all/20260925041751.495818-1-coiaprant@gmail.com/
- PHY binding+driver (Naneng Combo PHY SGMII MAC selection):
  https://lore.kernel.org/all/20261005221229.1095843-1-coiaprant@gmail.com/
- stmmac XPCS lifetime management fix:
  https://lore.kernel.org/all/20261005221749.1104430-1-coiaprant@gmail.com/
- net-next series (XPCS glue, dwmac-rk SGMII support, pcs-handle binding):
  https://lore.kernel.org/all/20261005223011.1124347-1-coiaprant@gmail.com/

There is no hard build dependency. DTS validation will pass once the
binding and driver are present in linux-next, which they will be after
the PHY and net-next trees merge.
---
Coia Prant (2):
  arm64: dts: rockchip: rk3568: add XPCS and fixed-clock nodes
  arm64: dts: rockchip: rk3568-photonicat: enable SGMII LAN port

 .../boot/dts/rockchip/rk3568-photonicat.dts   | 74 ++++++++++++++++++-
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      | 45 +++++++++++
 2 files changed, 117 insertions(+), 2 deletions(-)

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
