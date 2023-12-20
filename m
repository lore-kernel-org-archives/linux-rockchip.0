Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFDE0C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Dec 2023 23:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=++6LGW9uksW+c7wYTj789uSfxFGRSo9K+z1oOzuSKtM=; b=cNUwYnh/+24QZv
	6m54u+3D9xEXaklTFkNDPvN2MHZflSiPVKoe6Dtz7PMbw0BgzqTKw5HscoXRK7ANNlhujU0zzTeXN
	WANJjNw45ZKAo/6gOhtFOBN7F7RmdtneqvnojMfrNJehn1l4brt7GrZMqmWIZTEqyqBlPOx/h371t
	8L6VTdzxu21OGF+EIzPHR0H97pUNHMJOz87kWRuxOLWS+ia3dSLjOXonqrpX7xvo4IlTFS1BoF15B
	tojreGf0p9MX84dHzH+RHrMX5t0tc+BSF2w0A6BNjvjLEw1mZ1B7dD/KviOFi/i6ds95GytVEHFXd
	nalW+34/RZK3CSQjzUGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rG6PD-001ILC-1O;
	Wed, 20 Dec 2023 23:55:15 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rG6PB-001IJf-0T
	for linux-rockchip@lists.infradead.org;
	Wed, 20 Dec 2023 23:55:14 +0000
Received: by mail-io1-xd33.google.com with SMTP id ca18e2360f4ac-7b7418bea02so9336639f.0
        for <linux-rockchip@lists.infradead.org>; Wed, 20 Dec 2023 15:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703116512; x=1703721312; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uCBYuSyv1htu4Z4UMY79JiCUyFE6xNOmu0NfxL7CL1o=;
        b=clg8QsyUPIhC/onOV2lDz78rxdyiHZZEGsyHTC0V5DXW7zmp3bnZQvIncLhwBJTrd/
         b10S4e+iFdLmLKTYiQOUVIMPEpTgENFs46HMCEUZksiBuenOabIxwh/K+hI5sGgv357D
         cshDxB260CELrbelEcd42VH7Bx8axyvc3d/bg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703116512; x=1703721312;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uCBYuSyv1htu4Z4UMY79JiCUyFE6xNOmu0NfxL7CL1o=;
        b=F4N7u43iTQLebgZjuXk1TH0XQbQnyRbeAJlH22HCtemVQMQucJd3U+oIpmX8P4iYsM
         IFfFpjmz9nzppUUnpt9H6om4fEb/+YR414DMUtNx8EH9RDPm4gDk+sYtaG0G7Vol7Auf
         xs8Y1AYo+PBlSwxd/oS2wb085pBsCMoZBw2snmGulQi3YU5U2PUiG9JMYDqNxX00u7QM
         mV6c94VzpNck7npQzVJymgd2U+nFHeXdo5exClIIjsu+IMvLh0K9EwpzSPtsmbcZohK4
         VfnC/wRvP6DfUrDIAM4YaH0+07xebbLd7rlDVi0OqoSG5CPSXcw1NqRhC0RM5XbCOXux
         xArg==
X-Gm-Message-State: AOJu0YzJn7217GO7s33B8hB32KKwgTCICKuHooJJnN/r+Xl9BtIPj/pR
	AKgsOqtfawUDwIf//hda2jYr+A==
X-Google-Smtp-Source: AGHT+IHSg3mJJWavfesm2hpmBZ0S+/Z6QyumQes9iV9E7AinPPpe4ysdoPMdMc1c/Ob/o7mRjGp4Kg==
X-Received: by 2002:a6b:c8c8:0:b0:7b7:f971:8e75 with SMTP id y191-20020a6bc8c8000000b007b7f9718e75mr3226475iof.12.1703116512588;
        Wed, 20 Dec 2023 15:55:12 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id bp22-20020a056638441600b0046b39a6f404sm177805jab.17.2023.12.20.15.55.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 15:55:12 -0800 (PST)
From: Mark Hasemeyer <markhas@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Raul Rangel <rrangel@chromium.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	Rob Herring <robh@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Mark Hasemeyer <markhas@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 05/22] ARM: dts: rockchip: rk3288: Enable cros-ec-spi as wake source
Date: Wed, 20 Dec 2023 16:54:19 -0700
Message-ID: <20231220165423.v2.5.I8249df4df0b7d12fb68ea1e69f84ca589c574bb1@changeid>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231220235459.2965548-1-markhas@chromium.org>
References: <20231220235459.2965548-1-markhas@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_155513_197767_C9748928 
X-CRM114-Status: GOOD (  10.43  )
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

Add the wakeup-source property to all cros-ec-spi compatible device
nodes to match expected behavior.

Signed-off-by: Mark Hasemeyer <markhas@chromium.org>
---

Changes in v2:
-Split by arch/soc

 arch/arm/boot/dts/rockchip/rk3288-veyron-chromebook.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-veyron-chromebook.dtsi b/arch/arm/boot/dts/rockchip/rk3288-veyron-chromebook.dtsi
index 092316be67f74..1554fe36e60fe 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-veyron-chromebook.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288-veyron-chromebook.dtsi
@@ -112,6 +112,7 @@ cros_ec: ec@0 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&ec_int>;
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
