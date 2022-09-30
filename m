Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BACBC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 05:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zunz0AZe7d9Yu+DwX3H5D/e1j8Gxz1mwbCREyCbqoKo=; b=4Hjbm71/Qlxzxg
	TF07l8eHbf5zmBqySlxX65VaENK8RUSIVuhiMhgjBdWODwMeYgT3BRl0zYyGbSS2dhjTcKcUvzjqw
	zCNebe106T0aosMen2Oq/SanHMhRs8XT2x74pWngFdEgNR1nt/LhDh8WT85uczbOr4X3OF8Xt4IbW
	KSuNA9Phhro16HztuQZbp6pflNmOY9+KD08FHg+aKMJVHYiL/zXBwwAkg+HtO0lww2tnDXg3qPstq
	/ggH9i/HlEn0i0wIcgbu/Gu4gzBZ7aMv4bPUTfRtD7uyRyKvZJXcMK7QqBImEEmcj3fuMo0oI9yQ+
	gTJ6h8moDZx4A88x7ihQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe8MR-007DvC-70; Fri, 30 Sep 2022 05:14:55 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe8Kh-007Cwu-KV; Fri, 30 Sep 2022 05:13:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=S4FEwBPB2+l4wtUARm69ln8tbYXZNKhC+JMM7XZbTQk=; b=d2nEMeHR+m+iEM0IOKeOg6cDnp
	jt8iz2LhFxUMUcJ7KIhu9RMpLJynj3ujNBaqeoRmpmpQi3hY748KbsSZjVjPY9oLoR4oojNkXdJzl
	W3Jz3QSPirHmsAlHDbLGLbtZCp0Db+rW/xkuU3lMW1HgexiQPdv324eABoBc5zMscKIbra/poVEer
	625ldndrgj9cY715NxHTG/SWlUH2/J8qHsENOs3142GlxluhKIi+nAXqIrR8SQixUecFVS/XtM/Qg
	9MOj3CKlOv8wto6IZ2SFQgYOcJ5pNLyB88zmYC3gPlas+5NOogUBMsQminHNZxWKyUrgfDqolUX1I
	ofl5Qf0Q==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1oe8Kc-00DjeO-VY; Fri, 30 Sep 2022 07:13:02 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1oe8Kc-001dub-1T;
	Fri, 30 Sep 2022 07:13:02 +0200
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
Subject: [PATCH v3 03/13] arm64: dts: rockchip: add thermal support to ODROID-M1
Date: Fri, 30 Sep 2022 07:12:36 +0200
Message-Id: <20220930051246.391614-4-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930051246.391614-1-aurelien@aurel32.net>
References: <20220930051246.391614-1-aurelien@aurel32.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_221308_906990_686D2656 
X-CRM114-Status: UNSURE (   9.62  )
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

Add the thermal nodes for the ODROID-M1.

Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
Tested-by: Dan Johansen <strit@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
index b3016437640b..112c65af3f55 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
@@ -409,6 +409,12 @@ &sdmmc0 {
 	status = "okay";
 };
 
+&tsadc {
+	rockchip,hw-tshut-mode = <1>;
+	rockchip,hw-tshut-polarity = <0>;
+	status = "okay";
+};
+
 &uart2 {
 	status = "okay";
 };
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
