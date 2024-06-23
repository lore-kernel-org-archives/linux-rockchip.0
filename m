Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7339FC2BA18
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 09:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LWnQqN6Iov95fBSGVNxoGTvK5O//ek+4k2s9CNqfS1w=; b=tio/JSHSQeeamb
	DEAA+Kk7BFkGQ4y11w2R3wr2raHdsihHnNnBsExx0KVQm+wByD+q/QkfojgON04Wvoc5buSIc5zMS
	/CkfVU2qt+/HC7482KkZLz2oGSDjX+q0dlTiHeB5Yx8QiJBVujHzLgRivnl5GnV69mneC83HUmrMP
	EpZjvX4uhZ082GAuAiFBOVtmVWSN++HAhvlKrfj9t05bR3FukxatfO1QolyMom/qQL6BDTUZPjcn1
	rX+MThugO3x62894P1Cch1j2f1RFSoHZznhBpJuKm+zOPPzRKLekFEHPOMtRmJ6n3upE1qNv7gczK
	ubvZOdZiM+fd5z+/k9Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLJ6L-0000000DezP-3XjA;
	Sun, 23 Jun 2024 09:01:33 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLJ6A-0000000DesT-1la0;
	Sun, 23 Jun 2024 09:01:23 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a724b3a32d2so25610466b.2;
        Sun, 23 Jun 2024 02:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719133280; x=1719738080; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eFkUozk7tb7flvFcyJ5JsIPbVaD8NWPVa3/c5jb4Wl0=;
        b=A2wvxPniUf4AfZSg+UgMqRHGZjvQy7vNq3CErSg7H1fP56T+qaFTJkr/QWmMWNeVag
         eS/yrG7Up3s0mMnK1coGlwa5Qa5rfZw2vQJsjf3dL63DwefKZrjWvOUleVdO+BmdJT0R
         f8uDMJ0mHx3RU4DD75xmLr7YyddoWplmaf30DKiWLkq2SAw0X562j3vH4+zuEU17Duga
         yCIBU0TQP5u0HdwtzlRl04iZNgasuKPESHTyqylHlKeIm9Giy6SbwvsxO9erR2sUuPWm
         NdGZccRwyg0E517zBA2lb5f6KtsRG79jb/IX6k54z9A7dcwUXRuyAXl/bFU5lRs1rUM5
         oaPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719133280; x=1719738080;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eFkUozk7tb7flvFcyJ5JsIPbVaD8NWPVa3/c5jb4Wl0=;
        b=mCqXouqImS9E0milX7xfOOAgNHyI745PUjvUR0twKB04exiKtRfAIllno2B7WYj9xe
         B7BGsHnl9s/x+Mubx2vDM2RDiLM28GKOwJjX5dsDBgVbfSYHC7vpbEdNRmtCVoHtC1uZ
         JtkJ9HYkUeI+6mj5DG24eDuzjGj1HQoHJiebOe4Jmn3N7m1b+2LvfXwPOZoLF6JHiCWi
         +aK6M75WGdudhhk9nIQcC8yA6WXKSLSjIwGHA1VKpKmp2GDvl6Z9aqQvX3mprMKl3B68
         PIJaYDx9TDS5WoLdZKXoNe6RXGfgclbgDhMOmheeHsOZcT2imjR7OUtf3882ryIF6ffN
         56Dg==
X-Forwarded-Encrypted: i=1; AJvYcCV4xoM6CpQa3er3fZVEiYS+kXNLGxLzAceb7DDLZn1hifjE1c6XjLtb1FeDJIeW+j6hSqdGukhhb/6kVMfZrqClo4YA/mBWEBoIUzKtJMLWXFyxkNOAY4101glTIzEwKj4MUVCxUtyMqAq3dYBwqiiyTUYFT9Q3PO8=
X-Gm-Message-State: AOJu0Yz5LOS/eFGBUu9sMRGb16Re3aLomUQIKp3ZjGfilnPMj4tto7Gp
	V/wwdbzLgTGw+Qe1JZ5Sc8tuJqya5EcwCAIOjvKBHxPCNpVwMG8=
X-Google-Smtp-Source: AGHT+IEkTY8f9AOaCiHWnETbKjMyatFQQde/0YHaQ792Qit++4rDQ5/AFcUhEi6j5LZQaTlHzyK/Mg==
X-Received: by 2002:a17:906:e28c:b0:a72:42f6:ff0f with SMTP id a640c23a62f3a-a7245c70af8mr79308166b.77.1719133280012;
        Sun, 23 Jun 2024 02:01:20 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:eac1:5757:d323:9544])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6fcf549385sm282003966b.105.2024.06.23.02.01.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 02:01:19 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Sugar Zhang <sugar.zhang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	inux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 3/4] arm64: dts: rockchip: Add sound-dai-cells for RK3368
Date: Sun, 23 Jun 2024 11:01:15 +0200
Message-ID: <20240623090116.670607-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240623090116.670607-1-knaerzche@gmail.com>
References: <20240623090116.670607-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_020122_466606_A3DC3044 
X-CRM114-Status: UNSURE (   9.71  )
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

Add the missing #sound-dai-cells for RK3368's I2S and S/PDIF controllers.

Fixes: f7d89dfe1e31 ("arm64: dts: rockchip: add i2s nodes support for RK3368 SoCs")
Fixes: 0328d68ea76d ("arm64: dts: rockchip: add rk3368 spdif node")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index 734f87db4d11..73618df7a889 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -793,6 +793,7 @@ spdif: spdif@ff880000 {
 		dma-names = "tx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&spdif_tx>;
+		#sound-dai-cells = <0>;
 		status = "disabled";
 	};
 
@@ -804,6 +805,7 @@ i2s_2ch: i2s-2ch@ff890000 {
 		clocks = <&cru SCLK_I2S_2CH>, <&cru HCLK_I2S_2CH>;
 		dmas = <&dmac_bus 6>, <&dmac_bus 7>;
 		dma-names = "tx", "rx";
+		#sound-dai-cells = <0>;
 		status = "disabled";
 	};
 
@@ -817,6 +819,7 @@ i2s_8ch: i2s-8ch@ff898000 {
 		dma-names = "tx", "rx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s_8ch_bus>;
+		#sound-dai-cells = <0>;
 		status = "disabled";
 	};
 
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
