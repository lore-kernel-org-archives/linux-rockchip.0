Return-Path: <SRS0=q/kP=GU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31A6EC433E0
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Jan 2021 15:10:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 77A7621D81
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Jan 2021 15:10:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 77A7621D81
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iwMkfVYIfCXD5sTCtxDwKBpNJ+CK0pvBw1NR0arYz0Q=; b=RaWR28FCAdowiLvihd/bjm4KfR
	yWTBSfn+YObXN5SlfPy1we699A6hHcJIgEEl9G7DNp5p4Q//RysvWSt+owNcgFTIDES+PxTTfjOs3
	k7Drtzy5lRJpCq7qiHoyx5yWWOVShPXE45TRVmFNX2HLkTVTbzsaV+5lCirTCn2lAcBfg931vqXPW
	shZ+zDeBOBYlKh8Hv0/1IhXbvHsENS8bdkQKVeYDFnnf1UjoMdNWFPGMdK3IH1jwl3N68U+jpm7dy
	KkgrZQz0IpzRmeoqkMwylco583Iu5Hsxltwz+ZnQX4ZnNiIueBZUTDdVzdmwTkTUM33rfJ08DIJSs
	+HmMQWGQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l19h3-0004w1-DO; Sun, 17 Jan 2021 15:10:17 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l19gz-0004uI-AP; Sun, 17 Jan 2021 15:10:14 +0000
Received: by mail-ej1-x629.google.com with SMTP id g3so738329ejb.6;
 Sun, 17 Jan 2021 07:10:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=j9PRWzzs1VCnzZhzvE9WLio7jj+fP82Dt/QONc1WWeE=;
 b=JNHuAa2LKAmjkB+NLBzKLAdxUJuRy1wJjbJh6YLZ+y2LPMqBge1rAwbhLc0hmHchyK
 oqHABnaUt6adkFi5RyVrgvANo5UznA81mY3tuR70cdfsMAL8xIwji7Q6tYjMoUHOVRq/
 68KzIPUcXI+996jY9ajZQB8WrhwHrIWRLZrtKKTvfAtJoM2UjxBjPD2scs/l/pHJ8/TR
 wJVAQdJrv0xB5E2Jf2Z7sAtCUh7VDBlHcrt7lfnkPeli+eUMIstrsq0WFKenNCEovoC2
 cLYxh3Z3tgoKNL3h+gL30D4ZPL6WN+EHFgRUiA1H+ieeKaf3dOuD4+y8W0H7fc+VauK9
 wPlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=j9PRWzzs1VCnzZhzvE9WLio7jj+fP82Dt/QONc1WWeE=;
 b=H/2BogWaDzV/wjhVUV3cUpPgd9hA+6jZTLSkdpHFrIFvKCq0v2/dFYmFNr9t7Wlze3
 qzBx/NQxDdWdAmVPw7Ialce78LMbl/k3Z/+W3AbjQBth7AVKxQayhR+B0BJaofiAW6bJ
 gLiUQedRHRAOcp+TVClTnaguALZjk4k7vOJGfTKBqflwevLfEEES3PN5lMw3ilfX1rGx
 KULZS1y3zN2KnGYDRVvqZuliKEJBZt4dBPuuhMuO6lK+01utAghMTQBJFIeAldwlXaVX
 oZWrLoMgD984bQBXlGKLnWMKPprqpuBENiSK+mMA5X5osyAxXgPgXknvPVZdPaGcsH7/
 xZrg==
X-Gm-Message-State: AOAM530guk36/RUaiciHpJVL7oiebx8YFA89CDrNNsyja080lYsReAn+
 T9FKs42L95mSC128CLHZrT8=
X-Google-Smtp-Source: ABdhPJwZWXCJ0UvvQw7hz2eYcZ9L/c1mFBT6Jbep82MAc0b+Zmzykwrx83D0+xw5LGgyXhfAE4KJGQ==
X-Received: by 2002:a17:906:f246:: with SMTP id
 gy6mr3171712ejb.264.1610896201577; 
 Sun, 17 Jan 2021 07:10:01 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g3sm6295121eds.69.2021.01.17.07.10.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 17 Jan 2021 07:10:00 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/3] ARM: dts: rockchip: rename thermal subnodes for
 rk3288.dtsi
Date: Sun, 17 Jan 2021 16:09:51 +0100
Message-Id: <20210117150953.16475-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210117_101013_381279_828C5872 
X-CRM114-Status: GOOD (  11.57  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

A test with the command below gives for example this error:
/arch/arm/boot/dts/rk3288-tinker.dt.yaml:
thermal-zones: 'cpu_thermal', 'gpu_thermal', 'reserve_thermal'
do not match any of the regexes:
'^[a-zA-Z][a-zA-Z0-9\\-]{1,12}-thermal$', 'pinctrl-[0-9]+'

Rename Rockchip rk3288 thermal subnodes
so that it ends with "-thermal"

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/
thermal/thermal-zones.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 01ea1f170..29ffe2eb9 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -488,14 +488,14 @@
 	};
 
 	thermal-zones {
-		reserve_thermal: reserve_thermal {
+		reserve_thermal: reserve-thermal {
 			polling-delay-passive = <1000>; /* milliseconds */
 			polling-delay = <5000>; /* milliseconds */
 
 			thermal-sensors = <&tsadc 0>;
 		};
 
-		cpu_thermal: cpu_thermal {
+		cpu_thermal: cpu-thermal {
 			polling-delay-passive = <100>; /* milliseconds */
 			polling-delay = <5000>; /* milliseconds */
 
@@ -539,7 +539,7 @@
 			};
 		};
 
-		gpu_thermal: gpu_thermal {
+		gpu_thermal: gpu-thermal {
 			polling-delay-passive = <100>; /* milliseconds */
 			polling-delay = <5000>; /* milliseconds */
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
