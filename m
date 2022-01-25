Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61C01C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jan 2022 17:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/+R+AUDb6j4daZhMJDjcVV87iXYcltdxTbH2KwRHb4=; b=RAuiuzuYnG5Yem
	NU6zYkRqzBL8dFntkaFZlzA3rtRJBcg994IicgU3RhE5qr3xgnfcB5mSyjWH0BLNtKoTJL4VFKo/A
	SW0zzbsaA2HKi68B1EOL+EtFMivabGD+iYS8Zq6kCwqeuKdf35Pcy+frDmedT93LAvzpxVpd977/q
	/NIYYjnshfiPXE6jJgEo3N86mdDPrqAMNuI1Xb32wA7JfN5RAaWvZkBOTfsjGXzpGu2fXb3IOrYh+
	TvMyi76EeR0U/VNCW62VsJZSDg+UJCjK9bbE9UmhEih8MHFtP/dq7KsgdlMbFv1fi/aSGYyRamYzU
	LSUpqC4eE/uN81eW8diQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCPRD-008vSF-EY; Tue, 25 Jan 2022 17:16:59 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCPMp-008tFz-Pv; Tue, 25 Jan 2022 17:12:30 +0000
Received: by mail-io1-xd33.google.com with SMTP id q204so9923421iod.8;
 Tue, 25 Jan 2022 09:12:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fa6XTevFEqtbC/DVeN/V/vlo7FN29Xl+JkqDuO3dnjc=;
 b=W9ap+qvkTCG8bjc0uQsVrBYvZj+B6Rvoq6pwWYTLVUoilzUICwT2AXwpniH10xZ1uq
 fUKZ9RiQFWI2INOumUpsFdJ92qRdGBLlMC4sgcC7hexgQX8yoIqWQmi2+sEuAUEOowIR
 DZOI45GDFr2y8nALDb+hk9VuaZy/4zTuvZpI6tDFuWiZincB1L8RfzNkOaLhFVTvyGct
 TUu8dM/96xsrK0KNQd5MSsZL6cWEQfq0p5q7/DQ9tISr37V9Dlt7RwoKaXJT/V17C8Wu
 sVcNjMdhPdt8gMTRuqr7NtOX6PwxTafeRjOWDmZVOzM0kr4LFQ29VVSmSED74t6HxJ9/
 G3jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fa6XTevFEqtbC/DVeN/V/vlo7FN29Xl+JkqDuO3dnjc=;
 b=zzsuLn/6wh7uWbiJLgvA/Km/JyfC1kChrGEyeZEp3eBE6eLOgckoiEUnGP35j6QCR3
 V0NwIE9zAvzICju5uFlGHAnvFbzXoWUF0+MMNHvjed2K0BaKA03eR856lWfF7ysLqMmt
 DL/6oe+DUPmsff9LhxswTkmPEur0LqwjpHq8DM0Y9dzdAUj0IJWbXKWivOyrUhwWT+xC
 uXIMyOE5oRuTfBwcVcbPMKruDMh29RLOTwVnD6nLW0ZKQAQ+GWlvb4VbfNBf91pxAQ0w
 rrHf6EqEKvkwnCgAZ9hBuFhKjQof7YTELVi3kVu9LEeLJCbCl97jOTaRiITg0lv6nppl
 A94w==
X-Gm-Message-State: AOAM532YPKXWpnBMtexHxnB8EybA6FISrjQNiB1r1nBXS+ryG5FxZAxU
 G2u0KWPmHGFVdC1+vVMnkZE=
X-Google-Smtp-Source: ABdhPJye5D11pR1pHEM0xttSm1nhgngvx9EPzIDrdcN8uSOlWKpqZa7TaFWo9wUdt1OTEK1fxYrw6Q==
X-Received: by 2002:a5e:de4a:: with SMTP id e10mr5353405ioq.51.1643130746425; 
 Tue, 25 Jan 2022 09:12:26 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:6592:b6fe:71b1:9f4c])
 by smtp.gmail.com with ESMTPSA id m14sm8090291iov.0.2022.01.25.09.12.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Jan 2022 09:12:25 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: aford@beaconembedded.com, cphealy@gmail.com,
 Lucas Stach <l.stach@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
Subject: [PATCH V4 02/11] dt-bindings: power: imx8mq: add defines for VPU
 blk-ctrl domains
Date: Tue, 25 Jan 2022 11:11:19 -0600
Message-Id: <20220125171129.472775-3-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220125171129.472775-1-aford173@gmail.com>
References: <20220125171129.472775-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_091227_891899_7F8B2251 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
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

From: Lucas Stach <l.stach@pengutronix.de>

This adds the defines for the power domains provided by the VPU
blk-ctrl on the i.MX8MQ.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Acked-by: Rob Herring <robh@kernel.org>

diff --git a/include/dt-bindings/power/imx8mq-power.h b/include/dt-bindings/power/imx8mq-power.h
index 8a513bd9166e..9f7d0f1e7c32 100644
--- a/include/dt-bindings/power/imx8mq-power.h
+++ b/include/dt-bindings/power/imx8mq-power.h
@@ -18,4 +18,7 @@
 #define IMX8M_POWER_DOMAIN_MIPI_CSI2	9
 #define IMX8M_POWER_DOMAIN_PCIE2	10
 
+#define IMX8MQ_VPUBLK_PD_G1		0
+#define IMX8MQ_VPUBLK_PD_G2		1
+
 #endif
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
