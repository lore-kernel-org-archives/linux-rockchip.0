Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71EF7C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Nov 2022 16:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WyK5c4gZrWv+h0pWiJ7lX2b55K+hF6xiD4R/GPm9pqE=; b=mr0G/RcLEAvW37
	8YwcbNk5Lk0KsfFYNXBdxtBJvnNXtGy81EVsvFCjWbyKYTciOOsGeTjy6BwA+oozQXZIv+723YNrm
	Bp50yxXFjFoEkiF173N/bm1fCMiRMe2/blbo/sGy9GJT4lC7Q6Lj3Lmo027pa+Kt8umr+cpktRyCG
	EbTB+qsp4baanTY5/IYYSeWVT/kno3VUhMH66J6OXA1yogO+zVn7CTjX2rStVk8wzT3bIxQyuP/ta
	iQebgEmIUyN8Qw4yV+xG4ZLeZc94w0ZJ8MzG0Aqbo9NuSjGRLNbUvdRii6lKl4mdRxJVxpKMWc9qZ
	MS2DnTgy04hk2xBbeLMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otszi-006cl5-16; Sat, 12 Nov 2022 16:04:34 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otszW-006cfQ-Vn; Sat, 12 Nov 2022 16:04:24 +0000
Received: by mail-wr1-x42b.google.com with SMTP id h9so10232763wrt.0;
        Sat, 12 Nov 2022 08:04:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BzftkJ+4gAzALNOFNlR0ynkJ89pkyFUm1wKevHfbpdU=;
        b=Dd+3stiS49wu3yR+maof3xzekVzhFVNf9ABzYShA4b7Rsw+ss9XG1zwCAd7YReERQk
         e9xfFAOhjJnisioz/LlJyxoNP1GHixqnoG/3b6T2qQsoo+OGcRyfAX/WGwFFYKnKkVgD
         gYZGedX5/KUbcIjMOaMKlkM7j6OoD2mUEHejC95B0/XuhR9sM3oEOo9fUCU2ThNWiXA0
         4yOLgP+ttiZPTHRFyEc/s7pTtmhtbyAv1oefKswsUFvvOYlep5uf4ANQ9a8cJma4McmI
         ScW9R8H3B5ks9f6DuSgUYbV84SsIHRD7HTn/vR+qy7J6sI+yAdUIjKo4XhWedfG0xyKo
         2ohA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BzftkJ+4gAzALNOFNlR0ynkJ89pkyFUm1wKevHfbpdU=;
        b=vRVk11J543nYWIxcTPnr2yPEijImI/erOaPpNPzAwq4oz5hTgfl42Sh0VXqZfU9fY2
         sYlYaL7j69lnZrOzUqE4FGNSO3IeHTQAhPNkbupUcLjoKXbSmLVu9apbAfMsWq4HVkAv
         bobAl4WaX86QW89NC5DBoWGBPNS6eNxhBzxYsXcDGujdMpODbYiIbI6reKmpekOfrhse
         scRUuhiiFIQMaSyOsd5gKHCILwPvbWG+v05snAXwtfruYVUSd7Ocp1R1C1XblSuGm2me
         j9NjiBYfckIsVhgEXigeH+VozTgKBQn5w/TMoEId4QA0FojrrV2l1cqmt48hT8W/HJFY
         MoTg==
X-Gm-Message-State: ANoB5pmRbQQo/B8CI5/pSrewyzkjBgkH3Ff0GwgmGAFm3Ki/xkO1rr11
	a48zVjHMK1UeU5IY6PC+VtM=
X-Google-Smtp-Source: AA0mqf42xObJGVx93xSxumkmGRbcuB2yKXMO/ZP07kz+rokHYiwbXDZYbIbfdLeqG13BNCt1UvAGZA==
X-Received: by 2002:adf:e302:0:b0:236:76ab:c986 with SMTP id b2-20020adfe302000000b0023676abc986mr3895551wrj.379.1668269057389;
        Sat, 12 Nov 2022 08:04:17 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id iv16-20020a05600c549000b003cf87623c16sm14605752wmb.4.2022.11.12.08.04.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Nov 2022 08:04:16 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Andrew Powers-Holmes <aholmes@omnom.net>,
	Peter Geis <pgwipeout@gmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/6] Misc SOQuartz Enablement
Date: Sat, 12 Nov 2022 17:03:57 +0100
Message-Id: <20221112160404.70868-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_080423_036774_D38BE45B 
X-CRM114-Status: GOOD (  11.18  )
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

This series enables the following functionality on the SOQuartz CM4
module:

 * GPU (patch 1)
 * Video output (patch 2)
 * HDMI (also patch 2)
 * HDMI audio (patch 3)
 * PCIe2 (patch 4), CM4IO board
 * SOQuartz Blade bindings (patch 5)
 * SOQuartz Blade device tree (patch 6)

In V2, we also add the SOQuartz Blade base board and bindings
definition. The Blade base board allows mounting a SOQuartz CM4
SoM onto a 1U-rackable board with PoE and and M.2 (PCIe 2 x1) slot.

Changes to v1:
 - added pcie-clkreq-h to soquartz pinctrl
 - added blade base board (by Andrew "neggles" Powers-Holmes)

Andrew Powers-Holmes (1):
  arm64: dts: rockchip: Add SOQuartz blade board

Nicolas Frattaroli (5):
  arm64: dts: rockchip: Enable GPU on SOQuartz CM4
  arm64: dts: rockchip: Enable video output and HDMI on SOQuartz
  arm64: dts: rockchip: Enable HDMI sound on SOQuartz
  arm64: dts: rockchip: Enable PCIe 2 on SOQuartz CM4IO
  dt-bindings: arm: rockchip: Add SOQuartz Blade

 .../devicetree/bindings/arm/rockchip.yaml     |   1 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3566-soquartz-blade.dts    | 194 ++++++++++++++++++
 .../boot/dts/rockchip/rk3566-soquartz-cm4.dts |  11 +
 .../boot/dts/rockchip/rk3566-soquartz.dtsi    |  75 +++++++
 5 files changed, 282 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-soquartz-blade.dts

-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
