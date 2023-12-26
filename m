Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E68D7C47072
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Dec 2023 19:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Se0R4h4suxuPF4fwW2QcY4/B/2Ugx34x0FnK6FuOAvU=; b=PIjIHoTIrp9LxF
	4ltjrZ7hc/U8RQ8C4x3r1h7qzIRCXAwRm82lMxVfyCnfxtZupJEPK6WVN/JBX1X3xzm1HXfUyyu8a
	Zaotto+1A78REPYyWIqHsKdVCS6B2WfRJzAl9zOFyouJDq5WqxfPq9YdTgLyCN4mmiIHp8QVlN8Dc
	hiQheKqKlKrQTNM9yd7+U3l6JFpJhLi4+COBDiJ+Y4aCSSEHKuVvwiS40EC5DEo+IW6lF207++KQD
	CTkDWybCGhnlXOxGs1vVsd2ZL5WYyriEnr7GHT8+QdyncHj8x14tWKjv5a9+vFhHnDfjxCvF4fzzt
	K+Ke3SoDe0W6U9xDZF1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rID0F-00DPk8-1X;
	Tue, 26 Dec 2023 19:22:11 +0000
Received: from mail-io1-xd31.google.com ([2607:f8b0:4864:20::d31])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rID0C-00DPhW-1x
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Dec 2023 19:22:09 +0000
Received: by mail-io1-xd31.google.com with SMTP id ca18e2360f4ac-7ba7c845e1aso282353839f.2
        for <linux-rockchip@lists.infradead.org>; Tue, 26 Dec 2023 11:22:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703618527; x=1704223327; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0beT1lRwobeT/udVDQveaOigS7b6fLoDcuD/SsK5GZQ=;
        b=BC/ps7Xha3YFCWIXZLPEC/AU1X5geLC/fH0mToiHic1YJUzqRi4+u1E9Nj0UqaThCU
         dK3zjEDaeCrMNiu9AxvTBDLZriuavI/3GMLc7TKjyg2r8rftrPWOTCyeHTuefv8THjs2
         5eFYvATM94v+ss4w/4pGcGi64kvw4j7W9zoKY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703618527; x=1704223327;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0beT1lRwobeT/udVDQveaOigS7b6fLoDcuD/SsK5GZQ=;
        b=UsfQ3wtAKlFUJb1TRBtDo8+J/lYK0CDb9umiCtAj/v63ExANxhZ3E6yOo3tQpeoSv0
         SF8+FP3ZoRn5zww4Ml+hNs3bAUUPELpcO2TDocYFw6Y7teCz+XID7jiCE/4EtM5Uc5gA
         sFnfT5lJapFfT071GuchvZbRWLWXYCWfYQdXzpUkNQ2iP+xAeedroURgw2yt0FBLfvab
         guFzfkBtX3W9/+BHg2B6YSEZPs+Kf4+xqTRpUy/kkwk0/j7EWCju9r9bQ/wHwQj8f9cq
         jHLVCbRg2E+828WDtaeE92xbfIlk0YhZ9NuFpZlxIs1MM7wSiRiGTAgKwwVTfvPJTxYl
         /j1g==
X-Gm-Message-State: AOJu0Yyr/DUriAGzF5BnDbF8J+ovviooC2aMDqyKcNJwxWj6Juud3wrr
	FobG+BXz58H9DnmOrEmNKKvp4rgtsCAi
X-Google-Smtp-Source: AGHT+IGADxqOdqzCrh+kKQobH0CySQymMukyoXwB9KeUWYmRE9fqJHH6xGioz00eswrRyG6LPpu5FQ==
X-Received: by 2002:a6b:5a15:0:b0:7ba:b0d7:20e5 with SMTP id o21-20020a6b5a15000000b007bab0d720e5mr9733427iob.0.1703618527498;
        Tue, 26 Dec 2023 11:22:07 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id gw3-20020a0566381ee300b0046b692e719esm3207609jab.150.2023.12.26.11.22.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Dec 2023 11:22:07 -0800 (PST)
From: Mark Hasemeyer <markhas@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
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
Subject: [PATCH v3 06/24] ARM: dts: rockchip: rk3288: Enable cros-ec-spi as wake source
Date: Tue, 26 Dec 2023 12:21:10 -0700
Message-ID: <20231226122113.v3.6.I8249df4df0b7d12fb68ea1e69f84ca589c574bb1@changeid>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231226192149.1830592-1-markhas@chromium.org>
References: <20231226192149.1830592-1-markhas@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231226_112208_649333_A9F3FBF5 
X-CRM114-Status: GOOD (  13.06  )
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

-Commit-changes: 3
-Update commit message to provide details of the motivation behind the
change

Signed-off-by: Mark Hasemeyer <markhas@chromium.org>
---

(no changes since v2)

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
