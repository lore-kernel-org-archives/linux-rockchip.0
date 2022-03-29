Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4A47C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 15:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l+ucpjeTS36ZORFCRMH04GIUZXy+Qelg+LINhGqek5w=; b=jNerUVyR1RWEwk
	sYP6ixhnw3PznorutHWdhecjsowefFTZiL/262jaXtO8qLXrXX4OK6gPQrgWTrqdOD8H2NW/a/mBr
	72JIq7M4NV61dmNufXcWPuzHK2/52KUwLbmfwOtshEXnx2XDaW9Ev9x2+hcPxKz4uZvk/P4M0Rggg
	3ORAu4vs13LnFm+xrrohOw2eRjJm8xwugDbgwRRfaGsx1Bfei+mh2EMI1avgd7cIT3rEK+PTizF0+
	ehGWfu9lQHNPkdSTXpFS30JHLCjzWk5odBMGQJypYy1cZ3g/LSSFEWKLGp/p21qpPHT5G2ME1NSHR
	itWxFiOT1wgPhTBMIUCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZDTS-00CafV-L3; Tue, 29 Mar 2022 15:09:34 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZDRv-00CZoJ-4r; Tue, 29 Mar 2022 15:08:00 +0000
Received: by mail-ej1-x62b.google.com with SMTP id bq8so21827330ejb.10;
 Tue, 29 Mar 2022 08:07:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k7V/AdbtuTpQjKQKuRE/DdQ8tDFVesLcfjc5DCvosMQ=;
 b=kGiY4tb+xGIQRdl+/8PFqwgQ4fTQZmhxcTdZuggrruf6V0o6YtxYMBesBVR2vAwWmM
 q1bfRdPTBBah2FodC+hww1SZCOb2DCWoqCAnUQwMUUbzLOZ4Xh9zjlbE9xdhmPrKrIRo
 MebMdMZfDuwbOJN/bTLxm/R9WHDXW2ybB/Oa5rKIsCQ8hNhHq/5yFTPjSv7hrVfNBtKC
 /h1NWty8q+WV2r7bg4mbyO3nb55uADLf8J+0MoWtRqnCzklkn7m8j6NV59lhuohT0rwB
 1UWgofotsBTExoauAmrTu0vWrf/uuX9cRkvN1lqar+kxgqTbR79h2j+KjWQiNDQcVA9T
 H5jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k7V/AdbtuTpQjKQKuRE/DdQ8tDFVesLcfjc5DCvosMQ=;
 b=LtQDcxWF0ddbJTA3Rik/YURddbcOOmKpE7hUZFxpiSSPyq7x6H/1VRkmgj0amUbWhY
 XibpI+XtktQNxyFPrUemPp9h10Khz8IYmwgTq+PM0W2NkvHrvdJTNuZvfwhw8Q+FbeTt
 M0w6lVRzeYbeMmEPM5l/F2nhWS/zm5ViTGRoOcagwjWRnm5TLFcoavlsqwnM4Uw3lhIs
 ZsPU8cHHzVGleWJmAq/kYimQXNlJReKezBq+CoMqaneXLPMLXq4VQRpVoO+N/dzC6FXT
 Qt+mv4FbudfnlQI2GtF5e9m4XBD2qhcqSCsD1aOJ/PaKHo3p+kuFlNhpZyzki1dOYpy8
 frbA==
X-Gm-Message-State: AOAM531Nqq5eopJuILDXvDv0hFXSmh+7Ku53j0BhDocN9cp59marC29q
 bgQKezFRvvr0KUeFae5b6xrbzu30NXI=
X-Google-Smtp-Source: ABdhPJzXbIomNhFkSZPsDocHiKap3lA3plyPy2CFIhy0FEuXIDdP4JvO30XCZ/ljVHLEF0QyEYJz/Q==
X-Received: by 2002:a17:906:c0d6:b0:6ca:457e:f1b7 with SMTP id
 bn22-20020a170906c0d600b006ca457ef1b7mr35045283ejb.399.1648566476904; 
 Tue, 29 Mar 2022 08:07:56 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 eq7-20020a056402298700b00419d8d46a8asm3261643edb.39.2022.03.29.08.07.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 08:07:56 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/6] arm64: dts: rockchip: add clocks property to cru nodes
 rk3399
Date: Tue, 29 Mar 2022 17:07:42 +0200
Message-Id: <20220329150742.22093-6-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220329150742.22093-1-jbx6244@gmail.com>
References: <20220329150742.22093-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_080759_250471_2F620FAF 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add clocks property to rk3399 cru nodes to fix warnings like:
'clocks' is a dependency of 'assigned-clocks'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V2:
  add clocks to pmucru node
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 01c08a2aa..56af1a1d6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1416,6 +1416,8 @@
 	pmucru: clock-controller@ff750000 {
 		compatible = "rockchip,rk3399-pmucru";
 		reg = <0x0 0xff750000 0x0 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&pmugrf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
@@ -1426,6 +1428,8 @@
 	cru: clock-controller@ff760000 {
 		compatible = "rockchip,rk3399-cru";
 		reg = <0x0 0xff760000 0x0 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
