Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4862CD3445
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 May 2026 19:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLu0nsqgYftZ8YDsvnSo4EJg/o26iQc78EKp9br9xPI=; b=wex33aSVQBu+dS
	e4Viv2CO2mujIFbim1XGbPmbKm8OD8vND21bONNiWeUxKk4+c0psFRgBmCIMGzTQnGXy3eVepqQkP
	DQ29qQZLCQj5hNkloDF4VxOsrzLR/QkkrXgujSOG3O+GimeFL4WH2J3cfOUu/ZuT8XY+YlJz6cYKw
	akBGZEfiHVBp9vncSFSPxQC/3DxhuWqV45wkqVYVYMewNsaOtGiFrIDBsq1PMe/oXHsXSIfC3/M+r
	8ROGEkpnRPadif5rWmSXA0+euq5yQbbCuBkujrYyKXHd4yt8qAEsdAr7lXi7O7XQyKvl2vIaNcjYH
	0omrSonwVNkF/XeXCgYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLnFA-00000009W2u-1kkR;
	Sat, 09 May 2026 19:21:44 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLnF6-00000009W0x-2ZSi
	for linux-rockchip@lists.infradead.org;
	Sat, 09 May 2026 19:21:41 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-7dd73b7c757so1640518a34.0
        for <linux-rockchip@lists.infradead.org>; Sat, 09 May 2026 12:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778354499; x=1778959299; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=glwT5koQsVbYhX7I4MEF51k8vuLfNT2TtvwRkG3+C44=;
        b=Bp296vs+pksJCsVJVMX8FiIqyATkliB5vf4T+dhaWZ/B8A04WOoXsbNd3fAmeIYJgg
         88hX8eZKiiokSKiyr3CLNjhlRPcrckTa8JhgAjDZndmJYln6yWoxaPPsiAqzTzanFOzc
         bE/iTSRywUe+sBTZXCdEEwCp1Ye0h2YSONoamumXAaB4CEThbvoTXKniGWPCxlK9uvnZ
         lYrfaE90JTE3eCm7Z2ctm1/tYr+fzg0FN7ymwL86T/iJeL+HiuYhGkCOqUn8KI5wfZqG
         ygH1MWFCQ7Pw1l5farSrxbqRNZjBHN7Wdho2Sh4aEIdB/WlXsfxOm1yM9AttQhQ8Rd9S
         tTRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778354499; x=1778959299;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=glwT5koQsVbYhX7I4MEF51k8vuLfNT2TtvwRkG3+C44=;
        b=aGa7761iclbIatUYsvNMQsGmZpiCeEr4Y9ILcw71nxHMJpZk2jzTbseH72n+LQ+rS9
         40x8XbOeoJwhL1e4T8I02xuSSfdBWvpXvJhsxfqyrvepjClkTzvYJOP71zZIbon5YX2L
         syzTrPI3D82Ec80iubNkHiYTKVaIXLaE/UKdmt0U1na4m0wwXDE2RtbI3Afm7AzlChc0
         Kg6AeT3TdUMFu56I47n7n0UbYEL8/dTv7/kaa1H5cseTj0SeKWe7Oh2sp8G61lzuW43J
         08g0/I2X1wuMi3rFo4EcPbGFGHtqEavYl505EArcTWx211jCheBnRAv5cH2JdmyGsKzB
         xoVg==
X-Forwarded-Encrypted: i=1; AFNElJ/RELuxBv15StK8x9Wn8l6H61sCfzVHKkmKdjCqzTE14gHx6Z2+wOL3Kp6mt1PQTkDOPoFpIR7rT7MWvFqG6g==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywv//X+6wY6t+D7MN5SLwJ9Mx6UVjdkm2A1YX9f6zExQgtpu9mn
	er7YnlOqNIi7TV5NAni8AVFihRZEezIPvcfTIHVowKvKROjwhBsN1dSj
X-Gm-Gg: Acq92OG5Fw4VM/oxsI1hGIA+w+fIhQ9b2NnBPYHuum98Quc2Twa82iP4WbA3GPY33La
	SkmONA+gUDYj5ilCSG+aO3+W3nPgxXH5G3OoYWRTceqLnQbF6sV7Jf+No53cK89dbCmpHD2RqhO
	NSWy4Hr1QrAE26GO9xVhAssmiGPbNFHCZiGZMO8ug73wiSMjxjBYyXTzWZatdyrQvpVrFM3IFJb
	H96eUTaFZEV+n77VhsZqtxd/dI3U3qmMWY05ZINGJG2U2h61+OiqTFRbQUM6O73PTDDFr343spd
	UQosWCRZjlwzlklTM/AooqzRFReqU7AfXAwedtVUbSYLOPWloVTt2WFON05ytCqTo6NyBaDTd2F
	GgdOkprmwNm80sD2OxDS3wrIwy4rpGwQ4zAqmWs+GtQdLDT2q/EFCO+8ahBKDvmTw/TUhcv90AG
	5VbwJUG/CTJcP1M0yR6vuJ
X-Received: by 2002:a05:6830:6abb:b0:7dc:d7e8:cb37 with SMTP id 46e09a7af769-7e38217f056mr2076083a34.21.1778354499152;
        Sat, 09 May 2026 12:21:39 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4355736f517sm5243896fac.12.2026.05.09.12.21.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 May 2026 12:21:38 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V5 02/11] dt-bindings: iio: imu: icm42600: Add icm42607 binding
Date: Sat,  9 May 2026 14:18:56 -0500
Message-ID: <20260509191907.24734-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260509191907.24734-1-macroalpha82@gmail.com>
References: <20260509191907.24734-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260509_122140_652848_9025419B 
X-CRM114-Status: UNSURE (   9.58  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add devicetree binding for the Invensense ICM42607 and Invensense
ICM42607P inertial measurement unit. This unit is a combined
accelerometer, gyroscope, and thermometer available via I2C or SPI.

This device is functionally very similar to the icm42600 series with a
very different register layout.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/iio/imu/invensense,icm42600.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index 9b2af104f186..b69c6bbb6f6b 100644
--- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
@@ -30,6 +30,8 @@ properties:
       - invensense,icm42600
       - invensense,icm42602
       - invensense,icm42605
+      - invensense,icm42607
+      - invensense,icm42607p
       - invensense,icm42622
       - invensense,icm42631
       - invensense,icm42686
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
