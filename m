Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97118C636CC
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Feb 2023 15:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aJ7vdkPkkgJPqdXnVeisnqKSsyb6/Rznkml0eyBjCos=; b=Td0ubboWFY7ZtI
	WnBXujkAfEvq2Lez77SsGeMTMCg1Qg1o95fdX6HUNN4dP85fZVgfCKPp8bxJnMmH0sxZ26n2eEXHy
	njxVJCuww2rfqTPqpxoUoqMcPS2BuoNelOoAh1rnnm2wOhkloageXYfAO+Oz+bQrJJHCFzmdWe76M
	UX2Y5vDN0YENcX5J/HtyyAkeeqgwUvgrrkYmEVg12L6SMk/2dcw+Q9wyLHR3CwYXGfaobfUHq8nAm
	IPubgaysPuozRPOtm19c4QBulqFOPSkD0hna6t6xFJ96xefRJA7O5zb0ET3dnKmo/rT2zbEdG8Wb8
	uFl50KTM7KSMSL4U4DyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRauX-00FEzb-9w; Mon, 13 Feb 2023 15:38:33 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRauU-00FExJ-FN
	for linux-rockchip@lists.infradead.org; Mon, 13 Feb 2023 15:38:31 +0000
Received: by mail-ej1-x629.google.com with SMTP id hx15so32815727ejc.11
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Feb 2023 07:38:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=62gBWaG5EaS8ZL331hizoMVfyfG7akdXmH5GJyg9PAY=;
        b=n7VPT2wd+BmLyIaPggH+MhL6iJxw+nt0ZsOMra6oOFTOabvjE9PO700QJi+a2fqT+p
         qltpyAqHVm8xodQCwQHguUa2tZdcH3SoOf4Er7ekUySayTzMmcNz9+X49wWQRr40vSvj
         8GiGpvdTBaW8kGlTOp36bANOAt+6iuwwFfb+UsS9kcWCf22AOXLD15voPzgsMH8uVV9L
         xGnAFa9SQxWVlYrp4X5YDnIwpRDwXrAgPgdNFRO7LNkXFb4khJHq/XFuA0XE+nREc2HP
         0W8ULJi+IDUU2RZB9iDbBepAVK09/6AkLFxLbcXmBXkgdGMbqFpc+bGNp471Rqpx4CpY
         lCqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=62gBWaG5EaS8ZL331hizoMVfyfG7akdXmH5GJyg9PAY=;
        b=AiRDcCCmRGE3+bHDJA9cdQyQDWpEjIe+BsywDX/Az6tm+ZVycG86AIo2jnW8DFSh54
         LfyUTMYum6gGCUQpEdAyt1iRrNGv1Q67qG0hW710Z5JmOcWW/cptYfvlUK5t8hFxje2o
         9j1bNr8TF7NPfR9mX2Xe34lmU/hbV8O3yWUIEaQESj1+y+6q0bc1jwYL0GvhUxliiOKC
         2sucg5696/ckMvj/ocp4HGYQ3pDoI9+vGTwBKaU9Byi4z/JNCBLl7u4oZnCtTfbMbiR2
         TRi6xFidiEQmx6b3KpGrSQYbQC9MUeWYqbhPozqZrhN8b2fh+Ja0AEi3fKbaRPzBlH1w
         rLUw==
X-Gm-Message-State: AO0yUKXMX3XXHDRggVGLb6ToDnepTcbd2LHwU6XMCGB/b4pqT/hKzLal
	NUZFTL0tejwuTNUMd28ClOTMDivvgtw=
X-Google-Smtp-Source: AK7set90koQ8q4/n7OJQxFhGJvoHNjIAO3IQT9PRcdHIBPYDHI4o/DR8WQ0fsquwcEdiqWC+zxrU/Q==
X-Received: by 2002:a17:906:1e8f:b0:870:baa6:6762 with SMTP id e15-20020a1709061e8f00b00870baa66762mr22994750ejj.14.1676302706391;
        Mon, 13 Feb 2023 07:38:26 -0800 (PST)
Received: from localhost.localdomain (83.24.145.108.ipv4.supernova.orange.pl. [83.24.145.108])
        by smtp.gmail.com with ESMTPSA id gf17-20020a170906e21100b008b12614ee06sm115901ejb.161.2023.02.13.07.38.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Feb 2023 07:38:26 -0800 (PST)
From: Maya Matuszczyk <maccraft123mc@gmail.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: [PATCH v2 0/4] Add internal display support to Odroid Go Super
Date: Mon, 13 Feb 2023 16:38:12 +0100
Message-Id: <20230213153816.213526-1-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230213_073830_550368_20209033 
X-CRM114-Status: UNSURE (   9.55  )
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

This patch series introduces internal display to Odroid Go Super, which
shares panel with Odroid Go Ultra and several clone devices.

---

Changes from v1:
- Changed commit message of dt-bindings patch to conform to standards
- Made dt-bindings patch add compatible in alphabetical order
- Added support for orientation in st7701 driver

Maya Matuszczyk (4):
  dt-bindings: display: panel: sitronix,st7701: Add Elida KD50T048A
    Panel
  drm: panel: Add Elida KD50T048A to Sitronix ST7701 driver
  drm: panel: Add orientation support for st7701
  arm64: dts: rockchip: Add display support to Odroid Go Super

 .../display/panel/sitronix,st7701.yaml        |   1 +
 .../boot/dts/rockchip/rk3326-odroid-go3.dts   |   4 +-
 drivers/gpu/drm/panel/panel-sitronix-st7701.c | 144 ++++++++++++++++++
 3 files changed, 148 insertions(+), 1 deletion(-)

-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
