Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF811CD1288
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Apr 2024 14:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=loSmkv4vuHKzWOPxTDDblh6AAYdobRAE1RdnGF40StU=; b=ZHq3AVr8DM8RaG
	kPKN5vGhzsJ2pkJI2hh3wi2TBjMrslqDUgoIw3f+MwkpJnay9t2JhlbvHwukXrEt2xYWMeF4WkKeX
	9TmFIkYul7aKtzNuIGQ1zW3XSynIV5pYJjH75k37DgQiaCffbXzH94IXI1W/xUVuubI8SYC3M3j5+
	Nn1L/XTvv/hiWMq9VVKHmJnDmjDteOvnDxecDeVnLZ0w7pF0rWUv8oLfpUDlj7v2F/EmhgIvT4qC9
	bIatEzIsgOhqaCA5OK9+pZbfnq/BhoVgERUhO6MdU6vRUdNVrHDpWJL8gmoZFjFMA4rQLvB7PMTtk
	9Itl4SHWFLDXNx2eARzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrIMC-0000000804E-1UoV;
	Mon, 01 Apr 2024 14:09:52 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrIM7-0000000800C-35w9;
	Mon, 01 Apr 2024 14:09:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2E7D760C70;
	Mon,  1 Apr 2024 14:09:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03301C43390;
	Mon,  1 Apr 2024 14:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711980585;
	bh=5MUF/ceJ0V6f/molmHs7FVQ1bFJrXBJgOD+wniJKJX4=;
	h=From:To:Cc:Subject:Date:From;
	b=lT0uyulChySnL2/gHmtGp4uVbkYLYeSjEzqotmZEoeQB89X2oq0Udq3DaXUmOSbab
	 /u/CGxmAeI2SbTMHBIMiVCs5lLvuVbBbS52pJ9WT8+y+Ei2I0ZcPID6CbGwVB+Zjuv
	 nVERmvXZpOVMtSjFHL89JPovdD4bx+NJAWar8uoQnR29H+daA6a9lJ2DsFCXGTMaBe
	 8Jdn3OAVl6qtkQ0Djtievuk8cuNR6jdHWfhHXkWZHJxcXaXCOJfK/MeZvGD4MFQfzt
	 b6ngLjEePq3NHe0PL0n9gwv6n59nkjsWaaBJFmzVuvu/y+q+DEkhbmsDdiNExPuwQg
	 t0F0d4sDvK1QA==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH] arm64: dts: rockchip: drop panel port unit address in GRU Scarlet
Date: Mon,  1 Apr 2024 16:09:39 +0200
Message-Id: <20240401140939.97808-1-krzk@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240401_070947_845296_F359101E 
X-CRM114-Status: GOOD (  11.23  )
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

Panel port does not have "reg", thus it should not have unit address, as
reported by dtc W=1 warning:

  rk3399-gru-scarlet.dtsi:666.32-668.7: Warning (unit_address_vs_reg): /dsi@ff960000/panel@0/ports/port@1/endpoint@1: node has a unit name, but no reg or ranges property

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
index 5846a11f0e84..6d1e3ca86392 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
@@ -663,7 +663,7 @@ mipi_in_panel: endpoint {
 			port@1 {
 				reg = <1>;
 
-				mipi1_in_panel: endpoint@1 {
+				mipi1_in_panel: endpoint {
 					remote-endpoint = <&mipi1_out_panel>;
 				};
 			};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
