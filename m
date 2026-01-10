Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22EE5D277D2
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jan 2026 05:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zUcWaeL4Wh9sLU4mMKdZP7umYaa8Nsx6SCTXvhcDV4g=; b=znwHu6fRcRcX8+
	l0NSL6kx9HnhUZFQNFOlpoi/O1sHFjn8A/KY+xKkcRQyH1cjCiSvtw9w5wLGY5Jm8K1qrZE5XTavQ
	amsbsm2/XcucEaaVfGeLi8yactwARM+J0RGIi+V7LnsiMyXpYZzBCkayyo+IyPzDls7BICj93PsrJ
	Bt1N9KC+B3dZJJPzjNgoR5fjxs/By0FqRfmpyznW08HljHRsuhBCVwmL7EgsBcYd0Lx6Px8uKvEhW
	lH1EFx5aVPbLriqzM5po7drXoAiwq36NzrIIcHJIuVB4ouB3GTDI+DI23CLEkEcu4Kds94MRNoiTD
	rC2VkjTQ2VVoKvyd3lOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veRfR-00000003HLJ-1yY7;
	Sat, 10 Jan 2026 05:37:41 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veRfO-00000003HJh-1BaO
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Jan 2026 05:37:39 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-47bdbc90dcaso35335605e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 09 Jan 2026 21:37:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768023456; x=1768628256; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bRmj6n80JYrNuWPK4JdBaS4YTu/hZ0Oho3r4jDBrKMA=;
        b=ibihrTljAneVfW2kplpOBEb8cBJzPCT0M823nCwoyg8o64/xkdw7LvgX1L2vQyg4cd
         hngv3O9xN9cqb7nUzUnzyonKWVQyMe8hM4k5gQlSup5muwxkoHtnUQ6RnR6Xa9A7rP7m
         kPMlh6H1XhIhfeCXUFxp8ozonDumgdi7MU+qsIxrqjNB9pqypQSclReg4CWzwXqYIoiJ
         SoVcJH+2BCP7HdCzHhlqPSi4aYSx6bCTadeEKqtlnC1dBfKcfOZjrXOgEO0mbstgmQ9f
         BJnk3hgaoRqF435lu71m6zwvIKfpJ7gHG66cDCHBZNIRhwvjqyQrkBWTyPhuzz/vajob
         vj6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768023456; x=1768628256;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bRmj6n80JYrNuWPK4JdBaS4YTu/hZ0Oho3r4jDBrKMA=;
        b=D+UAXHOu3T9O7SYqVEmPPosxZaMsLdFhJvzg0/pwigYUaD1KdbWfnA6KcKt7dF60zy
         QwJvQDTss+vAckQP+1GJfbRFSmYD6kEQZrPZCy3DzD1Wkj1BD/986zixDmJSDnY24vmn
         WNYRsKO2NwIk9YO5gQtz3HBu0EWXF2Yid7lZ8eSFBG+giW5NMXPGjDRVt4TxKRQZwaOd
         6KuViL2v8ir6DgpgE2+tpt54VRRyMlM/O1zi5W5w9RlYr+DcvcH390zQ/T2ORhnD9z+e
         ceYPsumq9i2VLzHupCWbValh1FROREdEB6ItIQXSs2O7Y00HOqT8Lq1VO2p5glT75Gbi
         0N8w==
X-Forwarded-Encrypted: i=1; AJvYcCVXlLtygu3ABTbsbqgn8cPmaQ+0F66bsFHOI0VGRMxwUDyBhGlFfENeGMGeddywhXHNZ+AEbFbEKlIRxJKsIQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yynd+yKQ2HbOfrAtGoU+XXmUriaz3x4tGp3vNPb6Fxr9dF3S6qv
	3MafjlHWnJWM4CwbT8R8NRO6N8ddl9fGph1r2MRL5u3f/hXxe7Le5F9l
X-Gm-Gg: AY/fxX5S7ampE3J4zrJmMUlp/Vy1WtFTDAjjT1yN6e/i0NKrD65LjseL+u7jUYSUpRQ
	KEAh9RYEl69rL5M5jpUCCwaNUQHutAOEZHln2oJGQArRDWOa7tCUtD/hSujk/7YvDkXoZhNdK8w
	F50xlmbn1/7FpPCl2z6deT/TfrfSuc6bMct604VzBbYQLUC6RKYRCwbt2hIT6QehKUHthUhRjS5
	EkK2chtbdP1HQbuxzPaZca5+fykhvIPv7VLm26ugG1WH7ls3AXs74/uq3dU5Vl/sUuvzQOUln6f
	1MiJjld0hEgVkXhxhr8OPCIIVQK+lAp/7m86pSKsuxCAvz4/cKakyXdUt4pjgVWTmQiFAHNrM7Y
	QzPshz0bR+5jwavCw7kEfcfHKUAVlnko+i+QnsdtO3GQ6kbFsBWHB3hwFUCp/I+Si7umX3HhbAq
	yBQCQK3QKNzDHAcGGhXGWDRXj5gA==
X-Google-Smtp-Source: AGHT+IHFjnlCF8pTEQfGb9W1ffV5gzSschOlhEKfZUTAdGXo3QGSdTLZRenFmR/o3QVDEWnVyv6rKw==
X-Received: by 2002:a5d:5f54:0:b0:42f:bb9b:9a82 with SMTP id ffacd0b85a97d-432c37746d9mr14189554f8f.60.1768023456178;
        Fri, 09 Jan 2026 21:37:36 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0dadcfsm25973825f8f.3.2026.01.09.21.37.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 21:37:35 -0800 (PST)
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
Subject: [PATCH v3 1/3] media: dt-bindings: rockchip: Add RK3568 Video Decoder bindings
Date: Sat, 10 Jan 2026 05:37:25 +0000
Message-ID: <20260110053727.2295260-2-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260110053727.2295260-1-christianshewitt@gmail.com>
References: <20260110053727.2295260-1-christianshewitt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_213738_356234_58D964C9 
X-CRM114-Status: GOOD (  10.61  )
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
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
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
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
