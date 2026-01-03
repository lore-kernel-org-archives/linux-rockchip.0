Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 996C0FC6160
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Jan 2026 08:33:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EGSGAXYjWA1nG272l84hyBC8Exoxws4JOF5UPnUq9do=; b=Lh5JpWveviySf0
	K8NUTd6YdC/bXLWFO+vGNLYYq7IRFr3hMBCSg0lfwZOP83ttLVVimnyx6vT0kUSQPlli7a+QA1auY
	DoxXjbgXvXi+xo0BOh8MFKglZxYqVyYLiU+DKot4gk5Ctr36ldvLavUvb34+ViUIpq6Q2cp/hkFZ+
	SclUHQQzTkShQ5ORnBasyIoN4XC8ggQtqTEEJzzzaNuuRZ4v64g0hNDe4JXA3cKK30qerVINoak4x
	KNB+MifDpIyWE6u7OmPA/FjilICgxkXY7BNqvB+maQDsPMcSKaTcMXO9RTKeB5Il7jhij68XV1h9+
	jn3fxJuK/zQMPMjm9JDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbx4k-000000096WR-0BfN;
	Sat, 03 Jan 2026 08:33:30 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbx4d-000000096UP-1GXV
	for linux-rockchip@lists.infradead.org;
	Sat, 03 Jan 2026 08:33:27 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2a0a33d0585so116123685ad.1
        for <linux-rockchip@lists.infradead.org>; Sat, 03 Jan 2026 00:33:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767429202; x=1768034002; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=29VsiJqR0uFBbQHYC75VBavG4DpR3+cDRVjS52nwMSM=;
        b=iYrAdwHBfIY6G8p3KS1L+tsZektyf46mz7eAQ0HqTYoMsvzfl5rlp0+gA7gakGP3HY
         oLa6jORdfQ3YH+IlWRFKsBKXmen+7x+/JxOMlRuOBHWIUeRiPCKDnb+YK7qjM/ZwcdWI
         sTNnkI+psOo7AjK9SgYboa1omP9qsRJ+ODr03g0rWHv4Bi1UUSqaB7zicOf3WMHz7/ml
         Ru0yWknYbOliJGcPtMTpmWtLXLlNMOfqyu/GL8I531bjwOHLkjhYaZRYckfj1NmEU7py
         1Nolw+C9ebh0w4nLLTK9fdW1n+eZ9fdFHscyt0pIZK6v2MrhT+1tIFS/8QPlKT0/aYwn
         UP0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767429202; x=1768034002;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=29VsiJqR0uFBbQHYC75VBavG4DpR3+cDRVjS52nwMSM=;
        b=eo8Y+AjlMIb8eiRlUz9etGBaqZfwDz/A3yhmOrYQ4imVuzNX+TEFoAyOfTyhMZo0Bz
         t2B6FkzVvUlSko7vGb0KKoEe9pYAQMm5+bw2yvtbb4jMSA3WPhzNYTdeo4y7Pb562cFI
         dIDbmaHibUiHvDSbFRAeuBGPifE5LM+Zr2qtMaucxja2IkyxeEEkGjymlRfZfX+Vbqg8
         flHCOqxXn4CXRDpS6iem6zNVYpSZxSembTH5fyPbWcrBQ7c36DbTjdbb6fWx/jUzsbac
         TeOAOeYOegcLL6c22Q51cl6pw2AtvaYri1r+2Xrd6MVF4d+A0Z3sranMpsNedW1OLV9l
         Krqg==
X-Forwarded-Encrypted: i=1; AJvYcCWRM5iMCURs230mDEcIwxN/1mSod/i1yqGNAzZtA5N1+IcIyk9mkHCTA/Nyo6N2t2v2iHaZ72fsLH2L1KFFSw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzzZHCsyui1PJEt+JRwW1lzbQ+dxSF2sd1WCfTtJsLkZdWklZZA
	+FcFox24fXbvgxuq+csDDkYzP73eGdAfKVfl/Mdn1CCilPoNUOf1rz/m
X-Gm-Gg: AY/fxX7D8ZHtZPVGkV0aQdsJP/0rBQVI7Qd543icinoLb7y8JGPDm8c9A6OdwaUOHBs
	ncjl/pznnHoQ04lcNvooBT1fLW8QHCsocq2TN5ykBn7nB1mxEyUzz+gs5OyKd7VmksdTD5woDlS
	+inDpygM+IVRkpzjBhDoMfSuc0deXDs/k2tHGyjQoyXNgoh7zP6Nrlh3KFLFGUMze8NDGahwYa+
	3/aKton5NOHf5Xk+LUX13t6tCMK4qfFPq+O2kFpUy1PmbUzcAb3Uc0ReS0+Y2nIKIgY2zIyXutV
	tM625Q3Xo7mcL9a0GJCMZ+tEYsI+E9vHoRmxLUDj609l6VI0tpNvY96ex+01wJqPP6bC3AinGtZ
	3SLIksRFXjtgzUBZOBB9Elt+ZBg9gNAawWzzTmpsbnU1/2LoQk+BIYuUFeCokzmM8DsAKJLtSE6
	flRSUS3g==
X-Google-Smtp-Source: AGHT+IEdATA9P7k2n5CWUx8yOsmhm/F/9su5pYtPk4wylobkfRFEAHqb0+3yD3t4l4QDFzSZPoWtgw==
X-Received: by 2002:a17:903:1c8:b0:2a1:3769:1cf8 with SMTP id d9443c01a7336-2a2f2734d5emr447661885ad.33.1767429202381;
        Sat, 03 Jan 2026 00:33:22 -0800 (PST)
Received: from rockpi-5b ([45.112.0.8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c666d5sm391700365ad.21.2026.01.03.00.33.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jan 2026 00:33:21 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Yongbo Zhang <giraffesnn123@gmail.com>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list),
	linux-usb@vger.kernel.org (open list:USB TYPEC CLASS)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v1 2/3] arm64: dts: rockchip: rk3588-rock-5b-5bp-5t: Fix USB host phy-supply on Rock 5b-5bp-5t SbC
Date: Sat,  3 Jan 2026 14:01:18 +0530
Message-ID: <20260103083232.9510-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260103083232.9510-1-linux.amoon@gmail.com>
References: <20260103083232.9510-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260103_003323_650500_52ED2772 
X-CRM114-Status: GOOD (  11.98  )
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

The USB host USB2 and USB3 on the Rock 5B, 5BP, and 5T is powered by the
USB_HOST_PWREN_H gpio pin which is used to enable vcc5v0_host host
regulator which ensures proper power sequencing and management for onboard
Double-USB-HOST.

Update the u2phy2_host node to reference the correct phy-supply.

Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
index 0cd8ac7bf538..886d788572fc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
@@ -981,8 +981,7 @@ &u2phy2 {
 };
 
 &u2phy2_host {
-	/* connected to USB hub, which is powered by vcc5v0_sys */
-	phy-supply = <&vcc5v0_sys>;
+	phy-supply = <&vcc5v0_host>;
 	status = "okay";
 };
 
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
