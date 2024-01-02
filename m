Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12062C47079
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jan 2024 21:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nd46hMZi12B+ELbrkpviFK62uuXoFw7wca5pWDCyx0E=; b=b2f4od3NcrW2EN
	X6wRp0d8djcgdtvxyRzSdsoE12ia0B11WfTojmyqYsV2zjfPDu2P7B9SNNZL7uulSHDVmp0LfwvWF
	GhedDw3y0rRzP17AhN9pxqqsPlTBSv/xhHQw716zT54+f8/rSsObggfB/g3Y2CKSAvWUmO70cygs5
	XgN44NmQhwUvSxxoIF3v2S1rivG8QMRKjLkRR3rUYWPeC3lW+YU4iC7Oy9GT6Ptm48IwPTzYqTyMX
	NJeigLshLpQiSqSYkix3NpFoE7Z647maJTBAAWcew61waAP/YCfGGhp7uaOPq2Q2kZPc/ex7qtRMj
	iaW+D311tuDjUgKZtyUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKm0Z-008zs0-0u;
	Tue, 02 Jan 2024 21:09:07 +0000
Received: from mail-io1-xd2b.google.com ([2607:f8b0:4864:20::d2b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKm0R-008zkr-1T
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jan 2024 21:09:00 +0000
Received: by mail-io1-xd2b.google.com with SMTP id ca18e2360f4ac-7bb99f77f97so50074139f.1
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Jan 2024 13:08:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1704229739; x=1704834539; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HRoMMnuwwy1ybNYQkYoJT5CIAhjtnaw7FKUhRhlzX2I=;
        b=I3QT2hNuz30S+6RygZoShoiSpNdkOjcZBVG/pGEKVSzxR/Cn2Zj2wSIUlMDb+o6yxf
         utZ7RY/+pjq/1mMbUBUSUnRrOs7tlzlLdxEfj/YouhuGTeTZGmxDqzmJefAzA69YTf4k
         Rzj4DXM4zc90nkEHb59sZ6PEJbgBzdhF4bLBA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704229739; x=1704834539;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HRoMMnuwwy1ybNYQkYoJT5CIAhjtnaw7FKUhRhlzX2I=;
        b=g2h4Gynjo49Mats1TtaA/CwPv9oaSjt8ousYtXNUcUfNdN/s5iLdfRpHpr/YJRi9+P
         uVHTqyBB1Zouw4/PQDVXtwYRyKTDXLFM1M2idm+clpRhLQMc9h6kVPD2EfJK6Xm4zf4z
         PWEHtGkmrSGdfZQues48KL8cQisbZnNl2b5+STzqjS5OamGldoPl0SwiZR7Jxr9fQ170
         PnJJvlWNkOL3BK+HlgRzf+bzM0SNVRkiAV3ILTlXPm2Nt6OWHC+GIe1qfiGgTe+IUaAp
         d7NFvj5Z6s7rymQTJVgE+SgjIVUmV1cnp9GiAetWwoNP16HMMXY5pM9nthVy3lBOEr7s
         6JeQ==
X-Gm-Message-State: AOJu0YxYZR4e37Q52NDuKFNos6EwPzkTom3izrn807AF77KH805itlYz
	EfyHYhSd8Df0K04RNjXisfrHEr2K48+E
X-Google-Smtp-Source: AGHT+IFgjON8QaOIIt26i2gGQ8LaLRzi4hK2OMzadsvli0BLJTN6UjupAQhSNUzvjDASC8Dg4A9IRQ==
X-Received: by 2002:a5d:83c2:0:b0:7bb:b722:63c1 with SMTP id u2-20020a5d83c2000000b007bbb72263c1mr34165ior.16.1704229738882;
        Tue, 02 Jan 2024 13:08:58 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id bo18-20020a056638439200b0046993034c91sm6956978jab.77.2024.01.02.13.08.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jan 2024 13:08:58 -0800 (PST)
From: Mark Hasemeyer <markhas@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Raul Rangel <rrangel@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Mark Hasemeyer <markhas@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v4 17/24] arm64: dts: rockchip: rk3399: Enable cros-ec-spi as wake source
Date: Tue,  2 Jan 2024 14:07:41 -0700
Message-ID: <20240102140734.v4.17.Ice617703aded22ad4c806459129e1ae693eb57af@changeid>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20240102210820.2604667-1-markhas@chromium.org>
References: <20240102210820.2604667-1-markhas@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_130859_507275_B26E54F5 
X-CRM114-Status: GOOD (  13.13  )
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

The cros_ec driver currently assumes that cros-ec-spi compatible device
nodes are a wakeup-source even though the wakeup-source property is not
defined.

Some Chromebooks use a separate wake pin, while others overload the
interrupt for wake and IO. With the current assumption, spurious wakes
can occur on systems that use a separate wake pin. It is planned to
update the driver to no longer assume that the EC interrupt pin should
be enabled for wake.

Add the wakeup-source property to all cros-ec-spi compatible device
nodes to signify to the driver that they should still be a valid wakeup
source.

Signed-off-by: Mark Hasemeyer <markhas@chromium.org>
---

(no changes since v3)

Changes in v3:
-Update commit message to provide details of the motivation behind the
change

Changes in v2:
-Split by arch/soc

 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index 789fd0dcc88ba..b5734e056aef1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -603,6 +603,7 @@ cros_ec: ec@0 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&ec_ap_int_l>;
 		spi-max-frequency = <3000000>;
+		wakeup-source;
 
 		i2c_tunnel: i2c-tunnel {
 			compatible = "google,cros-ec-i2c-tunnel";
-- 
2.43.0.472.g3155946c3a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
