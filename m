Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 133F8CCD18D
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 15:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Vb4lUnwY5JH4Uf6Ko6aCsXRn70X8Scjio2LKDSbYbcs=; b=040Q9sJOoNtCcH
	x6URkEoFjun/dLCEkNeFoHvQsLC102dn+0QX/QWCmecDyYSRg2DSNJpf4RHNefYkhUeJTLfE8pOx8
	IhB1XDB3vgc2CqhFK/LHkg9gQc8SoWjvN5pxLfJN8ai+/AZiWRJQg5W6MamNYoNWLAztOkAhO8zNH
	Y3gqh4nrWxEtB10UG8k7ep3Wi/V7tDGoEsuhzYyJIfOT1zvB6zKfO3nox1T9tpK+5r1OXZkO1enDy
	6WyytCVF0K4c5BklljrBjaeU313HYN5jbr4fo3AYIrtUrGdPSA1vDRlwLPFrJb6tDXuDSzy57o5P4
	GgQpDs0waLgTsy36wZ0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8KLb-0000000DcYZ-0pWr;
	Mon, 13 Oct 2025 15:20:27 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8KLY-0000000DcXB-3Q35
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 15:20:26 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-271d1305ad7so70613205ad.2
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 08:20:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760368824; x=1760973624; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nWw3pYmfnmGvB+YkCO3yexV5qTzE3+kQSnnpQTIm/9c=;
        b=XLsBhV3idkhBTNtMuFhDFOrojuDps2CSULcgDvmIdzrhDOEMbIk3xNLpc3M690kDyV
         oCF/geMNWG+mvLd1FiA6LIcwNbpf8oc4Fwgjsng/wzNMnR2QgADduxaZ8X86h4xkPznr
         lK1Q7ttF+oxeF2PR69NTfGMv2Zg0jrfUY1oDzm6qXUh867nr6ShwA2DBSa1HOYUocugw
         yh1B9xU5stj7G6ibuEzD8DTEBtca+qhV9hau7YQQ87lhluDFyyCmkDjbq/5leVR05R4B
         SpeaIv1rAP8HwtTbZBFbH7etnmXIzjKmcAwTnaTMxAwvgECk3yoAFQqYh87XxDJmarlv
         Clug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760368824; x=1760973624;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nWw3pYmfnmGvB+YkCO3yexV5qTzE3+kQSnnpQTIm/9c=;
        b=qB0h3uLSnKJoQHvDaXJRzYLctDpspPerAnUP+Tjan1o2d5yQ/0WTEQQN01yADqpNmw
         HXscWgfz0QzyaY/+E9OIIlQu/0VlYebJA/YWAJoxmUJ/2LULdVUDyFXRzLNR+yW7OOZ0
         WwSBRlghS7v4ZOBhpriqv+hfgdg+oWyWhhUTA4m2K/4+fH032pMak+YqM2z9fB1/tpOa
         cASM3KhRWMQozsrMogmzvLmFNKYZ4xHI35nMEsjsdE/YmqVbFnAgvlg9yBD7SPNkiFME
         dj0ZVQjSFDjg6+b4NpAxiZQOkJ4UKKcNa30coTSktU+6kZ5Cq9ccwtii/PUiQcwDkLzH
         I2zg==
X-Forwarded-Encrypted: i=1; AJvYcCXqpaNpV/ZfwyuhsjXarcHE6EpJJhqMMf9HN6pbw35UEIYOpxGNpNAmiuSDnDMn2JdRMK00IVFkYQkptjQ+Sg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxArcEHj1GT6cQ6zJlmxx0sl4Nv0Q6WoSmaecE9WGDENEKazyN2
	T7HAOI8BqxUiQjoqBRWrmUC7GsvhTqXrtfQ4aD/KMiIe6l9GYeNJb9y0
X-Gm-Gg: ASbGnctKCtEv3ipTjgZUd4GaghyiaB0wVMA4IpnqEoutrbzOnHpcR91itmO0udCuyaD
	T3KoJ5aI3vT2afzZdEoDHYJjoS6EaQlWN43nIEvQ2is9z4wb5VsijMMKLf/orJUY3ye2X3J6XY0
	trD3Ca01ev1ZYs1VcxTl/qMTLn6Ka4VmfDNTFqnRkrOfIogMWRgE83yovdiVWlCT5Vb8IDHZXT3
	fHyzmf2/oYKp/nqNnh6Uv1nLsIsTzKiCeqHRfSRR9urjDevKK6Ae4azUOtiBqo1lQlkLu2Rb2go
	AlCaw/y5ZyE2C/9fhk7TG9Od6w56YTc6aeafPTVsaCwRa1W6vPFANvqNOv6Q2juElxZvW7zhKVK
	j1hSMGwvbsDJaFIII5eXGlM+LhCBFn75QQxpLlDuSjSUzctC/rA==
X-Google-Smtp-Source: AGHT+IED5HSARgZp3w1i5vJ/5lba5zHCV8vbpThYRazELMLhgYDV4CSz/po8MO0H+ROXoU4f3DVC/w==
X-Received: by 2002:a17:903:3b86:b0:28e:7567:3c4b with SMTP id d9443c01a7336-29027373b18mr314146635ad.16.1760368823921;
        Mon, 13 Oct 2025 08:20:23 -0700 (PDT)
Received: from rockpi-5b ([45.112.0.108])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f05bcasm136560245ad.84.2025.10.13.08.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 08:20:23 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Diederik de Haas <didi.debian@cknow.org>,
	Aurelien Jarno <aurelien@aurel32.net>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v1] arm64: dts: rockchip: odroid-m1: Add pinctrl for I2S1 8ch TX path
Date: Mon, 13 Oct 2025 20:50:03 +0530
Message-ID: <20251013152011.131118-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_082024_851938_943D1EC9 
X-CRM114-Status: GOOD (  11.64  )
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

Enable proper pin multiplexing for the I2S1 8-channel transmit interface by
adding the default pinctrl configuration which esures correct signal routing
and avoids pinmux conflicts during audio playback.

Changes fix the error
[  116.856643] [    T782] rockchip-pinctrl pinctrl: pin gpio1-10 already requested by affinity_hint; cannot claim for fe410000.i2s
[  116.857567] [    T782] rockchip-pinctrl pinctrl: error -EINVAL: pin-42 (fe410000.i2s)
[  116.857618] [    T782] rockchip-pinctrl pinctrl: error -EINVAL: could not request pin 42 (gpio1-10) from group i2s1m0-sdi1 on device rockchip-pinctrl
[  116.857659] [    T782] rockchip-i2s-tdm fe410000.i2s: Error applying setting, reverse things back

Fixes: 78f858447cb7 ("arm64: dts: rockchip: Add analog audio on ODROID-M1")
Cc: Aurelien Jarno <aurelien@aurel32.net>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
$ aplay -l
**** List of PLAYBACK Hardware Devices ****
card 0: HDMI [HDMI], device 0: fe400000.i2s-i2s-hifi i2s-hifi-0 [fe400000.i2s-i2s-hifi i2s-hifi-0]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
card 1: RK817 [Analog RK817], device 0: fe410000.i2s-rk817-hifi rk817-hifi-0 [fe410000.i2s-rk817-hifi rk817-hifi-0]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
---
 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
index 0f844806ec54..442a2bc43ba8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
@@ -482,6 +482,8 @@ &i2s0_8ch {
 };
 
 &i2s1_8ch {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s1m0_sclktx &i2s1m0_lrcktx &i2s1m0_sdi0 &i2s1m0_sdo0>;
 	rockchip,trcm-sync-tx-only;
 	status = "okay";
 };

base-commit: 3a8660878839faadb4f1a6dd72c3179c1df56787
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
