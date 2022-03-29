Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C982DC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 18:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jOTe3YvoC9u/3SiPA5EFpM3QcDF5B2JXbXg3D+uLbp4=; b=z6TRhbElgxr+RJ
	mUiXoz2DMbINbGo7FVD8Qk7O49uEROSpHsiF/vgXWzkk6I1PUwDfAZ/xISmgx5NdW6xXoQ3RJOjTi
	bx4YR14ayKNAykdR/0vksN9jhDF/HCsIjg/YBEWRDEkNfOnOky18YbVDCC0Ad/d1mVy040O5pCOLj
	3K19GUfkEWlPGs97tMWRXin1R13otSwEUHMTM21cbQxjU8uzXOOo6tItcM6wFA6z0EqiGaW2xese7
	H+iP4AAi/u4C8Fp6R3sHVYT6lMJGvdULpX6xBEE5wYGgxIWHarvthoUHkQp854MPqjg/VzrZ04G5h
	PU7/i9lVV+k8zSdDWP/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZGEX-00DAu8-53; Tue, 29 Mar 2022 18:06:21 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZGEB-00DAkw-3s; Tue, 29 Mar 2022 18:06:00 +0000
Received: by mail-ed1-x52c.google.com with SMTP id b24so21597646edu.10;
 Tue, 29 Mar 2022 11:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GGrpFH5phWb+a/AcSK50FO4nyjVG2fRoM+DCfzaYwlA=;
 b=F1xbWJaHXTIAhapaNMV6NPLmO7MCVyQwAalWZh0xnJcZHt4W+oPxaGfC3mgHZvD2ga
 3vKPwOyjCTRCZQtCb9LT7cxUUXXHxex+n+38icpk19Gjz20gQXicGsHsEt0JMdLzdZso
 54k8cRC2FNN0lM87RTnlvl23w+lqZ06NYhg0b7aqHXN+6tZr766kq32Vb+6XaTMoAlRl
 Z1b/CZy+IXmAv/DgGwO3GLIhRCLJ3rjeR+ZPffK1sugB93HubGFq4uXrT2NFmHG5Cp5Y
 9bz74YiOjRG51t6ewy1tQ2ChWnJesl7OTKwof0KgtqHLkKA4MdEaA3S/RfRb9qR5wLLK
 zAyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GGrpFH5phWb+a/AcSK50FO4nyjVG2fRoM+DCfzaYwlA=;
 b=B+yOx3wvvpBLBILJqKaCBRcsUZWLfs2g4DI9AAAqOePD0nh775xPJ1xEIRn9a03hMP
 D0Bm/be7GVITJ/rykJDGF3fOkJBxvC6ElFyNzabYfQiS41Ci1sgSM4OzSZ2f4Ay1SxrP
 qgYQP/epaav1xyoNjlrr7hMX5xgLny/6L1yP/y1a3L3nMqlqNLzHWHEQJRtLUFiS1mWG
 qzx8HWIAMe/tK2irMW5DW59rpOntTaVitXPAykC5z9p5GxEpMUvhESvtFBZLSVD4JBV8
 mQzEfZEZLfeMncs4RO/tX/yQ8UMrTx5kvWbJbt/MEUpj3rGp/AqZfCPi40rIX9H9RHYq
 WEKQ==
X-Gm-Message-State: AOAM531aZzX3PTfBRHotWkTkNW8ZY7ImrB42/ZcUvSpDgqHfu7yZTPaF
 N5NTEfoCSoRGlhi5y4b9Hds=
X-Google-Smtp-Source: ABdhPJw3kPT+km8qTjd04hgMG3/SJUcXDRsW6sh05uEGi7WFXacU6sNBumsFy1mCmMB8DL0PQIsx2g==
X-Received: by 2002:a05:6402:14b:b0:418:d06e:5d38 with SMTP id
 s11-20020a056402014b00b00418d06e5d38mr6148877edu.90.1648577157850; 
 Tue, 29 Mar 2022 11:05:57 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 j21-20020a170906255500b006e08c4862ccsm6443616ejb.96.2022.03.29.11.05.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 11:05:57 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] arm64: rockchip: add clocks property to cru node rk3368
Date: Tue, 29 Mar 2022 20:05:50 +0200
Message-Id: <20220329180550.31043-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220329180550.31043-1-jbx6244@gmail.com>
References: <20220329180550.31043-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_110559_177301_9979499F 
X-CRM114-Status: GOOD (  10.66  )
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

Add clocks and clock-names because the device has to have
at least one input clock.
Also in case someone wants to add properties that start with
assign-xxx to fix warnings like:
'clocks' is a dependency of 'assigned-clocks'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index c99da9032..4f0b5feaa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -747,6 +747,8 @@
 	cru: clock-controller@ff760000 {
 		compatible = "rockchip,rk3368-cru";
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
