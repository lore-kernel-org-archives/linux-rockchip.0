Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2D41ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Aug 2022 20:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UmKfapLuWUaY1UCYAhqsoD7PUBQtJ93TW2eJ0X/pwNA=; b=njjvXQ7ZIB0L34
	FEwyYbr4Kq34SipJcXnL7ShngjejlkJCtsaa+fI385DQpMbTmqNsMfWSrSQgkV42hI+nCJ106rRxw
	ijEPGpJSpNPfNom1qtpcO3JweyRI0aKqLohl+1I075IHODz/hkMLjGlFB0cYBBnt3bnT466zKifD/
	REaQVnsOYfFjnb7WS01BmzZCgh9snUKS6IrxrvzqO/28GIsxF52HyvqJxuuQkCm6n0H5llolykZF/
	eyGg+AKmwpRexReVCbmC3l8EKEn6L/ua+3/CzcZ28dYV+DIw5et0qJCGCMNCecSESd4m7iiPXuuv7
	loAGSOHRa15XHMESWhHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT7gd-001oSC-M4; Tue, 30 Aug 2022 20:18:15 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT7gM-001oHi-94
	for linux-rockchip@lists.infradead.org; Tue, 30 Aug 2022 20:18:00 +0000
Received: by mail-pl1-x62b.google.com with SMTP id l3so12177654plb.10
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Aug 2022 13:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=8Amg5b56oQl+ZjuCqznlrXnzwH450EVUCei1qHh8YaA=;
        b=cLHGfYpFjKg4LfQbdwq1ncMirzhvpWWcCdSP0WPnrYpwI08hPAR57Vp2rkQqSa9qF3
         hbHyzoQCOctpv6ij5bBZOau+F77S2b1Nkp4Chiv+Y7dCdL+SG+iogvYy+JZfeDxyjxHp
         tn60S3B9Ag2xe1RJovoMsTfrD1cotR/e7tnkE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=8Amg5b56oQl+ZjuCqznlrXnzwH450EVUCei1qHh8YaA=;
        b=lZInJi6+6Mv11phMRXT3bZHje0U6tEyn3KsdsGd75qqAZDNGs5luwX+XULz+heHOfR
         9bNnM3fziPsMS1vJST7QJFT9ur5bf+UdRPkDi+kaBV5QXyo+3SEhDwTh3Cu/Q06gFsC1
         /oJ3STeXtU+aIKUrP/1imG+v9IS04rADrDM/tNZ3cmdNJyeaI3C51Ol2lkBvI2l4WxIy
         nmtT65DmnIxbyHWmADSgP2ecKUTBuB0A0XhVdtMisXWFcBXdmU5pYonZJT3XJUFgwFzK
         WurgZj04kAg/kP3zEijvc9gTeMEvfqdEu2LKlMFfubI2meF9Jbods1IB6FlJyTgHChpJ
         6kJA==
X-Gm-Message-State: ACgBeo2cstR/5jUZaB0Xag4S4TGVzy84P7gOddP90rDONoEZ93X126Db
	KLr6G/uhc3gdFZCl8YOt5ln+Zw==
X-Google-Smtp-Source: AA6agR71P/HmC5vMFbdfvfVHoIYJy/fkqJ/ObJltZwgbWIk8mUDynhEUCoJF82BTs1NDNqkjbf5weQ==
X-Received: by 2002:a17:90b:1e4a:b0:1f5:4f69:d6b4 with SMTP id pi10-20020a17090b1e4a00b001f54f69d6b4mr25598894pjb.164.1661890675446;
        Tue, 30 Aug 2022 13:17:55 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:d14a:ebf8:88f1:35e])
        by smtp.gmail.com with UTF8SMTPSA id x196-20020a6286cd000000b00536816c0d4asm10036104pfd.147.2022.08.30.13.17.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 13:17:55 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	zain wang <wzz@rock-chips.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Lin Huang <hl@rock-chips.com>,
	Brian Norris <briannorris@chromium.org>
Subject: [PATCH v2] arm64: dts: rockchip: Set RK3399-Gru PCLK_EDP to 24 MHz
Date: Tue, 30 Aug 2022 13:16:17 -0700
Message-Id: <20220830131212.v2.1.I98d30623f13b785ca77094d0c0fd4339550553b6@changeid>
X-Mailer: git-send-email 2.37.2.672.g94769d06f0-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_131758_325027_BEBE4717 
X-CRM114-Status: UNSURE (   9.74  )
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

From: zain wang <wzz@rock-chips.com>

We've found the AUX channel to be less reliable with PCLK_EDP at a
higher rate (typically 25 MHz). This is especially important on systems
with PSR-enabled panels (like Gru-Kevin), since we make heavy, constant
use of AUX.

According to Rockchip, using any rate other than 24 MHz can cause
"problems between syncing the PHY an PCLK", which leads to all sorts of
unreliabilities around register operations.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: zain wang <wzz@rock-chips.com>
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

Changes in v2:
 * Add Doug's reviewed-by
 * Set authorship correctly

 arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
index 45796b9fd94f..ee6095baba4d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
@@ -244,6 +244,14 @@ &dmc {
 &edp {
 	status = "okay";
 
+	/*
+	 * eDP PHY/clk don't sync reliably at anything other than 24 MHz. Only
+	 * set this here, because rk3399-gru.dtsi ensures we can generate this
+	 * off GPLL=600MHz, whereas some other RK3399 boards may not.
+	 */
+	assigned-clocks = <&cru PCLK_EDP>;
+	assigned-clock-rates = <24000000>;
+
 	ports {
 		edp_out: port@1 {
 			reg = <1>;
-- 
2.37.2.672.g94769d06f0-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
