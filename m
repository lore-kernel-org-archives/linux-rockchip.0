Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F865C28B22
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 22:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Iuwo2NsOgIQGVapa9P2mb3OPbGdMmtzUbY28VOIfMs=; b=aKA5ZdoYnREwS5
	zg2QDop2HjBx3GXUOL+iAukA1gteUF77EVVvg7+CwsWxUlxpnWf87EcemgsS+FqB51QiplN5bEWFQ
	Xvq5R45SY8eZ7O2QOagO6G9+IIRkmovJBT76hvA14pfyXwLoTdzGrZzqxrSdybeh8sKDnCRbssiX6
	nfvJrCi+7ZIencBhIWnu3qbDwOvHiLT6YUWjrJhSzyF1qpBlvhXFIrebV2OjLbzTX9e/LNfxMz9kN
	L+6jtUH7OJxtC/2rxES9ukcg8ks2oXLbTp3wOp0n2urP+sswJVAIMd3qNngP8hB7SgzyCv6EPZ2gP
	BvynsPbErti5fczf04IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpxXk-00000009WRk-2EVB;
	Wed, 05 Mar 2025 22:48:48 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpue3-000000096Kw-3MG7;
	Wed, 05 Mar 2025 19:43:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=dOB1ExgSYFpMb00wuoNNMwfFnbqQE1kfonYKCA+VKgg=; b=ibyCmHUvUcqpBEx0FgZAY+EcZJ
	XDpl2u47QLUnV9jvdW1ePIHoaNFeDVkoMO5bH4ZQbF7+G0uio2vKHnzrTo3A6gvKQNvWmaYNnjFgP
	rVrrJAkpCfe+h5iSlBIHR3tVZomxMWdJtq2dSjrrA5Gg0TLBstXP/beDV1e78c3t5ACW7QO9m/m46
	c3LLwntyjDAkXvKoUv5RVW/sdQKFyGvXSSDHC3fVH5dNqBdtFCoVk7qp5trgBPu9gTRs0D+M2hv6p
	590Ik5tyl69ubb8XzPYm9/WuCOvsWSfCAlt/By7dMkKStQTIfB7tzVJ1O2Y3+IpJRiuw9K3ILZK7o
	bA6O7LpA==;
Received: from layka.disroot.org ([178.21.23.139])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpue1-000000066vW-04Os;
	Wed, 05 Mar 2025 19:43:06 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id ED2F722BBD;
	Wed,  5 Mar 2025 20:43:01 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YaINrH71oD8d; Wed,  5 Mar 2025 20:43:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1741203781; bh=jLhEuZAavYZV64SFD7Jfb/eazJpNnOasV/OkFoMIEWY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=aAjF6t+0Mp+5Ac154kaRZFoQrjsS69VITdRo4WfV+DCM4Fz+tSTt4TZjoaJGRn6VW
	 6QLLpQ+s1MYkgi1Jyg10u0iLF+FNgX/Yt9L7VdA6zrZQuUEs+quulYovz0VR7VEOlP
	 o6KoZ73Qv1EDBA30kC3Q8Gwm98SDcBxTU00jF5552jFx+CPZQtjeI97LtuG9hVyzT7
	 QueAM9tNEAZDlZyL8HqTy8sJrVwbmVaNnAS04sJ1W/MKCxAm8Di4rDN2jx0OEfzKMk
	 xz+AfnwLuC1hruI+XDJVCrsurE0UXAMNwFP7G3eywEkwU79UK0wXDNwAIb93+il0xv
	 hOthnnI/LWZTg==
From: Yao Zi <ziyao@disroot.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shresth Prasad <shresthprasad7@gmail.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>
Cc: linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH v2 2/8] dt-bindings: soc: rockchip: Add RK3528 VPU GRF syscon
Date: Wed,  5 Mar 2025 19:42:11 +0000
Message-ID: <20250305194217.47052-3-ziyao@disroot.org>
In-Reply-To: <20250305194217.47052-1-ziyao@disroot.org>
References: <20250305194217.47052-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_194305_117950_B448A7A9 
X-CRM114-Status: UNSURE (   8.52  )
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

Add compatible string for VPU GRF found on RK3528 SoC.

Signed-off-by: Yao Zi <ziyao@disroot.org>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 98a0670359f6..2f61c1b95fea 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -17,6 +17,7 @@ properties:
               - rockchip,rk3288-sgrf
               - rockchip,rk3528-ioc-grf
               - rockchip,rk3528-vo-grf
+              - rockchip,rk3528-vpu-grf
               - rockchip,rk3566-pipe-grf
               - rockchip,rk3568-pcie3-phy-grf
               - rockchip,rk3568-pipe-grf
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
