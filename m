Return-Path: <SRS0=br+z=FA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF42DC56202
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2020 07:34:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 353E42173E
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2020 07:34:15 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="pfxYqnwM";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="DaZ/H3Pa"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 353E42173E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CBgXnJzwSL+sdBywwObd4qq3ss9XNe+r3akciQv4Rqc=; b=pfxYqnwMntU9URrl3xFCrh0Tj
	sXIC6S8rc/AhJ4ekNaNEGbZk5DfJK8tJ1kbC8hQHQ8gccBBXNUDXHxTWkIZYvWtwA193E8BSAKlir
	7gnFs31l5TERm/kHX3ZqQDdw9z92iommhn1LCXP+T/ega6UmljOC4cVdzdSjEjDo9lT9AaySnhXwe
	P/beZawoOoB8J2ASJ+bb7ERNaCHFakrUtqaRi5f5J/82Ij8d7S+ZmwV96IKTZcp5N80/B3Ail0N4G
	rdxBQVMmC1fXfNVLmGR910+dH1Nr4c96yWelEvUdEQFR1m9vGR6/qQgUbJCcf9esRJpqc3sxn6/Ge
	+UnO/4KBA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kiBn9-0002xr-Se; Thu, 26 Nov 2020 07:34:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kiBmm-0002sy-BI; Thu, 26 Nov 2020 07:33:49 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D12F21D93;
 Thu, 26 Nov 2020 07:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606376026;
 bh=CX6BU1Zni/drTwYoTIuGnFbbK6HsOMzc5TdCbHxmoMQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DaZ/H3PaGS3CLckuKq8ZAXKPcg3LTvmGKlHW71zN+g3CwgMxcq3IrpaWeuUkM7Cue
 PUaEWNDfZrZ1fYsVHAwop47RuSc/nsuVXFhEi2y64zFDf5sHptNNWWJnlDjpukLptk
 jfnobTkQddMUJXip8aQoI/PQDlUMWKjKO6CjSb00=
Received: by wens.tw (Postfix, from userid 1000)
 id E60805FA83; Thu, 26 Nov 2020 15:33:42 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 2/3] arm64: dts: rockchip: rk3328-roc-cc: Enable HDMI audio
Date: Thu, 26 Nov 2020 15:33:35 +0800
Message-Id: <20201126073336.30794-3-wens@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201126073336.30794-1-wens@kernel.org>
References: <20201126073336.30794-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201126_023348_500204_549BF4CA 
X-CRM114-Status: GOOD (  12.56  )
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The RK3328-ROC-CC already has HDMI display output enabled. Now that
audio for the HDMI controller is supported, it can be enabled as well.

Enable the simple-audio-card, and the I2S interface the audio is fed
from.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index b76282e704de..697fce709031 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -161,6 +161,10 @@ &hdmiphy {
 	status = "okay";
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &i2c1 {
 	status = "okay";
 
@@ -270,6 +274,10 @@ regulator-state-mem {
 	};
 };
 
+&i2s0 {
+	status = "okay";
+};
+
 &io_domains {
 	status = "okay";
 
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
