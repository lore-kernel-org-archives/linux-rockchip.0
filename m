Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E8D9C2D0CD
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 10:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CjTWHMlzDrAJ1ge2yD9KRxzx12yq5M4ciUTxwJy0I78=; b=XEZYU3xdnwMs5s
	CTCbpyR+6FbdLOrKd/zAyhp0XlMFYpiD9IvZZNcw5VHIz8cH7QIQaxEekRTB3MhS3UUHq420sjHDf
	wjx0TXnO79tDNBe7EH9idHQvnno+QSepkEIWdQOIEmZqIIr4LX0I9sg8xg89ohXBubLok0fPC5Fab
	xv6dA6XTrn52+2khEwlpRPVU+zwblfZdTIDbVNSP+2gTHF5+yxBVX/jbcRQ7hl0IBG49jvVNXNITk
	iwFdPCkoZyE3MRZ343TPbJLEBy/Ggv48KJUpx1FzWBf7nHalqKNsR/2YnF67IQYxhA3P/12as3RmG
	PAT4bsfwoCLwBitV/90w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGxd4-00000008mJV-3Zvi;
	Mon, 19 May 2025 10:21:54 +0000
Received: from out-189.mta0.migadu.com ([91.218.175.189])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGxb0-00000008lqb-3Q50
	for linux-rockchip@lists.infradead.org;
	Mon, 19 May 2025 10:19:48 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1747649974;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=W1wlPPM5KG2GsI5tQAqWvz/yuAg+jLg5ME+Tda7BDFs=;
	b=MP4oFvrmt8llfsRowSYmUNDPerHWjDpbUMCGw219WbVmd0TkKZ2EDCoVYddfy+B92fTLhN
	w46Cl0hEy9M+Y9DOxPwUfdmEK6DaoYHEWJJcfqp1gwZOszhFeL3Xr1cKkyfBk6sAq4hAo6
	0dQ+P1BSupP7mYic6TOVRNAn0vmjW2dEzrrC0i7sfQ1i1dHU6/8+07BHYdYQh555cJaHDb
	Mnywst/LcHty78ryXVQW4J6ewx35mwQUBUANEJtB+uWqkOg/agKiDIp6xGPONYRFJt/XPH
	5EiSv/z0LkCi6/ahSnB6l8yZFeh36cXcTVFixIQYbjBRY5LgJfPuYcIymp0P1A==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] arm64: dts: rockchip: Drop assigned-clock* from cpu nodes on rk3588
Date: Mon, 19 May 2025 12:18:28 +0200
Message-ID: <20250519101909.62754-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_031946_994341_791F911C 
X-CRM114-Status: UNSURE (   8.89  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, Diederik de Haas <didi.debian@cknow.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The assigned-clocks and assigned-clock-rates properties were moved from
the scmi_clk node onto cpu nodes in commit
87810bda8a84 ("arm64: dts: rockchip: Fix SCMI assigned clocks on rk3588s")

During review of v1 of that patch set, the following comment was made:

  why aren't you using OPP tables to define CPU frequencies.
  Assigned-clocks looks like a temporary hack because you haven't
  done proper OPP tables.

Some time later, proper OPP tables for rk3588 were added in commit
276856db91b4 ("arm64: dts: rockchip: Add OPP data for CPU cores on RK3588")

So this 'temporary hack' is no longer needed.
Dropping it fixes the following dtb validation issues:

  cpu@0: Unevaluated properties are not allowed
    ('assigned-clock-rates', 'assigned-clocks' were unexpected)
  cpu@400: Unevaluated properties are not allowed
    ('assigned-clock-rates', 'assigned-clocks' were unexpected)
  cpu@600: Unevaluated properties are not allowed
    ('assigned-clock-rates', 'assigned-clocks' were unexpected)

Link: https://lore.kernel.org/linux-rockchip/CAL_JsqL_EogoKOQ1xwU75=rJSC4o7yV3Jej4vadtacX2Pt3-hw@mail.gmail.com/
Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 548677de9a53..70f03e68ba55 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -96,8 +96,6 @@ cpu_l0: cpu@0 {
 			enable-method = "psci";
 			capacity-dmips-mhz = <530>;
 			clocks = <&scmi_clk SCMI_CLK_CPUL>;
-			assigned-clocks = <&scmi_clk SCMI_CLK_CPUL>;
-			assigned-clock-rates = <816000000>;
 			cpu-idle-states = <&CPU_SLEEP>;
 			i-cache-size = <32768>;
 			i-cache-line-size = <64>;
@@ -174,8 +172,6 @@ cpu_b0: cpu@400 {
 			enable-method = "psci";
 			capacity-dmips-mhz = <1024>;
 			clocks = <&scmi_clk SCMI_CLK_CPUB01>;
-			assigned-clocks = <&scmi_clk SCMI_CLK_CPUB01>;
-			assigned-clock-rates = <816000000>;
 			cpu-idle-states = <&CPU_SLEEP>;
 			i-cache-size = <65536>;
 			i-cache-line-size = <64>;
@@ -214,8 +210,6 @@ cpu_b2: cpu@600 {
 			enable-method = "psci";
 			capacity-dmips-mhz = <1024>;
 			clocks = <&scmi_clk SCMI_CLK_CPUB23>;
-			assigned-clocks = <&scmi_clk SCMI_CLK_CPUB23>;
-			assigned-clock-rates = <816000000>;
 			cpu-idle-states = <&CPU_SLEEP>;
 			i-cache-size = <65536>;
 			i-cache-line-size = <64>;
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
