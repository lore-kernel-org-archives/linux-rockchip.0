Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 798AEC369AB
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Apr 2025 05:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ZAasxDnL67epBOl9iKeEJFTnjCo1h3WTZFkrfI8h+s=; b=E4WtzIf95XApGq
	+ZdPVnPUksU5CZpWbDwV6XoCUlPZ2hvKH9xUkLmmeDG3dfPqiNwaWQJBxmvEQhSRVH/E8SRI8hg3a
	vzBN3yXZP3RpgpRmq5EhZ6bnEcRKuSLf0W7N0FCMQQerfVy0+78mwrBIGBoSq9woxfUnMFsV0WMBi
	GKNWm6m8Q3I+CTk8OQvLYckHmUYStNP1Kc9vHHr54372rgaoztAWsCRbREEJFlAGFb2Bn6bl2NKmF
	yUkW3GCuCISLpr9mg1wSBxk6I5FOKFaI2DVIqtDklbh7qhXP1fiMgyrCHPm2ew4amoCSeAyRrxH6k
	UYa52SGhXL9SamX2LkVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4YzV-00000004Zdv-32BK;
	Tue, 15 Apr 2025 05:37:49 +0000
Received: from mail-m1973183.qiye.163.com ([220.197.31.83])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4YhV-00000004XLO-1wZN;
	Tue, 15 Apr 2025 05:19:14 +0000
Received: from localhost.localdomain (unknown [103.29.142.67])
	by smtp.qiye.163.com (Hmail) with ESMTP id 11e6d9674;
	Tue, 15 Apr 2025 13:19:08 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v4 4/7] dt-bindings: soc: rockchip: Add rk3562 syscon compatibles
Date: Tue, 15 Apr 2025 13:18:52 +0800
Message-Id: <20250415051855.59740-5-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250415051855.59740-1-kever.yang@rock-chips.com>
References: <20250415051855.59740-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaGBpCVksYSxlJSk5JSUlMQlYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKS0hVSUJVSk9JVU1MWVdZFhoPEhUdFFlBWU9LSFVKS0hKTkxOVUpLS1
	VKQktLWQY+
X-HM-Tid: 0a9637e30c5b03afkunm11e6d9674
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PhA6Hyo6EDJPQxovCgwUCiIu
	DUMKCgFVSlVKTE9PTUJPSE5KS09NVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlKS0hVSUJVSk9JVU1MWVdZCAFZQUlOTUI3Bg++
DKIM-Signature: a=rsa-sha256;
	b=jhxPUgo9Pa7/KfoOhXGWoh/uIXnW6w7QCxcIC1XLDGxHqexVAUsd46MUd4YUZmYYk6HV534I+owdAuznWqF6Sknku+BdqKqiTe1w3bYQL8oy9iihBw8emECbqAHMO7q50aXihmJ58SOHce9XMWkRvceSfeFCksIaUhxhJtA56DA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=++Sz5n1hontH0goNn0EnD9AxxcYqzo7gOqQkURmwZVk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_221913_685384_CFA7563E 
X-CRM114-Status: UNSURE (   5.89  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>, Rob Herring <robh@kernel.org>, Frank Wang <frank.wang@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Detlev Casanova <detlev.casanova@collabora.com>, Shresth Prasad <shresthprasad7@gmail.com>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add all syscon compatibles for rk3562.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---

Changes in v4:
- Collect ack tag

Changes in v3: None
Changes in v2: None

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 2f61c1b95fea..8cbf5b6772dd 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -18,6 +18,12 @@ properties:
               - rockchip,rk3528-ioc-grf
               - rockchip,rk3528-vo-grf
               - rockchip,rk3528-vpu-grf
+              - rockchip,rk3562-ioc-grf
+              - rockchip,rk3562-peri-grf
+              - rockchip,rk3562-pipephy-grf
+              - rockchip,rk3562-pmu-grf
+              - rockchip,rk3562-sys-grf
+              - rockchip,rk3562-usbphy-grf
               - rockchip,rk3566-pipe-grf
               - rockchip,rk3568-pcie3-phy-grf
               - rockchip,rk3568-pipe-grf
@@ -82,6 +88,7 @@ properties:
               - rockchip,rk3368-pmugrf
               - rockchip,rk3399-grf
               - rockchip,rk3399-pmugrf
+              - rockchip,rk3562-pmu-grf
               - rockchip,rk3568-grf
               - rockchip,rk3568-pmugrf
               - rockchip,rk3576-ioc-grf
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
