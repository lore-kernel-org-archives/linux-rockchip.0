Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEA93C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 23:42:09 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3440B223DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 23:42:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3440B223DB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rTzt7pounjn1NU8O99TkEWDueJBuTthosstReCm2FQI=; b=s0rdpFc9U4VYINYPo8/9L4Gafk
	iRzYxyijXhXyg1qlLmEggmuzZKAG+b/hVf9TsX2+IZ4ob57vhva1HrZ6bOyPJT71va/n3mdyyqzAL
	UKWoztFNInSmQWZ081NRrCnwCJKv7IC9TCpArOVpDAyqgLqe/w8n1ltPee4VwazwsAnwyf/4+oV7j
	S+eXllw1AS+uhRABuLUwTp6X4QqrTPOHJ1pn//JgiRs7zPbOX6x1nO9gUfpfPGs18DDllNyuqeg0I
	Z+O65nxt2STrZkLqoFtsouxGzCWpzDpfQ8aHy4Vy01TmsIl1A81LHj/yph4SONB0cVkPgxwvxcdKY
	CjA69/XQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2N6u-0005im-4L; Wed, 20 Jan 2021 23:42:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2N6q-0005i0-1n; Wed, 20 Jan 2021 23:41:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4BE23D6E;
 Wed, 20 Jan 2021 15:41:46 -0800 (PST)
Received: from DESKTOP-VLO843J.arm.com (unknown [10.57.39.58])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 133943F66E;
 Wed, 20 Jan 2021 15:41:44 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: Disable display for NanoPi R2S
Date: Wed, 20 Jan 2021 23:41:39 +0000
Message-Id: <c4553dfad1ad6792c4f22454c135ff55de77e2d6.1611186099.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_184156_164793_DF8A62BF 
X-CRM114-Status: GOOD (  14.76  )
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

NanoPi R2S is headless, so rightly does not enable any of the display
interface hardware, which currently provokes an obnoxious error in the
boot log from the fake DRM device failing to find anything to bind to.
It probably isn't *too* hard to obviate the fake device shenanigans
entirely with a bit of driver reshuffling, but for now let's just
disable it here to shut up the spurious error.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
index 2ee07d15a6e3..1eecad724f04 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
@@ -114,6 +114,10 @@
 	cpu-supply = <&vdd_arm>;
 };
 
+&display_subsystem {
+	status = "disabled";
+};
+
 &gmac2io {
 	assigned-clocks = <&cru SCLK_MAC2IO>, <&cru SCLK_MAC2IO_EXT>;
 	assigned-clock-parents = <&gmac_clk>, <&gmac_clk>;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
