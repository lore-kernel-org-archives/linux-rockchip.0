Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43490C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Dec 2023 16:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xUTdk/KeTG2I1xV8m/V2j1a0JOzZkAMzKuMwdcPEIro=; b=g3KfDrYTsDczfT
	4d6bFqHY73ARY26S8kQQ/MwkmxD3y9hTf9LuXSDT43V6N7o1Xw+y7V8ON3rT6c2E68ScSrNRlw2xg
	IMok39N7vM5Z96qsIBOC5k+USdQR/gBPrVhcmrLerSMMgk0ebGYF3QHgk9BBRrsd9QZU5DHhGnofJ
	KuKWffnfPdIw13fEsTJzo6X+ZYvz8DrQ3oDfefG4zvnggIPOhDTP3vlZPaohd4tdzMM/SduTFZal/
	zUY34pdWKk7Iw7pj5sGkG2Vj/aefUZRbDyHT4/KqZkRxuXVDnzQ0busM4x/vpfBvc1SC55YnrsjdT
	lECXR//l2SaB0qQq0VWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJcYK-0037b7-0B;
	Sat, 30 Dec 2023 16:51:12 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJcYG-0037al-2v;
	Sat, 30 Dec 2023 16:51:10 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-5e9520f7275so50188417b3.1;
        Sat, 30 Dec 2023 08:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703955067; x=1704559867; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N7GzBuGBQMyhaiHbCBvaBY2rzm7i1pkPQ9l+6GmBtSI=;
        b=cHur778KzvFY8ti2pPZZ+YOfrXhhqZ+C7ywpsRW3h8xUClK2P95eGsqUH7PpEnleLz
         ncNp+J656ZlwlkbU8tyPHKrokGcvAPA6zzmC4lIMApis2YMzt1uaZDjQIIDcVGtsHegK
         NWQ3O9JvZZW7SD1j7EP6qbiP8ateUVJVQBadOMXrYcZGRr0tClc5B6ErlKNMLkYLkNKV
         UlX711XArof5M/CBqlLUCNylPoiFjCM923lKVlMZLOSt7ONxE+5BCJAdUr+q6znqRXtz
         kMoStoU9bEXxkw6CqcRvq/hxm6wsUjIDcTapYWf4XxMkJ05J4Wdn3wvyyCpY1c92PhvD
         D+Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703955067; x=1704559867;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N7GzBuGBQMyhaiHbCBvaBY2rzm7i1pkPQ9l+6GmBtSI=;
        b=J5LMRoI2dEMCNZlPXEqD4VG6pHYSSzOOs8uJB5l41PMLdA8DtV3r5BtwxUginCwYoK
         /NpS4dO8C1PPxXGXNfo8ymR4dsC8O7kEG73RxwC8cZquigMg5ugPp1obe9tky7p/Sh43
         S85wXzdeCYR5aPkdlQvcu3fk0qFXQZRwML+n8mzNTjuP0M8JUnw9KQNaVWY2QZWZeD59
         Uup0no4KLnrlnqzVP8PRwlci0xEK0alM3m60uRNWB4s0nf5rNifSv/viXNw7AD7j137U
         UibLj57HY0hp3bi+0PZ4167QU35FfQrdSTxNd+hiXNf9XQub8Ud3SowYNtCTycEo/WbL
         eyOw==
X-Gm-Message-State: AOJu0YxNIEbK0dILjutI3bAnOG6kf8UFHaL8ZcL1QbnetoqeNYjpU/E0
	B7kjKwSBh1sif3y0OYiWTHM=
X-Google-Smtp-Source: AGHT+IGtpeNc+Ln7iph7NJ6Vjjx23Vos8GRu3WoJnP+4Eejsnt/jImrG+J6nX6J8LSomPjt7xl70lg==
X-Received: by 2002:a81:8d14:0:b0:5ea:5395:859e with SMTP id d20-20020a818d14000000b005ea5395859emr6193379ywg.11.1703955066933;
        Sat, 30 Dec 2023 08:51:06 -0800 (PST)
Received: from localhost.localdomain ([192.34.165.40])
        by smtp.gmail.com with ESMTPSA id u83-20020a816056000000b005e75b28b8a8sm9602988ywb.49.2023.12.30.08.51.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Dec 2023 08:51:06 -0800 (PST)
From: John Clark <inindev@gmail.com>
To: "Rob Herring" <robh+dt@kernel.org>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Heiko Stuebner" <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: "Thomas McKahan" <tmckahan@singleboardsolutions.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	John Clark <inindev@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: add sdmmc card detect to the nanopc-t6
Date: Sat, 30 Dec 2023 11:50:53 -0500
Message-Id: <20231230165053.3781-1-inindev@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_085108_968368_F85C4BE5 
X-CRM114-Status: UNSURE (   8.80  )
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

The nanopc-t6 has an sdmmc card detect connected to gpio0_a4 which is
active low.

Signed-off-by: John Clark <inindev@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
index d7722772ecd8..54445f929a37 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
@@ -539,6 +539,7 @@ &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	no-mmc;
 	no-sdio;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
