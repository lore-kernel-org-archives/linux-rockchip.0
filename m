Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27D2EC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 23:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hal728TWiEwOyWp3NuxX/F262meCtwyjzFB+c7qqsGc=; b=XWJUWuiUTzBano
	rT7F/nZADwYjCHBpCkWUPkXi4/QfI7OZ2Kby3lcIoPhRt/Kw7i+w8kAzphcGyVdKavjggBooWo9t5
	2ajM1N9DQ9TsgJCJ+xTAZSLG7FOooTdmorAQUyBuBfeCS45zG+FX+OebHBydIEZZMVr5iLhQL9FlG
	M1BjS20KTarS90jWNE57zdP+ABAXXMI98a1f6QKltmRRyYliwZ9ocsHGxXQUb0mzV1kGTZsi/Rc9G
	+0u/MTw16VOAvlMRBcox5RU/d9LY0S4qGhzBEqdsK55CLzfzrTQnuLFvrFXuPXFGm9/mC6gR3f6a9
	tJESWsFAkR9sIf2y4KgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPYMV-004hUJ-S5; Wed, 02 Mar 2022 23:26:27 +0000
Received: from mail-oo1-xc35.google.com ([2607:f8b0:4864:20::c35])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPYMT-004hTZ-RT
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 23:26:27 +0000
Received: by mail-oo1-xc35.google.com with SMTP id
 w3-20020a4ac183000000b0031d806bbd7eso3805905oop.13
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 15:26:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CLi20Hor0G3/sIPJTYATf6fKIEtn5LFRUnAO/aft59U=;
 b=Av5CvcA2UnsOS3Z/PWZnEjldFTgabukGTmsIv/N5jqt2gdW/jUXtzyYcQoj/aCDTls
 x1w0Oc/bdwJI7F61rbNmg62fk5rDcXvijlat26rvc55hhigxcPY/VEil9YUkyk2ubfQV
 RrrNRQioy3mhGQ5BJUabYRzEnG9hIbBP2No0p6E9IQlFv/7GsA5rmbea8UpLWpSRknCh
 C5Mktcb5f89m0LeRWznJHlOFXedyIzHlMBAoAqzyHnmG5Oy7NmBrAoFgdZ0Dko6VBjtQ
 BYfFuJT1yNZo5Cme5lrcF++nv12zbVNI32Lp11pBvUpEm+pZtAJaGEE7tKZL5S+jpTEu
 ra8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CLi20Hor0G3/sIPJTYATf6fKIEtn5LFRUnAO/aft59U=;
 b=LduDdbEbwDTnksJpI7IJlZGLwRrtkz55dw6TPuyzAWH1CVJf2h2vN/N1f66E7H517x
 Kfg0xnVC+aoNNtI1fuP0KHwaTDpxoWqudvRuQgoDzuIu/sDwsrm76W0+G4itIGL/ndH2
 ft+FgXlcuTJSfZRhaNfMksGYl8ntGI13oyW25Bm5ApNdVzC/HejRnX6NvVZ/gQuQV/bw
 qNEIf0y3u9MtCc4/msCVIWsDm+NfyzZMCIGEqM+kGhYRYTTEZsw3zON5Uau7zyTrT7ZV
 wKL+JQOfbTxnV/tGwVYbKTFZdDCI169wl6tciCMSlBzHX5R1NPVFnUTC5r5qfyFrZLBT
 RsrA==
X-Gm-Message-State: AOAM531D2rTGq3Nl349xyKaegQ0/NE1tAlYIPnWWPZLUtvHdnC2f+qcd
 fcN8MR5uvtoNErc5/NZEOsA=
X-Google-Smtp-Source: ABdhPJy7WkY0vQdVZcc4+TG+enINumY8Xhw+KUiHcRiJ97bu7n0ByBwAkLPI2b5cviPC0A4n/2LD8w==
X-Received: by 2002:a05:6871:5c3:b0:d7:1322:9d48 with SMTP id
 v3-20020a05687105c300b000d713229d48mr1849381oan.153.1646263584963; 
 Wed, 02 Mar 2022 15:26:24 -0800 (PST)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 fs3-20020a056870f78300b000d75f1d9b89sm234925oab.54.2022.03.02.15.26.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Mar 2022 15:26:23 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
 robh+dt@kernel.org, heiko@sntech.de, strit@manjaro.org, mbrugger@suse.com,
 arnaud.ferraris@collabora.com, knaerzche@gmail.com, zyw@rock-chips.com,
 zhangqing@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/3 v4] arm64: dts: rockchip: Remove vcc13 and vcc14 for rk808
Date: Wed,  2 Mar 2022 17:26:10 -0600
Message-Id: <20220302232612.25455-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220302232612.25455-1-macroalpha82@gmail.com>
References: <20220302232612.25455-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_152625_911567_4DE25264 
X-CRM114-Status: UNSURE (   9.57  )
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

From: Chris Morgan <macromorgan@hotmail.com>

The Rockchip rk808 Power Management IC does not have a vcc13 or a
vcc14. The schematics for at least the Pinebook Pro suggest this is
actually vcc1 and vcc2, and may be an artifact from the reference
design schematic).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 2 --
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi      | 2 --
 2 files changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index c2f021a1a18f..20f71317d7ab 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -472,8 +472,6 @@ rk808: pmic@1b {
 		vcc10-supply = <&vcc_sysin>;
 		vcc11-supply = <&vcc_sysin>;
 		vcc12-supply = <&vcc3v3_sys>;
-		vcc13-supply = <&vcc_sysin>;
-		vcc14-supply = <&vcc_sysin>;
 
 		regulators {
 			/* rk3399 center logic supply */
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index d1aaf8e83391..0e45cc2d195b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -310,8 +310,6 @@ rk808: pmic@1b {
 		vcc10-supply = <&vcc3v3_sys>;
 		vcc11-supply = <&vcc3v3_sys>;
 		vcc12-supply = <&vcc3v3_sys>;
-		vcc13-supply = <&vcc3v3_sys>;
-		vcc14-supply = <&vcc3v3_sys>;
 		vddio-supply = <&vcc_3v0>;
 
 		regulators {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
