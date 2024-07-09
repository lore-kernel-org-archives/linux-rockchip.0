Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 758A1C3DA45
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jul 2024 18:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7XhvaEJgh9TSNAD1bG3GKNKb9aJLae1cqjMyePs+N5Q=; b=aGjSOXbHaTH363
	jJx1K83WTb6SBPikC252f+1u9HcfhQuJmavOm6smT5kai0fVTM6m0pk9ky5YCTmZFN77/RrGCdKUA
	cVjJO1z059c79PPoPMJVjqyMHWaBRHYfx/yggcC6jT2C4Z5SlWIGZSmi+sHrm06rLjt74sTMVKkV3
	1S1pL2OAxsK5bOwHRU5IgMotknJ5n1HeHJlClYGvB1UaFDHlu2L9zTNpoVLT6/8ss16RhSDGOt+cH
	3s+ikU39UvVrT/ejyq6Y4MUOQQRbdZhzGzjVhUNiznbO1zL54m8SFri7cRwqiHmPwbhfW3RihCiF+
	7XqUHZ8SnNXrB4ynvuqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRFSa-00000008HdQ-2GOw;
	Tue, 09 Jul 2024 18:21:04 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRFSJ-00000008HbN-2QBy;
	Tue, 09 Jul 2024 18:20:48 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-52ea7bdde68so4872987e87.0;
        Tue, 09 Jul 2024 11:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720549245; x=1721154045; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AgwpESBd3HzhEeC9qZ9nJrYrNU2j8MOT5fOcyXDiJDQ=;
        b=mnKVDJN9QzV8gWs6V6SH02gy9SYri5LGGYJwUlv3tjRpH6jVQk+7GYdpHiCYQzzvtd
         BH+bhxvS+j0N9AIPHCRahxu4Z6p6tGdAXPS6pert2JKEnQLx0H7JD3sG2nOYLCD4FEwP
         Kn0KcmOmQYkq1V5WDQuXM7nvRAN8xl6+H/2wXbrJnf87jW9/tpfwWRhu5MFxhx+T5dkM
         r+1zzi4Wd3eERE41r1uokxmahPSw3+ZM/U0I1pP6R9WNW4o+10QI8qCxvCV/hXYoAoC5
         wp7UaNA3P3ghoLv4gkQ61WOxLxtI2sERE68o+DESySglPt/ainHxkDpipXmSyVJ0mV2Y
         RIhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720549245; x=1721154045;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AgwpESBd3HzhEeC9qZ9nJrYrNU2j8MOT5fOcyXDiJDQ=;
        b=a9TH8YIrxlZTN0b8sIOQf6nM2HX/JG976l0bhFIfnph2bXq4IpOFvBxsLkTYAE3Mun
         XbxS5LJXg19w0ycs380mNZ3Di2uLqpdW1aOrD2gnzGTXnLtWBwOfcN3Xb/fTf0qFevyY
         zJF1bshmZZePoX2VSwu/u3d6yc+rpRuklbS4cr1UTkXCTSaMLHDSWExKmb0m20QamrcB
         L2VD35WbeYTpBwyzsA00eSjAdVUUV3IXitq3qVfUPXtUvlOi/PnfX12gH1l3UrCAFf8E
         +G8B3+FN0wgi8Xlr6ogkg/BSv1aE8pkbpUcOwxi9hcOsP7AzAlLn1obt6TvaE3DbH2W0
         1QsQ==
X-Gm-Message-State: AOJu0YygqG7rbQ09YVvzcaaQ0UxdxO6XVxzGUAvClL4Y/b/aRIiPR+Q+
	XHOIcqKEn4jlUbtAUGzYuife0whtZikHrIbmDNImsSQ5P3yiGqMto3Ec6F6v
X-Google-Smtp-Source: AGHT+IGWm5UqeXQ+hUOKp35wwH1NOJ3PRBmLFFiGY5YaH4+9v2zhZDQMB1eL9w0r4CknMvRZQg/jXg==
X-Received: by 2002:a05:6512:ea1:b0:52c:df6f:a66 with SMTP id 2adb3069b0e04-52eb99d4f5dmr2008685e87.58.1720549244341;
        Tue, 09 Jul 2024 11:20:44 -0700 (PDT)
Received: from localhost.localdomain ([95.161.223.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52eb8e34556sm316850e87.60.2024.07.09.11.20.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 11:20:43 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alexander Shiyan <eagle.alexander923@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Remove broken tsadc pinctrl binding for rk356x
Date: Tue,  9 Jul 2024 21:20:29 +0300
Message-Id: <20240709182029.1318214-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_112047_651638_49EB500E 
X-CRM114-Status: GOOD (  10.53  )
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

There is no pinctrl "init" handling in the tsadc driver.
Let's remove this binding.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 4690be841a1c..c72b3a608edd 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -1592,10 +1592,9 @@ tsadc: tsadc@fe710000 {
 			 <&cru SRST_TSADCPHY>;
 		rockchip,grf = <&grf>;
 		rockchip,hw-tshut-temp = <95000>;
-		pinctrl-names = "init", "default", "sleep";
-		pinctrl-0 = <&tsadc_pin>;
-		pinctrl-1 = <&tsadc_shutorg>;
-		pinctrl-2 = <&tsadc_pin>;
+		pinctrl-names = "default", "sleep";
+		pinctrl-0 = <&tsadc_shutorg>;
+		pinctrl-1 = <&tsadc_pin>;
 		#thermal-sensor-cells = <1>;
 		status = "disabled";
 	};
-- 
2.38.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
