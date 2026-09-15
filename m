Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34836C88E7B
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 11:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uz14qtXn7WK5sJiaOLPP6Yw8NbtJNStBOUXU+Mi47PE=; b=MFRqGCY5qTgh1k
	Y2NOuXZOD+VjZKrYrvl1PQE9KtP6jPOw+G621Ppl82ZNzx2DXbVH+ed2yEG5l58e18507OlbqB59c
	c3BhoN4GE4zQGD5rDgwYFrxr3HuO/XyPOZpH3cSTiMgzvbiy+dAqgMaZJlju4k5AaZFTOSAxA9xV9
	u/+SnQU/GLEdy0n1S/rS7Y0YSuyuhLLgL6mgQ6m0UwuNnll8xv16qHry1V+J9rsUWL34oRcuc+N7q
	YFUt73f/LpGUbmRD2wCfMT3TnY3eCeB/gqVYFgbJsnFvP/Vq47mlw5aLd4B8tLkgtBOpe5J+PJfNk
	7YdgKhd2tSbUVqtwT11g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6RmR-00000006Kd3-09bV;
	Tue, 15 Sep 2026 11:56:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6RmM-00000006Kas-2AMW
	for linux-rockchip@bombadil.infradead.org;
	Tue, 15 Sep 2026 11:56:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=IL/M9C+9tQ0Kk34dqluvw+MHZP0Z0vOWF8jr2i8QPWY=; b=C0x3mplm75BuK8y4bFEbI5wLeZ
	JmrIS2TWcYg92eTbl6++ZYe3TIAHVSGekqcM9EOjcN65fa61JqjpNDPfQjpl/PgvesB7DgIh++Z/p
	6xYVo4nZTJp0b1T5Q7JAqLjmsa/KcJawkVOYpLwW8oBMeY4jZRHowm2QdDawXCpaUVuKIMseShboS
	xmwHh9/y0nWwdOxTKHh9Gxyg5O1XZk6Ijfps8exwoT/BqgISjOG7hnhmVMfBzToG6XjDP1MfJ5C2R
	OI9GmQ7Jo47CYW/EA6jfcViS/hj+gfvL7/OeKulym6X4PQaUcY5OMK6Q3r2+aiSnES2WE6+zBA08V
	ekoNp8RA==;
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6RmJ-00000006gip-34nf
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Sep 2026 11:56:49 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49b912df756so1193255e9.3
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2026 04:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789473406; x=1790078206; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IL/M9C+9tQ0Kk34dqluvw+MHZP0Z0vOWF8jr2i8QPWY=;
        b=tJhR8AkIQwzwOehuiaAJd2iThdLyQKEK0wD1WPqaScu2ezUt9piN0Y4MSP6wCu4UD3
         RkMLtYXlTxdMC21rBTEHjF5/+qE0kZNDNLombw0wH+Zrhu6Ptdo08WDxHd2a016Pcjj3
         zuOqVpSuDmklOJabcL+HOydzC7bEUOhsLHqDIyK0DDKeTwzcy8SSJud3RWhw0NDiHdqk
         a2m+j4/AQDxELZVqfOUh4+vQFDkKXCePmrDA75xm8RGDQeqyxE9U6Zhex/GZvd7taIjO
         qE6epV/dS4N+JnrOhAmDmOyEQncaIzpdNQ4nBYRkOgOvYrihKMT2E2kJ8CjUK1QZZqg7
         Nb5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789473406; x=1790078206;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IL/M9C+9tQ0Kk34dqluvw+MHZP0Z0vOWF8jr2i8QPWY=;
        b=H5Q+uWnvKwwFKwd80Vxnt7cd/S3ssJFzUvuuSfspBpVjChjDRWxyFqgSIWdP/MqN7X
         2NIApO5jBzwFM3QRWFtRh1+Pptg2DPmaYFz7FjGRxwT5UWHFS2nno25J3vlD78zlb/wO
         twdn/pL93bOym11GqgmUw1Q7GzC6avMMGKLqzFTKuYjwYCF466ADjvbl5z+KHKC3cNkr
         vgRsQiqgrz2s4mzxJEhMqb/G9VyKfGgYtgVH/dxkn54f2u7S1tjGrSSOVEiPwHQeVZds
         6obe8oQ5yXwYbBAIB/496dHRCGfa8Y3XvXAWUkKs0b84Yqu0BzAVveGQBPXCR0pnD0kn
         qPKQ==
X-Forwarded-Encrypted: i=1; AKwUvBwy/x2MZKOGFvpIOhCz6cXw3Wb3KFPQKsuowUq4e+Uvoz+Nb3DBIH1MUTY/NODnIGPsixow/jWQXyFDuOZiog==@lists.infradead.org
X-Gm-Message-State: AFuF++lxTjbGZybtRqF+/9kf/T1RYrcI+aKab1dHM9cF82WOEHW421k9
	ai4C2FNfVTvT+xsaLpeZCHeBZSlSgHK3l2XdtxyCQZZy5qDbNEWlRrSN
X-Gm-Gg: AYBFou1JCmYWP5TvKpyYk7k2hBHX1BwECoGTYIN7J0IsJsdTUNfnPmu/tOUnMg/l3cv
	s+J1FVfdiRD551BV5z1QGfI+WRXjpRxL9GIjtOKvM4wxY0ahTrbN0xUJI9p5by+hEP08plNTQAw
	m4byq7uILxUz3jCYS4xN54qpjuKp038oBnZs8Ozh4GJMC88z3NvU0K1UMGtqk2dj2/uuoL62ODm
	LD66ozuAL68Hqnj4m7n77Ce/9M2/RYmV5D5B62FtFvMxr5//zB3J8+HPldJZvrkVSDnzEvjQzSJ
	HCi4ExhHATaScRXjV2B1prXV0Rub8AHX/T6G1KLjbWVpS0iyt3dMze6t5cpBPv7GS/otQkcN3C3
	1T4+pG+ycGVFgIvxqskKrjmqsLv7o/lLyaneyfUtzLUwzrDJEJ2HlIl/ZBa5cvW2pEqmMp7sU1T
	TwHN+O+9Jw+fk5rbBNKhBkV5bX+Usuvy36qirci/ZvuhkOEMt8rc9D0uusNID+rAPHU5emt2GeG
	5hCxxuGrO7803JeGnJJIMC7Jo4qoklBAfrLeP2mUDY8rNdvfc2+eTUs1taykdspjKI=
X-Received: by 2002:a05:600c:4e51:b0:49e:7cff:f8ca with SMTP id 5b1f17b1804b1-49e822a63ffmr11750555e9.29.1789473405919;
        Tue, 15 Sep 2026 04:56:45 -0700 (PDT)
Received: from [127.0.1.1] (2a01cb0007c59900d73f8285c1e647ab.ipv6.abo.wanadoo.fr. [2a01:cb00:7c5:9900:d73f:8285:c1e6:47ab])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e7ef88754sm63175565e9.13.2026.09.15.04.56.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 04:56:45 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Tue, 15 Sep 2026 13:56:40 +0200
Subject: [PATCH v2 1/2] media: dt-bindings: rockchip,rk3568-mipi-csi2: add
 rk3576 compatible
MIME-Version: 1.0
Message-Id: <20260915-csi-2-rcv-dts-v2-1-bdaf8141616a@gmail.com>
References: <20260915-csi-2-rcv-dts-v2-0-bdaf8141616a@gmail.com>
In-Reply-To: <20260915-csi-2-rcv-dts-v2-0-bdaf8141616a@gmail.com>
To: Michael Riesch <michael.riesch@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Amin Gattout <amin.gattout@gmail.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789473404; l=1108;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=76t/6TvrHo/ckJ30OYPKat5fWAU1rA0fOHpl6d6Cs/A=;
 b=U/+xcpmDD44TQLOMhpTWGOwHvugHp+qVjCLKGJpJc12iRo2mVKucsEvPRwhvI7BINPCfkaRtm
 ERXc22c4d6aC02BGFdZ1GwYSFiZhhii8gTNoE53pdNPf+ra6wSiiQVc
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_125648_017873_FA93489E 
X-CRM114-Status: GOOD (  10.41  )
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

The RK3576 MIPI CSI-2 receivers are compatible to the ones found in the
RK3568: the register map is identical. Add the RK3576 variant to the list
of compatible variants falling back to the RK3568 one.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Michael Riesch <michael.riesch@collabora.com>
Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml
index 8bfad0fca3b7..1898f3787a98 100644
--- a/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml
@@ -23,6 +23,7 @@ properties:
           - rockchip,rk3568-mipi-csi2
       - items:
           - enum:
+              - rockchip,rk3576-mipi-csi2
               - rockchip,rk3588-mipi-csi2
           - const: rockchip,rk3568-mipi-csi2
 

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
