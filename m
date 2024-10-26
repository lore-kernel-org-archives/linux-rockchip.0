Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13BB0D10BF6
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Oct 2024 10:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qs4CU37vCWiApAGIe2tRJFmwBbATrSf+4YM3AO/2xms=; b=taPH6Ts6ntDTNp
	bczndS1UtRXjbjxk36By4BR1UEgfXfEAx34eK9iGKZdzBOOp4gPEkesrV3ztJ7ZhRAoebDL2CciTu
	oEVC6zC2KcyiaMNo4dePIz2TmRNzzcMkp2DvSmZYV+1mAQSgTkBmXV0UKT8VtCnYI18crDIdsOA1B
	xi1QSwfXmlP9pVGh9ivAiUUqAjL5tD6ZPIkNoY0ZdyW+U2zV3yf9n93WwtwIIw0yzoCuR26jLWS0I
	Q98Nj+01b1ecNrSHrjf1mIOiFPvqPexfi3qPL0YDiFnh3MWrR10Yl+YZyasYUhz/Tn6bcWQIDtOdc
	UA2pVHOS9PMBWrc7Be9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4deG-00000006L2Z-0yBk;
	Sat, 26 Oct 2024 10:03:56 +0000
Received: from mail-oo1-xc29.google.com ([2607:f8b0:4864:20::c29])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4deB-00000006Ky0-1WVy
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Oct 2024 10:03:53 +0000
Received: by mail-oo1-xc29.google.com with SMTP id 006d021491bc7-5ebc1af8e91so1411174eaf.1
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Oct 2024 03:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729937030; x=1730541830; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sRxIWQFidByo0+cFAaad4zx6dLeXSge927bzhcflDvo=;
        b=D4ypuITqazz+Uf3DXd5Mmk5c31wSejekySeJOixXvUvoKeAbo9xC2rAZ0D4UhO9zuX
         9Ahz/vS+PiZVlMC+VclPueCfjkB2cSCVQa4stgLq+RM/GgxpElHRJQej0SXrWssRIuV1
         /CQBEbPDxr0/Fat5TlXwKRyboa9q4I/yvvsjObe+QTfSlo4XwCzRrUodgPp67U2bgwmE
         +G2Ohm3Ha39M7mni2ym7qgBu8jMOTRAYAGuzclkLDOHJIFeHIk2XomM59H/D52LWiyBn
         4rklLwsqLPg+PwjpMk1qKZAsBIGXwjqF9KPTx6MZrBKRTF5KGlhbZdXAM+OnxlS63BQo
         PPZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729937030; x=1730541830;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sRxIWQFidByo0+cFAaad4zx6dLeXSge927bzhcflDvo=;
        b=JcgH0lGgFeexMZcSDLhXh7xUXUeZnQaV8OaqrXSCYAzZa69faPr7rYk+tI+lnSBipq
         oYt+22qYdyVkmB8J4COyRzIe8t4+b6bsjkKodM4d4ss6iyCozF5dwgG+ekoh05Q2HFD9
         Ba4/e/qHVprJ4ah50pApbeZoipu+XMwUugZD4aSGFIQzW+QkkCkjiNFDpRECM0Ygd7Mp
         0lZ1Tkxi5s41LtNtTU3lV/rVun3z+TWwLMqvecA0MwCR4rRz+1pZykFMlmynP9HK4jUt
         M2SPy/UzCXlWN33CvAzLg08LupU8y+s1gp1vijMCYV2Xd03pLryV7Z7F2Vb9neBCDMBN
         fFvw==
X-Forwarded-Encrypted: i=1; AJvYcCUvyC1giyHCgCm4RzcTCi0+Rw0TDj3ucmPuHK37DRPlayU/nwXiEvFiYbm5DQ+9qgVy4WR34UBmu7Ij38TF9w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7EG62ZX31rwsRV3GATS8W9K5HJgF392QgWqL/ajVuYd3dPwRZ
	Q23heDEcNq6OdZ9XdOZLsrmfrZj1pqrUxOeSNpomdEKeBkwLCUqL
X-Google-Smtp-Source: AGHT+IGWk2XG42M1KaFuaMLBh719ko/eQM/+qhPtYRVwOaq2G2DYvmhN+L4Z3KnytnlYpt3yrXENqw==
X-Received: by 2002:a05:6820:1c99:b0:5eb:827b:9bbf with SMTP id 006d021491bc7-5ec239af6f4mr1326408eaf.7.1729937030123;
        Sat, 26 Oct 2024 03:03:50 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:cefb:5eea:7da6:3c6d])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7186165841asm632243a34.48.2024.10.26.03.03.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 03:03:49 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Ondrej Jirman <megi@xff.cz>,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH 11/15] arm64: dts: rockchip: Enable GPU on opi5max
Date: Sat, 26 Oct 2024 04:48:27 -0500
Message-ID: <20241026100310.52679-12-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241026100310.52679-1-honyuenkwun@gmail.com>
References: <20241026100310.52679-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241026_030351_612720_0DFA86A1 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Enable the Mali GPU in the Orange Pi 5 Max

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
index 39d2a38710df..71b2d891a2bb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
@@ -180,6 +180,11 @@ &cpu_l3 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0m2_xfer>;
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
