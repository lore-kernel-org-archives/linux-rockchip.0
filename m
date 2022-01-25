Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B642DC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jan 2022 17:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A9zf/Ak621X9MAa5Sr7yMe/byo234qEu8ErKxgHsFFY=; b=szJSzQTArroHnp
	yhs4W+HLeCL91oiIa0g5Ugl1zLXuj3v3kedCeixr3X6UUqhn+ujBrzeeEQKwMTy+rwAZPGJer6Ed3
	BLM+M3F/qz3Cnb7ngNi+TV0U6XupZtE2WHTa4qpPNYxk6Rh8RAsXwejv0bMUpRPcusLDQ+Cqau8tt
	yEwx9+298dkav29eTgxfUjn5iNE9HWwclvUWU7q0zij1bo3K35K4FpNa/q05Vm5JtuEnAsj4dO4mI
	qTcLbNjQ6NK7tUY/kltHHDeopiefulFai4q2L8wTyaO1Xiq1kcJDGniUTDivNPRLzJ99oESwKOczU
	x29jTFwF4EBniM5xBxVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCPWt-008xx3-U6; Tue, 25 Jan 2022 17:22:52 +0000
Received: from mail-io1-xd32.google.com ([2607:f8b0:4864:20::d32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCPN6-008tQF-Ia; Tue, 25 Jan 2022 17:12:45 +0000
Received: by mail-io1-xd32.google.com with SMTP id r144so2496857iod.9;
 Tue, 25 Jan 2022 09:12:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mMhTEWTe94/lxvR3iguUuMULiaaMgsYkOT2qY7s3xZk=;
 b=qB2b/OBznQg3vk7eTmRQbFKLqe2+4F4LAv/FT+/VISI9E/t+vC7+NkOzq4wv+6QySV
 +744jOtOv+sGHlR0nyyGUM0vxeC0TxpFCud4vSJkeK5RakqjjuqgLuv3H/5RqiWEnQ9n
 wYYm2OY31foCQJse4oYNYs8J2ESDsDSEFBQHUzB3uf4bWrHji3edtox6F5a4svB4Wjq8
 JLEBOG/bZOtR9A7GcF4dYJ1oig7VxKh2r/jo1dRLXKKWInGd7g80fCgs30ktZC9yU4Rm
 J8sv2RMlprVUsLHlCHYOyDvTfFnHpFNcwHRT693mwN5qw77AoZfNk1EtdYbG1vh42FZQ
 c2nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mMhTEWTe94/lxvR3iguUuMULiaaMgsYkOT2qY7s3xZk=;
 b=Qxk5rxK7Jx1MZ+G+f2sU4aXGTbKVGQ+yys6a/yKMwL/4DrorIGXQ5wS8IL7ewOGDKU
 OgIAQsCis7qgtp9IO0mRcA5PiWikIYoPWGsKCKD9CFshdmOo5TuSDIBGh29+s1R/NhRO
 unOxBneIAOUxqN8fePDZZ1QKhcWQhHDN5s9ZE6imuIHamFQemghjzrYzYH/tT5l3PT0C
 JQW39i6wcp2MwMN1soYS3sBhwoWooXU5MqFcifFb+StTVJ5CiGGHrNYT4AZoaqdEV7Lb
 MCEB2zcrpqg5wYhfh+Jvk+ShAOhkOjSznagt+UApWD3dAAoTasl/Dt1gr8cj6KvdhANk
 QgoQ==
X-Gm-Message-State: AOAM533kit/7/JT0Xc0p8bT7ciQ6wfvZD/jAaLpzBYYaDL7IfF/qZ3wZ
 Vk81gJ36zmAIdgdtypW0gEU=
X-Google-Smtp-Source: ABdhPJy1nwamHHzfnVEdxv0YvhkimiB59p6R05mZq7ZjaEJgqSMeDW2gAxduxonHAE26uHuWpAonqQ==
X-Received: by 2002:a02:5b0a:: with SMTP id g10mr9341784jab.169.1643130762991; 
 Tue, 25 Jan 2022 09:12:42 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:6592:b6fe:71b1:9f4c])
 by smtp.gmail.com with ESMTPSA id m14sm8090291iov.0.2022.01.25.09.12.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Jan 2022 09:12:42 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: aford@beaconembedded.com, cphealy@gmail.com,
 Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [PATCH V4 08/11] arm64: dts: imx8mm: Fix VPU Hanging
Date: Tue, 25 Jan 2022 11:11:25 -0600
Message-Id: <20220125171129.472775-9-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220125171129.472775-1-aford173@gmail.com>
References: <20220125171129.472775-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_091244_673121_647BBBAC 
X-CRM114-Status: UNSURE (   9.62  )
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
