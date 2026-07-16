Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DFE1C44512
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 18:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mqphKKSudG2y91YT+pRe/E/vyZJo4i9ODKlyqbzWH8=; b=q0eCLgCUhfsDTh
	Erk/+YwGThQNuOImByKVGr/NLxh+G6bSVlJ0hCvKMWhUX8FlTwesMx6TcIIQWY1YWANYXDVTgZhaJ
	YmFN3vTjdS1l21YYF/GfRZwkLkpOjGout96NbTUtTtmX3u3CykaX8+3ltgno5R7z5PE9nYHnaCcDP
	HO3eAxyDPbD9en/HtfrwDkw71XJdPMVg9Kxo5A01Aq6bX/Q8Eui1Vykiy4smzvQ9yg346Ee8UGzg5
	WJ13GK4hma4mLZ6hjk0i2pauWG4KpfmX73ppoHFXa4Fh2/o3yaoqjtklBdgBKbdYMPeo/DJFWS5d/
	K9A084MXxDPjrGnNwqkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkQpe-00000000OJ0-3QXM;
	Thu, 16 Jul 2026 18:29:14 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkQpa-00000000OBk-1SQ3
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 18:29:11 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-7e9ecb1e13cso5287671a34.3
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jul 2026 11:29:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784226549; x=1784831349; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=;
        b=ZryFXCsOMSHzbUvon8jLyuw0oVFSIKd0Mt/jvBlgmdZNGPRER3blrLJ38CAx0wS+Z4
         5Zj3phtrvuE7VbfzVv0C+/EGTPrUtNq4kdUyLUdPQoKhuiqvG+RcmoUBA04K6y0sgLFF
         OXx5zt665CcIEjKVTwn7SPRbuJ9C9ZNKb6ETBKevuF4QTBmyR1ZaG/OX/H7PBntu+uHX
         cCLEye7GnSxYPVRLxcGexApjhAdKU7SHuO38NbaMrdCwJNAreuXDF7Od7PohUyWU3xhL
         JUhI0Xk6TSXYP7j3o+Uorxf7sgcFDgNzjE9PB4tCKcyjRx92pIvy4OHZnTrsIwHj53yz
         2Ofw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784226549; x=1784831349;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=;
        b=kZyvFYBx+JJHqu+mUfRC0R9eHtgXLvO9U/CMycZxhqtqw4CZTapoFmRPWQYbuMHXeS
         ViGUffXZ2bFSQA6SV+DTL7yACqzWlW91Vw94b7CUgbU7ydKIVu3KoGc+qLPs87AlIKdw
         Iu+n8tVE/UrSGE3dvp6zNSxENq/6ARqDyjRnFDdxvXuxSReeNbMt3/Le5zOIkmCtkATY
         wbOX050xitQyteJrBnO95zlFaqZeeEH+9eWh/M97mlFiveCOwUQDkI1bNgwVeP2zAiiY
         chvcDRJa4iD9y3QO045ud7ZrehfPSdZnog7UkHUYZDEOeDepiCl5KhbhPf1SfGIkAQ4W
         ErNA==
X-Forwarded-Encrypted: i=1; AHgh+RrLP1Jy1P22QhLvzeuMVdEXcY9Suvzmyj7OnrBcL9QAknpv/Q2JsLnYuT+dRce09yuXH+reK/Jo09Pse9R6PQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7LPBislxNB9AsokVcZQf9YkdScn0gyYzYfA0zCUxs0mqZ7/SL
	zqFkmc17eguvqeAh6CRz2awGyRf83ych3LvljmtnoIpN6qS/TdZhY8rO
X-Gm-Gg: AfdE7cnzJsG5I8eZjVht5bMie5wVrSjqYQT4uL2j9jHo21aNHoyRBV3bgXcj1Jcsk0S
	ZhjMwZjTnFWXeFC+2FQQ+VJKw58Vz4f4ilps9l0o8XIbnacU/PIGmbUt+idARsgdAW5H6mjLWUo
	VKGibjVXiWlj9A33NKqgcBKiJZkLr0/eMuj/g1X+iF+feCDVi3Z3hQC6uV4u7pyg8fY7dCPLkjB
	+zXWHfMdXPOzPXDiYYFn1Fd6HMA+JRfh1oJgIDK4sGtn+2A5auFbzm1gXgm207G37iC6A0o5NYz
	92aIHoesVK1WJPSDEz4w2ubBcMtdToVNSZdZx6Qh6V+8wJWBPh6AP8++VGBV51S/7t7wU0F4PGj
	Pde3aDBqQ8NnuTd+mm4SzOPfbQUFmSW0H9DXmSX+oD5RmxM2L0Mymnnc5vksgZ7I5WfTHlv06N0
	12
X-Received: by 2002:a05:6830:6d4e:b0:7dc:df37:844b with SMTP id 46e09a7af769-7ec59b0dbf1mr5341717a34.4.1784226549257;
        Thu, 16 Jul 2026 11:29:09 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ebcb3f6826sm19939993a34.27.2026.07.16.11.29.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2026 11:29:08 -0700 (PDT)
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
Subject: [PATCH V17 9/9] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Thu, 16 Jul 2026 13:26:36 -0500
Message-ID: <20260716182637.24310-10-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260716182637.24310-1-macroalpha82@gmail.com>
References: <20260716182637.24310-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_112910_394018_A4221FBC 
X-CRM114-Status: UNSURE (   9.92  )
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
