Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45034C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jan 2022 02:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NBeCFioiFiVjEb9t04GwSKke5PaUYRmY0cftREGdl/A=; b=0EuDq6MXz62bdN
	5RR+OWZ1j2x29eg4JhXw0KVW3XyXVCokyqRkWI81sjclCJZJhK1g9Oy44GarBIKmlBh6gZSMKhWNm
	F2smC56FRWge38Hi4JBkv0Wf/v5iAeSUmymXnmt36cLiIDb8Bq9aOtEZpE/4ILQj4DemaVVyOkV39
	ByQtuzVQ7IHNU2QZs7ZiT9OEoJkcce/6D2g0DTjhhA5XArrZyK/zJlvoKROm5VyT5WPmIJq/EATfF
	3sGHahyfQc+ANng04QmVpafsaXC90nM5HN6HsXdpN31RsPu56zt+Tma65uQ3D/jftwxp6allph2T7
	7G6gzgNYoHwwlPDtfyTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBpCT-0023cb-1P; Mon, 24 Jan 2022 02:35:21 +0000
Received: from mail-io1-xd2c.google.com ([2607:f8b0:4864:20::d2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBp95-0021jB-W5; Mon, 24 Jan 2022 02:31:53 +0000
Received: by mail-io1-xd2c.google.com with SMTP id s18so1255788ioa.12;
 Sun, 23 Jan 2022 18:31:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wM27uiC4jZN6SIACqztmxLT6jE1eUS0JxDrZiiXzyRg=;
 b=OeEzUz+xSnEJ37CVSWNU73LKZ0yZoFVZW300ZrxE0zAlrUsF5B00SQDxDtIgduR0qe
 wjo+DFeHXaKCvIpUxXIFbK4SgqgFafQY2aFDBZtoanjokOm2VxhV7DApE36kYOI+qqk3
 qXdObbAmy7fUyTuApsbsl8TCJxZuO/SnVDPIuV+Dstc4lZg2GlxRZUcgU9Y20Hji7HZ4
 wzL/MIagejiycvC0z9eb39TB+hjzYvTywl7dF52F2Q+xmkcVkngQAHohfaqN2TiMSoKF
 kqZB5Unnk90Jlk5hThs1ymZYgncn4s9DwQzGWnmiI/JdMHdhBPu4x4TEj4WuUQ6wN4cS
 uOtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wM27uiC4jZN6SIACqztmxLT6jE1eUS0JxDrZiiXzyRg=;
 b=XLsgUeAUi82YjoPN/o/RvpOupNUKtLsgmt50cgooJ0QZssL75sRFN3vHIZjlgSzrL5
 ow5UVIcVIGwzMtJutMkHr98tNkTez4AHyLPtlFJ/IxL7yWi2ZN2uDTlmHZhLWByBqOAp
 ajvId9Cm0OU9B5B77pQ02D9mXe5ucAaKauAsfbZkJxKo5WO/SUoIQVo7Kk74KscWusEY
 4ed64XDCN/xEPyDZvcUOcTYsGlfKpSTP7/SflmBpXluduIOXUqENYDoCDMRu7Z7QMna8
 dPSnThVOlErx0BAUyZok2Tffu6awhCPAd2eENcX62Yo2NzAR5T1zX4xdijGDTLl5cMPC
 ie2A==
X-Gm-Message-State: AOAM530humsCi7GivYtjCNbn5T+lPrG65tVvkUlairn/CO0iWfkUpMPG
 0faG+2jGgiLZGJmv1GvC3xw=
X-Google-Smtp-Source: ABdhPJwVCAXerAQEZRw1wksjIQuYDlek3Gm5nUOSoAy/LVpBfHxOaxA2QAELIH/ZTZREKTlcu6u43w==
X-Received: by 2002:a02:3904:: with SMTP id l4mr5957775jaa.161.1642991510607; 
 Sun, 23 Jan 2022 18:31:50 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:582d:ad0e:e5a6:94b6])
 by smtp.gmail.com with ESMTPSA id w4sm6625633ilq.56.2022.01.23.18.31.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Jan 2022 18:31:50 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, shawnguo@kernel.org,
 aford@beaconembedded.com, Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
Subject: [PATCH V3 08/10] dt-bindings: media: nxp,
 imx8mq-vpu: Add support for G1 on imx8mm
Date: Sun, 23 Jan 2022 20:31:22 -0600
Message-Id: <20220124023125.414794-9-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220124023125.414794-1-aford173@gmail.com>
References: <20220124023125.414794-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_183152_096764_A0ABBD50 
X-CRM114-Status: UNSURE (   8.92  )
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

The i.MX8M mini appears to have a similar G1 decoder but the
post-processing isn't present, so different compatible flag is required.
Since all the other parameters are the same with imx8mq, just add
the new compatible flag to nxp,imx8mq-vpu.yaml.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
index 9c28d562112b..7dc13a4b1805 100644
--- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
@@ -5,7 +5,7 @@
 $id: "http://devicetree.org/schemas/media/nxp,imx8mq-vpu.yaml#"
 $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 
-title: Hantro G1/G2 VPU codecs implemented on i.MX8MQ SoCs
+title: Hantro G1/G2 VPU codecs implemented on i.MX8M SoCs
 
 maintainers:
   - Philipp Zabel <p.zabel@pengutronix.de>
@@ -20,6 +20,7 @@ properties:
         deprecated: true
       - const: nxp,imx8mq-vpu-g1
       - const: nxp,imx8mq-vpu-g2
+      - const: nxp,imx8mm-vpu-g1
 
   reg:
     maxItems: 1
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
