Return-Path: <SRS0=0IO0=CE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F890C433DF
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Aug 2020 17:12:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2C08F20737
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Aug 2020 17:12:53 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="bfBekxwv";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RabYfrQO"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2C08F20737
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1IyZsyGFm1tsqzrrWjTzWz0QQC7Qox4k4CaL58MzV58=; b=bfBekxwvF8xiFMXp9faWEGia+
	Frh6OHEP/gLRgg6vvi/MAB2SvrU3XQoIk18Wq+ZhsH56mAcuo4baoXqyTaqvQ76FikTn7QdXEFieo
	GNjMb8CVCQ34HgjgbXmUrXm5HghqU8tSa96PAtQQV8nRTdFmkzQrginNdx8ZLj1jeeiSHb9hng/wB
	fS/O9W2gcSEZ+YeWpmFUnpGeOf/I9oagbaEC/hiIOUsOTGOfp8u4hMj5ZArzbFNK9Qo9s8aAdnZsV
	7cc6WlmpjF8HRmKpGH//3EuUwnpEZzhHO6u+vtIVTDVkjqpYTdf/667KULSTz1N2tHhUAe2dFcigp
	eL/SuN21A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kAyyf-0002mW-FH; Wed, 26 Aug 2020 17:12:49 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kAyyY-0002jh-Rz; Wed, 26 Aug 2020 17:12:43 +0000
Received: by mail-pl1-x644.google.com with SMTP id k13so1189563plk.13;
 Wed, 26 Aug 2020 10:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=foFtRttkojftmX4pY4pyI5q5jMC4/A1XtpwKxw5ra3U=;
 b=RabYfrQO/VyKQRW/Ewp/P9Hi4+pn7atkXUXjA6FN1k8Oe0Qq80gdJEVUFrzd4xZmId
 /n9qNtjOlRi2ToCO+guN4FSSOFrOU9UK17ByWhxJ/cY7JONFPt/jvV5/MG3Jy5NX4sOp
 313dduRI+Az6ws9TFXSVOOS5mSYEbOp+3cjC8QnfN8xwkrvx+3wERHsF6VPw2J0Hqycy
 gc0KnYEzTvVy4BSuwbiPj1kevPL/cvpieZckDqVNwPg3qDrfCoL5fvbM8HH9ZXD7Plj0
 hACH64k/1qPw2iW2DFrO9IsAS2AIpIn0XhvKrVSpGxgnaemlI+3NsIVROU2v5XG3bAsr
 dgXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=foFtRttkojftmX4pY4pyI5q5jMC4/A1XtpwKxw5ra3U=;
 b=F2gO8g7Ba1YcXcf+5gtXkPXZF31FU8RjLmYetEA7rq5/x1zCh6ojPOL3Kc+sInh/b+
 /Yv9n053GNZMM77rwSAHQ/2US80JV6p8+sb5AXcJRmJ7Y1dN6XHvW3dnPECFlFQPyUX9
 JmNtJjYiyXBx6Kre5y+5yl7TmzS/IqKD0lMlBMoomDhCpH6n6zV3iEClnsCzj1wMVUs4
 Sh3w2y3B+tWu4DxHKZnjU6zLxF2KXAr71lsA4+pWlH5ycrrs9ZULnliI+5tRMj8d2Lev
 KrmoYICogVBvWb23aqJU+n/VHblYpfIxMj2sYDlvDSy3BvoxE3g73jU37AODb6krOMeR
 6g0A==
X-Gm-Message-State: AOAM530ZpI41ocZ1K4drtif/eXfP3veLvpdK2vGVWhlc61FyM4QAUFHW
 lthkhawG6yTs1dZ0T6fIS+JkndgTTRw=
X-Google-Smtp-Source: ABdhPJzkPfG8CS5m+0FMlo14AoxxxwmRlGR9ERwxyG1rptAqQXc7gSAS3CfJKXeT1cxGTQ6TYM5wGg==
X-Received: by 2002:a17:90a:d594:: with SMTP id
 v20mr7273635pju.227.1598461960747; 
 Wed, 26 Aug 2020 10:12:40 -0700 (PDT)
Received: from localhost.localdomain (cpe-172-112-234-200.socal.res.rr.com.
 [172.112.234.200])
 by smtp.gmail.com with ESMTPSA id z10sm1957870pjt.30.2020.08.26.10.12.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Aug 2020 10:12:40 -0700 (PDT)
From: lindsey.stanpoor@gmail.com
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 4/4] arm64: dts: rockchip: enable rk3328-rock64 usb3 nodes
Date: Wed, 26 Aug 2020 10:12:30 -0700
Message-Id: <20200826171230.17041-2-lindsey.stanpoor@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200826171230.17041-1-lindsey.stanpoor@gmail.com>
References: <20200826170623.15469-1-travelvia@airmail.cc>
 <20200826171230.17041-1-lindsey.stanpoor@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200826_131242_963928_7DEB3A88 
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
Cc: gregkh@linuxfoundation.org, cnemo@tutanota.com, robh+dt@kernel.org,
 heiko@sntech.de, balbi@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Cameron Nemo <cnemo@tutanota.com>

Enable USB3 nodes for the rk3328-based PINE Rock64 board.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Cameron Nemo <cnemo@tutanota.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 86cfb5c50a94..82c27eab6a52 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -363,10 +363,6 @@ &tsadc {
 	status = "okay";
 };
 
-&uart2 {
-	status = "okay";
-};
-
 &u2phy {
 	status = "okay";
 
@@ -379,11 +375,24 @@ u2phy_otg: otg-port {
 	};
 };
 
+&uart2 {
+	status = "okay";
+};
+
 &usb20_otg {
 	dr_mode = "host";
 	status = "okay";
 };
 
+&usbdrd3 {
+	status = "okay";
+};
+
+&usbdrd_dwc3 {
+	dr_mode = "host";
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
