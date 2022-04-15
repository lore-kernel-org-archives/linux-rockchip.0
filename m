Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 667A3C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Apr 2022 10:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HxwQQC+MAi9vZvmlma+2dAxbaRuRjp3VTr+UFqgo+n0=; b=YcBZezfWArW9xx
	hpXLh4OK4Llde1v3gjyGYqGwjrUACd6fF1CHpjGqa6XT6qeauld/sYcq8QZWGG6OUCCMTmPG5oKxE
	jKw7MDbuChwzlvcHnAcVSgVatuchho/b5hmgZi+gc8JnWRlsIxdOfCAVUDoQKaQZgyZ4+KpEoJgSO
	uUncCPQIRJDoV/9L6j8TAYVX808/MpnNburfrlokIzAQfO4tHLt0DjBCeatD1cnFpM+uagWF144NE
	IsPOt9nMlk4pifaB9qJR88GCDbKLh7fjuBakuL7u2VEbWgMOHIe9Me7pVyQulQcGRf9hFGpIAgT3u
	kfoVMAuXDNkUg1DhW1Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfJX8-009hnB-U7; Fri, 15 Apr 2022 10:50:34 +0000
Received: from mxout1.routing.net ([2a03:2900:1:a::a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfJWq-009hft-Ma; Fri, 15 Apr 2022 10:50:18 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
 by mxout1.routing.net (Postfix) with ESMTP id B9D784045A;
 Fri, 15 Apr 2022 10:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1650019813;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dpMeInSeGLr2M/cKBKR/bsw167szY9U7Y8rOwB1eC+g=;
 b=xa/MHuLErIJSvr4HFZHA/fAkCJJWJgp6TXLjDbjeURjYppmeqpdwbHUh2DHfpFoRf10f+2
 uLb4teRhqiW964RAYNk62LPq2A+Wc5UvQoIi7XRO9Eb/KRMwJEvCxnhmtbCQF7Oh/BkDRA
 KdF62T+2WjOks+3ONv4oLdtrC7iVAaM=
Received: from localhost.localdomain (fttx-pool-217.61.153.244.bambit.de
 [217.61.153.244])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 68344100501;
 Fri, 15 Apr 2022 10:50:12 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: rockchip: enable the gpu on BPI-R2-Pro
Date: Fri, 15 Apr 2022 12:49:51 +0200
Message-Id: <20220415104951.27104-4-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220415104951.27104-1-linux@fw-web.de>
References: <20220415104951.27104-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: ef0374fb-5767-4ac8-ba53-f4bf2682b8aa
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220415_035016_930313_C6368C62 
X-CRM114-Status: UNSURE (   9.34  )
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

From: Frank Wunderlich <frank-w@public-files.de>

Enable the GPU core on the Rockchip RK3568 BananaPi R2 Pro

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index cc3591251bab..10f68d054f76 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -196,6 +196,11 @@ &gmac1m1_rgmii_clk
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
 &hdmi {
 	avdd-0v9-supply = <&vdda0v9_image>;
 	avdd-1v8-supply = <&vcca1v8_image>;
@@ -566,6 +571,8 @@ &spi3 {
 };
 
 &tsadc {
+	rockchip,hw-tshut-mode = <1>;
+	rockchip,hw-tshut-polarity = <0>;
 	status = "okay";
 };
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
