Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 090C3EE6426
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 02:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kiJiPrbzHBsy10u67lDa2UFXVN5RS1E8SQhYpTYvmIQ=; b=xMeQHEtIrdUZ+L
	HXm7JNpjxmg5OQ5at0GwOeP30S+OcFqtQ9tyEfU7HHF/cfr0LA24WGkU4sh0TTYnp8KObMcmWY/HL
	jKLejdvqMqiSzHjsLNiv/MR2cJ0jQFBrjBnqcwtQpFwQz9O/UVBJGoW9vOFbDQMiCtb77rhgOCTGH
	KUPUXVkEyBWp+rpSgIqqGGKXLJqnc9Noi4K7XO+FE0G79c1969+d644mZHQP/dKZY/s4PFXSRNPuT
	qo5Nt+Acew1fwDiF9Q6Wzsue8KhSDL02bCTeVtieOEozL2hFc1xdg/Gy+7KuCz2NLe7Q5IgCxAiru
	i5Q0bFRJVN/4YEj2idZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soa2f-0000000Bgxv-2XIK;
	Thu, 12 Sep 2024 02:58:45 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soZwX-0000000BfJe-23ut;
	Thu, 12 Sep 2024 02:52:26 +0000
Received: by mail-pg1-x534.google.com with SMTP id 41be03b00d2f7-7db19de6346so343377a12.2;
        Wed, 11 Sep 2024 19:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726109544; x=1726714344; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CbhfTGrSMvC/tgmYMhKvFdZrItzTEJ4tenHm4R5TGCQ=;
        b=EWzeh11XjOrbiKgVHi17bAMHZ1SCc821bcSUZDoUB3R81JGdKMJ3cap3Iniqb6z3SN
         N1P4bP5doQBk1VpMLAhJZlTp4kz1L7TmRopV5nuB/WnjcHmaMYo3lf6u4rAhYUI9nyJ4
         dlnTCgr0x5aP93spQzxN0sw9thW4riR5oLh69RCG7SD9dHkqn+uaRxjpGageycvwyuGb
         E+ksukaGjMzQb9J8xtxHsgfC9r84lHeYO9Lsh9e5Qvf91/bD756UPweeupc3aBXm+rTT
         8yOh+d/IpczF6bcSbV1UN7/K2GOPKp0JBS9EF/MQC+NcRG6kudM4gQDduSbJYJvTkZdS
         yMgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726109544; x=1726714344;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CbhfTGrSMvC/tgmYMhKvFdZrItzTEJ4tenHm4R5TGCQ=;
        b=lQNVVpUGOWtxYPR1eib80dWJmQJFnbN1XwHJ7/LPTZKoVkdhWpiAVtkYGePcwRq5JV
         Zdg7XohEMmp8u0hW6ZeLhr/4yn4vXjuBB11LBXcybuWyHqYSBJ8sqdXqNq8iohyS+U6j
         7xVB2HVjj261uUtgasOLIzCWXO9/ReoZmiUyUonqC5boN9XWXWgcJLKVBXd3qahVYify
         fkw8FLUiOUfqEczNhqxWpHbDYlprPXJSK+Zvrt/9BJ6wBMlZKJJmIqZmKyvu94TgjRC8
         lMQDHsOI5zks2t8LOfjYBUCAbp4syQMorKWD9XsIzIK6D9QRM6mUK8iprbCPXWVEDO99
         pVFg==
X-Forwarded-Encrypted: i=1; AJvYcCUPDxjvYkfpy2bSr5ONs5x9/Sig1gPVW97VKw8eiDetBxh2xv62KBAsipZKXAY1s8zAggYkI7oyxogWlfFAjYwA@lists.infradead.org, AJvYcCWD2DmV/xOXGkElowfA+jZqrYqsmsZofzrFpqZF2RJaMbrPdviNaS9Xx6fj6HfyEu4A8XR7AytBC7x7yTL3HY0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxoygrbFIT9bB3EfQU7VUWcKihXUXexjgadYR7ZvF0loV8l2snJ
	3WE5jBd4tIbQlfUbua8Noi0jEpZjpZY2zdNXvoulnV4zSgTQ44p9
X-Google-Smtp-Source: AGHT+IF8HeK6/BQhqecMhAqWlKM4X8CDT4o85XrqfS2zkOCm7oxs5tX2NJUPbSqU54VIZ5nGAuvpIg==
X-Received: by 2002:a05:6a20:d50c:b0:1cf:2513:89f6 with SMTP id adf61e73a8af0-1cf76239981mr1446471637.41.1726109544283;
        Wed, 11 Sep 2024 19:52:24 -0700 (PDT)
Received: from luna.turtle.lan ([2601:1c2:c184:dc00::315])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7db1fbbf877sm569023a12.50.2024.09.11.19.52.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 19:52:23 -0700 (PDT)
From: Sam Edwards <cfsworks@gmail.com>
X-Google-Original-From: Sam Edwards <CFSworks@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ondrej Jirman <megi@xff.cz>,
	Chris Morgan <macromorgan@hotmail.com>,
	Alex Zhao <zzc@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jing Luo <jing@jing.rocks>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Joshua Riek <jjriek@verizon.net>,
	Sam Edwards <CFSworks@gmail.com>
Subject: [PATCH 5/5] arm64: dts: rockchip: Enable GPU on Turing RK1
Date: Wed, 11 Sep 2024 19:50:34 -0700
Message-ID: <20240912025034.180233-6-CFSworks@gmail.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240912025034.180233-1-CFSworks@gmail.com>
References: <20240912025034.180233-1-CFSworks@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_195225_560560_7E0E1529 
X-CRM114-Status: GOOD (  18.78  )
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

Enable the Mali GPU in the Turing RK1.

This patch also sets the external GPU voltage regulator in the RK806-1
to "always-on" because it is necessary for this regulator to be active
when enabling the GPU power domain or the kernel will fail with:

rockchip-pm-domain fd8d8000.power-management:power-controller: \
    failed to set domain 'gpu', val=0
rockchip-pm-domain fd8d8000.power-management:power-controller: \
    failed to get ack on domain 'gpu', val=0x1bffff

...followed by a panic when it attempts to access unavailable QoS
registers.

Since there is currently no `domain-supply` or similar to express this
dependency, the only way to ensure that the regulator is never off when
the GPU power domain is brought up is to ensure that the regulator is
never off.

Signed-off-by: Sam Edwards <CFSworks@gmail.com>

---

Hi list,

This particular patch will probably need to be revisited once something
like [1] lands. I'm completely unable to get the GPU up and running
without some kind of solution to the power dependency issue, but it's
possible that this is because I'm just particularly unlucky in the
timing department.

Cheers,
Sam

[1]: https://lore.kernel.org/lkml/20240910180530.47194-7-sebastian.reichel@collabora.com/T/
---
 .../boot/dts/rockchip/rk3588-turing-rk1.dtsi     | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
index 6036c4fe6727..dedfb9ede4a3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
@@ -116,6 +116,11 @@ &gmac1_rgmii_clk
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0m2_xfer>;
@@ -386,6 +391,17 @@ rk806_dvs3_null: dvs3-null-pins {
 
 		regulators {
 			vdd_gpu_s0: vdd_gpu_mem_s0: dcdc-reg1 {
+				/*
+				 * RK3588's GPU power domain cannot be enabled
+				 * without this regulator active, but it
+				 * doesn't have to be on when the GPU PD is
+				 * disabled.  Because the PD binding does not
+				 * currently allow us to express this
+				 * relationship, we have no choice but to do
+				 * this instead:
+				 */
+				regulator-always-on;
+
 				regulator-boot-on;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
-- 
2.44.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
