Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92C5EC43334
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jun 2022 15:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r7VP2AQSPEXxoHCYjKuDA0NNyGYtFoPQuVAzggPVWHk=; b=fWZ+1AEk0XsuBf
	XMGVRyHxs6+9W9GKZ2wOOD4Bw9x+up+zYqTs1BoUxZ0C2XzD0xO/zvqzB8LLgS2f51n0Pnkfko0Wn
	9oTtBQtUyZmHNpsr+3++5R6hRS9ZD78kO59u1ACH8Fjy6nd6mCO+GtFLnCQUTBFhF+/8Dt5JJTIcz
	u9u10sXKflYHNM1pNDVdI4M2y4Tg0tHm2AgTREdJnuzw3/5F51OxPJ2W+vplszbtV9XMDIW8HSE0+
	6brlNbv/+ljVvA0I0EL4qlrK5crFq+aozV98URiaZ05C9OWcyK//uooTIthnAa+PurQXG78V+dxuZ
	ospfFUXY69DRQxtbnkKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyEYn-001lj1-C4; Mon, 06 Jun 2022 15:22:29 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyEYa-001ldd-Kn; Mon, 06 Jun 2022 15:22:18 +0000
Received: by mail-qk1-x736.google.com with SMTP id n197so4025828qke.1;
        Mon, 06 Jun 2022 08:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y+RKIOBF1OQyUNrZYbnbVUIUGYZ5O+hX0E7GZIjjSWI=;
        b=Z4DdLkdgtIojvPksRc1nRsDAhfDBzi2t4FpFde7mk1uVMzqpsfSCZAND7jQOARYrj7
         ywmaDIXJ5jpLMJPYvkwao5ALMAtErh0UGZVXmdMDyTEDfNF+dyq5q9RglZf0+wSK4le5
         ME2qKQnf4vkuCddfAbROLrOUoSrJBnpro3Ch+pvINf2rcMboq1DO/z+7IfV1+ySaZcTF
         5LK01Y3h3yXMxuiqOkWuD5Myoq3OXXItuWyCr8L1H6QWJpZ6MMI3dW27g9t9pGYm5Jq3
         wp6SONpuHytw3hmxpcIcD+Zt5WzxrCt1kbPn3KzEPx3YR6VMFdYnQeyjHlpYxQXmjUlv
         I9kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y+RKIOBF1OQyUNrZYbnbVUIUGYZ5O+hX0E7GZIjjSWI=;
        b=hNiM78J2ZtB/HLYFY4kT7jYtjl887h65l8d21UwLxfxujhxD+p07GDWSCCj0KvfKHh
         GsslSajUuIYEja8qYPzbHvizWO1XtviPKBjaMSowzeVjmDjZ7+RkjjUdHFerDyEF7iet
         Su2grpv/c8WfQtkKbTMiGeBeitYjpO5DRheYQOawBLjvzvyoVvCK2VhksJh5o+xeRVPp
         lYHCrJCcBViq2q1up7kQTG0VSXQ9eGFC9gN2ZQz3xUxbmX6ISwXhLkX6ulDGJ35ogeey
         4cf1AHnRXUqgW2tE5m26P83qiNtVMilr8wuNnH7NU5+B9AQndQtS1HpvnTFh/9o31JNU
         V0yg==
X-Gm-Message-State: AOAM531X0G+5w6aB7Wiay8r94V0dpO6hnSZJxUlRCnwmjx9TXM/LRxi1
	mVamCN4yF+Eb2EMLJxo5A/g=
X-Google-Smtp-Source: ABdhPJzNZVI3s+nxt6m2FFvXcQvwZ0jgqwi3ZUNIyXgPjRgXy261jsfK6+B3tV7qSBt4YCbJPSmSlg==
X-Received: by 2002:a05:620a:4305:b0:6a6:50f8:17e3 with SMTP id u5-20020a05620a430500b006a650f817e3mr15315327qko.389.1654528927273;
        Mon, 06 Jun 2022 08:22:07 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
        by smtp.gmail.com with ESMTPSA id e2-20020ac80642000000b002f905347586sm9784635qth.14.2022.06.06.08.22.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jun 2022 08:22:07 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Peter Geis <pgwipeout@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] fixup! arm64: dts: rockchip: Add rk3568 PCIe2x1 controller
Date: Mon,  6 Jun 2022 11:22:04 -0400
Message-Id: <20220606152204.3671113-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_082216_728790_370D4539 
X-CRM114-Status: GOOD (  10.76  )
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

Having a gap in the address space leads to read issues with NVMe SSDs.
Fixup the address space.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---

It seems this address space change was lost in one of my rebases. This
fixes up my original patch to correct issues with NVMe SSDs.
It's based off Heiko's v5.20-armsoc/dts64 at:
https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/?h=v5.20-armsoc/dts64

 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 99ab013b8ba4..cc1c5a65c5e5 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -839,7 +839,7 @@ pcie2x1: pcie@fe260000 {
 		compatible = "rockchip,rk3568-pcie";
 		reg = <0x3 0xc0000000 0x0 0x00400000>,
 		      <0x0 0xfe260000 0x0 0x00010000>,
-		      <0x3 0x00000000 0x0 0x01000000>;
+		      <0x3 0x3f000000 0x0 0x01000000>;
 		reg-names = "dbi", "apb", "config";
 		interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>,
@@ -868,8 +868,8 @@ pcie2x1: pcie@fe260000 {
 		phys = <&combphy2 PHY_TYPE_PCIE>;
 		phy-names = "pcie-phy";
 		power-domains = <&power RK3568_PD_PIPE>;
-		ranges = <0x01000000 0x0 0x01000000 0x3 0x01000000 0x0 0x00100000
-			  0x02000000 0x0 0x02000000 0x3 0x01100000 0x0 0x3ef00000>;
+		ranges = <0x01000000 0x0 0x3ef00000 0x3 0x3ef00000 0x0 0x00100000
+			  0x02000000 0x0 0x00000000 0x3 0x00000000 0x0 0x3ef00000>;
 		resets = <&cru SRST_PCIE20_POWERUP>;
 		reset-names = "pipe";
 		#address-cells = <3>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
