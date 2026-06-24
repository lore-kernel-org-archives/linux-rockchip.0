Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B9A3CDE00B
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 18:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mqphKKSudG2y91YT+pRe/E/vyZJo4i9ODKlyqbzWH8=; b=b7CIo93o8N9PJk
	oTMpSRr8FKV+C8q2Kd0dIYAaWGv/1iEmu/mLaaKPbj7+zWzhl08kYtF+sFd6w5awE+WMYcIDBkhmC
	gqnTv3uuJWkGFkhFILSM49CUEkPqluTa+9Ng7ZAQnOzGJ9Sgm2B1tX5PQZsJBJtzJLgf4mFyeqG1u
	vyOX1OgD+4OPBykNGe3Pb2kLp6Ahemicru/i4h7yzan568wW2mkVXksl8JEnmIOnC8OUxOc42Cl8M
	S57fPuPJzYug315loZqds7LRzoyJeAYNMNmU1e4lHqMdhTvDiijyXB/qcVCtMbk5Jp17ecbq9woZL
	EuX0kwkqjuY4nWUrUVWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcSPB-00000008Db0-3U6a;
	Wed, 24 Jun 2026 18:32:57 +0000
Received: from mail-oo1-xc2c.google.com ([2607:f8b0:4864:20::c2c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcSP9-00000008DXG-09HM
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Jun 2026 18:32:56 +0000
Received: by mail-oo1-xc2c.google.com with SMTP id 006d021491bc7-69de9bc590aso1016260eaf.1
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Jun 2026 11:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782325974; x=1782930774; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=;
        b=ocuywMgzk1TrbSrIQGIuJYnU6vx/qlkLn2yNYVnA9Bge59up9WtflxFFLmpgLzcGE7
         zAZZGMp0Vz5ukpBxLxqcdsV3bYzfa9zjuI+JpERXGDDf+9b3jmi5noFWQvvOzOf69nL+
         WNjGiUR1KVKwk8mWfBL7B18vocZTpCqPg5JUMq1OKEUqp5JmDjZW16HAOzBCIzd3PM7j
         RlnX6THNIg1lp7yWtt8QBiRW7wqHpxpPT8YtKc3dhTqqLBGgkEVkbzD69CEwOHFGylQt
         KYQojDystN7DscAmC0VHU1qpxJX5tbuNZp038oZZzEapevB4Cdr5BXsNQIHpL0xi8JuF
         R2AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782325974; x=1782930774;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=;
        b=YnVCgMld4rhNlQVrbPM6U6BXtxCyffYDnkx0dAH/IoywcDiPGZfWaF5NM01cph3Jha
         VclQsfvCRlpPnxm7JKvSIbo6WsWpu7VEkeVO5HXPlWFQqQ9g/kFyw/zVvwppfPbEdkqy
         xbBe1tIPHm20jsEdgig51i4nxcNa/MszcgyRCSQFonwTpaoC9/+Bgg3pCEEBKhDxpx2k
         YS8/kH1rExAytWVogAv2cQ9RG+1+O32180rc4RljRzX9BpTwKHLfSlJJfLTBMZUAurD1
         griGYpapfLZQ+DVFkMAOFcQYDhnUgezdeMsnz4vHuli3i9xF6+T3xZpKks7QRgo6Olft
         jPJg==
X-Forwarded-Encrypted: i=1; AFNElJ+8WyoojVyMDdVB1GOsxE/rwvCscDDMgTgKo7IhGci5SU9MY+NqgNLcxEiL8tdVr4l7brMxyej+cjsmCi3qmg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/MJQc2YPQNnEeyfJontwPWxrs/mGclES3QLa7KkMtPbJke8MV
	1nII9Bxo8BXkvxdvK1WKQZt5nyrl05tfA68tvHduN6GXPyPzJyzzBnim9kbieZjz
X-Gm-Gg: AfdE7ck3nwLWaehkJip4Fj030VdAHs+1vTFYUjhbvsb3EHDzIdp/XFONC3GICjgA3V0
	QWAuhfDWaA6uwVLnW4QJPM8yv+cSwu90Cqi61su9k36nLBGMk9x8E6bHncoYn/ZSA+H8IY7tIGN
	Qlng8mx3fb/YTUbZHCIsXRw/5B3c9O8C1U4P64Sk0MUfoLDeTKHMgdPSOQYt831L0iusXBtCLvi
	rKFAaRNbfCNtPmV30UaPzdG+mpcO7VRAYUXnDMBNEDqOEO2oYXsM6Nz0BRrZ49dDPRnwfdGIyUU
	cy1qVNgBUww6mTX1klVkgKv9fNcVzg7HW3mgMketO9vBU5dkwmqWHtHC0n7j+vtuU4y1MVbAa0w
	xL7Go3kmVGWwgwMG6dXcKXbYJS9zacLyVGaDVldoXls7b8VsGjI5GbWhpzCRz+UmlX51Wmmw95o
	VaXMP7tvp7AUs=
X-Received: by 2002:a05:6820:2d0c:b0:6a1:22cd:9001 with SMTP id 006d021491bc7-6a12317cc8dmr3100975eaf.24.1782325974036;
        Wed, 24 Jun 2026 11:32:54 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4472f042517sm9968060fac.13.2026.06.24.11.32.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 11:32:53 -0700 (PDT)
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
Subject: [PATCH V14 9/9] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Wed, 24 Jun 2026 13:23:48 -0500
Message-ID: <20260624182350.50467-10-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260624182350.50467-1-macroalpha82@gmail.com>
References: <20260624182350.50467-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_113255_142917_F5FA1CD3 
X-CRM114-Status: UNSURE (   9.41  )
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

Add the Invensense ICM42607P IMU for the Anbernic RG-DS. Mount-matrix
was tested with iio-sensor-proxy and reports correct orientation.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
index 8d906ab02c5f..b770bfd5268d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
@@ -871,7 +871,13 @@ aw87391_pa_r: audio-codec@5b {
 		sound-name-prefix = "Right Amp";
 	};
 
-	/* invensense,icm42607p at 0x68 */
+	icm42607p: imu@68 {
+		compatible = "invensense,icm42607p";
+		reg = <0x68>;
+		mount-matrix = "-1", "0", "0",
+			       "0", "1", "0",
+			       "0", "0", "-1";
+	};
 };
 
 &i2c3 {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
