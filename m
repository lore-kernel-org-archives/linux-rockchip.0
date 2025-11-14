Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47313CE7A9A
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 09:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FNSlIs8YamqVH7bQjQ/FsZqsUV2N0FOXhfK6kUxUmfk=; b=zBjyfM6lNEssFE
	VEFuT85Mzm8RCzzuHOUzA5VXwwU5cZzboPA45/8HKY7l5bxXqrqD1KLKhSHL5pLU4PYwfhonNMTDr
	S9R9k9NjyzsxyL7v6ap6jTBwCZrI8okOfZ0GZ8BpYQYc2mPug9mOJCe8O4wL1wGi38RNmDH/B2YTd
	G4EFfBOWoo7onTBJURxvBuWGtLNSDjRgzzmg5lrq3wxmlYlVXTHo6GMlzB8gdOPM5jZXuPyTTaMdx
	WDzzNeS13w7qqkh01iuGcW+kWlsqKvJweC1n+x4i+Mq858/yZmrwAsWBpcX8ZsL0hQKUpYGZj29Tk
	CzfqgDrHhkcipHfQKIMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJq0G-0000000Bu1J-2hnq;
	Fri, 14 Nov 2025 09:22:00 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJq0E-0000000Bu0u-0Zua
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 09:21:59 +0000
Received: by mail-pf1-x443.google.com with SMTP id d2e1a72fcca58-7b8bbf16b71so1997081b3a.2
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Nov 2025 01:21:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763112116; x=1763716916; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ogBfguXD7Ae9sdv5N65XJUo3sy7Qes6+8do/Cavegx8=;
        b=cJ3SQpupRs9CaucqtXR5NQVHqApT0m40BAcpKFVgpCjRl5GrzrAmQxigyXxAuE6B5u
         zn5HFqEzXtticcr0qAuUSJAp9TPLM7lkgVoNryEXwG6BxyYFbHfFd2445DVR55HZxZbU
         PnxTyfqAw+Lw0rKaPUq/+LbUIc0dywliaZz9si4siMWPm8pMkXVEiMvm4u3cXHxRtSjN
         rbsyiH6nF5hF3zfyRcDz7vX4nKwrKfia282f2Pf1WdOTGcl0M1eFaaSTdZ1VzZA3XNJy
         kb5WNc00QsezKl8nl2FP35XbjpvUK4grJRuOttheOx1jDUgnoTJeQ2ErmbHfnlK8FpoO
         l9jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763112116; x=1763716916;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ogBfguXD7Ae9sdv5N65XJUo3sy7Qes6+8do/Cavegx8=;
        b=jlYXMcszUWHdzo9JfsCG9e+ik2mZBiBzZi8Ue6WTiofr7nIyC6oi4IFCEueHSbyerj
         qpU8/lK1HP9rak1xfC4fiekuviBxL/vUKIyKc3iZD1YmEArA3+0aOI77FP46DkDIVNqL
         nDaxRUBU7/53v1wEmJt13/IGCoPTrb1oH5qSSr6buosqWBAwDXcT0O4d5/7OtSyhrJCN
         pUmVAlSCij4Lm9oYa6I5fe2Cd2SWfGUFN728ec9P2oMRo+Jur9A9yPEGgSTT0VFryVva
         5DJ65WDi/gdAmOUwgcKww2O0ZJxKYPkkxUbhEEe5gEEXXOuv2jLvL3Wygp+8D6SVu03a
         PBhA==
X-Gm-Message-State: AOJu0Yz58zf9AijQX8Hei34WSPeLPzGCIS+MNv/YLI1TrIaAcjc6sEOl
	DNLQwcO74ZDLQFtkTtDdvHB957isMMMxcmt/mwk6WhIcBCFzrFwOE32c
X-Gm-Gg: ASbGncsYSz2HvpoSFq+dRZF1vO5NCrSOC/1feJtZRRfKpogdLs1T+gdEQM0x1fxNyGi
	s24jFLwXmd2VlmJhrnami/4U2SQuoaRcbE4xsDqn8NwKvdMta0dhkTR3uW+t+BTzoCcDPNViRb0
	4fOOBh8R4qIxANlULnjfqcy4qhsfgruaTbzDoApT7mVHQa04AajfdhfJxb0VeMhQBLgxaMa+/Hs
	MwzFml2bMpJK+sXnoKv2ma80wEGE/qmSmwHnT2NS/SBPI3roxlD5e0nVHjlekfnnHAYrHtZWV5k
	6PNWrLMfgZ2Kd9mySTmO9rkAnQ2BaWFWrJw0KLWysmeEDvd2bZqhOvmgWBB+U2F/bcHRRGGxvQp
	7si7+7R8n3p4alMZOfcevV/NeLtAwmqA0t9afkGoUoCzDu2TKkFrWuII7ScXICIaKTRGoHltaEV
	myVxrsPFHjictKljB9N97Fw342lNyR7Y0=
X-Google-Smtp-Source: AGHT+IEhsyOsCml87IDQ+/migcKkz7/6nfsGW9PsXw3MVrtaRXA9qORv9YMVhPaGW2b4NkVyDAjapw==
X-Received: by 2002:a05:6a20:7484:b0:34f:7454:b977 with SMTP id adf61e73a8af0-35ba1d9c6dbmr3508359637.48.1763112116399;
        Fri, 14 Nov 2025 01:21:56 -0800 (PST)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b9256b58dcsm4578400b3a.32.2025.11.14.01.21.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 01:21:55 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: fix PCIe 3.3V regulator voltage on 9Tripod X3568 v4
Date: Fri, 14 Nov 2025 17:21:15 +0800
Message-ID: <20251114092114.62664-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_012158_175757_E8840A42 
X-CRM114-Status: UNSURE (   8.77  )
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

The regulator type is "regulator-fixed" since its voltage always be
3.3v, min and max should be 3300000 make the regulator has a voltage

The regulator is supplied by dc_12v, so add the vin-supply.

Link: https://github.com/rockchip-linux/kernel/commit/17e9559f67d26f3c602e38a24feb5194e51ac782
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts  | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts b/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts
index ad4d62060..32fda9f5e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts
@@ -170,16 +170,16 @@ vcc3v3_sys: regulator-vcc3v3-sys {
 	};
 
 	vcc3v3_pcie: regulator-vcc3v3-pcie {
-		compatible = "regulator-gpio";
-		regulator-name = "vcc3v3_pcie";
-		regulator-min-microvolt = <100000>;
-		regulator-max-microvolt = <3300000>;
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio3 RK_PC3 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&vcc3v3_pcie_en_pin>;
-		gpios = <&gpio3 RK_PC3 GPIO_ACTIVE_HIGH>;
-		gpios-states = <1>;
-		states = <100000 0>, <3300000 1>;
+		regulator-name = "vcc3v3_pcie";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
 		startup-delay-us = <5000>;
+		vin-supply = <&dc_12v>;
 	};
 
 	vcc5v0_sys: regulator-vcc5v0-sys {
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
