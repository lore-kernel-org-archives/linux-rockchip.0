Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1FECF30951
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Mar 2026 12:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0lANlep/qWue85lvAINpfiTxcMh7PBU+mWhJh5a2UyI=; b=Br/Kx+TC3S7J3X
	FtiW4sbndaRSZvJRNTFBXYxFIyCid5BInB5UOcmQk2St+BKbGTxdK/PZpB5bZH38E0q7F5496OaFq
	Zn7N+cVlfpMvqdUFMgfPeAuKhDPzme4Pbknr+Se8xj3rtliWxHZtmaCLxVkqMuAPX8LCis+0SNYsU
	wXpRbAZ9KY+tRzqXqQsXxaRXga5LjdozlNfE8e7vdCMobHq9cAXAK3Pe27Y+e8Wr7b668h3wf3uvF
	nmNQhe2Y4xLJMc4Kq8zaPMqLnLNoH17Z+feCWPqjwixA/7B/mKCIDDsURphisq5ecGQLYVSByqf3C
	FLTck/B9tx43fXNUAhrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy7Tt-00000001jKv-1GR6;
	Thu, 05 Mar 2026 12:07:05 +0000
Received: from out-170.mta1.migadu.com ([95.215.58.170])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy7Tq-00000001jKZ-2Cai
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Mar 2026 12:07:04 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1772712419;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=u827sJWQwU3javZmJbO1M5tiwo6JeGPU3XiLOVja7Ag=;
	b=EsUqP7AnCln9wX3WGvVEodNcCvRH7F7m0zb7KGngCHgVNhGfgE8E7KIR/gu10BlMFILXqG
	QjI92XosiaYSdPzKsJE6uYPMFJYQSl1KROCmjUchbKHcAP5/PZ7JGp+LoD1KWFn+ORNa8p
	Ziy6ItjkptLXCd85iQtDv/pWoqFghdr6uj92rDHYvdWba1HdqoHVZyXh+y3Io74vLa7Utg
	Qgar9fKlUhvY53qPWczKbgaawQeDDYz5S/3tzZ17iVzJK61Wgz1djUMdGkSYUyzwkaLavo
	FV1vJjAidlucNYxUwvTOzeU7kSbrKuhGurCyMdOzk3pXrUwfI6r024EpNukpjg==
From: Diederik de Haas <diederik@cknow-tech.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Samuel Holland <samuel@sholland.org>,
	Andreas Kemnade <andreas@kemnade.info>,
	Maximilian Weigand <mweigand@mweigand.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	hrdl <git@hrdl.eu>,
	phantomas <phantomas@phantomas.xyz>,
	Dragan Simic <dsimic@manjaro.org>,
	Diederik de Haas <diederik@cknow-tech.com>
Subject: [PATCH] arm64: dts: rockchip: Enable GPU on rk3566-pinenote
Date: Thu,  5 Mar 2026 13:05:40 +0100
Message-ID: <20260305120620.173600-1-diederik@cknow-tech.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_040702_935198_6D14E3FD 
X-CRM114-Status: UNSURE (   9.13  )
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

From: Samuel Holland <samuel@sholland.org>

The GPU is most useful when used together with the EBC on the PineNote,
which is not yet described. But there's no reason not to define the GPU
already as the hardware is present and could be used without the EBC.

Signed-off-by: Samuel Holland <samuel@sholland.org>
Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
index 551d551a113b..071cbdc3f6d5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
@@ -234,6 +234,11 @@ &cpu3 {
 	cpu-supply = <&vdd_cpu>;
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_npu>;
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
