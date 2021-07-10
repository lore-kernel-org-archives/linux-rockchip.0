Return-Path: <SRS0=97ng=MC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0074C07E95
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jul 2021 15:12:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7597A61369
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jul 2021 15:12:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7597A61369
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mo2JQHGQ1qKG83C7mMyDlPdFLcCW95x81tQQwU0skZQ=; b=s9LIf771Wm8kRH
	TY8H/OBwXfTkmbZ/8G0Nz1Wt+PjZ+KMDDKPmezfUl62cA0VJXAoSGzr5afPjMmE6xYluVbuqJdOzr
	OaXOB23LveFNczp0wpiLFOloX4VZ+Op0a8JfGzjoSo8F+Hzmrq/ESvxp70StdYY/fSDKdqozxKaQL
	kTsDobhbfiYJFtP8weo327jlqP5q/RJkrc6vENuP4Aoj5ObiPlS/vT5wWhIVmEVDBL/NqKM63BD+8
	8tw7jo9QNVaYkmUu34KaqGwydALuvgLu5qgc52rUH5AVhbSuK65ZdwNFJ9kxusknGuVhAQIsw6z16
	Uy86cLsK+E+joLcys1Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m2Ee9-003maC-CN; Sat, 10 Jul 2021 15:12:01 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m2EdN-003mNG-4W; Sat, 10 Jul 2021 15:11:15 +0000
Received: by mail-qt1-x830.google.com with SMTP id h2so9915026qtq.13;
 Sat, 10 Jul 2021 08:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AlYiA4q2rsNk75Sq5fLZwlU6l6nH3Iejbu1a3VvQFdU=;
 b=mNUE3HIBHonppHVbLpIQ5LM7qgbpiKGypzWJIVvlshICuprOvlfThoGv7mYG5gDsvf
 vNeMwOvz0tvZx22WoeoYcZEiQ+wrExQnrMklo4KnidWiWMXUA/jYCXToCDTezlmVhG2W
 YETOKYlS7n/yKI1cWRBNrJbDaWhM4oetv6rz68nTtPgTE8IMZOAFLTAVTnWaMSmATUXg
 V5J9gD7MNLAWaCo1RNBRShoghrlV8EAypqW1nV0DppGADoJqY+OqGDb7mkqHGe/WTelB
 XM3t+BTjNCABpheWulMfOYxoZ6vCn0qPNBtUtXwR8qAFw94j8U+oLgKOA5JlKADjoHUb
 aq6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AlYiA4q2rsNk75Sq5fLZwlU6l6nH3Iejbu1a3VvQFdU=;
 b=WQfdEYabeJhRMNrhJuiLgnA9NsFXWGe9zslg/7Y957xDet8XXrSFoPOKRMSxdLc0tn
 M/rKV0trNYmwMxFDJ/HXI9iTcCCdjb3AHmhAgDyxS/3O7zy3543XYI64eyhyU0McGmmE
 sQTVWpRcNg0gQmiVp/fSjuBwS05b6hiahbzuhVFlqLXLqG+HALZL+lMyqmQpPjpRSzwk
 l2hH4mAACPcIEJLRKdHRvmT4eQcxXX6lWCppS/FmirI7N1wOZvy65IAyMcXFJXa9a8/p
 gEmeh4C8xim7oKtk1i7WLlL0MiwVs6q3Mdok2Hy2afq6dRgPA4OoFidhoLEFBNFIQfpW
 Yc8Q==
X-Gm-Message-State: AOAM530yW+MlXJv7+RIJJethJuVafMQz2180XpEk196OxtFTHrIl0Pui
 A55uMwMZTnmsa+pczCFwW9M=
X-Google-Smtp-Source: ABdhPJzS7x8nHbQPoBbS37Kjq6I4Ct4rXiDqSZ0yGdne625IIQ9E49UkCWY8x7v3oubC8r/zYWYgDw==
X-Received: by 2002:ac8:7d85:: with SMTP id c5mr1281370qtd.58.1625929872027;
 Sat, 10 Jul 2021 08:11:12 -0700 (PDT)
Received: from master-laptop.sparksnet
 ([2601:153:980:85b1:ecc6:5233:6153:7b36])
 by smtp.gmail.com with ESMTPSA id w14sm3445482qtc.55.2021.07.10.08.11.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jul 2021 08:11:11 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Peter Geis <pgwipeout@gmail.com>
Subject: [RFC PATCH 3/4] arm64: dts: rockchip: add rk3566 dtsi
Date: Sat, 10 Jul 2021 11:10:33 -0400
Message-Id: <20210710151034.32857-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210710151034.32857-1-pgwipeout@gmail.com>
References: <20210710151034.32857-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210710_081113_214153_07F122FA 
X-CRM114-Status: GOOD (  13.09  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the rk3566 dtsi which includes the soc specific changes for this
chip.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3566.dtsi b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
new file mode 100644
index 000000000000..3839eef5e4f7
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+#include "rk356x.dtsi"
+
+/ {
+	compatible = "rockchip,rk3566";
+};
+
+&power {
+	power-domain@RK3568_PD_PIPE {
+		reg = <RK3568_PD_PIPE>;
+		clocks = <&cru PCLK_PIPE>;
+		pm_qos = <&qos_pcie2x1>,
+			 <&qos_sata1>,
+			 <&qos_sata2>,
+			 <&qos_usb3_0>,
+			 <&qos_usb3_1>;
+		#power-domain-cells = <0>;
+	};
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
