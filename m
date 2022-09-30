Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7294BC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 05:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0tFyJ39LW27E9EZ0g07yy3dv4wUPHjbcNgu4l2g2FL8=; b=JaRmFKeflbbnfG
	+SAt3CS6ZUq6bymhQPstG/CViua8XIeK5KiqLeVspQjTpxjDcnqsjyB0Hln/RI7JMGPH81UN9P/my
	Thu0VuV8sQKZMIvECxUyF4p9Q4ZNsj4ppb6QcDI467SYmk2QYNw5kjrX+vXCRYHeJ5OpHTupTTHet
	Si5sQc5/JeedE2eIIchWTRk88kmU6yiLRXFPvAUDwC0ST/gnRXMsaBR8K/vQcdXQ/BC+mP4LSzS3R
	CcXDJC3sN0F4RY/jzLhtlZX8m0Bw/NdmQsFb6+wj764L0RvJCP/rZRLJgUbYQdPfU/Nq/6HKZ5+6e
	HcC3oQtH79YaZrxP/hgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe8L4-007D8y-Gp; Fri, 30 Sep 2022 05:13:30 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe8Kh-007CxB-Kc; Fri, 30 Sep 2022 05:13:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=ZB+wIhFYn9b6/VRhzZ02j0AeAFBVE/fffN0ePcGyD8A=; b=Vq4+kP7Hzc0C8jkycwxk0T9iyy
	CqAUTr+XUD1KvusdMUuiZgIXb1R5hTjN23z8KgNrTl9/nDiVeau9Ah4IhpILxAbZU0odj9TPBSk8G
	9Ng/fk9kIplcYwqbPqMxLKDd9HmKPkLHIw/pRneunPS04p61odF3frCcLPi3lhlsY3k1OOOHGTRW8
	oy0UfSZsOQ1rmGYg0vnNzg1Y0RU6X1XEVMvzPdsiMuErR1Cwm+IhALhbf5MzPvCy6L3QU0gbRvY/T
	rIEa2rpBeoumwvxbhEjqv2a3cmSSWIyE0zjnihCPxe5l73RO6HGO8EpVjvi4hhEBef/tU2p7CAUCN
	whTtPa4g==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1oe8Ke-00Djf7-F0; Fri, 30 Sep 2022 07:13:04 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1oe8Kd-001dvJ-2d;
	Fri, 30 Sep 2022 07:13:03 +0200
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
Subject: [PATCH v3 07/13] arm64: dts: rockchip: Enable HDMI audio on ODROID-M1.
Date: Fri, 30 Sep 2022 07:12:40 +0200
Message-Id: <20220930051246.391614-8-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930051246.391614-1-aurelien@aurel32.net>
References: <20220930051246.391614-1-aurelien@aurel32.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_221308_875008_09161A79 
X-CRM114-Status: UNSURE (   9.98  )
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

This enables the i2s0 controller and the hdmi-sound node on the
ODROID-M1.

Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
Tested-by: Dan Johansen <strit@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
index 126b893048fe..ac4e94d18feb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
@@ -161,6 +161,10 @@ hdmi_out_con: endpoint {
 	};
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 
@@ -400,6 +404,10 @@ regulator-state-mem {
 	};
 };
 
+&i2s0_8ch {
+	status = "okay";
+};
+
 &i2s1_8ch {
 	rockchip,trcm-sync-tx-only;
 	status = "okay";
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
