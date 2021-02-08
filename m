Return-Path: <SRS0=M6n8=HK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A718C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Feb 2021 17:58:45 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E2F3764EB8
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Feb 2021 17:58:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E2F3764EB8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G6f1QJ7jpRvMM8NOAIql6kpVo/1nXncMf6yq0ZzDk/o=; b=PDLfbWiU6YTGZKZkKzZu8lhIE
	kV1XWGG94/8ZHOlRnpTAsu8Z+WlT6453JdFSFcDevK9ZWvquzLlboWZBfGlgEuAOCjDdmxPvHHhTA
	KuqPPOMmX+X3sH8Ue3KXBc/jrRIDhkIxdA97Mpa7pIqWSgzPkTyI7OZFudBlbQwoNchXHa7MqfQUm
	fAkmN71L/9WWeeO9JcPUDAN9YTMnRWwIL+EJwKpLHxbFX6fLcj7/NjOr0n8OyAEBGUua57TZb3o41
	cx3zcmmjnBPDv/BHGtIExcqFp3hfsr15Cnx77j4pkemPANeagCRjCxK0e7F/m+sIyGEgvjL3yoLt+
	WiTtzH+Lw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9Ao4-0006n9-QW; Mon, 08 Feb 2021 17:58:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9Anm-0006dr-El; Mon, 08 Feb 2021 17:58:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id CC2B764EAA;
 Mon,  8 Feb 2021 17:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612807100;
 bh=Kpx3RtEO4l3vAXpLy+dut0zIXM92dtPcyvGUkm1NyH4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TnGe43lAePA4GtmD+QGTM2X7Mhl7prg6/jsbcZfIZmLCaps4iP3m+XzRHJA88CpCi
 cBBBQiom/bubmg3KV99OwDsAl9rfEwgDe/2eTjQDViU2bI2UpbKY1Nw9DPOPgCQX5P
 wmyEpeJypirTt0yu+0+fDVVIwxq8oSOQ/qoTvrXgDYaOG9XLUDrzn4H8ajT6oN99x6
 mgyzPlmYkAxFHK4IjnBaOVIHlNGoDVMajMvRQLUSM73vSR3g31kenIvY/fbLvbeZkG
 9O8OWhPmEj1TaktAGgXfy0tu8mtobIiNjoIdI36wSdiJrwCtXZXiiBnx1MvUIgubjx
 BhqV3I9IEvJaA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.10 10/36] arm64: dts: rockchip: Disable display for
 NanoPi R2S
Date: Mon,  8 Feb 2021 12:57:40 -0500
Message-Id: <20210208175806.2091668-10-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210208175806.2091668-1-sashal@kernel.org>
References: <20210208175806.2091668-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210208_125822_643061_E99687F9 
X-CRM114-Status: GOOD (  13.92  )
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Robin Murphy <robin.murphy@arm.com>

[ Upstream commit 74532de460ec664e5a725507d1b59aa9e4d40776 ]

NanoPi R2S is headless, so rightly does not enable any of the display
interface hardware, which currently provokes an obnoxious error in the
boot log from the fake DRM device failing to find anything to bind to.
It probably isn't *too* hard to obviate the fake device shenanigans
entirely with a bit of driver reshuffling, but for now let's just
disable it here to shut up the spurious error.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Link: https://lore.kernel.org/r/c4553dfad1ad6792c4f22454c135ff55de77e2d6.1611186099.git.robin.murphy@arm.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
index 2ee07d15a6e37..1eecad724f04c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
@@ -114,6 +114,10 @@ &cpu3 {
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
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
