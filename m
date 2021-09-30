Return-Path: <SRS0=3LcM=OU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25295C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Sep 2021 11:06:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DE6786134F
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Sep 2021 11:06:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DE6786134F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fZqd47gbdJK6Qy2oBJ6oZNNyR8iFM0Z3F1ZL5l1LKDU=; b=4LqhtqZqIllzdy
	EMq4VhyK81HsIGA+9NW/K2pLgIAVTcWSGYuE7uQFQfRTgiufMMA7oA/IFFrb1b9lqLYKMf1kgEzOF
	TRPsKFFPL6FW4bP7A2O1jJfxRIRaJrD0NqorMRuA00yqI/dsO7/kzot0zS2IOsQjXbnxrynBPxd2B
	jE5pog0NZjqVGzW0KN3u/GBnJF70OYo44VclDPkulq03ra2lJixZtVzNLO6ZUYsf0aaxUB4JqsN9d
	yn4M+TDK5FT7CHYofDcQ3UG92EJza/UNG9WpVcALi/A1WihPETQ3vaXsj93oZu/6VAchVt0aI+tua
	9/xziZxGX9RZihwaHzgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVttN-00DzDD-2B; Thu, 30 Sep 2021 11:06:21 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVtsX-00DywB-10; Thu, 30 Sep 2021 11:05:31 +0000
Received: by mail-ed1-x52b.google.com with SMTP id bd28so20411504edb.9;
 Thu, 30 Sep 2021 04:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3Mqq1EJ2H9lT3Ci5TT8crEf2RCsTlu4B8737O9t40fk=;
 b=ctXoSjBkvSIYNULZaa1/V0zomtPR9Dg6hGyso+EDovmgaYUAbYEJved1OfeTZDjx6r
 jsoMIVFfzEgEXtg4ZDNQzkyDlcbUG2cXX28Oor5BNgfMVRzhkznGLlwUKyxC41i0rUlz
 0qxCqfQm9eeFVI+qQbpRezTR8Zzw7pGb9cpBicROrwpunIC0ncneATZnp28rqnrvYiwA
 DuLwhPNGZLnTczsAJbUljTCACCW6ADDdxDo9hhnSoHEZLZbp9S36tQaQeppsrDhKPzgI
 u5iWrGW/oUQ8smSzPXPqamjbW8X8kmCFGoAnobN42fYwMX9AmjY8zJrUluzhcbpqtc93
 fgjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3Mqq1EJ2H9lT3Ci5TT8crEf2RCsTlu4B8737O9t40fk=;
 b=YP1E1PrR/dNjYkaJARNI/dro44rVjOJ1j+DlozGRldJVMgNEcoXHHJgnF76ugK8mxH
 s9r4gHNFTpk8hRV1wFuQzTKJnUDQYTMgPXe8sWN80l4o7bHrdebKIGFY3bT7qeQRqowt
 /zm8ozQZ6oOrPF7KO9bNjjCtogLII+TfnfgMGmmBXBB4Zq1nIMGHeazjxwiMAwqbg9BO
 xzaBM3abFzTP3aCxZPSWmQ1sLhljUfdzglo9qyw71oMm9udrZeu1/9UtRz8PhPM4rg86
 rdEXjOPBmZhHo4vDuvrMXr3RekvzVG5ZP+sJ+JqPrM0y8LaJmIdibi9xcaGIU0QLXtgt
 i0TA==
X-Gm-Message-State: AOAM532jA/q17keALDJGTffiTokHA6ZU3I0zu/fI0Btqty8MdBUooLng
 0u6cjlLYTDTi6X945/8BY24=
X-Google-Smtp-Source: ABdhPJwn+zUQkIe2nFFlWlA6BpEh0kKo3gLy3lRh6spCZ8VNO5YuDcImrQXlufA2biBRs2ZX2uzc7w==
X-Received: by 2002:a50:fa93:: with SMTP id w19mr6405648edr.365.1632999926386; 
 Thu, 30 Sep 2021 04:05:26 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id i2sm1305158edv.7.2021.09.30.04.05.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Sep 2021 04:05:26 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amitk@kernel.org, p.zabel@pengutronix.de, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/4] arm64: dts: fix resets in tsadc node for rk356x.dtsi
Date: Thu, 30 Sep 2021 13:05:17 +0200
Message-Id: <20210930110517.14323-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210930110517.14323-1-jbx6244@gmail.com>
References: <20210930110517.14323-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210930_040529_152921_6874D735 
X-CRM114-Status: GOOD (  11.47  )
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

In the rockchip_thermal.c driver we now get the resets with
a devm_reset_control_array_get() function, so remove
the reset-names property as it is no longer needed.
Although no longer required in rockchip-thermal.yaml
sort tsadc-apb as first item.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index e42fbac61..d013348bc 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -838,9 +838,8 @@
 		assigned-clock-rates = <17000000>, <700000>;
 		clocks = <&cru CLK_TSADC>, <&cru PCLK_TSADC>;
 		clock-names = "tsadc", "apb_pclk";
-		resets = <&cru SRST_TSADC>, <&cru SRST_P_TSADC>,
+		resets = <&cru SRST_P_TSADC>, <&cru SRST_TSADC>,
 			 <&cru SRST_TSADCPHY>;
-		reset-names = "tsadc", "tsadc-apb", "tsadc-phy";
 		rockchip,grf = <&grf>;
 		rockchip,hw-tshut-temp = <95000>;
 		pinctrl-names = "init", "default", "sleep";
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
