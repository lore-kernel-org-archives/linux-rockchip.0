Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86CD3C61DD6
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2026 13:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VCpGSUmW4e7T2Xm12hotDEUNfO4gw/ZtpXFnfXu4CiM=; b=k50yIvpVv9gEX3
	aWw7/aEsmENY3+ZiSGS6aPK0Lx/GBCcDwp+zZqjNGnshFgenphnbDMhbu3M30wI6S9Y361bIgOIeh
	+b2nQjMJtycfoPkjxf8jSjhvAcGiMOPoP4tA/xGc8riYjxGoq0/+U0S55rQ229/h8YS/sbK6u1VtX
	G1SBnE9sfrvPlZ3f9ijGr6xu8cd91Uek1MlzMxKNbMi7h+94/5XGo1SWv8Y3D/1IkeImMX+FKqrIg
	ubM5HiXw2I1OB6uzrPiePRfnLpFJ20oJpUThBjbL2V2dQLe+7qdAjvc80ULBbNAfZ7RqyPBk01itV
	N1daofpeOFXbSbn+5lrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Tfh-000000026eg-08s2;
	Fri, 04 Sep 2026 13:09:33 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Tfd-000000026Zk-23nu
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Sep 2026 13:09:31 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4957799b92fso428435e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 04 Sep 2026 06:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788527368; x=1789132168; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kbG5tkNoyC999CbeFUHbHjzpSs9HHc0dLmddOFM6uZc=;
        b=ofPp/74QYDR0NkMvdGUwg+SRdZ/EdLxxDkuL+jBns558h7KxvPo5sf/U8KIB6sZduY
         Du4BJaQST347D+5tlxOm6dgzMO+Pe5boEfWbb3ILkStDyWAENcFavpxQ/+ik9liWJK5L
         jyg55K/Zo7CEoT9DbU/g4gwRnxXMgUYJHUg74TsdatI6DFJE7oRuNkWl3Fi4aCFN7weh
         hTCV3+IJjhjvrkMVM/LrFDsl7OKIgZU12BMhOKKrm6eQXAmL00QwrRI4QHw3sj1ULo89
         7bj7kOxEm8Mhsbpfd5u7DsOMHgPIWrfmMD5Hz+mtv/GjfqyTG2aSrdPQyRRGoYIuCNpz
         TsQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788527368; x=1789132168;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=kbG5tkNoyC999CbeFUHbHjzpSs9HHc0dLmddOFM6uZc=;
        b=ZgV91UMrenfmlu/EWy0pjw+6CXRbVkUnqZ59WbqIURDnlI4So5+N6I0pOFIMc41O71
         oKgShq+yOteAssuPlOHJFtvp+I2EByvgJlnGZVCQDfSp9/9l4NeNr+wRq95DCe2CGGr3
         MoCJCiHfquaPtO3pFySvEPyzec8z/9Bp2cgH3yU5JsTENM/98u2r4rPUInMHRYzE7bTk
         7tJNcRfgEYuMsRlJUbv2DNfkY/bo95K5xRIBbnCNytjGXgSCeFDDPjuab0EFUz2Vukkj
         sBMFjSAlrBMRGDMXvz6lliZtbXgDqGxydDenQZQmRl7t6CNIZ05P0uAE/+ADSMJZ0azf
         H3CA==
X-Forwarded-Encrypted: i=1; AKwUvBzC4Md2Cv8IwNSvvmW5aJ1yBsy+qbAHZT1i3CcguL8Z+pzJBJmPva8FIsCv5xRx67bCz2AtxHOEAvjFzPvobg==@lists.infradead.org
X-Gm-Message-State: AFuF++lJhfyf4JdlSYktKheJ3hOvzgITy35s7pwsZyTvl6VjTFKvwTou
	zs94yTzptZI6726iyH9I603iTc49y53THnyUhDqqTss1X2pFN2OXA7XB
X-Gm-Gg: AYBFou0Q3HJLzZCitnkLnMMRhAMLItKpPBcYZ2zXkivCHFEYDnAr+qxL0plY34Gv3jz
	8UUWn7R8r8fC5iKzJ/mWW3JWw9HhADKG/N61ggnquHvJVUv5CwhPh2vJ9hYLTASc7GcsHofz0Wp
	gPF+hxsOxSsV5Q84jYIYFfMjBN6GML/ThjgjHYXtyn34UlVTlxrk+L52lQyKrMQgIqdDx8qDg58
	osWHykFUoF2n3eu0KZ6Qs5IEKLpHdLiyBh3O1F5EEx7FB1S7Cv0lQXnOTIdrKVB1t8JL4UvbE62
	q91zSjJFLv0Lny5KhKSku//G9Epa0W7RnScJMRyyaTAOwnGexySoaU7f3isLRw9uw8QtEGIQTTG
	cMKLHSOWGTQfWRMRHS/DRSyqcg5ou5ul5l1w5JGZLNksSLPPX2glZ6CZeVcU3miRuueKfg1nkhy
	nlzXKdPNV8aHM3Yi5wqI4+TU+WckXyll64vA2aKeSY4zDtdALwLMlpNtpThpdzB7jHLq7+RFN6H
	GuhAVlJ9e6ZrB8QNppbGUFhe+6dZl7bOiprGDcCU5VJu/7oUpqL2lhCocyXz6SXEkRV
X-Received: by 2002:a05:600c:a00d:b0:499:d95a:41f with SMTP id 5b1f17b1804b1-49cf7f51dcbmr42170965e9.0.1788527367548;
        Fri, 04 Sep 2026 06:09:27 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B871500CB6EF488A18F9C42.dsl.pool.telekom.hu. [2001:4c4e:1b87:1500:cb6e:f488:a18f:9c42])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49ce554d52esm135575435e9.3.2026.09.04.06.09.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2026 06:09:27 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sidong Yang <sidong.yang@furiosa.ai>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Jonas Karlman <jonas@kwiboo.se>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH 3/7] arm64: dts: rockchip: rk3588: add an OPP table for the NPU
Date: Fri,  4 Sep 2026 15:08:54 +0200
Message-ID: <20260904130858.27803-4-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260904130858.27803-1-royalnet026@gmail.com>
References: <20260904130858.27803-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_060929_561315_E5065BD3 
X-CRM114-Status: GOOD (  17.57  )
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

The NPU compute clock is driven by the firmware, which only accepts one of
the rates in its own PVTPLL table: 300, 400, 500, 600, 700, 800, 900 and
1000 MHz through the PVTPLL, plus 200 MHz off GPLL. Anything else comes
back as SCMI_INVALID_PARAMETERS, so the table has to name those rates
exactly rather than describe a range.

200 MHz is included even though the vendor table stops at 300, because
mainline pins the cores there with assigned-clock-rates and that is the
rate the NPU boots and idles at. Leaving it out would put the boot state
outside the table and give a driver nowhere to return to. Its voltage is
the same 700 mV the vendor uses for 300 MHz, so it is conservative.

The voltages are the vendor's, and the upper half of the table matches the
GPU table in this file step for step: 700 MHz at 700 mV, 800 at 750, 900 at
800, 1000 at 850. There is no PVTM or binning here, for the same reason the
GPU table has none: mainline uses conservative worst-case voltages instead
of per-chip nvmem data.

The table is attached to rknn_core_0 alone. All three cores share one clock
and one supply and cannot be scaled independently, and the driver hangs its
devfreq device off the core that carries the table.

The full SoC range is described rather than a per-board subset, so that a
board which cannot cool the upper rates drops them in its own .dts with a
/delete-node/ on the OPP it does not want. A board may only delete OPPs
that way, never invent intermediate ones: a rate that is not in the
firmware's table is rejected outright.

There is deliberately no opp-suspend property. The driver has to resume
every core before it may touch the shared clock, so letting the devfreq
core drive a suspend OPP from inside a runtime-suspend callback would
deadlock against the driver's own governor worker. The driver records the
boot rate and restores it itself instead.

The consumer is the devfreq support added later in this series; until then
the table is inert and the NPU keeps the fixed rate that
assigned-clock-rates gives it today.

rk3588j.dtsi does not include this file; it carries its own derated tables
for the CPU clusters and the GPU, and it gets no NPU table here. That is
deliberate. The J part is rated lower than the rates in this table and none
of it can be measured on the hardware this was written on, so inventing a
derated NPU table would be guessing. Its NPU node stays disabled, so
nothing binds and the cooling map added later in this series is simply
never resolved.

The same rates and voltages were arrived at independently by Nicolas
Dufresne in a proof of concept that was never posted to the list; his
version differs in that it marks 200 MHz as opp-suspend, shares one table
across all three cores and drops the assigned-clock-rates pins.
Link: https://gitlab.collabora.com/nicolas/linux/-/commits/rock5b-npu-poc-4

Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
Assisted-by: LLM checkpatch dtbs_check
---
 arch/arm64/boot/dts/rockchip/rk3588-opp.dtsi | 45 ++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-opp.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-opp.dtsi
index b5d630d2c879f..3711727020ed1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-opp.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-opp.dtsi
@@ -151,6 +151,47 @@ opp-1000000000 {
 			opp-microvolt = <850000 850000 850000>;
 		};
 	};
+
+	npu_opp_table: opp-table-npu {
+		compatible = "operating-points-v2";
+
+		opp-200000000 {
+			opp-hz = /bits/ 64 <200000000>;
+			opp-microvolt = <700000 700000 850000>;
+		};
+		opp-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-microvolt = <700000 700000 850000>;
+		};
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <700000 700000 850000>;
+		};
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <700000 700000 850000>;
+		};
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <700000 700000 850000>;
+		};
+		opp-700000000 {
+			opp-hz = /bits/ 64 <700000000>;
+			opp-microvolt = <700000 700000 850000>;
+		};
+		opp-800000000 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-microvolt = <750000 750000 850000>;
+		};
+		opp-900000000 {
+			opp-hz = /bits/ 64 <900000000>;
+			opp-microvolt = <800000 800000 850000>;
+		};
+		opp-1000000000 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-microvolt = <850000 850000 850000>;
+		};
+	};
 };
 
 &cpu_b0 {
@@ -188,3 +229,7 @@ &cpu_l3 {
 &gpu {
 	operating-points-v2 = <&gpu_opp_table>;
 };
+
+&rknn_core_0 {
+	operating-points-v2 = <&npu_opp_table>;
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
