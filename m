Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09C68C46CD3
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Dec 2023 19:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lfum4v2uAFVrc8a0GhJPx6iAEIMgJoDjQa6Il/7eFY4=; b=xuAZLLUoiSgDud
	Z8mFiAMLSjUOoZCymlPss0yjmqfwngxCLVKPa4jvJnL4qbdZAjXa2t1194wN1z23sh8kta9WkSHSy
	+t3DCqFJ6yzAH2Au4jCLKqqF0ipHTYZdUc6uarhWQbE/c/wzfSBhzvn7Ayc1yFXsK0DKrejVAmt8T
	ELnO2ARIZLXTY6DUiFsYnm/5xFDd/7SJN2falw1JytDqbb6aZvfPlNW0RfsZ6ovL+TsEQRBBCxPoA
	yxjiV0QeBpL2UHmbv4UJH+MK5mc6Eyw5s/LLbKlj+1usZ8WhIRBQhH/XuqHhnuS9MeW63TpM8xmEJ
	0b8jG04/O94htVfkG0ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rID0w-00DQ9k-39;
	Tue, 26 Dec 2023 19:22:55 +0000
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rID0M-00DPoV-09
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Dec 2023 19:22:19 +0000
Received: by mail-io1-xd29.google.com with SMTP id ca18e2360f4ac-7b7fe0ae57bso282938239f.0
        for <linux-rockchip@lists.infradead.org>; Tue, 26 Dec 2023 11:22:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703618537; x=1704223337; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JesGzUfVYG0N52lEpA2lp9jd0GztoHz5e+Bd1oSHbfw=;
        b=iLTjqx1Exbn6ZYUpHWqveO8SJd3ORVZs4sOfEXJhipHbdOPx77hxuwXmeOSHqMENao
         dVjB0AAV7YBCNCvSmnICdelhVDQbgWJf+gDK46DA8Nqte+WUm+8AufInKNp0YMN2BdIq
         bXzaEQ0oz4Pk7qhivc6PGLSYjuVgIr8MIAM4E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703618537; x=1704223337;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JesGzUfVYG0N52lEpA2lp9jd0GztoHz5e+Bd1oSHbfw=;
        b=gFtmiQMFle5VQffAvoZLvonIXesKC01t+Dp+dFA8djQdNdeiJtZxSgheRae8h4d0v4
         mHC5NBWrUhn6CMUFrpaXfIYKICvy5ZxxJD5w4E1G6Xx331dk9F6zPAIRuUpFtabmdQRF
         tOlE1UJ6zELYlgRa5kPZAH4MutANL0X3IVL1ZQntZYanKx0v+BeiCQ2ijNeWr5WbXaXQ
         cr6BZND63z54HRRsei0KW3+4j0/cf5BuWk6AMJRqrNJY+rB0Rcl9btoZvZHqc7SagACt
         12xNWbzhYLv6kStBuTRHk1LYN0Um8UyLXmsA4rXPocE41S43urTfR8g6sH5tnHPwy/ze
         fKvA==
X-Gm-Message-State: AOJu0YyyJNCOsoB6s5wALlmfdHzlFLWciX9rsiiWWdoyDh3Rs4/P4BD8
	e56IU/cXybnTbUktDNQhR7Ydh2GEnUc6
X-Google-Smtp-Source: AGHT+IFnfa01wzCJ7D5u8Art1oX5WIoaHFxESiLKFBDqaU10ovAtJY7dB+V8ZDbbIOFqYtTxSN7xWQ==
X-Received: by 2002:a5d:9718:0:b0:7ba:b7da:3cd8 with SMTP id h24-20020a5d9718000000b007bab7da3cd8mr8956064iol.17.1703618536940;
        Tue, 26 Dec 2023 11:22:16 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id gw3-20020a0566381ee300b0046b692e719esm3207609jab.150.2023.12.26.11.22.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Dec 2023 11:22:16 -0800 (PST)
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
Subject: [PATCH v3 17/24] arm64: dts: rockchip: rk3399: Enable cros-ec-spi as wake source
Date: Tue, 26 Dec 2023 12:21:21 -0700
Message-ID: <20231226122113.v3.17.Ice617703aded22ad4c806459129e1ae693eb57af@changeid>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231226192149.1830592-1-markhas@chromium.org>
References: <20231226192149.1830592-1-markhas@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231226_112218_098354_D129439F 
X-CRM114-Status: GOOD (  12.68  )
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
