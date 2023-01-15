Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DAA1C46467
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Jan 2023 21:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dTnv1UdVdMOVyhocjRuBFnDITA/lRdn83VvES7GvVKs=; b=lvNwHnXfP69EbN
	ZQzNGG2fz3IkVbTLYxIS7VmJEXbfzCFvWypgEZrc8uz4LseRv+Opww2AgqlOKeqk2J1XTEBx8p9Ix
	fSGU5lASL+PRZZP0ZWzYNyckA9iqGoK+PWzWicBs0HAi+sPWzHC7R/m2fOnyJQNMsAEQEw470UwXH
	n0e8iYDC0CedyhAr1x371YyEnqAZRB1KzUUVceeELx457Xuo26HtwBVRedo9fZncBKnAN+1DLDZN2
	xRlVsF7EREGuah0QQt7ZVAof2kI43PXj0OEHvN0gkmQHfmsjnNBzg4Ip/CIsHTo4DBvFyH8dI9iKm
	TORSqwP4QuaHEvkD014Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHAMJ-0080c0-La; Sun, 15 Jan 2023 21:16:07 +0000
Received: from xtrwkvxq.outbound-mail.sendgrid.net ([167.89.24.164])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHAMC-0080aL-Rc
	for linux-rockchip@lists.infradead.org; Sun, 15 Jan 2023 21:16:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:mime-version:to:cc:content-transfer-encoding:
	content-type:cc:content-type:from:subject:to;
	s=s1; bh=ERbPVIFarZb+WUgCpZDCdwY8ICFJF1vmgae75o3lQi0=;
	b=ZGhUX8T0a5jouzeRkasAwgtrU3DaIsFhixgK9eGZ4m6WLJx5HgflWG/ZtikfLTGGhsr/
	bKgLGjwhvvplmhkCbgRsNLLJc8Wg9iBp/xhwZCoKLtOSrRpvc8MMKKO2lCUjdssE+sYxO7
	/6snFkXAnpIXx7CvhG/fzWQodZpZMUbCBfjc9ABlK82gSkJqWRd1HYZ2GpukKq5bUj1JK/
	alIa0QTDV8ZpyM7TbkSfFgsOULsvZ0/ppDgqT8tcJRFDbjXQ2g3GkmL+9B76/Qf+S7/4+Q
	wjksJS+fK7v0sGNtfJ5JArBhE6VK8yhVojxm0pS5xoR+PtAGSVmWVR5Ryr8LAARg==
Received: by filterdrecv-8569859b9-97x8c with SMTP id filterdrecv-8569859b9-97x8c-1-63C46D0C-3
        2023-01-15 21:15:56.260523908 +0000 UTC m=+5090949.637570358
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-4-0 (SG)
	with ESMTP
	id DtXdfeHBTOGCyPGNzTz-Cg
	Sun, 15 Jan 2023 21:15:55.878 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH] arm64: dts: rockchip: fix probe of analog sound card on
 rock-3a
Date: Sun, 15 Jan 2023 21:15:56 +0000 (UTC)
Message-Id: <20230115211553.445007-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-SG-EID:  =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h4pQVcEPeLI24yyJK?=
 =?us-ascii?Q?2BEi7JO9ReTsY1s0wICYAt6+gAJYw1tv=2F+Qx5ux?=
 =?us-ascii?Q?W6rwiIC4AJy4bFrV2svt0M1o=2F5FyBGB22gb4kwG?=
 =?us-ascii?Q?SpNAshjE=2FUc=2FllYjCp5I5aVLhMVBTFzuX416deT?=
 =?us-ascii?Q?Dwyw23WY7P6IOpbAUL6HxKrrg6gHCQKO1sPL7yQ?=
 =?us-ascii?Q?ixzYjMAqCD2f8g3vpF65w=3D=3D?=
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Michael Riesch
	<michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230115_131601_631296_EA9F7652 
X-CRM114-Status: UNSURE (   9.08  )
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

The following was observed on my Radxa ROCK 3 Model A board:

  rockchip-pinctrl pinctrl: pin gpio1-9 already requested by vcc-cam-regulator; cannot claim for fe410000.i2s
  ...
  platform rk809-sound: deferred probe pending

Fix this by supplying a board specific pinctrl with the i2s1 pins used
by pmic codec according to the schematic [1].

[1] https://dl.radxa.com/rock3/docs/hw/3a/ROCK-3A-V1.3-SCH.pdf

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 00d873a03cfe..a149c8b83f94 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -573,6 +573,8 @@ &i2s0_8ch {
 };
 
 &i2s1_8ch {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s1m0_sclktx &i2s1m0_lrcktx &i2s1m0_sdi0 &i2s1m0_sdo0>;
 	rockchip,trcm-sync-tx-only;
 	status = "okay";
 };
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
