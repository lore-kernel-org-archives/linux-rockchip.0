Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6B12F46102
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Mar 2026 12:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MIBqViHxMoqhwmLFP0zg605but5Xcq+AjnZlw3cl1kQ=; b=xVmCdEzxN0DBqN
	7O2APWFDQGqYYMrD1MhFs2UndZJOEpdlQPjDhdBB4aS4CuuqF/ynhFT/C7xmnAvofNKaqzzwD3pTh
	fMnu/Mz/+Tc/QVajx9Lg5efEhqlqg1Cqa+dt8ibqomwyVEYCuTK6EvZU6NrP5myyPMi81EUqrL4CI
	cjiWSZNyXMQ+mwM+JCbe369bRsMUvq8cG4ZK5wImcIfua3iX75oU5amdUF0j/hm5zO1hG9gQS/o8s
	geO5BIQK/I1d6o18E9JRtDRUrNQVeDoIAYhPWyHIKysjPwirRIi6HWMwVVBqewH14QvnKm9e/wBKd
	ysC316dSwrqSuXCp7MRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4eqe-0000000Gjbq-0Zxu;
	Mon, 23 Mar 2026 12:57:36 +0000
Received: from mail-vs1-xe35.google.com ([2607:f8b0:4864:20::e35])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4eqb-0000000Gjb7-1Zid
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Mar 2026 12:57:35 +0000
Received: by mail-vs1-xe35.google.com with SMTP id ada2fe7eead31-5ffabb1dfbaso63168137.3
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 05:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774270652; x=1774875452; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Gt82d3IVq1vxclytaQLxZv+KSDc3G6ILVdEZ2/6IgDU=;
        b=ioFLf7R4Joi5mI6PuSc9jt7UuBMxI9i0qzJEauhpzRaS8f9yeU0NJdzgp6W2BVQVc1
         /E6+OoW8o2PKCWgNDPCa+Ix8W7/ybL4AU9YOMZ+8HBxvszS1xV4IdR8yTaIUJ1M9ACLK
         bGP65cgHFoKpF3YtdzBFc1mvdFm/riXCECFZvDjd2LIuxK6N8lKJn1/bGOQt+0wAuls8
         MFsWyDsBburVZzMtbaHJKnXBYk2mlamtRqIuhHfXlpb8gwQ5jDAfHZhHwbc8dGeJMS+A
         9LF8DvdENXfp8x7j4U3e9dwi2/H/ltQuYETycLgRUeYX+EQhhs+FDcULqmw5785iQjQZ
         aXBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774270652; x=1774875452;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gt82d3IVq1vxclytaQLxZv+KSDc3G6ILVdEZ2/6IgDU=;
        b=iyXTfhnGGkkitokDRuZASFRWi28cub5HNxuQHwfEFkXuytJC+jWs1HPAoAwph/rqVq
         IDge5FzpGl0KlttHdhTd7spcRmO7WDN5SJM39aP5FcM5R3b1ia5MZfI8bCFjoUP157fb
         taZxHt0RVghcluuv4iEyYT8VZ0PZOfDI3zKYX003AT/9gcIqUVDd4KrmNVNaBzbXlz+q
         4SDGaOHdjYEQr/ifQyFwBqNqMJkEcI0ma4RaTqnCh7vRJba7yziMU167lFxKek24qJG6
         r5vrsFIWDeoecmQ5/+zLQ9OcmkbqHSR/43KKGnjep0F62tM6eDWN1SfYDmwaLZAYmFY5
         a3cQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHyuZoDsKJFfY2ktnlN6POsd9fh6V3/jgMDAnAbRUGan7t3/NWIHXw4sApHhLDkStHDcWAiXpcL9xIUpHBAA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwkaS2XVqZb7qRwPeg6RL2NoGZu/p/Pn97QE+gs4w4rucTK7z/o
	F0PHji0svCBWx4xZyllbww+3bgLUyg0bH+0bTFiYKq8rxlfCyvcn/zY1Vyi45Q==
X-Gm-Gg: ATEYQzz7amL2BcfRMypqpgV7r8AHLRmX4Hz1hosVmCrC625V/aml6v+9GeL9qXeF91f
	68rlQ8aTRSp+EjSF+TRAs7PkR6ygZRGbASq5CGMnrkDuyLhSBoU+kvX1kYSEx+z6Sjp64bK3TYs
	AXbx+h2Q+VyCZa5naH3kNH0/MzHFf9xgeDJjkvStxQHQTp4vXYw4964AB2/9giRjdAy6ajH5w+z
	SWWiZtUzVdmev8SDKPtNA0P66LCw0TPKYqQGiObi2bgEbHEHki+raVVyGI6bsKzI+mtK6aU3f4U
	ydEycilTAtrulycsDX2sCKKJAd44e2HvB3PgWrE2EZH5xVwBfeLXZNoae6r0BmTZQfgx5gHJmPb
	14w6P6bl2616pZhMpx5VoMOfN8SlmZX6LXXxyqKtTdfeL7xkstNflqxfPsKpmHR8+v1QUtJC4mP
	lICxfMdDnc0SQ2oGWbw39J2nAHxoiwaV9pYDoC7xnG7kqZIrqJOygAOPH92IRcUis8XDVFFQ==
X-Received: by 2002:a05:6102:4a86:b0:5ef:ac78:3c77 with SMTP id ada2fe7eead31-602aecd2a05mr5411035137.18.1774270651739;
        Mon, 23 Mar 2026 05:57:31 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a803:91c4:d341:319d:24e6:7622])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-602af8539b1sm7498325137.1.2026.03.23.05.57.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 05:57:31 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] ARM: dts: rockchip: Pass linux,code to the power key on rk3288-veyron-pinky
Date: Mon, 23 Mar 2026 09:57:21 -0300
Message-ID: <20260323125721.692139-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_055733_458771_1B09214A 
X-CRM114-Status: UNSURE (   8.96  )
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

According to gpio-keys.yaml, linux,code is a required property.

Pass it to fix the following dt-schema warning:

lid-switch (gpio-keys): key-power: 'linux,code' is a required property

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3288-veyron-pinky.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-veyron-pinky.dts b/arch/arm/boot/dts/rockchip/rk3288-veyron-pinky.dts
index cc27d116d025..e241f93b2310 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-veyron-pinky.dts
+++ b/arch/arm/boot/dts/rockchip/rk3288-veyron-pinky.dts
@@ -47,6 +47,7 @@ &lid_switch {
 
 	key-power {
 		gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
+		linux,code = <KEY_POWER>;
 	};
 };
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
