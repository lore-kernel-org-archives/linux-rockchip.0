Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FC18C04A95
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Oct 2022 12:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZhyU1dtMH1VJt6/d5c0p6s0NZLl6LL+ZOrSpeIJIxB8=; b=PxPP7bmc60WqCm
	4C7atY+ctgrwP16OyM6vfTnOUTR13M1CydznCJxtqYgoR/ERpusKKFJh8QLEHgVJ6Vna8FxjLf6CD
	z1EqQFRhU9yGx0blw7CVFr9s22Ab3RmwJPUPhdUwu3iskCwbQcG8XxiQv+fNZDsTh6V6FADjFhTMO
	IGSyrD4SkIn+RG8iLgv7zE3AvbpkKU8pOzcfbbStXoOsN2SknURQsS5/vMppcEccr41/B+GzfbECP
	OPmluUcc5zT3sNhvPohhaFpubyTqTTUGWWAOupRxjF64xv1/bpgPkNLkQqF8SCpkRFCiz20nl2bfS
	ZHHDveFYyCxuK5fStu/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onJGQ-005EME-Lb; Tue, 25 Oct 2022 12:42:38 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onJFr-005E3X-Ih; Tue, 25 Oct 2022 12:42:04 +0000
Received: by mail-wr1-x430.google.com with SMTP id a14so17830741wru.5;
        Tue, 25 Oct 2022 05:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Ic2JEDn8iIKh6kokfWzyIvyt1AwKkoMppVSCI5C57s=;
        b=p7sLxOhF7+RJa8UpoEmVVGga9/XxYJpHt9VYi4nB27HDInsNdVKl7A7Y7xodOhf69i
         cH4p45wrXBpH/+j58uHRVEPx6mxh/2gQckDVhrgiGCsUh2ynjtz/IBUS9xWyK2fYpC97
         ds2Ro5NO2Ho8uNlbpqNj6GO2mpGF4KKPfRwhoSf+FnqBq9kw4hpbqz5kplGxdOap8pvc
         nkTIEyN5cbLojENWjdgwwecAr4ejh7T8CkVx6Cc6JRqgtS7O5SoOxMymWmJexfOrWeoK
         Zm82tzz/g9IR2WW1Wkt62/F8UDLk7lV/5fp9xSUxnVSXRy6hoTpp6OcmSUn8vhSmBfHS
         3CSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Ic2JEDn8iIKh6kokfWzyIvyt1AwKkoMppVSCI5C57s=;
        b=plTRnS/TjXf5JxuWUiWops/GtBClqcJG/zwnBJ2le5aFya7eIMjd3CkcCcGnp6HRRE
         XAEOlUDckPcLAPYXNiHvmH97P28Vpqw5Pp1CwL/WFVk/48D1mN0LJtNbkcaQbC2tgTy/
         A1AuuYlZEyqqHIo+iz/QjZiBVg8EK6zvkrpkVXW1W+ZTz+K/65lBAQR5n3H8PEhp9xCM
         iEgA7xV0RXxNGU0WEQ+eDGzkqgvw/dhaCA8qqxgEBg902TF9Or39G1uoQo5AwxyRdVLm
         /Oih38XH5j/PSTksQYjZQTjdBI9+qFlOIoRZxw3U0hPE9dnkHWMdYoEcpDwbdX5U7/Kr
         Z2vA==
X-Gm-Message-State: ACrzQf0XHsuXUaxJLcXR/p3/PoWT+MwaOBreox4e0iSreslyxDb+JvNX
	leqfarJGxF4/1QeXDP9xgZY=
X-Google-Smtp-Source: AMsMyM4PfHc5iZZPnvgw3lB96B0iv3Tf8sL+cm4ldHaMrUPmjOZBcBtMm3ogjXQBRx7LsZBd9zG5SA==
X-Received: by 2002:a05:600c:1c1e:b0:3c6:fa3c:32a9 with SMTP id j30-20020a05600c1c1e00b003c6fa3c32a9mr15113010wms.203.1666701720859;
        Tue, 25 Oct 2022 05:42:00 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id ay19-20020a05600c1e1300b003a1980d55c4sm11250664wmb.47.2022.10.25.05.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Oct 2022 05:42:00 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] ASoC: dt-bindings: rockchip: i2s-tdm: Add RK3588 compatible
Date: Tue, 25 Oct 2022 14:41:31 +0200
Message-Id: <20221025124132.399729-4-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221025124132.399729-1-frattaroli.nicolas@gmail.com>
References: <20221025124132.399729-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221025_054203_636736_837948C8 
X-CRM114-Status: GOOD (  10.66  )
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

This adds the compatible string for the RK3588 SoC.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
index 8646cdc692d7..0503f4f3fb1a 100644
--- a/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
@@ -21,6 +21,7 @@ properties:
       - rockchip,rk1808-i2s-tdm
       - rockchip,rk3308-i2s-tdm
       - rockchip,rk3568-i2s-tdm
+      - rockchip,rk3588-i2s-tdm
       - rockchip,rv1126-i2s-tdm
 
   reg:
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
