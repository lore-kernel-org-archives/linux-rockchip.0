Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32E5FE8FDA8
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Dec 2025 11:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G/VpqReTLhMv9yMN2poED3pXbIXJKobyqCgtpbP2pLY=; b=sgmQoOepQVk4wc
	+xR5qse9O0oN0JfVb1pM8eEQHSMBGOW7IoV/evgGSSM9zLKy6gwMC6ne4QdXNNRFUMDJEa+4v7GDq
	sC/JyAW4Un/pQdSMEtsv0E0tj8MFEYoWPKTpNcFjJ2gdka2/SU4HLod4Md4RN2/r0piLcYUg5pwG0
	z1EZ+xSGa8b2BVRFDCwtj8th82+FGEK+2URLEvZyyiis9RLuMzf/KqcbEq3BinDXAf3/dH2bJ0Eej
	vrbxzmlC2ESjzfjcCHXmpVtCcM2CGo9U3XK3S7XdBbj7W7134rEFHN9F9QNs5vSJBSkbyPjF5197u
	YEMBicN1SlZIYlKjvnyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZ62y-000000018qG-18AP;
	Fri, 26 Dec 2025 11:31:52 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZ62u-000000018ow-3740
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Dec 2025 11:31:50 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-477aa218f20so43264685e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Dec 2025 03:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766748706; x=1767353506; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=v1SWATMi/WZTvokTUVbPMD00PD6v87hkU1tyoacWxTk=;
        b=aZQSc9mQSHHfHAkBQAWX/cU1H7z2Ey/o5zAwuhleEKJFZBFi7SnOu6BVaLqb6PMdU4
         Mp6N74MYmrOxWoe2S1RMTXNdBtM9jnWnC0wyCdvwOCOyEtdLENHcV4DXSETVYvi4V3BZ
         3ZsuRKfPKradW4xOjiSwHxcjTt1XZ/AYnvBP7Vycx89EW22ykNP1JCLs37GFgelkfm3b
         b4Qovkq5xZMpWrgS6PPtWI3f7lMvzEPk1xsR52VBZRx2enA/fNAmIBjD8qP9qbcPjGr4
         jH29DRfnRjHlWcx4UGdb2yMF8roIuNGP+0KrJKLHNa97GjFRkKlgxIlFhiYwGjwcu7Tg
         7g5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766748706; x=1767353506;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v1SWATMi/WZTvokTUVbPMD00PD6v87hkU1tyoacWxTk=;
        b=wII6fbR7ykOFz5l+EeYQIA/2WWl5jgUqoeboFVDKcChFm1v3/x2jsub+maJVq+2vGD
         RMXLVbFhVyEGpMWrNYad9r+zyDEWPuAe/vR13H4rlPfhRzM8qcTySm9SNQL7a+duevwi
         enO2rkrd4hDSHt633WCqMmXhpJmaSkhPYKTM5ld/JJ7ZTDozeAIdO7/b2xUE0FWepjrX
         of0096+6DDJlMsJwRe2RhdXcpMnvOP4CxieB7X4HqlW9Ak48F7k6HsLHBbGC33tGeXWq
         6bggf1/n9XCgiaU+PoC2O61oag7PLSg/1Ztm8zqDr5pKoRrzitqGlYC+uN3UAMduL+3n
         yhyA==
X-Forwarded-Encrypted: i=1; AJvYcCWGCEbnLq38aTS/ZrFLcIUYt1EY5Vg9Kr/9NlxzFOtG/F4lBe7qaRUwwWZBWc0o0qQm7wYxHSw+VkrXcWDsdw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzb8VTSNDRNE73flzSBhgytkewyE1KPgKGoN2qqassS43xjoBvr
	Q/feQ4qpuI+8LvEaESxa/keOGTKRvCAizS+wcpzQ5Loq/85RmpzntWd4
X-Gm-Gg: AY/fxX7cB5jG0tZsbBDxBE44N3Sl2kN6k+Xp4vmEhSqkO8cDLaG8UivA3AlYGUruJxy
	On96gJ5CUNVsFkcq2FrgC1TKPQJZrjbFXTyZlyRhnv+5o9x7s7BGgziXC1GA2ma6jA5YPGorXbQ
	Rxu77RjyGk9dg6Em8cOhiVBxOtdsFYnHPmLNkNJuyuES7vr5OWnyx5HoOVEGzaBxW/i5wO/KyLL
	EX8Y7+5U7M0beP+YTGlyuCdOrvaal3X/8hKP2LRUL6ESf1vGM7vUN6ka/A+LTqLay8qyoUp4SrO
	10SJIluHkp32CfK2aJTvox7XOXiFzbAB8Fva5r+d/P1gDxL0VsfglNjKjOhHgYFEm3xD0d8MhLM
	uOJiKs4M/VbccvCPAIJx1RhogmiiqTHLsoEPcPvbVOi1VDBHVgt5jXSfkuHStEizWkOM4x/HwZR
	IxrG57PrbdGDpzzPc=
X-Google-Smtp-Source: AGHT+IFygpIY6yusxcHbmhs8BhJBr7U4UWeqoVUdejtLxA2a55s8mJN5G64VtQqtq7oKUer6tKeXIg==
X-Received: by 2002:a05:6000:400f:b0:431:752:672b with SMTP id ffacd0b85a97d-4324e4c8fd0mr26427791f8f.14.1766748706064;
        Fri, 26 Dec 2025 03:31:46 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea1b1bdsm44182107f8f.8.2025.12.26.03.31.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Dec 2025 03:31:45 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	=?UTF-8?q?Olivier=20Cr=C3=AAte?= <olivier.crete@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] media: rockchip: rkvdec: add support for the VDPU346 variant
Date: Fri, 26 Dec 2025 11:31:37 +0000
Message-Id: <20251226113140.573759-1-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251226_033148_824061_FC365A75 
X-CRM114-Status: GOOD (  15.10  )
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

This series depends upon Detlev Casanova's current v7 series for VDPU381 and
VDPU383 support [0]. It adds support for the VDPU346 IP block used for H264,
HEVC and (in active work) VP9 on the RK356X boards. VDPU346 appears to be a
close relation to VDPU381 used with RK3588, except with a single core, output
limited to 4K, and minor feature differences, e.g. HEVC level 5.1 on VDPU346
vs 6.1 on VDPU381. To handle differences we declare a new compatible.

The device-tree changes are derived from prior-art in Detlev's patches for
RK3576 and RK3588, the vendor kernel [1], and some earlier patch attempts
from Piotr Oniszczuk and Diederik de Haas.

The register differences between VDPU346 and VDPU381 appear to be minimal so
we currently and intentionally reuse the VDPU381 h264, hevc, and regs files
to avoid duplicating code. There is some evidence of buffer size changes in
testing which still need to be explored. If further register analysis needs
separate files for VDPU346 the refactoring will be beyond my current n00b
coding skills and I will either need some coaching or would be happy to pass
the series over to a more experienced developer.

NB: Testing with the v1 series showed lower mbps bitrate performance. This
appears to be resolved though it's unclear to me whether this results from
kernel changes or the ongoing reworking of ffmpeg v4l2_request support [2].
However with my current Linux 6.19-rc2 test branch [3] I'm now able to play
Jellyfish H264 and HEVC test media over 100mbps.

Changes since v1:
- Drop DO-NOT-MERGE patch as changes included in Detvlev v7 series
- Adapt to variant/capability changes in Detlev's v7 series
- Add bindings ack from Rob
- Add rkvdec ack from Nicolas
- Rebase against Linux 6.19-rc2

[0] https://patchwork.kernel.org/project/linux-rockchip/list/?series=1034794
[1] https://github.com/rockchip-linux/kernel/blob/develop-6.6/arch/arm64/boot/dts/rockchip/rk356x.dtsi#L1539
[2] https://code.ffmpeg.org/Kwiboo/FFmpeg/commits/branch/v4l2request-v3
[3] https://github.com/chewitt/linux/commits/rockchip-6.19.y

Christian Hewitt (3):
  media: dt-bindings: rockchip: Add RK3568 Video Decoder bindings
  media: rkvdec: Add support for the VDPU346 variant
  arm64: dts: rockchip: Add the vdpu346 Video Decoders on RK356X

 .../bindings/media/rockchip,vdec.yaml         |   2 +
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi |  49 +++++++++
 .../media/platform/rockchip/rkvdec/rkvdec.c   | 103 ++++++++++++++++++
 3 files changed, 154 insertions(+)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
