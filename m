Return-Path: <SRS0=K/hu=FS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D1EC2BB48
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Dec 2020 02:49:09 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 68AAB22D57
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Dec 2020 02:49:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 68AAB22D57
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=gtsys.com.hk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rUmm55W938NQ4d0rgcRUsXniQJsqAcbPpwCs60ANwZM=; b=iA+85iXilJ5Dsoz3tK+xDLsDB
	n9UTKhK6cCf02dxNJ0gP5xY5ShWscBHj7P9zJF7MpcC2TDQuEeOVQHCVKUbnS+EPYPjFC9oL8w0n5
	P5Oc6JUgW2ff0ElXMPr83+8dm2phBfYQbAGAAEMF80O5ReovNsWm4khJmGlPfopvozzb0/n++XfXK
	C0EN6LN/quiYJSAPBatv/j2K/LCQ5icOjDt7z8NyHiu75iaeoIeRS43se+cTJVUxRRrp7ZtuilTzm
	cNQNEQGOYqlshmSSgTc3YTYzsptkx9TWY9SpXE5u9wdjjwpQ+AJIOyxAt6C3tX2I1Uf8SZuEZQEwo
	KCeYNxDVw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kodv8-0004Ux-LO; Mon, 14 Dec 2020 02:49:06 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kodv3-0004T9-UH; Mon, 14 Dec 2020 02:49:02 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 422F620139DE;
 Mon, 14 Dec 2020 10:49:00 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wIylvA8Ctrid; Mon, 14 Dec 2020 10:49:00 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 2843320139A0;
 Mon, 14 Dec 2020 10:49:00 +0800 (HKT)
Received: from armhf2.gtsys.com.hk (unknown [10.128.4.15])
 by s01.gtsys.com.hk (Postfix) with ESMTP id 2CAFAC01FAD;
 Mon, 14 Dec 2020 10:49:00 +0800 (HKT)
Received: by armhf2.gtsys.com.hk (Postfix, from userid 1000)
 id 16E252000CF; Mon, 14 Dec 2020 10:49:00 +0800 (HKT)
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>
Subject: [PATCH 3/3] devicetree: dtsi: rk3399-puma.dtsi, add "rockchip,
 " vendor prefix
Date: Mon, 14 Dec 2020 10:47:19 +0800
Message-Id: <20201214024720.24656-4-chris.ruehl@gtsys.com.hk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214024720.24656-1-chris.ruehl@gtsys.com.hk>
References: <20201214024720.24656-1-chris.ruehl@gtsys.com.hk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201213_214902_184386_3CC68391 
X-CRM114-Status: GOOD (  10.91  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Update rk3399-puma.dtsi with the vendor prefix referred in
vendor-prefixes.yaml.
Optional property: rockchip,drive-impedance-ohm

Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index 4660416c8f38..b715e73f9749 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -146,7 +146,7 @@
 
 &emmc_phy {
 	status = "okay";
-	drive-impedance-ohm = <33>;
+	rockchip,drive-impedance-ohm = <33>;
 };
 
 &gmac {
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
