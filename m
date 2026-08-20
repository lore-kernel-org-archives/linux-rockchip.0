Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78DD3C5DF81
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2026 14:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AhsqYi6eWoF789GRqvIqB+nTRkJsz8wY0AV1J1Ldf2w=; b=1r9mRkX9wBeUyw
	VFRJpr2JsujOlNHq2V3xS10mNsr4mcdSS66AJw7IoUxY1NYfPbAtc0MCw8hs8KmCWvKQGzMmM8R+i
	HHjRbUIryll8Gb/oPhDOV3w2o2XmCW2UqKEQUORwkimkXJyi1r3HEf/+lbYy1Bxq8SPahnYe5lIbT
	v4ZNc3OJzACBLOBzFrQkVth0Q8x1QwgdEW99vSwVhayMpz4ujEXwlCtD5LuUsl395wbQ0uIPQHeuw
	0oniDNXnv4qbyEC7WJvFk1wMmhbsckvhM2JWVn6dUdc1hDihzuXaUMRD5owZU0hxejgmYZlVpAoKF
	zZhCcn+93LgKwFDAtLig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3ia-0000000BhPn-1Ukj;
	Thu, 20 Aug 2026 14:26:08 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3iY-0000000BhOe-04FH
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Aug 2026 14:26:07 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-47fecbbafdaso848199f8f.0
        for <linux-rockchip@lists.infradead.org>; Thu, 20 Aug 2026 07:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787235964; x=1787840764; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=WPrWoN2v8CC925FSKCBaAsH1PVinm6f1QGFGXJ4kZhM=;
        b=A8jt9nhKfwxBvuxaSGdZdq8yYlUrj0REPxdk5ynNZoJeknsxGIF6VaetE+Zs/fFlIi
         E+3bouKVh1KaU3UeGBc6uUiosFaaXgnQ2QlR3j8tOPJqqFXE38nTgZr/VF/YdoXHHd9x
         4as+TejQ7su5P/xjyvhZwaS6ejFTugTiZxV8qF9iekvc9fv6cw6Ar4uB+LxuBSf/ijPF
         x9mTiPUGkLZ2etYbcSzSBNcRiSnlSvqQQpqtGbi4/Ted+UABEDUUZTNJYD3C8O7hvGok
         tu3kRCZE10ZhWGHduk/KEY3S5jxewH+3LkE+wuNvB0SBY8tStFp5ozFvfP4Gc6v2CfaK
         PWwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787235964; x=1787840764;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=WPrWoN2v8CC925FSKCBaAsH1PVinm6f1QGFGXJ4kZhM=;
        b=ZatdJAI+uqVO/QSfRytLfdwN6mR/F/cFodXjEgnS8Ik/GvaU4E/EABe+ZYi3rT9F7i
         wO/nv8pngMEt7RQxitrUggRWb/hX+c84/s/9q1UPjAbOAISg8j7f0X6sfsslKxDzuxzg
         cdzvjPvNKl0Md8HIlnyFuRJHNraZDyfKS9gTsQ0LNUj8yWfncVggaR8WiGZSsA9TGfvE
         ZcfeaLL/nEC3Pb77Y4kTR+XZ704Fy1zozLuIvknnQo80BcdmKv8LpKa8zQ/tw8CSFz6X
         lLqPoMeTdrgGpdQP04bYVMtnLDRWB4bNj3e51EVxHS6Ay007CLPl48yieFRE1Z/hNjMj
         bqEg==
X-Forwarded-Encrypted: i=1; AHgh+RriwELJFQdsEREpZCh5szt13MLA8HzjGDfaNc956+lzOSS5VXRdnqysI+4b2EI3WSU4XZ7x9zbrVHztSVP6rw==@lists.infradead.org
X-Gm-Message-State: AFuF++l8rLWa90phM3ZqScQk//bFWvpT6h1Tz66+qL8ZoDcisaA3t2UG
	tM4jBpBv+oH4qpalJPlW6vPExU6Tw16Ukdu99tsO6F3PgeVwHHpYAeIs
X-Gm-Gg: AR+sD12S7kDJHcr89NbyfuA7GHw7fdpdSup1kgSC23MzLBKyGTt7fHpRSITgN6v0Ymi
	tBw6bj2JPwlU2izKt8Z1TkFq41BBTrqaNBqwnmaTsRG9i7/YwiDFhi+v4VKqz2RpSpXppoi7aa1
	FKIpGTBSLxKVulx/q+z8jwRh33wqYTSj8/g5o2wX2JRi2wRPe3yas8gOifPZEI3LiiA1xF7+r8c
	FaNF64wIv36bNtifjhJoNaWgjfILBXZWxKQld3lU7VG6rVuEj+6EptcfAICXsWqh2++QsFwQfJd
	VHDqRHYLgdIfQNdAraxQJhtZv9pjzJ091Abpkwz2urlyg6juMb7KHxKNZIxnPS5/6d3XAVvA1vv
	IqgaX9AF1yr8Vpiww1Fn/Mon/vnK6llcWMDxbEeXCAbxDmNeNqzVYjbefG7QviVpWwAGqKDPF+7
	czNIOoRoPB1l1+VlQaSkkGjoN9L+HotTxt+zPE44YdUhNQYFupuVJ3f0YToeMf/S74UwPaD+fi/
	hEPm78mU2MiZCfl96w5OCp32s4JefPlCie+lwluPK9IcyMQH7/5b38r9Eo=
X-Received: by 2002:a05:6000:22ca:b0:481:3db1:a62f with SMTP id ffacd0b85a97d-482b1fe6ea8mr22171478f8f.17.1787235963992;
        Thu, 20 Aug 2026 07:26:03 -0700 (PDT)
Received: from [127.0.1.1] (lmontsouris-656-1-83-121.w82-127.abo.wanadoo.fr. [82.127.110.121])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482b145153fsm13594027f8f.12.2026.08.20.07.26.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Aug 2026 07:26:03 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Thu, 20 Aug 2026 16:25:53 +0200
Subject: [PATCH] arm64: dts: rockchip: correct rk3576 SDGMAC GRF reg size
MIME-Version: 1.0
Message-Id: <20260820-fix-sdgmac-v1-1-38e8d222b933@gmail.com>
X-B4-Tracking: v=1; b=H4sIAHAOh2oC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDCyMD3bTMCt3ilPTcxGTdNAtzE7NUYwsj4zRTJaCGgqJUoCzYsOhYCL+
 4NCkrNbkEZIJSbS0AzGDhlW4AAAA=
X-Change-ID: 20260820-fix-sdgmac-f8746e3823f5
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Detlev Casanova <detlev.casanova@collabora.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787235963; l=931;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=4xe9JdHgCBai0JGH7S0MmxJgvM0Sop7zHwcV6p6Mdp8=;
 b=a0/mk3vw2cDrDCh3N3xb5RpnXZy+PlXS4pMzL5B5MsHyFd5/98OYiE/qHXrJP2oDVRBMDgDeJ
 focdUrojPcfBG0yZEDZIyJ7hrkJoZaLdUz0mN4DF30pUoyrEJEipXIm
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_072606_086942_4C9F0904 
X-CRM114-Status: GOOD (  10.16  )
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

The RK3576 TRM lists the SDGMAC_GRF register file as 8KB. Adjust the
reg property size accordingly.

Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index b0c0d3c8b1b1..d418bfc04097 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -970,7 +970,7 @@ vo1_grf: syscon@26036000 {
 
 		sdgmac_grf: syscon@26038000 {
 			compatible = "rockchip,rk3576-sdgmac-grf", "syscon";
-			reg = <0x0 0x26038000 0x0 0x1000>;
+			reg = <0x0 0x26038000 0x0 0x2000>;
 		};
 
 		ioc_grf: syscon@26040000 {

---
base-commit: bd5f485f3f026225b86573e559af0b7254ef4184
change-id: 20260820-fix-sdgmac-f8746e3823f5

Best regards,
--  
Amin Gattout <amin.gattout@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
