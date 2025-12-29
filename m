Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E3BBE9272A
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Dec 2025 10:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YTv2tIHqxyFQwpXp7gcEZTPhygS6WaSqS4upLDNGUkI=; b=1N7AjsWQO8HO/O
	AjX2NZZaSG9myGqoFapC3pyqGtB1XpmY1sZbNxFNi2mWhPOe7ZRt/U2LmfBnN89lkGeaGbtiGYYcX
	Jz1vPHcfJ674L4ioPZlCyM5Xejkpn6hh/WfCFvKr1tMhs2ZKuHryA94+Abd49A0whlymqCO6c51CP
	yLwczfzY69lpA2J6PlCWnY3WgdsPGa59EHCk7M+xmTidh7cS0G+UQWPllTEBa05eT3apUiO/29iu1
	QtaWCflGf3bal2y2do1ZoAMzhn9qhBhZYTxpGEVX5AaThYTh+C/ZsaVSDARlUhufW5F925j4SDfjz
	RouJMjTnBlcsonMpJZtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaAEw-00000003Xym-3OGn;
	Mon, 29 Dec 2025 10:12:38 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaAEn-00000003XqU-461d
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Dec 2025 10:12:31 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-47a95efd2ceso81347695e9.2
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Dec 2025 02:12:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767003148; x=1767607948; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0KQX1N4PTxY+t5EzWtf5I/WpJGig+aqgTok3R5+tPF0=;
        b=O0MvLk3B6Ud6M9+poc6ExecJZDZdEIOA1Gexy/xEztWTHLwwa/klig3AEHX3dEFUVW
         9eUOe2fBIunTlPBTV/oePU8MFL2uuvu8SEPzrBl+1PIt4K+rTyqVgaMAS1YA0XstAwJ7
         Q8phFQnUlUM3o9vY/mVst4VtLd4iWBmoto9thoqqqlXiPBW4987yq6Xz7lZd7rL51I8M
         wAoCoWy98gu/RMFh3D1MbBQSE0/meVPRJIpfhSdpgjeiaOHF/8eJPTFUuq4yw1ZFBeHs
         Og+XmpDlYESdpAwIhv1kxdPKsNIJbN9A6bQYYByqWf1m6LZfAsasd/UrkmnspA8Wh3YR
         EFXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767003148; x=1767607948;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0KQX1N4PTxY+t5EzWtf5I/WpJGig+aqgTok3R5+tPF0=;
        b=ut56m+qPquaXIyDhLnmtRQpnfuUOE3IUGnGCCtPF7Kl3ZXfnH9z42GCB+Z1u+3inlW
         GvbYW1mV3/DCQlwr9UoD/Vl8IOjI0fgjDUAg6hmoyc3LXDzi+Lt7j164h8xjANklrG4l
         W90O1EiegArXV2sU28G5pubp2k1p24YO73Xy9fN6ECb6yk3Awxsfl5TRp4puBgHnspOw
         XxLJMc7eQZ1zfeeK5kMPcRfNDPEzuaUttn81gbX4fA4bt9Tkh4bNFR2OTAeBBiAwLWLA
         qYVfkrBMbMuRyT1xFwGj8NTNuEeas2n1QS88uVEVeJANrZhSqJAZqzUxyh3bDcBvQinE
         mONg==
X-Forwarded-Encrypted: i=1; AJvYcCWUq87dts6qH6SkgwGcQmB2tJ8ZjJskQpVVezwe5gKCHcHdg/zWp0DcD/R1qOCKatapAizW+DsGV3b27c840A==@lists.infradead.org
X-Gm-Message-State: AOJu0YwdICq+eU5ymIkzc9kG++fAfjpXVEOKn/s3/a33HQY0hXHc6peF
	beanTo+cJXgICtlUgdb5+RhgMDN3z5IklgRMP/RKk97rpGqYXvi1pH+N
X-Gm-Gg: AY/fxX6Y4RcIoN/NLzpzJ2xItHqP/dev2UaD8lvdYJAZjYT7oAqLZ9G0wb7mMkrTc7C
	sxnsaH4qPB78z0504WlDqGs97Hy6jw6mxGAC/W+jgQvM4+HWbBP6CuaFg1vHFL6Ewc6ZohPIcc9
	vr4ezeBkvEFnB8AXCVwuCrE/h9kXYLmJIegE4nPX6K0Ialvs7YJ6QRNCs1fFroEKCG5K8IW0Mfq
	WiVsyhgbbP9yPRDEUjnEf98TCm3yzZcrm+iqGm1c+30IwlEaetbmM8XvFL140Cupn25bN/ILr9+
	QRiFCqYFtAenerDE8XVVYerdgLzDTTD851Gwq1Ck+QJOslTVrDkmzuaJLmDY99OdGzgue0V9dUQ
	Q1PC6oioZ2DXjeiONcyRGh3yhnnLqlYiR6u0NcgEWys3BywStj3IBt8uP55rb2HPMx55RnFRlhM
	NdoL7rfQD/lgQ4GiNRbOI4L42d09oPQRIim3/9i1pcT4NzjVVzKKwUyNKxZqxC
X-Google-Smtp-Source: AGHT+IFzPWEKjCgn1cex4DN3YQtL3UA4lmL5/FyneCn+bTC8varFe+BsYL95fgaGZl5mVOxg+IkOsw==
X-Received: by 2002:a05:600c:608d:b0:477:93f7:bbc5 with SMTP id 5b1f17b1804b1-47d195667d6mr331876045e9.10.1767003147844;
        Mon, 29 Dec 2025 02:12:27 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-45-246.alshamil.net.ae. [94.59.45.246])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d583f42dasm19840735e9.6.2025.12.29.02.12.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 02:12:27 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 29 Dec 2025 14:12:00 +0400
Subject: [PATCH 3/7] arm64: dts: rockchip: Use a readable audio card name
 on NanoPi M5
MIME-Version: 1.0
Message-Id: <20251229-rk3576-sound-v1-3-2f59ef0d19b1@gmail.com>
References: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
In-Reply-To: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 John Clark <inindev@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=948; i=alchark@gmail.com;
 h=from:subject:message-id; bh=IZ3AVgWYvTdySO+Vv8LVtcMCFTcRCnO6smmAHUEAJNI=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQGhTBOd/ecL5Df+txkt2mA1YTHSZn9V8zbj/zKKjyiU
 KjyuulYx0QWBjEuBksxRZa535bYTjXim7XLw+MrzBxWJpAh0iINDEDAwsCXm5hXaqRjpGeqbahn
 aKhjrGPEwMUpAFMdcJvhf43v4T3t7U/FFt/dyhKcbKEddMKhw8vnN4eTyat/FbcSexgZzmpMyNf
 Vs/q+YafsOsc4xdSbG4+d9e1PL512dq7V9WhfDgA=
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251229_021230_068348_6BD09DF7 
X-CRM114-Status: GOOD (  10.89  )
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

'simple-audio-card,name' ends up in user visible places such as ALSA mixer
names, so use a more human-readable name instead of realtek,rt5616-codec

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
index bb2cc2814b83..f350e96de1f0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
@@ -205,7 +205,7 @@ sound {
 		simple-audio-card,format = "i2s";
 		simple-audio-card,hp-det-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_LOW>;
 		simple-audio-card,mclk-fs = <256>;
-		simple-audio-card,name = "realtek,rt5616-codec";
+		simple-audio-card,name = "Onboard Analog RT5616";
 
 		simple-audio-card,routing =
 			"Headphones", "HPOL",

-- 
2.51.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
