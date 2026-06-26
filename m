Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7CABC44507
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jun 2026 16:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mqphKKSudG2y91YT+pRe/E/vyZJo4i9ODKlyqbzWH8=; b=CZ+4vc/USQHVG8
	YaUY/5HvNHKDpMtuJizKFrXKZXrptZ8GwsKlQkyOsVzvrfYaJuM87OQp10JLbCK3I6QEhfErsIAAe
	huT9Mq4OoM0hoS0t/R5MIvci8gyxGRIfcgXjoGHZ8MndWt776jumf1ik3UKJ/D8B6qvxvusRwZ4Oe
	NrZiRCFOWdtUazHKXIc+J6AwFUh0LVYVAPovDyENROTp6P9y5esD3sZ0ox4eEiCQKCvZ66zhwdaRC
	0GHUeXPE3Kz2q5Y+CnLi6Rua5fSWu6TtsgOBYrb3VaLQIn7dC953klAmB7FSzESEs+rqB52d+qM2P
	m7ddfb7HJLQ7I4yJf4XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9Cs-0000000BblQ-2TB6;
	Fri, 26 Jun 2026 16:15:06 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9Cn-0000000Bbdo-0oJK
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jun 2026 16:15:02 +0000
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-7e9483cd614so1067952a34.1
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jun 2026 09:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782490500; x=1783095300; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=;
        b=pMbmK0acz7Rfmh72ImjwXhf8kpG3XAX2KwphajXwsNw8l4v3K40xrGBhp7B/z7Q8qH
         +4f7Gjiz8Mwr7S3HDs+cLvxu6Mm8wRz0BuqNzmXbEo7T+rXYGh88LtVTPB4cfD+Dllqj
         8gKgyWfe7EexdDLJnC/V1wX9d+qpi9QcMvIWkD1rMe7W075Pbl0cpPrk/IdVez/gpziG
         aboCTCjnaM+k3WoHap7HjPHVkxIKjPG0+cOQWaOEDydLyfzEM0BvhxNCOotQr2Wpv5k8
         CP5BlohaPZljp2Fn5yM0YnPRNdrM2GLwwz59mX/n/POVRmrkTwlyz92FY3zE8knIlUqv
         NfyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782490500; x=1783095300;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=;
        b=gcBTV1I5Sjv6ONObhFb90yvVaywgooAmv3bqxRLlzDkotKpfNBMCEde1xlJJT3TqHv
         JdEKftIhurV/Rj0hirpeeS8yAf+e1TiaCWaeR/dEDm03LwIhCRHHgPSCIPAlB6nmJIBe
         I/GZ+W3ya2Y7GBYGw4QwCCJV4D4RNvrzWvqv3XoqZjVl7qNqiAjSh1/YfFehsdkjo0J6
         kiLbElLg6AvJ8jog64XT7ef+qBJOvXM+YWN/0R6ZtNB4IFXyKZIUmuiy5mZaO8XmzfGT
         AtBv4NQqC7JEu9hA0tKdqBjFZYLCRkf7JpzjUdFrmZUaPkPM60wucXBW4i6ThPkLwVeA
         6pZQ==
X-Forwarded-Encrypted: i=1; AFNElJ9a7CnB+hdFnT0Em/Q+5KFBu/3fYtivN9kcN7MiRYOAoNwxip7nndxTHEK28fiGAHxhxTksg2MFW+V/NVRHhw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6KiogiB6JW5Y5CBzau91tcqDmc5oQ5qxwX8fFqhzgU4yu/o7v
	zjLTpnq+Hd4n3+V+0F4hAVXi/7YBS8oBS4Coi2LzGlQudhy0Y2ciqPCk
X-Gm-Gg: AfdE7ck0oh1Wfn8qQZsbXOzmwEHfUQ+FxZO1Ixzq9CgHCJGPf+KkLC1EOvdxCAPGLQ8
	hW0XNEF+amRvL/X9667iTyd7KSF/QkO5PHn26vwRJyGBvIBI+YZygNoas6w1u/d9X6AkZzIRiTP
	7AagLYZSJb2wg+VprLxAj1CG7CNPvhWfdmJGUN4aEHsstTh7CfSaBn8qPVA3LEq6VC0I4yVrhkb
	Axna0EyIGe6C86wnAKXxvw3BBeFyeFLi7MaIPM3MkxMbcvBp679A3Bib+0Aa7S2QSDQIvmXHHnY
	NWvVC0tskZt1mzRh8WXxTCZ1QIrSIyTKvCfnso7XyauN8PDVIWcjVMT098XXbpXUJ3JAyK5xcRo
	Fc9jLJ8JWMcXuOTIzV9TWOOwH0Zx5UFuUAqjeL67Tq1eQOjKPG3YOgMKuURodDSHtws36zuDnvN
	XD5gfx6eAwzlM=
X-Received: by 2002:a05:6830:3156:b0:7e7:24f9:55c8 with SMTP id 46e09a7af769-7e99c88bc00mr5453019a34.5.1782490500202;
        Fri, 26 Jun 2026 09:15:00 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e9aa579235sm1970211a34.1.2026.06.26.09.14.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2026 09:14:59 -0700 (PDT)
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
Subject: [PATCH V15 9/9] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Fri, 26 Jun 2026 11:12:30 -0500
Message-ID: <20260626161230.93069-10-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260626161230.93069-1-macroalpha82@gmail.com>
References: <20260626161230.93069-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_091501_253398_ACFD9870 
X-CRM114-Status: UNSURE (   9.60  )
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
