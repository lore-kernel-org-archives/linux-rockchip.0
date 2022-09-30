Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27C04C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 05:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFs+VOca0bKOBE2Edj3Cp1wV5zWgbtnJCO6BlgcCcfI=; b=0e0KU29uDc8MD3
	LwHQzbfrXc0CP52BnHmTeYOHDfWb6LfUhjlDvE/AG7hGZHXM/LMSNoo1l7PDhe3KqOHf3DVXSHU7h
	ZqYKeEqtdnI8BmcIJlFuA/RfRHD2+2idPPg6aCJi/3xyI04tfYC3PYNXvCFMAGr7Tw3n57KcvXoC8
	MVnZIjpXw1GMLaUjxirFHp/tbFTldrHjOUYduPl+5DWhpjjR+Eh5E+MNrGXZpJk4P6ugEdTCuimja
	EI0GZKWLcCf4vCwq8u2OV7P1bXdWOo2W/uaDDZxV0IVGnQ+aodIUcfeGJcil91ycQjNDomLuA/iUS
	42bxuR0N82iG/StHShwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe8Pb-007G1R-VJ; Fri, 30 Sep 2022 05:18:12 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe8Ki-007CxT-Dk; Fri, 30 Sep 2022 05:13:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=1SQ7lNpSiCQMCl0mv1Tz12guO+YBNRrBVs+sLNxQgeY=; b=VzHRPby4+VJ/9bxGJKzTGeMo74
	usqo6VSSv+D9Vy5IwNK0g4nt0Yhsv2mSqaFDW9arfPdQ5RWtnx3ZMrLaLM/GEoFEjMcpxu1Kt3jU2
	rJoljoeMqvsITqDHjdttU+7dFBoNPknCyQ36u5/9dA7JXgkILt6wabFwRKNw7y68Q+qe8RpwhYLD0
	QmgRS2ZdlxNbY3r9ewNl8ada+rnzJ+2lCOx285oMGmtQby0Vbf7BAU7Iviljhd8CICFBc+1EVbFNJ
	OLwn/MNq4f584Kj8CzkdSDkVD68JXpXnAgEEF5xM6l/ktCMfQX5NIs0Yf3CiusZu2X84Zh+TxNEmQ
	s9JqVyGQ==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1oe8Kg-00Djfm-0h; Fri, 30 Sep 2022 07:13:06 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1oe8Kf-001dw5-0y;
	Fri, 30 Sep 2022 07:13:05 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Dongjin Kim <tobetter@gmail.com>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Dan Johansen <strit@manjaro.org>
Subject: [PATCH v3 11/13] arm64: dts: rockchip: Add SATA support to ODROID-M1
Date: Fri, 30 Sep 2022 07:12:44 +0200
Message-Id: <20220930051246.391614-12-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930051246.391614-1-aurelien@aurel32.net>
References: <20220930051246.391614-1-aurelien@aurel32.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_221313_504266_F0D47593 
X-CRM114-Status: UNSURE (   9.77  )
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

Enable the Combo PHY and SATA nodes in ODROID-M1.

Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
Tested-by: Dan Johansen <strit@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
index 9a84a7e76d7a..bd24ccf94e76 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
@@ -153,6 +153,11 @@ &combphy1 {
 	status = "okay";
 };
 
+&combphy2 {
+	/* used for SATA */
+	status = "okay";
+};
+
 &cpu0 {
 	cpu-supply = <&vdd_cpu>;
 };
@@ -538,6 +543,10 @@ &saradc {
 	status = "okay";
 };
 
+&sata2 {
+	status = "okay";
+};
+
 &sdhci {
 	bus-width = <8>;
 	max-frequency = <200000000>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
