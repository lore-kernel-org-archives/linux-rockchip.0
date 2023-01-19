Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D897C46467
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jan 2023 18:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=batV2EfLuCjuCEAdJDEHMy+6AfHuJKpRH4beEsoq6G8=; b=ehv5ybNhEn7xEb
	+llOX34dZx+JgG2UZGQN+xR9jsc+/2PXmJdA3L559X4rbptrqJS8+dNNZWeYWQREkHtAhFgBdnUa7
	KsrdsMEGaNYOpp0doInl1AzoQING0QYfsSNAY33BAAUy9qHKE/2qSguD+0d75S4PKReZfDEw0IRE9
	BrDsXHxPzYWag/ufsRkesQVHtFT3zEObmmPE0SbNg+9zcYSW4GLx9MohzfBOvTijMxbJOD7b4WIed
	C9ZIOoY59DupLVcIEy0GRLf1QeRXvBe3OGDWhedLhihT6DEHxw0Ty1B2CrvAuwX3yJDnqNeZs+YCe
	4MNoxVj22diO6eQ7rD/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIZyl-006eFV-G0; Thu, 19 Jan 2023 18:49:39 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIZyS-006e7X-VT; Thu, 19 Jan 2023 18:49:27 +0000
Received: by mail-lf1-x136.google.com with SMTP id cf42so4592247lfb.1;
        Thu, 19 Jan 2023 10:49:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0tYQWEbUqqtKGBVD+CO4A492dYz/WsYLmCYf41kZNY0=;
        b=n4+uFCk4bo7SZ7RmgW5WWFS2/uh17oFHi2Wu9OV80FtxP/hAJM9pjaHBJ5mpNMX4zp
         iqUbr25lWZiyYIdkoLZHprxJ4JDQEiSqI7v0q/QYCLR3UBEKWET2ObvRHhWUKDyvsB2s
         YObPiYCnEY0r7z+Keof0aqnZ1Zi5fNiEVxqf5FsInWplXEqz/kqY1BirhVrF1e8YKUuq
         fkW05KcHdREfG9ceIUhO+7zrn3HBd5vnYGE0aAo2VdY+Cnz7OlDJj/JN5qfDJUxYqRBB
         CADly1MC2ftqbiAlNtjs0w5MBnay+SAahDiPJ7cUj9iSDgEtV2qFXwdkpcv6hBBR7nTq
         rkqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0tYQWEbUqqtKGBVD+CO4A492dYz/WsYLmCYf41kZNY0=;
        b=NzwCs23BwK57BXwBN4JyCGDg9/I9jpXfvvMOJM/fi92ikw3vCIb3i5iswzuzlB0OHL
         pcNxz2NZHGq3RUCFJt+EI5zUFYJfNxvl6KnWcLRJX/ELwlkk71PjT68bDZE3D5rskU+M
         8MEkAkHWhiVBI/DNr9RhcFG7oEV2WBygSP2DtSEZOl5OykbnSqvaGALMxF9Tph3B5R1T
         xvApOdR9mmQSebaayoooCbGOdsfcb8PAob1davMFCwIoHkAQNGwiivwnIx7LnE8ApLQB
         Ywth0ZxIhxynIgPG3roDYDDnVZLHY6blBgy1nHPwwJK/39fmbMleEMzugKiyyXLCeHCZ
         Haxg==
X-Gm-Message-State: AFqh2koi1OU0lkmOdWr7LK4BmJO6FnPx+GJZVZBKO1rNfeGlrG+9kmgR
	9J+v3WNRus4srQc4GetT0Jo=
X-Google-Smtp-Source: AMrXdXsjFhKWKq7za7X1ZzjrMsEeb9ETu3sg+Kbqp8I3AZi5X5TNNlg+CZgXDBTXn0b9+8w2zTN+zw==
X-Received: by 2002:ac2:57cd:0:b0:4cd:afbf:c206 with SMTP id k13-20020ac257cd000000b004cdafbfc206mr2700092lfo.22.1674154157481;
        Thu, 19 Jan 2023 10:49:17 -0800 (PST)
Received: from U19.ag.local (static.187.76.181.135.clients.your-server.de. [135.181.76.187])
        by smtp.gmail.com with ESMTPSA id b31-20020a0565120b9f00b004d30752a561sm2112737lfv.298.2023.01.19.10.49.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 10:49:16 -0800 (PST)
From: Alibek Omarov <a1ba.omarov@gmail.com>
To: 
Cc: a1ba.omarov@gmail.com,
	alexander.sverdlin@siemens.com,
	macromorgan@hotmail.com,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Peter Geis <pgwipeout@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Frank Wunderlich <frank-w@public-files.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] drm/rockchip: lvds: add support for rk356x
Date: Thu, 19 Jan 2023 21:48:02 +0300
Message-Id: <20230119184807.171132-1-a1ba.omarov@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_104922_011376_B9841AE6 
X-CRM114-Status: GOOD (  12.78  )
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

Hi all,

This series adds support for the LVDS controller on the Rockchip RK3566 and
RK3568. First patch adds the support in rockchip-lvds.c driver, setting all
the needed GRF registers. Second patch adds device tree bindings, and third
patch adds a note in the documentation.

LVDS controller on rk356x does share DSI DPHY with MIPI DSI, and all
groundwork on enabling it is done by Chris Morgan.

Tested on Autogramma Monitor RockChip, custom board based on Radxa Rock 3
Computing Module Plus.

Alibek Omarov (3):
  drm/rockchip: lvds: add rk3568 support
  arm64: dts: rockchip: rk356x: add LVDS bindings
  dt-bindings: display: rockchip-lvds: add compatible string for RK3568

 .../display/rockchip/rockchip-lvds.txt        |   1 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  25 +++
 drivers/gpu/drm/rockchip/rockchip_lvds.c      | 144 +++++++++++++++++-
 drivers/gpu/drm/rockchip/rockchip_lvds.h      |  10 ++
 4 files changed, 173 insertions(+), 7 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
