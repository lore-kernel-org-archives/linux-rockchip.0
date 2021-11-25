Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3399C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Nov 2021 10:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3oby7pMfcLdXFiaFEgxDoOVJQz8mJcksTIYxt+vnYM=; b=XLvROFJuYbFMCc
	6we9hWlOhyMjImyo4YepvQ0Q2wpC7YU9zzBdmKOjNYBSQNf2qKMM9EGuePMeHdUBDdzUrtVus/i0w
	Cp72ANV5wCvR803NsR501GoWXzFeDzsQjUHfsF0OsWZ59gofD+Ge/MV7VbutHgqoVKVR9R8wgXT8r
	YsupqmwsN2RLebOBi8rSmpEMXjBFk86xKgGCE3mFhITXSbJvfkW+7BKJ0nBtCf5pJg5s1b1Z3bTIt
	mvhYTGNckHhCLzRX94Ll5wbZdYfe+9CwPYgueqG9wPSOcJDaYPXaoRLXT15SsWSKBlfxjD1Ue2GZ2
	s0DwgP90O/c6ZinxSjYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqBhb-0071on-QM; Thu, 25 Nov 2021 10:10:03 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqBh6-0071es-ED; Thu, 25 Nov 2021 10:09:33 +0000
Received: by mail-wr1-x42a.google.com with SMTP id l16so10403887wrp.11;
 Thu, 25 Nov 2021 02:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sonVc1z4s9yp3qxr+30Ehdj21m5HXG+GbXci1EkRyd0=;
 b=hwSRl65sCjY5p6Ah68cgEhOn5lyv3p5q0Ihu2PGJCQ8QQLD1TREGoM9k4Vod5IpK4+
 v4UurAfVX/1ESHnGkeiZ0juIiGePZJD0cUCRHOCsVlDJOwGnJNyVA7yc9MX/MFE0vf+d
 1Z+n8TCef3/M2CVpLTqQEK5gz+0sfaB2/sFq/vmu8aOK+k+FKP++udq/wgg11dbe1N7J
 kzPOkbaRuOdBTYvNtgqT2Q1kdWArEUSZWbPyjpd9WScUz6nNRypAmeoy2CmzT0WBj2gG
 FvqwmSWeFqLiOtIdCCfPBZ+IXz9eHUGR9bkJarMRJInpsA1Wf43QZ28Rh1y6D74gEkio
 BWdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sonVc1z4s9yp3qxr+30Ehdj21m5HXG+GbXci1EkRyd0=;
 b=VNf0gpGtEHmTV8uT2AEiFjTMjkBNrcUDE9fGs15uJFmosSc4QbB8S84l2lnmRZNoiQ
 yedmOwO+Cpjc1giZx64nRatHWRR5P8t8xP4pcY62jS7mbMVlfDvbTEoJXpTI+JyVfmS5
 n2z9AWds377DOj/3pjFoEJuIeOC9kPmCngYcl9N35+MGCrmEqNC36R6pEL16qzbnwBjW
 YGRMfLv/5coxB0qohbzpRHWxZ/xNA3ubwbWDsIIpOnEbCXAEmbpeIgZDHnUW44b6jwVZ
 pE+wYmDe5LAe1gkwpqCWZjgM5CVPcyIPLzV8hsZCWmVn58dgZA/Ygb28d9yjxyRstkzq
 jdgA==
X-Gm-Message-State: AOAM532ivbnU0CSAKyi34x3YPWthrH67db9lNzTFsz0wWdsptN2HmoGe
 sgHHskJlVHbRz9BuKRBgquALO3VnwCM=
X-Google-Smtp-Source: ABdhPJz7Sq1cO0e4VX/vnA//UUtpVjsWfZx/+npu6v564qfgpY05nOs4hhGcU62Dfts5NH7unWsh+Q==
X-Received: by 2002:adf:ee0c:: with SMTP id y12mr5105453wrn.82.1637834971101; 
 Thu, 25 Nov 2021 02:09:31 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id l7sm2903533wry.86.2021.11.25.02.09.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 02:09:30 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: rockchip: Enable HDMI audio on Quartz64 A
Date: Thu, 25 Nov 2021 11:08:35 +0100
Message-Id: <20211125100836.423808-3-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211125100836.423808-1-frattaroli.nicolas@gmail.com>
References: <20211125100836.423808-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_020932_503565_C1D5FF8E 
X-CRM114-Status: GOOD (  11.08  )
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

This enables the i2s0 controller and the hdmi-sound node on
the PINE64 Quartz64 Model A single-board computer.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index a4453c82b03d..0598510dce58 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -215,6 +215,10 @@ &hdmi_in_vp0 {
 	status = "okay";
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &gpu {
 	mali-supply = <&vdd_gpu>;
 	status = "okay";
@@ -444,6 +448,10 @@ regulator-state-mem {
 	};
 };
 
+&i2s0_8ch {
+	status = "okay";
+};
+
 &i2s1_8ch {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2s1m0_sclktx
-- 
2.34.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
