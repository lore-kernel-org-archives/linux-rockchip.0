Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B50F4C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jan 2022 02:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A9zf/Ak621X9MAa5Sr7yMe/byo234qEu8ErKxgHsFFY=; b=nAM2QN55CSv4bs
	KBirJ5CAklF3iaTwoLqp4Heabyl3qGlGWFhW6G06d3EqX1DlZ+po1T44vjdn7P54NvPEAJH7DJ3LG
	1YVohnpf/RR2yzaRJZNyYiwFnfy/OZ+KfPtPFCYIiNmfKSTB9EHqJehbZBPMv1tWRksFFYDjXzugQ
	07Fw7EKGceaNeiGEj3VrAj9lF5FTOQ2X/iFD5ldz/OI1/8maycMY/XpNeaznGIA+Avq0hkZsYF9hS
	QWEt6jIdo3HsTA5/Qs2h/3RImgl/EoLB574cX1rW/NyEgxpO3u5VL2AMgHn8TTGm+MKVfZ4WgKzWe
	aLDqg4TYKKP5qgwURa2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBpBm-0023EF-5x; Mon, 24 Jan 2022 02:34:38 +0000
Received: from mail-il1-x131.google.com ([2607:f8b0:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBp93-0021ha-Ga; Mon, 24 Jan 2022 02:31:50 +0000
Received: by mail-il1-x131.google.com with SMTP id y17so1089706ilm.1;
 Sun, 23 Jan 2022 18:31:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mMhTEWTe94/lxvR3iguUuMULiaaMgsYkOT2qY7s3xZk=;
 b=iJ2k95ZXWZirEU8bh7HgcSE0cLcZLG8UBsmAXLbZx9hvWK1MtzagTzps3fE9ud0Dt6
 3dl1qjaI1gdmN1GxlYJXDkE+uXmsTyZazE2HLsJBU2WJoAIVn6+MJ58eC6ct/1/5xQzA
 6sQTNCiu8F5Ijk7PTZpf8seB/5qcxwqwEuEs2RqnJCB6yEIXvGk6C/yTlt65lnn28k1J
 Z1EdyWuI5GQSnSzct51pe3r/ejd2W0/roNplZDbgIOIDwBczinrOcMrEHFYfXRpW1z4C
 SbRx4kyUvDow7ajO+pSP+CLVWn283R3l8Q0ow0zy3VNtA4K8Cs2LaTFD+TY2kKd7ZZwa
 ISkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mMhTEWTe94/lxvR3iguUuMULiaaMgsYkOT2qY7s3xZk=;
 b=lidgfYjg4Bl+VeTqHC7P++sb4vD+sURUHy5VKVwSQ+evH82zGWbEi+D3z3KqQbHVfX
 cOF0+msiQ7+LEMEeJHp9W6AxnoccsDjRjatL8ACV9r8zerbCPPhwVegFvIdqlZcsSyWS
 j8I2dyEyM44ayuys4c5ROY7KLKbsPAJOhRhpTcLqK8LqNcTasfr+lY0Dh/SgnGZzEiXH
 0fm910NDzjIcgJabF70ZYiVNu4tloKrqg9aBw3qQ0XZ8HnRQYBWyALMqD9QsVdAoa2xh
 GeCMts6qjZQCDMWykS4ZbCBnFlRn8brmaahLyJt0OoiV0WeY8kTWFspXskrjXUOEcIdz
 UXQA==
X-Gm-Message-State: AOAM533UqWbVjpdoSqTv4KqmFJSAULBUiT4pDYrElAc0Mkwu3kaFaxQi
 EaNfEmHbg72pwwUGdwysdHs=
X-Google-Smtp-Source: ABdhPJwHTfqTsXF+kZcb3xdm1e8LTE53DcTCXSzva0z9kKf4O8RhDcx2Gr+M5yR2Za1D9tLhQp22Hg==
X-Received: by 2002:a05:6e02:c71:: with SMTP id
 f17mr7680778ilj.309.1642991508220; 
 Sun, 23 Jan 2022 18:31:48 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:582d:ad0e:e5a6:94b6])
 by smtp.gmail.com with ESMTPSA id w4sm6625633ilq.56.2022.01.23.18.31.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Jan 2022 18:31:47 -0800 (PST)
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
Subject: [PATCH V3 07/10] arm64: dts: imx8mm: Fix VPU Hanging
Date: Sun, 23 Jan 2022 20:31:21 -0600
Message-Id: <20220124023125.414794-8-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220124023125.414794-1-aford173@gmail.com>
References: <20220124023125.414794-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_183149_598414_11AF2CAF 
X-CRM114-Status: UNSURE (   9.59  )
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

The vpumix power domain has a reset assigned to it, however
when used, it causes a system hang.  Testing has shown that
it does not appear to be needed anywhere.

Fixes: d39d4bb15310 ("arm64: dts: imx8mm: add GPC node")
Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index f77f90ed416f..0c7a72c51a31 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -707,7 +707,6 @@ pgc_vpumix: power-domain@6 {
 						clocks = <&clk IMX8MM_CLK_VPU_DEC_ROOT>;
 						assigned-clocks = <&clk IMX8MM_CLK_VPU_BUS>;
 						assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_800M>;
-						resets = <&src IMX8MQ_RESET_VPU_RESET>;
 					};
 
 					pgc_vpu_g1: power-domain@7 {
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
