Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE093D3ABFA
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Dec 2025 08:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7p3pixO/RPOZaMQinDOTO6fvrA0kmFmFiTjTE3mjMXQ=; b=LtPARdqe2tt/ih
	is6D5cHvCJ0AIhaas+pm6nr+UHAKFgn62XWBQHhKFu9LmUVyiqqgYzW7CF29RFIXVxWrWjDSLkUWz
	rPzMJoOYvVFrPK9+DI8dBWcmxO+/PSVhCMUuWVC3KOP7fXJrLN4zDojHa1bMJ0YFM9ucHAqFt7iSc
	wDuttAZ3tuJeFD0plH2cqOEdqB9FyMZL81FkYW4ZOtgD/C5ME5toDYnvywsCOfFG7xzxitDCB/2Am
	HqYT0Nomg8EeCHs+wU+LZlHrifNGb1A3q15UkP19a3Tkl2xB7WAN24ThtUWIAD+zNAPVTeZgLEVCs
	El5FtGwOqBB4QsntZtSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRneT-0000000AkRv-2p7A;
	Sat, 06 Dec 2025 08:28:25 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRneQ-0000000AkQH-2Pxr
	for linux-rockchip@lists.infradead.org;
	Sat, 06 Dec 2025 08:28:24 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-477563e28a3so21043735e9.1
        for <linux-rockchip@lists.infradead.org>; Sat, 06 Dec 2025 00:28:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765009701; x=1765614501; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j4FBci3+O4afQtw23umY0BKlPjTmvjUx0lyWZ4/itP0=;
        b=DzuuJGF+kfMZ09zZusfXmYsfOzGMd2vUur+vP3NR0g8oY91zRo22xMWGUQPgzpYVo6
         7sz3IGlrw/DVanFCMruOAyq+AU5J/3RAFlC3RnHgHagX5mhVOrEWLv11tWNL5c5p3qZV
         9fDHD5zfyKEmU4Jtpdzam6/Rodw49JAo4VJ+SjCqWPeoVgQxw8LpdBeUYUCBBc0Co7+i
         5a8LiYolJG2z5UdckL3xT2c9ATzCw8GS02vbRgGrAVeutjUpvIF+j7x++f4QQx8oNDQI
         Ktb+PSFz0fqCxcZdXhxnYGljn7T0C2BeS7UHoJ0loRDmisbjkwqAZbMnNuZB9Y/3VVGZ
         cZ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765009701; x=1765614501;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=j4FBci3+O4afQtw23umY0BKlPjTmvjUx0lyWZ4/itP0=;
        b=iwgf/KpwAiY0aHkzcfT1jiykDFprZsPX2V+QU6QIO4vwYtVwuPWaoXlO94jLFvVFlQ
         rvgkEJLqaE3RSWUjR4KJWrFuluSNUhs5aaB+4/NdIZol+cRyuDtGHrDB5CWZGmtJGlWm
         1Fmpvo6HYKrgQDd6grp261azcWBO4Lv4NHTNSmlslK4i7nobZ2JdiiFRUlnOTPpVnWae
         00MVD25gPR/RQ6YEg5BoMkUBt4fxLnY22hw7rvxg268LgjENXIBqOHRwX0CqrK4btg6q
         fXRys1GxjCq7Fw9aFTC0EpkSslrktANX/vpeXiaNn7GGGKexkMggGw6UFqZMCmI3SVFA
         M0pg==
X-Forwarded-Encrypted: i=1; AJvYcCVCcnYj48JR5PZtDYAAIAfBbdF87q4LffCus80v2QHOSrZIa9BrJNqn0eoqyVhjGfJ6SMcTnqY4Wh4huO+Iyg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxtkNrUkRuWoUr5C2Q+PaImvuFkbUWgA/TuueEg/IRvfAE3loD9
	hk1PLHGBlU8TxOmBdSH1mEqIqfMK0LxVSVN8C6H8j3Ew1Qk9TaRk3n/5
X-Gm-Gg: ASbGnct1I57TPZVTRh/MTqEMXfDFF6NkNCQd/s5q9qyuePGfV9NGl1eKswaqBDiyaVB
	Vo2woBm6LoxCco18Q/LcFKSvYi342LTFB08HpllrQgjzrIrPVVWmqhWMVyFc/HeFxvq1ef+U9KX
	qdfPMAtpfu/HIjk5ZBPoDRjek7oLYATyXFa/d7yrI1fcuzU2+0eJ79gBYG9HWq6sf7Uzzt8CkR4
	ec2wCH7FA93kduvdCzChTqG462sSZW8jwKyAGa9bKA0DCnQ6HB9xmQ3Zy7Yiyk9boMxOMQssq2t
	QZZV/4Re2VFUMqmoubgcfHXQveLJV3MLUu6ESbf7wRNRGqtX/1AtiFZeVMAgOQ5WI5hiovYpLqz
	/rt0IsrpiEcGPmmrZ4/K3G1daJS2XJPyEkwjdcLxT0+Yx8lLRLvmCZFmXEb6PZNoHyCc7IFG0Zk
	Nlj3MEsR9gsvRxYNQ=
X-Google-Smtp-Source: AGHT+IGduH610rn5UO5W1I+quoffTQLyEbtEowPhpEB04wS1de/RlDICAj847j9oMdvdQqNq4Iisag==
X-Received: by 2002:a05:600c:a08:b0:471:5c0:94fc with SMTP id 5b1f17b1804b1-47939dfa053mr22028575e9.6.1765009700413;
        Sat, 06 Dec 2025 00:28:20 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479310a6d9dsm123094705e9.2.2025.12.06.00.28.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Dec 2025 00:28:20 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	=?UTF-8?q?Olivier=20Cr=C3=AAte?= <olivier.crete@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] media: dt-bindings: rockchip: Add RK3568 Video Decoder bindings
Date: Sat,  6 Dec 2025 08:28:07 +0000
Message-Id: <20251206082809.2040679-3-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251206082809.2040679-1-christianshewitt@gmail.com>
References: <20251206082809.2040679-1-christianshewitt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251206_002822_655487_97A02F89 
X-CRM114-Status: GOOD (  10.19  )
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

The video decoder in RK356X (vdpu346) is described in the same way as
the one in RK3588 (vdpu381). A new compatible is added as the decoder
capabilities are a subset of the vdpu381 capabilities.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
nb: I've chosen to us rk3568-vdec not rk356x-vdec as other compatibles
for these chips are using rk3568.

 Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
index 809fda45b3bd..656ceb1f116e 100644
--- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
@@ -18,6 +18,7 @@ properties:
     oneOf:
       - const: rockchip,rk3288-vdec
       - const: rockchip,rk3399-vdec
+      - const: rockchip,rk3568-vdec
       - const: rockchip,rk3576-vdec
       - const: rockchip,rk3588-vdec
       - items:
@@ -107,6 +108,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - rockchip,rk3568-vdec
               - rockchip,rk3576-vdec
               - rockchip,rk3588-vdec
     then:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
