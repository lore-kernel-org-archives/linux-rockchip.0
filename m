Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2532CA5FA2
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2026 13:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ocrdFhNhJEQ0Buh1uz4qYMDHrI754aAXCftynAfYJzs=; b=A6JdpTAX8J9vs+
	6h+uc5UXqKMC3DFuyX4dhDu2Qw4FmhV+JUNaWLTB0SeQV4EdZoyaerUPrInJAhMfivZebeAokCGJI
	/s4cf7YYjb/lQMR1+lQcr/NvjT4XBFH9cVKm658kn5zRhkSeBo4vyC/zKHhfjBXmmiSbFfTsyrIgr
	XUoWaPCEBBBf9l2r5k/oF35W0d26E5yV2DhpeM84gfDuRXK9/k5MzkZUqDOz0Q9r3DS01kow/izes
	pGoxi2qZvNPc5CJqkHLQ7tOYkMFbsI8oqllKMswyeUz1MadXBpS7cQSBKeTfwDpEYzy2Cd3WDtBAO
	oo+pKK8LRDfyRRj/SqSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBBSL-00000000ep5-2t3F;
	Mon, 28 Sep 2026 13:31:45 +0000
Received: from mail-wr2-x2a.google.com ([2a00:1450:4864:30::2a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBBS6-00000000ehO-11fb
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Sep 2026 13:31:33 +0000
Received: by mail-wr2-x2a.google.com with SMTP id ffacd0b85a97d-48439feca17so2319077f8f.1
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Sep 2026 06:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790602288; x=1791207088; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=0Hlk6LB+jMpn63Ohia0apz9+abNxcQqx8sIdV/gr2JI=;
        b=kHO8j4X4dQOrkvJA1giFL73DDl5GeT+KgBS9pznD17Gka9Jdb/jklFywACd+GqxjUm
         SYv3/tgNwQvbqbhARmvRYlDfEqYXspZmhHJuBaSRrEJDKAEk6LHuHiYdnnCMq3YFQnG1
         D/ujh+NkdNWEQCyyPshuNSTjfj9TD8wfoSsIK0lyuivY/8rfhNkfMWkuCAGBSYjpuiDV
         UmNRdaaGSgp7b5MLZ5HKjMiV0ii0UH16HfbpgB1lLL76OP3YfOXLp+/XQUAg5mkim8ky
         KZSKnSsnzHJ+ZEM5AFEEz60Pu5wmfrZOVujErghDGnkA9M40fBAuIEPoXNFL8GwqmPSY
         zlgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790602288; x=1791207088;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0Hlk6LB+jMpn63Ohia0apz9+abNxcQqx8sIdV/gr2JI=;
        b=ab4eR3RjoN8nD0m1H5QE5UeJZQykeISZ6A6GaqYwBU7BUxEXSqq+Ojdu2xusFWOs0X
         c/KTJ+QF2ajvmb60oDpIZdgT7eAU5nqDCZ5cFEDwWpgmGW5N23o/JJjazvjQPpLPNYcY
         n55vIySF/xjllwmT31htkPfIZ5NT/KrVXB53Fid+SAuCNd8zzahlROGKt3Y5r2WpzBr1
         sD8zlfWbiUhprNkdk7XMPYhUBiX36DkhqmcNVKZG77yEnltEpCLfsuw4Sm5hQCOFqjeI
         ZEDl9tQHu/ljoHJfXoE6ArWg5ya14c6DRIetylsQWaGXBF08WpNRLqTJRGkmnW7OQd+p
         W5Nw==
X-Forwarded-Encrypted: i=1; AKwUvBwJec2EIJnHSqqi/yujE4Ul9gDVRd//DsMYHCk4Loq797XSh5mqNxnpa+o1iG86d+JgVxreiR51x7K9+tHMUQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYJCqlpx4Q2Bjg0GaH58bdnhuCB5GYluJIJHqrHRJGkpqTNIrPmF
	5OUosjPFZhFg1g0bzyjzm+yf/Jc6mSTwIJ+gbZ0pne5c/BXQfIuYoHyF
X-Gm-Gg: AYBFou0iEDSXl2HmQqvK4TUe4mSlHmNfpMnjLQUbogoTBcslStKiMzLGMdHgbIupAgU
	3t/tmZUaNqXdrqSPS7qha2KPGBN++xOOigIxprhvUDcFh7WlpBbo8VtEMLiAnDNLSeAuK5BXWsw
	Kvu31XAKWhD9hXHFRduyT9H2syLBMzhZ17zlQTST5SXdWgeHepvw1vnKKbEfSrQUAGrEkjSjsKp
	NsiTTHami/i818BCledDcltZuke1mQZmmBMJLJDMtIEp7PyVvbpkb1WH8lg5Q3nQcf1me2C90Nx
	s/VXDxm8uv+NQzSWy5mg5zTJ7fg+/2LXrbN1+uvlDNerhGOu6hKAwIF8V21BU7IMe7waTE/xIxb
	cBwl7c2OaPUFNS7W45RZi6rR5kw43g1lu0slBJoCa1d8lPGJB/Dtq5ns2XpcX0Siegcy68c9WCA
	gmOxeduEs/4d1xoFZcddpOjJ3oQEBqb8UwBoNVDMnPyPwbOrcW3H5sxj57BKiCWGaar/9eDIvQA
	xQHbWwyN+qJ7tNAMiBqoZCYf/VRcDiD0SA4MquyEBWnxfIInsTLvw0IHL6qn5it9919PQUorHgy
	JvvLvC/41aCsc7oB12m1OwdzemiGDrOKgEJmaVveTxM=
X-Received: by 2002:a05:6000:2510:b0:487:c99:9020 with SMTP id ffacd0b85a97d-48871714226mr24139494f8f.2.1790602287523;
        Mon, 28 Sep 2026 06:31:27 -0700 (PDT)
Received: from cypher.local ([212.187.182.165])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-4887a648895sm27746276f8f.28.2026.09.28.06.31.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2026 06:31:25 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Add missing audio codec supplies to Pinebook Pro
Date: Mon, 28 Sep 2026 14:31:15 +0100
Message-ID: <20260928133122.45765-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_063130_285959_E81E3A9F 
X-CRM114-Status: GOOD (  11.62  )
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

The DT binding for the es8316 got 4 power supplies added in commit
e9966d450b46 ("ASoC: dt-bindings: es8316: Add regulator supplies")

Page 16 of the schematic for the Pinebook Pro describes these
supplies so update the dts.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---

I noticed this was missing when Diederik sent the equivilent patch
for the RockPro64 devices:
https://lore.kernel.org/linux-arm-kernel/20260922133643.2730265-1-diederik@cknow-tech.com/T/#u

 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index f21fcdc1b49a5..f728e6f64c2ea 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -656,6 +656,10 @@ es8316: audio-codec@11 {
 		reg = <0x11>;
 		clocks = <&cru SCLK_I2S_8CH_OUT>;
 		clock-names = "mclk";
+		avdd-supply = <&vcca3v0_codec>;
+		cpvdd-supply = <&vcca1v8_codec>;
+		dvdd-supply = <&vcca1v8_codec>;
+		pvdd-supply = <&vcc_3v0>;
 		#sound-dai-cells = <0>;
 	};
 };
-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
