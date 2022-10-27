Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CB35FA373D
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Oct 2022 08:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vtF9s8TmgUHbcrWmuLDkTn0erFOa+VC6b5isy6mXgjs=; b=Idvis5QpxUjMv8
	lK1EaLXULF44xLqt7IaySn0sZZ4hhlJgdkRGn9WpSYESPeqEu2DzFwzEtNOrnbKifIBXAgl30J+sY
	Sbu/X7e5h7PGE9Yqyl0tWX33MJl1X+3Yc+ap7PCdj1x6kb9Do5MX3GMcBiGeeOwoQVc5YVosBIRJw
	H6+AGu7gdI3lw2OT1eCwjZI2DuBNkbjzf4I1S1vT/JNqysneWeAFn7A+EWychrnLQ8lu/gEwmEH2Y
	m0ZO+jOZPPhz4jGnKJQkLfup8QMOwzQYYCrXuorGofUgJ/SlazpzBf6n6VBcHth12cZsVdw/SNNW1
	DiBDAqHfiuNhJssRytLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onyje-00CVRW-Ms; Thu, 27 Oct 2022 08:59:34 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onyjM-00CVGe-G9; Thu, 27 Oct 2022 08:59:17 +0000
Received: by mail-ed1-x52f.google.com with SMTP id a67so1517475edf.12;
        Thu, 27 Oct 2022 01:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=w0IUbPjMCAB9XHK86X/OlsKfO5IDtTUMHXt/Hq4ivA4=;
        b=o0B61ERuf4hfAzCZx6I1fqmQcdEvElx1DFTbZTG2WwCVKN5GCfwIQw+2c1H1YFhb8S
         l0i0NyzWyJ9V6EuuQJ4rxjJJOxJbYLiA54MMRqqYOGnf97Ecbfzr6/r7u3ALMnvH8gZU
         95/AQk+fg26STzBaraQfnGpe5jLXteJ9oNGPDxoRfmISlSobdZTAoIrSP/xt8rfN383J
         HUz0rxyUmh0lAIhRytzv3VQXbQXCRV0TmL0Grt4zW0U1wLlI+RGRANIo59vlysMBtKdW
         N1jInSqzzJD/xbCfXAQMoT2befDCkf/6HwVNg21skF5J0k5jEKxi75M2pZIdNpjDfx3s
         S3ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w0IUbPjMCAB9XHK86X/OlsKfO5IDtTUMHXt/Hq4ivA4=;
        b=R6C8s/7GvXlXS/hCPLSGtz6eI2jF+bHcLFoiwiPzuvIYizoVXEMTn5GVe3eH7reFA3
         +XzqPdR7qkmr3X6efEfJNiNPOp8hjCvLF4m7S9oq3x19hgDxLdudDhaq0z7/6/TwVIEW
         xGMiGbtoyLHAJwR1HJ7FHk0pEQgF2FLUshBWwEzwPIG+aGYgfxGpeG2i74JeYUf54LIU
         Gq/YKTxvmo3pzILCIDM+qxRGq+m6oB9BPgbFoMFIQenuLVsc7TlOvawtLil/yefPvh9a
         pWeoYX2nvTJ5sslsJXG7cLs8zV3tHhDWmRpaezK5Nj8etYQSg9EtXv0DmDwIzJZXHDL8
         hRvg==
X-Gm-Message-State: ACrzQf3BFIMjyFGC7bShMkQe2nxGCaT6OUtoWDQIf6hqjo6OJoK2i6/C
	mkay6nRvLexAu9Pg6JnEGQ8=
X-Google-Smtp-Source: AMsMyM4BMxqD5i3Nq+gejbtjgCLeW2p17a0i+1GyKoe/S0UBNMWJpCO0m4d2J8f0tJgtDJ1tx1L5ag==
X-Received: by 2002:aa7:c58a:0:b0:461:fc07:a821 with SMTP id g10-20020aa7c58a000000b00461fc07a821mr14744879edq.19.1666861152049;
        Thu, 27 Oct 2022 01:59:12 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id v13-20020a50d08d000000b0046146c730easm607498edd.75.2022.10.27.01.59.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 01:59:11 -0700 (PDT)
Message-ID: <e9764253-8ce8-150b-4820-41f03f845469@gmail.com>
Date: Thu, 27 Oct 2022 10:59:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 2/2] arm64: dts: rockchip: fix ir-receiver node names
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <ea5af279-f44c-afea-023d-bb37f5a0d58d@gmail.com>
Content-Language: en-US
In-Reply-To: <ea5af279-f44c-afea-023d-bb37f5a0d58d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_015916_598906_B6CDD5DE 
X-CRM114-Status: GOOD (  10.76  )
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

Fix ir-receiver node names on Rockchip boards,
so that they match with regex: '^ir(-receiver)?(@[a-f0-9]+)?$'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
index ea6820902..7ea481677 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
@@ -19,7 +19,7 @@
 		stdout-path = "serial2:1500000n8";
 	};

-	ir_rx {
+	ir-receiver {
 		compatible = "gpio-ir-receiver";
 		gpios = <&gpio0 RK_PC0 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
