Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E1E2C47258
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jan 2024 21:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2zdoFdODbNVX8NZaRmVzwT6pm0LPIfiDW/k0IVCZnlU=; b=snz2FN5FSqG/ve
	3YV2HuchkjhWW7mAtjTwRGdViwQj+17mWkFwE/VELVx6p4RQaoFnjktXeVh/xVxjqCohykqqMuTFR
	8oo4WKY7DlqZShDarV4KakNWIZ/H32zPZjJ5LZ0/mtVszhxQo1wCeGPrwsJV3hPmAwQ/HBuI2yS6k
	ZeiBxcc9z39lVd8RMeXW7GY0CBszh2vMgn9AfgLMn4OjUj0aias6mJpDFWaXTJLlmrLpR5qsLPNK2
	yzQzUuiBOhHJJE4dk8huleWHyHiXRKxYhhsefz90047qAC3kbrFuE4bTKiFJAPALWD849PZrzKv9D
	tSLFzqPqbwGWXdPUbeFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSODv-000Vlj-0s;
	Tue, 23 Jan 2024 21:22:23 +0000
Received: from mail-ot1-f48.google.com ([209.85.210.48])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSODs-000Vjd-02
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Jan 2024 21:22:21 +0000
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-6dde173384aso3839865a34.1
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Jan 2024 13:22:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706044878; x=1706649678; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AHAGkFwxLewCCCdzfxQpaTguak4yI4GrECprCWhB9r8=;
        b=LGMJhvnjTkXEc7r+6qzAnJTkbGu6kCeejoMIw5SIy7BQOA6a/Svdfw+4h6XhHGWMrH
         N4/qG8UUOkv2FX/QWYgHFBiYWrFoO4JxdsASqYBbFU+GBf0TiMyMMlUpxsSxjMNXlhU+
         pl75qvh2Jwxs4RFd1EyGhnEHO1LlLxtw6V9LMnYfB1IRleEjg6hNR40v5X9It1RqN/MM
         Zv4LpWOMSwDl/iUsdT0p/5B0lhmGoptM2HGLuOA7rOSm8x2/isXkR6nyp3R2oQlunSjg
         PpPd8E9HHlbuQHEfUZPK5Aa5ENsj933xOHAzQNnBe7e7p7uLMxygE/a8hbvWGcC2lFPa
         V4JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706044878; x=1706649678;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AHAGkFwxLewCCCdzfxQpaTguak4yI4GrECprCWhB9r8=;
        b=DbNqKm7MCKFU5kGczTdcEzbdfoNM3F+6iXA2FXedK+CNjH+hR+Y/jVLnPA6EKPXRB2
         fHAWM4JgHsPDxJYrfV3JdsdvRsC6RCFVHAlxteHfz6HGC2ELvQ2yxoELlywigCVO6v79
         ZzZlMGe0+bOk7jV0gluBx/PCk9G6v+BcI9TPjT7uwRSU4SyOuJuVWimKFOd5Z+qGk0AN
         b9JxGlfnsk871AJW+wUqnviGsVjdqHv46TA0Q39Cv5uizefy8sEcrbkqS8BtnjPQoqGM
         AoRyluDAUuiaN9k54LJ5faKLOS4syLz/IwmsbPYbb1z1/95WQV6K47BAJl9CXWwOoKJV
         OZZg==
X-Gm-Message-State: AOJu0Yw3TFfruBAj/jOFLZNV/GrlhAZsAUhAWaHJgDt1Qb3OW470Sp7a
	7eCpxfdV4DLZFArS/6KF+vfZR1uoh5x3iLwQuLzCA8P8si4JBMW+OR6cU7ui
X-Google-Smtp-Source: AGHT+IGkxYUjValEXECGEiPKxSkIveHC+S7J1r3MOep0Caq0PQhXCD5g8WzFDheWBpkldInCCYB4hQ==
X-Received: by 2002:a05:6830:1e0e:b0:6dd:de84:2626 with SMTP id s14-20020a0568301e0e00b006ddde842626mr573131otr.58.1706044877797;
        Tue, 23 Jan 2024 13:21:17 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id w2-20020a9d4502000000b006dc6e40ba97sm2265770ote.72.2024.01.23.13.21.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 13:21:17 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/4] Add Support for RK3566 Anbernic RG-ARC
Date: Tue, 23 Jan 2024 15:21:07 -0600
Message-Id: <20240123212111.202146-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_132220_046913_3CCEDC25 
X-CRM114-Status: UNSURE (   9.81  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG-ARC S and RG-ARC D handheld gaming
console.

Chris Morgan (4):
  arm64: dts: rockchip: Move device specific properties
  dt-bindings: arm: rockchip: Add Anbernic RG-Arc
  clk: rockchip: rk3568: Add PLL rate for 128MHz
  arm64: dts: rockchip: add Anbernic RG-ARC S and RG-ARC D

 .../devicetree/bindings/arm/rockchip.yaml     |  31 +--
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-anbernic-rg-arc-d.dts |  42 ++++
 .../dts/rockchip/rk3566-anbernic-rg-arc-s.dts |  19 ++
 .../dts/rockchip/rk3566-anbernic-rg-arc.dtsi  | 237 ++++++++++++++++++
 .../dts/rockchip/rk3566-anbernic-rg353x.dtsi  |  74 ++++++
 .../dts/rockchip/rk3566-anbernic-rg503.dts    |  74 ++++++
 .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   |  74 ------
 drivers/clk/rockchip/clk-rk3568.c             |   1 +
 9 files changed, 458 insertions(+), 96 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc.dtsi

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
