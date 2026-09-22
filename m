Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 866B5C982FA
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 08:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NLUxiW+H8b9hK3AYqwNLHllQy7lTv7lprFFwQTjxFAQ=; b=s9WDhLdYyEQP/O
	ms87PEhYAYy9mZBspqBzdPNcuYQJK974nHntfTZeTRk2skxWg2/A6rbqVJll0l/hc4J62MnmkW4Xl
	fut5CJhB9CWKnhT6eMvUNwXA6fTD9Xk1L69YWcYaF01ca1w9W7czoXId4AVfWE17O3fV1vBbyqjgz
	arzJ4sNLDYXWVMlhdFpOHn8j+iv9bm7WnC13+ne/strOc7M0GzsJ6+7hnItSa1nIo91vIWR0KbL0b
	s9ZDgz9m3RmyHI9sbOptUF3qFzYacM/Lm7BdA4BBvE5ICU/w97TuCUtIMIOXE9CxpHxK3uEPspsvV
	KHQmboVGZfl5sfCMrIBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vSG-00000004am7-0m5T;
	Tue, 22 Sep 2026 08:02:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vRe-00000004aKa-1SC1
	for linux-rockchip@bombadil.infradead.org;
	Tue, 22 Sep 2026 08:01:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=C/lMPPdyVDY8UDcv/G9hmnqUs4LxNskElZuOnfztMlQ=; b=Be2jh/OCW3KcVt2I3AgaZ13pda
	rYB18T52NKm34vyZsGqy94Pjc2f2seuj+wDHkLC8SHRMfwaQDnEBe2xujMJLWwIS3WQYE/ngsZrbW
	v8Lo6A/JnCDMX4VrQjd71Oy76hhsjvKZ8qVVDiddSx7OyfVLcgmCz9mLSnoW3jxclQYp+ssKv7tD9
	cVQaj0jPnH4cz9R1+qdZCrC7rzTWqGhlssUk7zkZ8JwXzPN/e0izR5/beiJLs39UUszUZpqno4wx8
	Op0Iypv7ZH6He2GsTIOGjLcV1t7TXPwoXEZ8L+1tpSS0GzNcwtG53miMk8VzAqaB/X5tiy222JAba
	SzsJscVA==;
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8vRZ-0000000DEgZ-2sB8
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 08:01:41 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49e82ea30faso2295015e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2026 01:01:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790064096; x=1790668896; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=C/lMPPdyVDY8UDcv/G9hmnqUs4LxNskElZuOnfztMlQ=;
        b=mtFzkWUa2xoyqBBx7C25RHtzkHwpXrnwq3WS+EUcXWsRjCRlKkErSSt1cwyZ1vSA8a
         Mo3SG6Y3og/1W6ubJkn5aj1Rrf+twfZcO9ZyUM6JD/ZMRIbL3s3gqk9WxjN1Mhec/CZq
         ftG8KZ4MPcqadINjZf0w86JuZsqI1aUFCNHZkGNj8rdySrY/Ppx1NIokPFDyYwbYx66f
         69QQhYqfGuh8yImJoM1vL5DX9I1S1v7luIJqzKInQj9n5UVcO/9O0li8jHZ3Hqs6E+AP
         ypOYWUgVxY9Y1HFXjfiaQKgGginsq05hlu81dWSd8sweYNnQLmsHxaceKjMoQzH+9q/W
         U4AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790064096; x=1790668896;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=C/lMPPdyVDY8UDcv/G9hmnqUs4LxNskElZuOnfztMlQ=;
        b=QOZSitKT7FjodG0G1a1MuzViYEvMRVNhlKPaDmi78A9E/htfF6Ds6hG5JMMb93dmx+
         ms3OVZPaoDZmFEcsiBUsu2qQGSR2h5g3ijXXM8JnmMegZsWSAIZA4t9VDTqNFAI2AVdq
         NkUsTjpNz2UTIW9ttapHGF7yHLpmxFbtmZaL9QKrv6an1HGRdp6/kldAuERnqaHM/RtV
         rPdoV90KPcgdQkzSizLS7xuG+RaaXSCwPgkoOSJur1cHKi4qBTAcu3CoJNaF2NLdTlDy
         nqn6+02CqCMrSSFEUpMjWIQ0ICmSApQ6o+SEntXoo3lJfqNgHSp0PN0LqMAuE8VMy7rg
         Rdqw==
X-Forwarded-Encrypted: i=1; AKwUvBw1G9I6DxZRmEWI4mAFZqxfoIZ4VC9c9aHGd9lp+R8u7pGrV/BtZfboTZuKz3gG1CcC0c3T8QacNW1Gvh9eww==@lists.infradead.org
X-Gm-Message-State: AFuF++lSsK8lmmWH2zRGReFADcrwtfz3ybQr2bH40N4cMVECPYdEsV24
	HkCiKkhmdPgWhV0DB2RPprZ29dsGP5CKBPnDeY6+4JMDKoleAXgJJEUJ
X-Gm-Gg: AYBFou0Z4cIg6jJAKdsBN1U6TkpGdEcjX0J0tAii5w/felkIS/Eu2A8U6nIOmjerFMT
	RWEriGLJt1CXkk4MQNQelSRYivQM6fX7VYvYMjei2jXE1WSFHC9zZckQFpNA/qkET+IDLoILwFs
	JdIOJzYLFE8Z3/1eChAp3NBefI6+P3YIVC5/3ljGFYuOOHXfnsDTdt26NUHzdukA9BoXuGv3tf1
	JKpR2VaAKrb73S8wbwPuL/FzvJLKLLk4Hws4MadySKNYpzzcttEnklAlYU/iI9VcEvRClrlP6Wz
	0FEq8MFcbFGyt4WYQgqiPq2G4V8KJZ0kpTpdsMdm0hmMtB4r2352I+cfc6e7ch/8X3BT+S8FTCB
	d3H94rUUyLsuT7/vFYHbClKo2UPg/NcKhWoiGJCT4gr+pPYoEHFYxl5pAwqnz9oomBV8OAM1gFq
	7kA6BMhwcv6Kxx2Rs+gDPtZrszT5pnjUP6eRl+vTJR6S9wGKwZA07vGfdnvz47JlYM3wOTGxIe7
	vT+nmcHKj+pqP5WrjMRGEfnrXIIAx8TXSll5ZFLwGz19BLmweNq5jVfrV8KKeuqQ/mggqPkM++F
	FIS8AHIIt38BJA==
X-Received: by 2002:a05:600c:354e:b0:49e:479b:c13b with SMTP id 5b1f17b1804b1-49fc7dff668mr165633455e9.1.1790064095154;
        Tue, 22 Sep 2026 01:01:35 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B80530056971C6280202175.dsl.pool.telekom.hu. [2001:4c4e:1b80:5300:5697:1c62:8020:2175])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fdaaf97e2sm18248625e9.2.2026.09.22.01.01.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 01:01:34 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
	Robert Foss <rfoss@kernel.org>,
	Sidong Yang <sidong.yang@furiosa.ai>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Jonas Karlman <jonas@kwiboo.se>,
	Guangshuo Li <lgs201920130244@gmail.com>,
	=?UTF-8?q?H=C3=BCseyin=20BIYIK?= <boogiepop@gmx.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH v2 07/11] arm64: dts: rockchip: rk3588: add an OPP table for the NPU
Date: Tue, 22 Sep 2026 10:01:10 +0200
Message-ID: <20260922080114.44662-8-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260922080114.44662-1-royalnet026@gmail.com>
References: <20260922080114.44662-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_090137_853757_6CE0FC4B 
X-CRM114-Status: GOOD (  22.37  )
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
back as SCMI_INVALID_PARAMETERS, and that refusal never reaches the caller:
the clock framework does not look at what the clock's set_rate returns, so
clk_set_rate() reports success and the clock stays where it was. The table
therefore has to name those rates exactly rather than describe a range.

200 MHz is included even though the vendor table stops at 300, because
mainline pins the cores there with assigned-clock-rates, the firmware's
table names 200 MHz exactly, on its GPLL path, and that is the rate the
NPU boots and idles at. Its voltage is the same 700 mV the vendor uses for
300 MHz, so it is conservative.

The voltages are the vendor's, and the upper half of the table matches the
GPU table in this file step for step: 700 MHz at 700 mV, 800 at 750, 900 at
800, 1000 at 850. There is no PVTM or binning here, for the same reason the
GPU table has none: mainline uses conservative worst-case voltages instead
of per-chip nvmem data.

The table is marked opp-shared and referenced from all three cores. They
have one clock and one supply between them and cannot be scaled
independently, and that is what opp-shared describes: one table for one
clock, the way a CPU cluster shares its table.

The full SoC range is described rather than a per-board subset, so that a
board which cannot cool the upper rates drops them in its own .dts with a
/delete-node/ on the OPP it does not want. A board may only delete OPPs
that way, never invent intermediate ones: a rate that is not in the
firmware's table is refused by the firmware, but the kernel never learns
of it, so an invented OPP would be refused while the kernel went on
reporting it as set.

rk3588j.dtsi does not include this file; it carries its own derated tables
for the CPU clusters and the GPU, and it gets no NPU table here. That is
deliberate. The J part is rated lower than the rates in this table and none
of it can be measured on the hardware this was written on, so inventing a
derated NPU table would be guessing. Its NPU node stays disabled, so
nothing binds and the cooling map added later in this series is simply
never resolved.

The same rates and voltages were arrived at independently by Nicolas
Dufresne in a proof of concept that was never posted to the list; his
version differs in that it marks 200 MHz as opp-suspend and drops the
assigned-clock-rates pins.
Link: https://gitlab.collabora.com/nicolas/linux/-/commits/rock5b-npu-poc-4

Assisted-by: LLM checkpatch dtbs_check
Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
v2:
- opp-shared, and the table referenced from all three cores (Nicolas).
- The opp-suspend paragraph is gone. In the v1 thread I said v2 would
  argue that the driver already puts the device back at its boot rate;
  that is again driver behaviour used as a devicetree argument, which is
  what Nicolas objected to, so I am not making it. Whether opp-suspend
  at 200 MHz describes the hardware is a question for the DT
  maintainers, in the cover letter.
- "give a driver nowhere to return to" is gone for the same reason.
- The paragraph on the table being inert until the driver patch is
  gone (Nicolas).
- New: the firmware's refusal of a rate is not reported back through the
  clock framework. Found by reading clk_change_rate() in drivers/clk/clk.c
  after a test that requested a rate outside the table.

 arch/arm64/boot/dts/rockchip/rk3588-opp.dtsi | 54 ++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-opp.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-opp.dtsi
index b5d630d2c879f..59ecaef5101da 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-opp.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-opp.dtsi
@@ -151,6 +151,48 @@ opp-1000000000 {
 			opp-microvolt = <850000 850000 850000>;
 		};
 	};
+
+	npu_opp_table: opp-table-npu {
+		compatible = "operating-points-v2";
+		opp-shared;
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
@@ -188,3 +230,15 @@ &cpu_l3 {
 &gpu {
 	operating-points-v2 = <&gpu_opp_table>;
 };
+
+&rknn_core_0 {
+	operating-points-v2 = <&npu_opp_table>;
+};
+
+&rknn_core_1 {
+	operating-points-v2 = <&npu_opp_table>;
+};
+
+&rknn_core_2 {
+	operating-points-v2 = <&npu_opp_table>;
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
