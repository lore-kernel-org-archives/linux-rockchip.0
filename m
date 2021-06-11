Return-Path: <SRS0=14fJ=LF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5F2C48BD1
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jun 2021 14:39:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8003C60E09
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jun 2021 14:39:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8003C60E09
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VZsi7HPJ+7Fy44sZ5HJJgD551PyRIJgf8k3oGRAiRC0=; b=LvLORW4vCbx/4O
	BbeL3pibht7jqtguSvvpVIuKVj+lqXM+zRtb9UlqBxhB15L2rFfALSRz0zJlsrpqrfA5/hq8iVEdz
	D2mIiNskCkM+gLmE/PIC3yvyv5uVfxiNujjzV9JT3hl7hoB8KXLXNTtcFHo01aMBTFMbZc/cj2pwm
	IiAad9/kCRzMaWrvpNDVNN74z+4cNfS5Tc1OSA9mB7t8o6m6PdZViGBJhHa1byPlM91rdSTlPNyPv
	kEL2ZbpGMUPPLzcnOAWR0cfZOyGYd1OseFAvu9CJ+OVYwae0bJa1pJfhYcHJrsh57uglc+755SUae
	pbxAL2ey0dJ2+TrqiEeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lriJt-005djM-Fc; Fri, 11 Jun 2021 14:39:37 +0000
Received: from mail-ej1-f41.google.com ([209.85.218.41])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lriJq-005dhV-VU; Fri, 11 Jun 2021 14:39:36 +0000
Received: by mail-ej1-f41.google.com with SMTP id c10so4875858eja.11;
 Fri, 11 Jun 2021 07:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=N4ihkj1Omvm17QpjwktGEKecRjJXJDw8GrzMNkb435A=;
 b=l3lSfoYVptC7mVRVSdI+ePCvmnj3PEMgJDMkS/LqOUUMC4V7916wi9PFr8HNuwZipV
 vO8kuOfQBjqfLOjlU2z2HgTgrDic8h89sU9JabJnMJQ3Qp9CVJJjFod8sYrwOuuXUDOY
 g9Xys5VJzo6nC9kEUJ/kPnb0Bhjn+FAFDxduqr5HhJJGPTWG8H1Z8YTdRJcBMPNhGvTu
 hDa948ulrWnAFaZKmOiy2DAypuMY2srBwgybTz9zliJorIlERup5YX4qeXpyDF49Bpku
 PyDIXqHqcVOtgiLMMN/ldCAEOVypMGJ4Mzbk2fVU7m7n+bkYtlK3R+yq+pekW8yZR0N3
 5sUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=N4ihkj1Omvm17QpjwktGEKecRjJXJDw8GrzMNkb435A=;
 b=WLFDketQAuvk6eSyVOZdBVQ3iZeWwqw/x9dz5ZXtCtPwge35m7Kd/cOqVpCwj1EdlE
 4c0mxhkp4gs0MhRicnYbSjTtKil4YuTzEbxI0UoaVw2Mz8H3PE9lChkNOVTsXV6Snqrc
 5jKfbP5xrk08u+3Amv60zUK7vE64B0jvNJPihhNoq8KCrfrHq87J1EQBClth92csYseI
 /+rtIIdzdC5UWT2EyyWzPwANMep2JgkOhCIdydAl9ncHfxRgcR9viFvnpLu6lvTyvZv1
 2TgtAuW/JZNV0KYqpCcMXT41z1w5f6/jR0IDEshSdWaPxhDC9mHRYEVjCeanNOg1d6az
 JoAg==
X-Gm-Message-State: AOAM530809XQIVnnnIlZFCm9u6OHLmcauV7jSsfQLTlOJBX+rJwlfx2q
 xSM/AprGo5mUNJxuYm+ix/8=
X-Google-Smtp-Source: ABdhPJwIZFic3caAilARhIEd7H2HfaOUHTtAVzv+rSXbDXagmwMDKVs7WG/NEwZ9qwboIieRS8OFDA==
X-Received: by 2002:a17:906:e01:: with SMTP id
 l1mr4073984eji.280.1623422313238; 
 Fri, 11 Jun 2021 07:38:33 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id p14sm2671008eds.19.2021.06.11.07.38.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 11 Jun 2021 07:38:32 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC PATCH v1 2/3] ARM: dts: rockchip: add io-domains nodes to
 rv1108.dtsi
Date: Fri, 11 Jun 2021 16:38:20 +0200
Message-Id: <20210611143821.13057-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210611143821.13057-1-jbx6244@gmail.com>
References: <20210611143821.13057-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_073935_036927_B9AE9176 
X-CRM114-Status: GOOD (  13.44  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The compatible strings below where added to
rockchip-io-domain.txt, but never added to the device tree.

"rockchip,rv1108-io-voltage-domain"
"rockchip,rv1108-pmu-io-voltage-domain"

Add io-domains nodes to rv1108.dtsi

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Due to the lack of a rv1108 TRM changes
to grf.yaml or rv1108.dtsi not verified.
---
 arch/arm/boot/dts/rv1108.dtsi | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index 9bd0acf3b..1a61a6a68 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -265,6 +265,11 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 
+		io_domains: io-domains {
+			compatible = "rockchip,rv1108-io-voltage-domain";
+			status = "disabled";
+		};
+
 		u2phy: usb2phy@100 {
 			compatible = "rockchip,rv1108-usb2phy";
 			reg = <0x100 0x0c>;
@@ -434,8 +439,13 @@
 	};
 
 	pmugrf: syscon@20060000 {
-		compatible = "rockchip,rv1108-pmugrf", "syscon";
+		compatible = "rockchip,rv1108-pmugrf", "syscon", "simple-mfd";
 		reg = <0x20060000 0x1000>;
+
+		pmu_io_domains: io-domains {
+			compatible = "rockchip,rv1108-pmu-io-voltage-domain";
+			status = "disabled";
+		};
 	};
 
 	usbgrf: syscon@202a0000 {
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
