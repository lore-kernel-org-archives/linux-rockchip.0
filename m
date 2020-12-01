Return-Path: <SRS0=IWi6=FF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75BCBC64E7A
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 15:42:13 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3B5E820857
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 15:42:09 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="jPnF+7Ma";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="M19oXvZn"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3B5E820857
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9lvpYA/aX09kP3H9CE6ATxAzpH7sIyDMuXOS7NYs0cc=; b=jPnF+7Ma5c4LUbsT4Sjw9GBiX
	THA2Sxu1bAheviAd/V5xbJhFO54zDpLHzK0+mvDCWF4Ysev3NQF9M+fT437EF7J2DAfto+ircFOoS
	ospUss5eKXTXnkPvTFFIK+02gE9BUosIwHBZPoaADpPFrQ+ZsAnKHcIEZFvCapcMvISrvSwX1I9HY
	54dmhzK8ODQW34oqiN1mgWiKOvViwJGduXnaPI8U9tQZnKONu160gUaNJ/vOzcKOI9ohe7E+vBhNb
	VBcY+i2AGBv3UDQrMuSNA/xgD7k9Cb9RU2g2eE5LD1uI4aO6O2A7IA9e64HBa7kbZd9I2MYIQf+II
	HcyCa99Ew==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kk7n4-00046r-Gq; Tue, 01 Dec 2020 15:42:06 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kk7n2-00045v-LS
 for linux-rockchip@lists.infradead.org; Tue, 01 Dec 2020 15:42:05 +0000
Received: by mail-wm1-x341.google.com with SMTP id h21so6161138wmb.2
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Dec 2020 07:42:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+PbHYRo9ru+iaQnGJq34Q1hIXsrQG+mWKbefVtI+W94=;
 b=M19oXvZncYxrfSjOA2C1LF3obpSCw4EZsbmDkYYAfBv/9HXt94dwOgLLomyIeMxb6d
 wbx1Pqz8x9OZ+fLX+LYEfsEFCLj3Rp6fgObNQN1esHyb/mUWTWkTiXXUjTjQSWOAeNU2
 fVRfj28kh0B54VPqLViOV/FydgNhVQ64gMRUmxKwoVBqcok+8Vu4nfmvnP8d+aIAfJpZ
 fmfBtnOixS+zomWZReTpc+cwqteFVj1ntu/XVhIlIxY2HR2VoPDftsNKcgwTlXiSkxTh
 uZAcOTmHGsFzi8inniWKwEkZKEdg6Il7qhUu9IXFjoEXtPletDG+COGi0hu/RpbQ602y
 HnIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+PbHYRo9ru+iaQnGJq34Q1hIXsrQG+mWKbefVtI+W94=;
 b=BycKIxD7IJlsGLz7ny6yZT/09J/SrflHo6FnANKdSbvle93DEd+RHAGBPbh1B75UYx
 bYxjn1bMN9Cr81EEQtGRXQu6ypz5c3xL0PMYwM7eOA9WMp8r6QiM+8o0hzqMGtJHtnjX
 NUwxXxNqgqggVV0WswUy0qQ4e1FtmneP+3ZsnjQ0s1HPmNOGjgY342HdeGGYQvgaywLq
 nrgtiqfNgJRzQM275tgVR/alvssJVNsptn2vbxayWb8z8X42+hxtUVRtIgUwWbCuy/cx
 nHmb9m054yTOpWt5loxd37PwMqVVhhHan17uSl+Mv/Da4Ygy/Yn6yayebi3Q1yyQPB68
 my1Q==
X-Gm-Message-State: AOAM533w4EwG0d3lZ6n6/eboYB9WehMLzBXcYJW0Xd0DsjMdkKdnAz7D
 rkdB79njkV2D+mRu+oNpJKc=
X-Google-Smtp-Source: ABdhPJzDvQdugL3V1uuxtHAOSDKLzb/NPCG/8Lm72iZFcOe4RfI8jCdCyHWHqGFhrl9lDDyZU5zWFw==
X-Received: by 2002:a1c:1bc9:: with SMTP id b192mr3272891wmb.136.1606837323632; 
 Tue, 01 Dec 2020 07:42:03 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.27])
 by smtp.gmail.com with ESMTPSA id l24sm4229811wrb.28.2020.12.01.07.42.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Dec 2020 07:42:03 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Douglas Anderson <dianders@chromium.org>,
 Carlos de Paula <me@carlosedp.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-rockchip@lists.infradead.org
Subject: [PATCH 2/3] arm64: dts: rockchip: fix I2S conflict on rk3399-rock-pi-4
Date: Tue,  1 Dec 2020 16:41:31 +0100
Message-Id: <20201201154132.1286-3-vicencb@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201201154132.1286-1-vicencb@gmail.com>
References: <20201201154132.1286-1-vicencb@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201201_104204_710947_722CD7C3 
X-CRM114-Status: GOOD (  12.56  )
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
Cc: Vicente Bergas <vicencb@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Based on the board schematics at
https://dl.radxa.com/rockpi4/docs/hw/rockpi4/rockpi_4c_v12_sch_20200620.pdf
on page 14:
Only two channels of I2S are connected and the extra
I2S pins are in conflict with other functions like USB power.

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 06df2397b..63b029a54 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -432,8 +432,9 @@ &i2c4 {
 };
 
 &i2s0 {
-	rockchip,playback-channels = <8>;
-	rockchip,capture-channels = <8>;
+	pinctrl-0 = <&i2s0_2ch_bus>;
+	rockchip,capture-channels = <2>;
+	rockchip,playback-channels = <2>;
 	status = "okay";
 };
 
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
