Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E90D3C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 01:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rh3janl0u1k0t9ZuMUoe1ee5sjE+F6PWHoULl+g5JlY=; b=0JLP5vh2NJzri0
	Eh9q2t2j+l31obfCQgQXK15J+M2YAuZUByFN0T6XmLVXYh6jXNkDwel/FiHOP/RWMQB3CuK6wU1qL
	id/2NT+xZA6IBXtMh33cfZvWWqHT8tbQPiSwILfV1qFafGUcQXxjNQ/Zca8E7H6XiIEQicDPbMcVI
	EBTVS9zvcHtx5WoQXPWwp5fQclR/KvynIjvPMdjx+hTOARq4vHw8YIAC1gUTlwaBrmni0+jddGRGr
	Ei6sHbqvsXUo2RMROFgbE2/w7rctiI49BIQMy4jW2yP2CYFSfns05TpqaWXwml/YGsfSm8lY3DkB9
	d0kYbzhJ/GJhDsBaItZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCtA2-00Dun4-Tw; Thu, 27 Jan 2022 01:01:14 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCt9K-00DuUN-Ms; Thu, 27 Jan 2022 01:00:31 +0000
Received: by mail-qt1-x82b.google.com with SMTP id w6so1248187qtk.4;
 Wed, 26 Jan 2022 17:00:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pLFwv7MjOQ+N54vrBm9216io6/o12k65yBVIhwcPg5Y=;
 b=UuXHtZj6naH5Qlpl7yYKAN24yAq91MwRMnrvc6+Msosu5VXeuPePja8bprAmpTnJrw
 T+lqZ5TdlgyRuucCAbFlhxmiq+ZiaoZQlgwdw14R6w0jORWFp1ecrt7ndXhU9uON7qS0
 netZb4cbt0tnQuHr+tfpp5SOj9hycUaRxFVZPjxYVmv8660d1jRsdS+nkyaOyp+0/5dr
 a6bN/RRQHLNwSRcqLkEiP1Bfd+4rN9QvK2qjfoxWRwsu7Vo/Kr/k2F+mGLwHQgokw88H
 9dXJmomYclZd91El57AwX7mHFLyRUyvtlvjjM7x9WQGrBqtiS/FF0Jnvwgo/VrsetF+D
 yyoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pLFwv7MjOQ+N54vrBm9216io6/o12k65yBVIhwcPg5Y=;
 b=X1TV7L3DEBPx5GSMCOrXRlYu3mrQR7yAas0zTMq5RNQf1WPGz4VQnVjzo8LZbw+AMA
 vuffIoPrhcyTD4/gLwQ3Jd4aLfVkYQL4WjJTanIcC6pj06wlE56YlgtU9n7Y1bsYABWa
 j2QFSHNA+/vjMAAcOLo/E8Y/f7btpW/eFozirEyI5cIjZKTv4W6EG/LuYRlUXs87jnCd
 np3N++/V6JN/ugaK9B2vOxgpuIEdw8Y7Al3v+Ni7yiwcnSJAu3WyfbgtHtOM7mm15PSU
 5Od9oVM3OZy1bh8htR5iCjPjlJHPPNaMiwCT3rwY2dy5Z+f7lwXi962C4ATl1trkuzFX
 96Dw==
X-Gm-Message-State: AOAM5308v3kczbsQsh4rUvxOlO21KNueOawQiqbaN+IRRC83rIJtUWcS
 sth+r7+f7zE7nk4DStwooik=
X-Google-Smtp-Source: ABdhPJw4SPn8Gn9OXwDfQ5CSfiB8YgLmJ9SonumxylWB5ioKxx/YkkbJtMLfedEtEg4B15f82eguSQ==
X-Received: by 2002:a05:622a:181a:: with SMTP id
 t26mr1059867qtc.81.1643245229362; 
 Wed, 26 Jan 2022 17:00:29 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.dc.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id n2sm483389qti.59.2022.01.26.17.00.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Jan 2022 17:00:29 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: rockchip: add Quartz64-A pmu_io_domains
Date: Wed, 26 Jan 2022 20:00:22 -0500
Message-Id: <20220127010023.3169415-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220127010023.3169415-1-pgwipeout@gmail.com>
References: <20220127010023.3169415-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_170030_772539_E9A36B3C 
X-CRM114-Status: GOOD (  11.07  )
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

Several io power domains on the Quartz64-A operate at 1.8v.
Add the pmu_io_domains definition to enable support for this.
This permits the enablement of the following features:
sdio - wifi support
sdhci - mmc-hs200-1_8v

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index d9eb92d59099..33c2c18caaa9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -482,6 +482,19 @@ vcc_sd_h: vcc-sd-h {
 	};
 };
 
+&pmu_io_domains {
+	pmuio1-supply = <&vcc3v3_pmu>;
+	pmuio2-supply = <&vcc3v3_pmu>;
+	vccio1-supply = <&vccio_acodec>;
+	vccio2-supply = <&vcc_1v8>;
+	vccio3-supply = <&vccio_sd>;
+	vccio4-supply = <&vcc_1v8>;
+	vccio5-supply = <&vcc_3v3>;
+	vccio6-supply = <&vcc1v8_dvp>;
+	vccio7-supply = <&vcc_3v3>;
+	status = "okay";
+};
+
 &sdhci {
 	bus-width = <8>;
 	mmc-hs200-1_8v;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
