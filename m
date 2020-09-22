Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 493F2C4363D
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 16:56:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DA6A922262
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 16:56:05 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="EfTouZ3/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DA6A922262
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KbDm1wGNTNKzH9xA+P7YXsdxbHzFe+p/XMJPdZc4emw=; b=EfTouZ3/lYaDVocgI0KRBUy75
	4+IqG2XrgEQmTtSRAEuXCeCkGn7EAqCJCZQ+QUrtPKhLNlNdxvRAU3jmdLQDhPovMhlBEknH+gk5Y
	TKQcdMZK1NZs2g5ePE9PTrwV2qQjXlrrdBgl6jS+C/WJpyhs1s/kOppyw24UJBXA0PlbYkU84ko6x
	gcdMLdyBO+RHnRN2ULH1EPWMiVAAJFpd5n7hXtxYfg6peKRUAnwkNciyDadzwWgMo8DTVGC4QeKup
	OOiztZaqLSbxtLXfffXaRUoL/NjUIbCNYr5/Qh6SePo80cMlMEzWDuYsxBVxEknRx4P2e+eKYVkR6
	Zk9ChcGPA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKlaB-0006Yo-KZ; Tue, 22 Sep 2020 16:55:59 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKla1-0006Vi-0m; Tue, 22 Sep 2020 16:55:51 +0000
X-Originating-IP: 90.89.95.46
Received: from pc-2.home (lfbn-tou-1-1532-46.w90-89.abo.wanadoo.fr
 [90.89.95.46]) (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 2B492C000C;
 Tue, 22 Sep 2020 16:55:46 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: [PATCH v3 3/3] arm64: dts: rockchip: Add the camera interface
 description of the PX30
Date: Tue, 22 Sep 2020 18:55:35 +0200
Message-Id: <20200922165535.1356622-4-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200922165535.1356622-1-maxime.chevallier@bootlin.com>
References: <20200922165535.1356622-1-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_125549_190357_0F01D012 
X-CRM114-Status: GOOD (  11.59  )
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
Cc: devicetree@vger.kernel.org,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The PX30 has a camera interface, supporting CSI2 and BT656
modes. Add a DT description for this interface.

Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---
V3: Renamed the driver

 arch/arm64/boot/dts/rockchip/px30.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 2695ea8cda14..8c81eb35da86 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1106,6 +1106,18 @@ vopl_mmu: iommu@ff470f00 {
 		status = "disabled";
 	};
 
+	vip: vip@ff490000 {
+		compatible = "rockchip,px30-vip";
+		reg = <0x0 0xff490000 0x0 0x200>;
+		interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_CIF>, <&cru HCLK_CIF>, <&cru PCLK_CIF>, <&cru SCLK_CIF_OUT>;
+		clock-names = "aclk", "hclk", "pclkin";
+		power-domains = <&power PX30_PD_VI>;
+		resets = <&cru SRST_CIF_A>, <&cru SRST_CIF_H>, <&cru SRST_CIF_PCLKIN>;
+		reset-names = "axi", "ahb", "pclkin";
+		status = "disabled";
+	};
+
 	qos_gmac: qos@ff518000 {
 		compatible = "syscon";
 		reg = <0x0 0xff518000 0x0 0x20>;
-- 
2.25.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
