Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EC08CCFA04
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Nov 2025 10:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P7q48wPo7ci82d+USO5w8lZB6SHL0UC6+BwAu9G5WzI=; b=2OMApLRuCRexN+
	O9mKi24kTTk3MVD6tRf1ORUqPzo9Qpdcmfz1KW4o+qu2E/SfMSn/UX4pbAewSGtsuRkP16zhiV6gz
	MNMFu5daVQw+wjEEJTta94ytrCA9YO9RS0wPwaS+/4UGuBvli5W+Mt13OxnRctFwJhj5pVj6WV/Rw
	wN3X7JjnYJkhPCdcrZDH9gY+MkFCU5y3ejxONAXGzuGJpkPJ/dBLhShSvVJj/sK5cDsLKlGE/qq9X
	MpI4RsY27sMk3EAbc/xCk/qCnhqkWX0zL49QVyxZArRGJhnWj2GJNTL9OFlNdA0qlSODfWe+GUebE
	tYwI2KSw3I0QLzxzX6Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFrWY-00000009ZqV-2fa0;
	Mon, 03 Nov 2025 10:10:54 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFrWV-00000009Zp6-1pH8
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Nov 2025 10:10:53 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-afcb7ae6ed0so783011666b.3
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Nov 2025 02:10:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762164649; x=1762769449; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zV61ssPxcQ80Vn+xuEZISQ1ICnJDQBimD7YTtlxO9tk=;
        b=FPVA8fPIY0Nn9sx6tfXHHSE7MZZVSCsBmNmojbHmL0g6qJH3X2WY3vwJdKCa29Yz0X
         m/Xv69/2lrCN6mobFG/MJeSD/zZsajYnRJCIHXO9jUjoK98iGUJTyLsl7Jl0wCsAdmMT
         uNfNWz7nmX+srtC0H7oAFdnNesSLaZiqKD9bknCAQPWCPZdQR6u56Sx5nVzzhAINdP5l
         6gw7JuiJxtsTILr+mwMVhbE63cAK0e9ccIm605+apyzD3NWMVS7xTK+KGQO7BTuy4VbL
         sIZiqaea0t8Pw88qd4ZP7AaUx7nSZQLTnGNL0f5zmJG9WMaIeCfJ7AU2GlN+OSVQPNYH
         BzIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762164649; x=1762769449;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zV61ssPxcQ80Vn+xuEZISQ1ICnJDQBimD7YTtlxO9tk=;
        b=Zix4whv+gJnA8wsvdLTo1YBrb52fbaFmuZDwvyIJjpihIC9xj76e4Q45n4CMOmoTS4
         OWITvMQTzBa0Mem0luD3QQb/n/aW+YfvzW1PYXHXmhTKzuD7SNu87+dOWS7VN7w/1qe3
         81uKvVdFpc1FUTf/j0mqUpRx4PAYbsVifwMhlI08IIsSN+n3NyGM1olxQDEmDv3UK06C
         rt2vUAB82xTAvOd/7Nu6lPL845xqXlN9iln37O0n/u9q4HuYCkSA3WwlyPkCwW78bqR3
         3+5uy5Jj41I55V7q6xrKFrpapYDaknl2Un5HlodaUWNEVGlkih9gxmeIdTYcF9fC3c9N
         eJ/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWxLj1YlC3nUMnnQG6QZ9SatWQ3RvwbhEQxXegQTYxLcKXDSXbL/3wbUG5A/z557f++KEZD0jxYFooKWGsE/g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxTqdR6TnIfwgkbKsmKLVRJNOdn7ByG89o3wudKJGRvduFRaQxO
	1J6BVTc+MLcKUMpCz/heudaLzX/ilDsAbKU50umMYFbvdCAd7FdtKBB2
X-Gm-Gg: ASbGncuW3uc75IsGUDBw+iiMIndhO/H6LMK2vlpxoeSa1slEvJ5jp8pmnD1Ew9+Z4as
	SCSjk/ln4P3nGbmDkQeisqIOzPNf70uH+wYNbdUnDZXn2FYV/MSCJHF6s860eyhj7d1SyplbuJ5
	8YBVOKGPpYjBN3TmCgxxZGtautfBDgi/HguOHZq9Xu8m3eYw/eaYQru/YqeXuSTz465xOeXg2qX
	2JEYRUrc/RCI3Wk3udpIxe6/qD+kyI1huQTD8+SA6rlg7ipLX+YN1OE6h1L0Puj3k0tIfwljiLz
	ZUr5HGDAdeDTCFpd8YkoNhzauoee1Dwr6CUa+moNJhxAqGtX06bSDJe+41xikfLoO6WK2XPcJcQ
	ncsQ2xZsh1B6YmoCM8lXMqlbnry8NFKzqV/vVWx2exAfG/BTtNpLcUELCigVkhzAtSjjbvzQCb8
	wu1zzL2GL9elENRfLUQbXforIvahIJ+6PW+tZGJVWM4DXgU3Il6ZPn1w==
X-Google-Smtp-Source: AGHT+IFp+T/Nu357ftkE83jIAMW9+xcbhTQBIaVYYeJtQz1ee/caz6rCsgqFAGPZlpwzilmbvSJQ7g==
X-Received: by 2002:a17:907:2d25:b0:b3e:5f20:88ad with SMTP id a640c23a62f3a-b70701c3f34mr1227300566b.28.1762164649077;
        Mon, 03 Nov 2025 02:10:49 -0800 (PST)
Received: from EPUAKYIW02F7.. (pool185-5-253-81.as6723.net. [185.5.253.81])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b718f8b52fdsm66758666b.18.2025.11.03.02.10.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 02:10:48 -0800 (PST)
From: Mykola Kvach <xakep.amatop@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Michael Riesch <michael.riesch@collabora.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Muhammed Efe Cetin <efectn@6tel.net>,
	=?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: stable@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: orangepi-5: fix PCIe 3.3V regulator voltage
Date: Mon,  3 Nov 2025 12:08:14 +0200
Message-ID: <9232ae8cc8e7eb4f986734c8820f44b7989b9dae.1762161839.git.xakep.amatop@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251024173830.49211-1-xakep.amatop@gmail.com>
References: <20251024173830.49211-1-xakep.amatop@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_021051_488716_55B49A10 
X-CRM114-Status: GOOD (  11.68  )
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

The vcc3v3_pcie20 fixed regulator powers the PCIe device-side 3.3V rail
for pcie2x1l2 via vpcie3v3-supply. The DTS mistakenly set its
regulator-min/max-microvolt to 1800000 (1.8 V). Correct both to 3300000
(3.3 V) to match the rail name, the PCIe/M.2 power requirement, and the
actual hardware wiring on Orange Pi 5.

Fixes: b6bc755d806e ("arm64: dts: rockchip: Add Orange Pi 5")
Signed-off-by: Mykola Kvach <xakep.amatop@gmail.com>
Reviewed-by: Michael Riesch <michael.riesch@collabora.com>
---
Changes in v2:
- add Fixes tag and Cc stable list as requested during review.
---
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index ad6d04793b0a..83b9b6645a1e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -14,8 +14,8 @@ vcc3v3_pcie20: regulator-vcc3v3-pcie20 {
 		gpios = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
 		regulator-name = "vcc3v3_pcie20";
 		regulator-boot-on;
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
 		startup-delay-us = <50000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
--
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
