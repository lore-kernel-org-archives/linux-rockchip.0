Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 510B8C982FA
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 08:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ipAcKUUIRIpMoUB8GGWYokQbAqIo+fZD6466ZWfeZZ0=; b=MwAh5qNyM6Xzzw
	Xf4bUApZSjv/3Fe7jEWhk6DQfGF2uSBkPp2vWobcUNOCEqYe/Fshqib41T93ulJX9QosLw2OTM2Bo
	eAFu5mUoMbJi02iPvw1LkxfJbiKdbyla5KbYusXlqXPuBnvzIQX7flHrFmPLAjZSmXVNmkDLHEP+/
	eqfQFzcC0h+wetWTsu/K1Dnw3bopmrNLOC1h3CZV5ZeT/nsEFlBgA4ytesujLbo9XoYSgr4OU9bPd
	RU9+r/M+DVmoAwZMKnTyVBNaQe7ZNLhFigesOI4E0chLu7LdzpBy6SgZDu7A0rtdWRT7nTymHwnkT
	ROFpFHKAXiXU+72KLR4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vSZ-00000004b76-4AfK;
	Tue, 22 Sep 2026 08:02:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vRi-00000004aPB-3waR
	for linux-rockchip@bombadil.infradead.org;
	Tue, 22 Sep 2026 08:01:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=k8SSEreitnBFuEXQj3F3dce2S1yQFmhptrw7zyYrACU=; b=cZPApCYvKyQbhhvW+j3EznfcTz
	KJpFv7JMnvWqR5dpJrXQDS/3t2g5u+dBYtCZ1h1RCN0iVObqXelqnFvUOA7ggCiBrDNgwEILulSUH
	OSaALXzUQ5TH93FgbmVBeCg5S42EBZZHfydKzSaAqVGnOR2CzIWe1RDVroOrzzcHTn4ebQjURBdQN
	ORI/L8wMZm4cxDsIXjxKGaUrtK6b/zgkmrYu9GV3rMf460jsm2ZTHyAEAQRYYn5O6tbO8/uBCRcrd
	kzuy32rIdfnazBrJ4AFE8iSZjGr5SvUlzA3ZWbtKU/zQsGMW7CWseSNOAPgrGkbYrf/fhWjm5jdkA
	KwBsz0QQ==;
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8vRf-0000000DEj3-0ktv
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 08:01:45 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49e6baf77afso1695685e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2026 01:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790064101; x=1790668901; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=k8SSEreitnBFuEXQj3F3dce2S1yQFmhptrw7zyYrACU=;
        b=ofMQn6m8dp7GTbkjmxzTzjCUIjnF6sqKWhw2ibo7ETDlf6/UUzmjbVYFay3F9+YUTH
         JbYLrvpD2jZleSDtJ4PpT0g3QiCmPLxpniuORsvLBlBHLS9vQl3o+hODKiq5uLH99i47
         Uj/7+anrHpa0m4ylh6rtllFZwFa5W9aRiXitT9gHGP9PDdzoIqLYIt5Sn9BY17F0xzzX
         WBQLDBKC+C1P8fTgxXJrx7Yx3uyW1g2xFuE3UDB8Zk3eT84KFyfMlvb5keH4XbUvU4aI
         4XVeXr/B/QK7z4nlCriN/n2ZojwPANCdzG1Uio5PSnkHX6BM/IT58VIgPMxHFknub2QK
         f3Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790064101; x=1790668901;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=k8SSEreitnBFuEXQj3F3dce2S1yQFmhptrw7zyYrACU=;
        b=aNOfEMCZ1+/VIJCYMLLwjWdDQ6qROdB0C80Ba6iztXLmmOv7diqCy90fFQH924uDH2
         0MPVjkghQiEzkaDkjlzEyh4sKC6UH32tsOhtjnF1bVgdEzEeGE0Dm2CubW56kxAfvYk5
         qOj1ikd3SjG6+lbBzQa9tUnAn5SGyDqC5ezjslgds2yCWHjq69KW1ZqLW5PWfm7WIN2j
         YTEDyPjOtPPTbsSywTO8Xu4CIsJTwbl0vmsLIU/ZYiVaHATIQ2IKLYX9bNp8qK0Si/om
         naZTmcS1j51HPDbB+1qM8k/uvR2Z3j6HTwd4kuPrg9RxDThVW5wA/As/0pUSObEMZnlS
         D6Gg==
X-Forwarded-Encrypted: i=1; AKwUvBw3WyojvogeCj3Y3uRWyfLzp/Qsdl7oo7AU0Rf8fDuO+6hBCXZt2a1OpaCugaL1GscRcocCwGn4v4b+t8y6og==@lists.infradead.org
X-Gm-Message-State: AFuF++nW71sB3wnV7E1NuxWnXaMeasa76SeLYZOKG3noWdHlk15nYf6U
	w3Hf0CCIKHvaFojcF9MDDAx3nherTTV9HWzK81AY7q4CHZVBMws8qGT/
X-Gm-Gg: AYBFou3FwKjgXbMBqDRLUAk9cZsoDOCIWg4AeQ/e/xPrCuPVPLOVOQK35NGm7M9xKQj
	HWNmeYa0oAa5hx0ZKr2AQyc757t8GLmrCPyXZc/7LnsqUQzf/+y6EXE1uRxCUVI7Uq6vPzSLZPk
	YA5j5DtIlN80tYlev3PTcZlVbcuucwiASud6kWh2FcijO48SFzgG3/5LZuKXndijmdV2osGF080
	+YNmIUoycRCMpHIzXA3XwPOc8duHvOqUMVY+paaqRh/J+0rvGAV2rkGr5z1e+i3KZvSGIrhhpGp
	TuaE0Bi7lRSVOQvLJgO1V4EgBX64tUToBlVdYMv0fwbyP4tGqYwT8/e3Q+WnDDCXZaoobieW5fY
	f8KdtMTVbpQcwytNn+8ogTW2n56WcLxogRjr5a7TZIAXs1ufOPBQSOY2zmFgmup8J0dPWRcig3O
	2f5ueaUGBrodTmRgHXa9oQiOeucNcUPULQ9Yq7JOAUDov2FhSkkZmA5s/fLoAI9ZzgAUi8VrH87
	6Q2uyFMqwf1E9VV6lcxuvjL2BCy5d4kn7oBGb68EHBe1gsdtGvfx6Hd8EQKFoRHv8t6oUAO5Vj/
	Mx0=
X-Received: by 2002:a05:600c:6992:b0:49b:9241:7ff0 with SMTP id 5b1f17b1804b1-49fc7b7a756mr226941795e9.0.1790064100738;
        Tue, 22 Sep 2026 01:01:40 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B80530056971C6280202175.dsl.pool.telekom.hu. [2001:4c4e:1b80:5300:5697:1c62:8020:2175])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fdaaf97e2sm18248625e9.2.2026.09.22.01.01.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 01:01:40 -0700 (PDT)
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
Subject: [PATCH v2 11/11] arm64: dts: rockchip: rk3588: add passive cooling to the NPU thermal zone
Date: Tue, 22 Sep 2026 10:01:14 +0200
Message-ID: <20260922080114.44662-12-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260922080114.44662-1-royalnet026@gmail.com>
References: <20260922080114.44662-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_090144_212284_6F4834EE 
X-CRM114-Status: GOOD (  17.09  )
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

The NPU zone has had only a critical trip at 115 degrees, which is a
shutdown and not a cooling policy. Now that the NPU can be throttled by
capping its clock, give the zone a passive trip and a cooling map, in the
same shape and at the same temperatures as the GPU zone right above it:
85 degrees with 2 degrees of hysteresis, and a 100 ms passive polling
delay.

The #cooling-cells property goes on rknn_core_0, the first of the three
core nodes, as the one node that stands for the shared clock as a cooling
device. The other two cores have no clock of their own and cannot be
throttled independently of it.

The cooling map is inert until the driver registers a cooling device:
thermal_of_should_bind() only resolves a map entry once a matching cdev
appears, so this patch on its own changes nothing but the trip point. On a
board that leaves the NPU disabled the passive trip has no cooling device
to act on and only changes the polling rate above 85 degrees, as the GPU
zone's trip already does on a board without the GPU.

The thermal path itself has not been exercised on the board this was
written on. Reaching 85 degrees on an NPU workload with the fan curve here
has not been possible, so what is verified is that the zone parses and
binds, not that throttling engages at temperature.

Assisted-by: LLM checkpatch dtbs_check
Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
v2: commit message only: wording for the shared table, and a sentence
on boards that leave the NPU disabled. The diff is unchanged.

 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 376ad04e07869..c3d22b08f415b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1162,6 +1162,7 @@ rknn_core_0: npu@fdab0000 {
 		clock-names = "aclk", "hclk", "npu", "pclk";
 		assigned-clocks = <&scmi_clk SCMI_CLK_NPU>;
 		assigned-clock-rates = <200000000>;
+		#cooling-cells = <2>;
 		resets = <&cru SRST_A_RKNN0>, <&cru SRST_H_RKNN0>;
 		reset-names = "srst_a", "srst_h";
 		power-domains = <&power RK3588_PD_NPUTOP>;
@@ -3212,17 +3213,31 @@ map0 {
 		};
 
 		npu_thermal: npu-thermal {
-			polling-delay-passive = <0>;
+			polling-delay-passive = <100>;
 			polling-delay = <0>;
 			thermal-sensors = <&tsadc 6>;
 
 			trips {
+				npu_alert: npu-alert {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
 				npu_crit: npu-crit {
 					temperature = <115000>;
 					hysteresis = <0>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&npu_alert>;
+					cooling-device =
+						<&rknn_core_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 	};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
