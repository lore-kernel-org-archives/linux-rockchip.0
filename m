Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9144C4707B
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jan 2024 21:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2E50vHjD72+eyWEYl4HNWgtwjRlvSh/o8QqfWVP+ck0=; b=QRESV2sd8o6Gd1
	AkBUeSMJ+RuPz/7D91unl9z4EzXWeoUBFhIr/EefHt5kjuDm8c/c8khsA2gVF1ntFDlPzwS7Vnufy
	vGN3mFdGKlW6N5b0NUZWOEHBwuSmC/4z9FCB967CMYJpkS65ifEyt3j4D4SOXMuIRR/H4IowilvlT
	3jP7H/Ic1Ul4bv++RUTX+blgWROe9yIhJ5wPfsueXG/73e8tgYySkmHhzXu3DjoOBwwmlhmfTGw6H
	aSm89MXN2WbGWX8z+SJGbMQGvmOY+ooxdikSksEPVvzYvEgY41+wBuRuZsxnz7jrR9P3JSjDBmhZT
	vRQ7jmftZIUKF4x9X4yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKm0L-008zgl-1b;
	Tue, 02 Jan 2024 21:08:53 +0000
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKm0H-008zd8-0w
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jan 2024 21:08:50 +0000
Received: by mail-io1-xd36.google.com with SMTP id ca18e2360f4ac-7baa8da5692so421989539f.0
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Jan 2024 13:08:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1704229728; x=1704834528; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y5uC/dqzQmYcBPDfBK6LehJHA1Nu9NUaC8OommBsuso=;
        b=mm5iSNZookuV7Mj/TzSxRIJMUeIqG4+glkaMZeFK+WG54L4+GpdFboX2NRcMqRT5fa
         wHVUVJ0pC30vMQKGlwDs8Zf5eX3T9+4Ab16eYJ4GuGlT1u/V8ldvHmv7EpEchfBrvc/o
         p5xe8Tkvw35HiP5pb5IOrgNcosw9v5dcyX4cE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704229728; x=1704834528;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y5uC/dqzQmYcBPDfBK6LehJHA1Nu9NUaC8OommBsuso=;
        b=vU9yBUOUADwYR9fGx2TWwS7+D8k2gGUnJTOWnIWgLa+kervJ5u8wPyX4J/O18jdNtQ
         TSqcVoqrvwG/463OHWfb7+MVO6/gh4bjHxeCYgT9sw1ZIl6uFh3U+Shiy/gKhHHtrfEV
         qTNGQRv4Oe2atu4HNwU589IHS0VK7O0shZ+d7Jyo1cABj3MyQJE8/bkKTsK+H3XDxBOc
         xZqHvIUKx5gWK0hbHtDlZ558tf9mK6Od5yWnazIa5X0bbcpayIZXkjZBPIqnMwOXoFb6
         36Qo0SRLAzDhHKZbnj5AqBMuOmln0uE3Bx5Yrr/UyoBcgSAAW9mV5aJRYIwZLI+04zYi
         DpLQ==
X-Gm-Message-State: AOJu0YwFThIEssfl8M/OthrdJnFqJeqLBC7WQEC6c15EksnG9YpFcqJn
	GgziDL3beIigdC2gFMVTqPZawyXt6KJ6
X-Google-Smtp-Source: AGHT+IHWKoCxJRGKNJPcLHrsAhYdGs8ek7DpUdoZoMbtH5+b3OOlyzYczn2NyfouKVIhZZpmVYFcgQ==
X-Received: by 2002:a5d:8d84:0:b0:7bb:40db:9a47 with SMTP id b4-20020a5d8d84000000b007bb40db9a47mr8538555ioj.34.1704229728788;
        Tue, 02 Jan 2024 13:08:48 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id bo18-20020a056638439200b0046993034c91sm6956978jab.77.2024.01.02.13.08.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jan 2024 13:08:48 -0800 (PST)
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
Subject: [PATCH v4 06/24] ARM: dts: rockchip: rk3288: Enable cros-ec-spi as wake source
Date: Tue,  2 Jan 2024 14:07:30 -0700
Message-ID: <20240102140734.v4.6.I8249df4df0b7d12fb68ea1e69f84ca589c574bb1@changeid>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20240102210820.2604667-1-markhas@chromium.org>
References: <20240102210820.2604667-1-markhas@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_130849_333904_25A3550E 
X-CRM114-Status: GOOD (  13.54  )
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
