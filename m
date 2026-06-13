Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EAE7CD98D2
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Jun 2026 06:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6xLrTrxsQFzfGTWJELMvVW/ZVdwF233X7Wza/otetRI=; b=Ha7XcRruOnB5e2
	qAWT5XnjAtzYPUdGFVJbT2e4pyf8xZ8GI2HVmgb9IVI043G/xHXZM+sTJM9x8mQN7/PVwOMfi5xhV
	VWqL4rgEJjdmZ0P5Cv0svsn/e92U5vPCjhNUntmXtkgzyDOsMxODhBq2/y7FKpgGZ1MPWHm5ZvZRk
	VY2Ltlw73ZENeG2jvqpaRC0DfYlAE+hhi5im7PJDqMUJrim8zv7u3PZyYhtt7tc/VsQMQh9v9ualp
	yrGld1/IxFR+xcToko8CWW6wNem9i34WD90JoxGO5rG3f5CxGcVO842ve0ACZyyJoerSmMqzivW25
	JqYJM3qv5RYWT5UqU9Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYIKR-0000000C196-19sw;
	Sat, 13 Jun 2026 06:58:51 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYIKK-0000000C0zJ-0jRx
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Jun 2026 06:58:46 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4905529b933so16783885e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Jun 2026 23:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781333922; x=1781938722; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6JonI5tVCKFVj4EE3HntNYMlqngF+zGzezn1FD6cSzY=;
        b=opYyD/0anCgh1QGGULMp7p2sKvL52gpQhLtI/Jn+a0ETxUNpB0pt65dQnXakHvUpuC
         fU8up8oPry66OsFo40+ZFb2b+iEl3vdO16lUINiVdZ70xxzrdYYGSrXkdlJrOtZZHYRC
         pjyrvyEWIa8zkV87FsbFzkW5ri0Urap1Qfd8jbzzDIUCheIeiz0Yw//pkk5FLFdY2XlK
         qXt9rzJSwgG8xypE3efZ8T3LkY+Cr/+BqMLrLpJ/B7FESPQC/HCl97/c7MNA6/OYyjHY
         lAvO3HYQwL+zDXjCQJkATBGgdGmkV1BNHtbkSiWmHAkSEU/V3Wv3ZzgK7asWB/qYRW3+
         OLPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781333922; x=1781938722;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6JonI5tVCKFVj4EE3HntNYMlqngF+zGzezn1FD6cSzY=;
        b=XVJhQ/++rZtNQ5fOWJno6zYe46mWXLUFUYvlZBTHZkxLAjSjlfrSCFt0b6Tj01NQAu
         dxyplUFZJoSo9sssgHR+gSD/4AEZiojtiI9p5MseCmMbIzBv7KoiVyl8ohz/mpgNj24o
         1n0Vehnu0S6yoFFxKHGhyiQkD/ROBs9mVvx0thnboAcBRxBypvjNTwVmrqaR7aJtfg9y
         +AdQmxkLkuYBQ3rN0m45TOIrU5X2+kG5t/yO1sqnhQZR405w8ZOrrQ9HlgpObMieq1vw
         ZpXU7G4SYFSg8lB+yVd011o1za9aRoheoSz5hIUhzZKrAWYPSQAZueM2IGneEl7q/QYR
         /qvg==
X-Forwarded-Encrypted: i=1; AFNElJ8O9Le9dJrwDbuP0gavLEeEZ8GfLkxNZCEOmVg748GbpWkOvEAPZEpQ5my3oStAWvUFdm7a3CQ5YtAXkktZnA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxZxe9X2JLjKBCYYD/8fcFYY7tAbkwpJx3bzyKxoJNUYaw/W107
	L/8auxf8DOQCsaFnbA2lODn0R2MOHWfUN+jDQbNJgHTlVPFnXSNA3cwh
X-Gm-Gg: Acq92OFlR9IsCr8sF3GoC1eLd3K1hArWeKCTQThnaZCvQvBF6WINLEXYtaDUx+Pvctf
	62HS6eRamFcjjVlyeSb3qtZiM63jwl+gBsAvbNbLuJkB9r28I6QkO4G3WVMsaF6AB6n8GGBy6WR
	BTBn/QxmFmp5X7wTd9p7QE88bFnJ11VWcYDBtqoUar0Tz3Scba42V3H1UCQMlGtJKfmxv2+T+FF
	LdAjg11aC4KPV26HhFdsGjvVjXhlyRnBZ+8041gHpeCWHtxDR61hGmtwHnWne2EPpQXF+I8+50g
	YFUFghCzPkyFB4plgd8tsATgWvJ35rVvjHdAhnt1brvPNvG8HGCg0A3tLY+Z0rZCEAE8X9fw1hr
	su02QckikJPU4nOq2LuZTM3ShyaSa3ANW/0kompL7GmZqtZMZVFBbYFAFqOGgq8gPmZCMIOwSwl
	CWFv7BJgm42w0u0JzQSCWOIw0uCGD89UCYVhcDrnzVrA==
X-Received: by 2002:a05:600c:83c8:b0:492:1e36:d16e with SMTP id 5b1f17b1804b1-4921e36d1a9mr40797495e9.36.1781333922475;
        Fri, 12 Jun 2026 23:58:42 -0700 (PDT)
Received: from debian.tailb81abf.ts.net ([2a01:e0a:104a:4d80:14c0:9448:1c38:77df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-492202e5cbasm42917705e9.2.2026.06.12.23.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 23:58:42 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: tomeu@tomeuvizoso.net,
	ogabbay@kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ulf.hansson@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pm@vger.kernel.org,
	iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	xxm@rock-chips.com,
	chaoyi.chen@rock-chips.com,
	finley.xiao@rock-chips.com,
	diederik@cknow-tech.com,
	jonas@kwiboo.se,
	Midgy BALON <midgy971@gmail.com>
Subject: [RFC PATCH v4 8/9] arm64: dts: rockchip: rk3568-rock-3b: Enable the NPU
Date: Sat, 13 Jun 2026 09:01:15 +0200
Message-Id: <20260613070116.438906-9-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260613070116.438906-1-midgy971@gmail.com>
References: <20260613070116.438906-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_235844_230568_2F5589AC 
X-CRM114-Status: GOOD (  10.89  )
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

From: Midgy BALON <midgy971@gmail.com>

Enable the NPU and its IOMMU on ROCK 3B and wire vdd_npu as the NPU
power domain's domain-supply, so genpd brings the rail up and down with
the domain (the domain is marked need_regulator). The PVTPLL compute
clock is brought up later by the driver.

The rail is no longer kept always-on, so pin it to 1000 mV (the NPU's
1 GHz operating voltage; the driver runs a fixed compute rate with no
devfreq voltage scaling) and mark it boot-on, so it is up before the
power domain de-idles the NPU NoC at power-on.

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 .../arm64/boot/dts/rockchip/rk3568-rock-3b.dts | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
index 69001e453732e..d3f9776c2bdc3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
@@ -330,9 +330,10 @@ regulator-state-mem {
 
 			vdd_npu: DCDC_REG4 {
 				regulator-name = "vdd_npu";
+				regulator-boot-on;
 				regulator-initial-mode = <0x2>;
-				regulator-min-microvolt = <500000>;
-				regulator-max-microvolt = <1350000>;
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <1000000>;
 				regulator-ramp-delay = <6001>;
 
 				regulator-state-mem {
@@ -787,3 +788,16 @@ vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 		remote-endpoint = <&hdmi_in_vp0>;
 	};
 };
+
+&pd_npu {
+	domain-supply = <&vdd_npu>;
+};
+
+&rknn_core_0 {
+	npu-supply = <&vdd_npu>;
+	status = "okay";
+};
+
+&rknn_mmu_0 {
+	status = "okay";
+};
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
