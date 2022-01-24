Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1B69C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jan 2022 02:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/+R+AUDb6j4daZhMJDjcVV87iXYcltdxTbH2KwRHb4=; b=pJES7G/5HI2bc8
	1XpHgkuG5eM36Rur+8bsJBCl1dM60vAWi0BXskxGlSEf2RFOBNZF0nluPIcZYgoi0yyNDW88Yx8Ir
	lIILIEWAve48pG38l2BtljSVha4jZC/mnTFKN6ILxxKtOa7ldgqGZ6AnJz5cmRrj1I0kW00i6m94S
	z0nes2kd30pj/nlm47AK7J3vDKTJHVDQg/mAU1fi9YuQpCytmkEjvfXRkyD1NUjA554F1N9LzSLfH
	GJHifX/gDsGMSyR6ct6Pe55S41JTfBC7BnVPhInH7bmUVl+rj8hEIKuVBmvjw440LXLkNIPohcMZd
	WooGVPrvTURwLoGzbrzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBp9K-0021s2-FT; Mon, 24 Jan 2022 02:32:06 +0000
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBp8p-0021Z7-Kf; Mon, 24 Jan 2022 02:31:36 +0000
Received: by mail-io1-xd30.google.com with SMTP id 9so2141041iou.2;
 Sun, 23 Jan 2022 18:31:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fa6XTevFEqtbC/DVeN/V/vlo7FN29Xl+JkqDuO3dnjc=;
 b=EZqSX3m/b79QIHHKJpNK7iciDNnVqv2GsxsNslHqcu+b2/SVqWynl3l15N0qCsVK/I
 Yx1eudSWla7Dd8qyzF5qAsiUpkVMyj2XJDrDr9HOWdJKc2E+ay069qw97DTs4bgISlFK
 03jL2XfE5E5sojSaVA4Y2QJO3McRJH0rg5E6MWnvvXqclq4FjCVS46AOUKMIhxg6kSHH
 ewK2KmoE9/IIpVFqmdwY5A+xkX0aM0/ibEuwupB4bQ1AEamqEVi0LPEW1oZGkBWyoRyO
 RW2MUulcBjX1lu2hG2irWeKiLysinNyNDbhVT0EOvKcB/VaUalJqUqaPzAw1bH4Z9bQP
 NX/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fa6XTevFEqtbC/DVeN/V/vlo7FN29Xl+JkqDuO3dnjc=;
 b=DtAS/vo9ohXAWhdK0a21k0ldgp0jFvLAPjI1Ho9AI4mH9enpT2n/9FeAgHiLW00jwH
 Gd/dB+w9cvTazx3vZWMu0A5Hz7cyOGhgKqSpgClFga/eQkFsJ476rG+GCR0npGbdyMmf
 y4i74vyxotWFovFJ3ScXlIA2hOM7OzHOhxUbi4m6MdehMrFAJ3xawrIiq/dYsml9HiJD
 u8b+o25u2lA3NgeLvV5bWM2eUYDwd1XrPpHb8wOFy6+JxhrQO3vOGKtgfSN2AtPVlbf2
 8Dbci9LwFCb2Ra0eidveuuCCbwrN3u54e0lIDI9ccvCrsTmIQC1LXeDtVXCgTTCZ7VyJ
 hi9w==
X-Gm-Message-State: AOAM5323UbX7oEVaPSXKbB2rSpX9KtDopoAsq0/nr86YwRkes9b63Y+X
 aS6koLSBAU6+KaQviQCxscQYtr+bO4s=
X-Google-Smtp-Source: ABdhPJzZXrS5FylPpYYU4zVBZQCSvGD3wFbcXnczpoUHVM/tfgVP3PLph+WJ6MmfCFVpINI7srDZMg==
X-Received: by 2002:a05:6602:2e8d:: with SMTP id
 m13mr7155501iow.68.1642991493493; 
 Sun, 23 Jan 2022 18:31:33 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:582d:ad0e:e5a6:94b6])
 by smtp.gmail.com with ESMTPSA id w4sm6625633ilq.56.2022.01.23.18.31.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Jan 2022 18:31:33 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, shawnguo@kernel.org,
 aford@beaconembedded.com, Lucas Stach <l.stach@pengutronix.de>,
 Rob Herring <robh@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [PATCH V3 01/10] dt-bindings: power: imx8mq: add defines for VPU
 blk-ctrl domains
Date: Sun, 23 Jan 2022 20:31:15 -0600
Message-Id: <20220124023125.414794-2-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220124023125.414794-1-aford173@gmail.com>
References: <20220124023125.414794-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_183135_712043_D312735A 
X-CRM114-Status: UNSURE (   8.91  )
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
