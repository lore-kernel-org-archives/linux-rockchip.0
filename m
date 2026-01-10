Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CC7CD277C1
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jan 2026 01:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eNhGs2rYQhThUqYzGdQ4p7eI0731aa4BiRFmeS/DImE=; b=plIc6HIdPCepy7
	GM7lgzK5H+fdfSZxcImhhg2MhX5SqCXTGtGbzBLa9gzw7jzFs/mxD1IdDX79wmQZQKN5cbSYsHc5G
	v7BwOqy/lt9tRyBwm2ScFfWXR/nGfB7etjWNwZ3gJkC65X/dakcRvRHMBHAIsVmjRJk4hj2egAsSe
	DuhhJlelPCLVJO5FRfUrmZvlLSMKPNc4N4eFe0pZs+/7KLafbbG0ckdmaupBnNCqjvpNXwy1xlpzf
	Ijv8PPKM1sXSO0SerFcSTaub4Sx+WHB7vCzNCgMSKeRfogF0nW9ktH34Nvc1jEwLMxlwesTkPZPgw
	SYD5xebDOOkmChsunGPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veNS3-0000000392B-1qY6;
	Sat, 10 Jan 2026 01:07:35 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veNRz-000000038zG-25MW
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Jan 2026 01:07:33 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-47775fb6c56so44978695e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 09 Jan 2026 17:07:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768007250; x=1768612050; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4+ExvoWXyfk7B3PZ+QbuMC84j6wcYdimjvcwYA1OVjA=;
        b=drt2nKfm58EUhExOSbZv7JiO3aSG/2stwbaZ/nBG+mgEnp/RuWgETfq2KsNWCVswK5
         htNE43pq5IH9Z8Dh9MFoUiwtWupJC42U/TuUuNke3MRyoOCI4a3i1Tzy1if5LVTc3eTs
         EnBSPP7KNr4nnmyViBMUP9i/xsk2GFvgGAKgqOPuB4ZDsAxOX0B302FaaFbfaHFRmEZD
         PuRykSxpwFOKtZemOiKdaSQuOsm3P0pUvjbVEvUjF2jV9VKPQi5yY76Ekn0PvtuW7z4u
         xe3/4pC4JxJLR9F6xQsjvUCUsZe+L3QeEwXnYup6OE9HAwSnXwy3TdAEYLzTycUoP3FG
         yNwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768007250; x=1768612050;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4+ExvoWXyfk7B3PZ+QbuMC84j6wcYdimjvcwYA1OVjA=;
        b=QwULwAfAhYCwKX/82LGimQUHVBVwu46Jcw1Pv2FtnX6g7fupTrbooKm7Jlt91mvhey
         jmEscmIX6UWd7M0FWInOx1fpy33hvPYSgrPzzkS7EAZlpaEm3qomakaNO2mVXnb80NRK
         Le4LFRwT0Mhmln7KKxV9nNbQqigDQ0X37DyKhw0STdAg3XWS0jhSyyf9LVuW1lNXhaXi
         Fmm+aU7ngbcgiHypZLHrvnvIlxIyLAU62ZIBuPIj+pY4xnNKxKRIxSHtPuMmf7LS7Alq
         PCu50njmt2rMuYZ5R9+Ldh32PsCuca454/si1+IZ4krCtiWWLIidNZoGk8L00nCVPOi7
         xOHw==
X-Forwarded-Encrypted: i=1; AJvYcCUo0afi/FiPL+oBEvTDZTesxBusk2aP4BEjgFOf9cEF0BNxK4usUhjwy8pHCzLg6GLE7UkAObvSmF1H4FRTqA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwEn8u4mLcz8pcGutCyUo59mM9g8ZYLZd0vJ42d5YSLKkp6yBaM
	fDBzHW21IO9s5Q58S1Z85F2BTg1oBVmYqvlFzs1qhU5zlYZT46Hfgy0a
X-Gm-Gg: AY/fxX7OE5RO9BP9ivrfLXJMKtR7K0y0lxgUnC9T+D8dmj+Tlw0PJpxNHP7VBMCE4qI
	VChRaBc2sTzKV4bHiJddtNVtt0kOFa4OK0VBl/zDJKqiS9eSV4QdNYmUkxg0gO7Q9MrCt5izUEU
	QnqJ4F3VcPrhtmOZq5PZzp4oyr+nX3xHV0xxX2axtZc+H8f23ZStWoZa/BlvsZuDq2xCLyhtT1X
	K8doANi+2WAcuojNZ7Iu2+vSyDTkSj8lJ+1sTWytYJdrMjnGLTJmmsVT6mu/I6Xc4IsuAvAhNJM
	E3nUg6vw8jFIbume3CMjU5QZSnf2qTrlEzKfjVRUbFPQ9aE8C8Bn6sW/MFv40Zp1J2DmrnpuSag
	4/gxZSgWT54gpD3uXO9vycnHAMNzbSJFvmVVvBZtZVw+6FeZDyXkAHc6dwPHVxWo7NOmI/YCvkB
	uiJSDQVlvRUFn2MbkbmG+3/CS0LszjdTmbzpMmPrUnaGnv94p4qBiz+RbZ7NAiDM9XbxoNyc872
	MyWgipiFV9uOjfBDg==
X-Google-Smtp-Source: AGHT+IEelYoC/RfOsLxl9axtfdOf6Cg+r/5BA+2WK9IrH0gt6a4Cep6y3e1I+Dzf8IC+Aozsyrqvjg==
X-Received: by 2002:a05:600c:8b2c:b0:477:6d96:b3e5 with SMTP id 5b1f17b1804b1-47d84b186b4mr120986455e9.7.1768007249488;
        Fri, 09 Jan 2026 17:07:29 -0800 (PST)
Received: from stor1.home.marco.cx (ip-178-202-227-016.um47.pools.vodafone-ip.de. [178.202.227.16])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d8717d9e7sm71779475e9.8.2026.01.09.17.07.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 17:07:28 -0800 (PST)
From: Marco Schirrmeister <mschirrmeister@gmail.com>
To: heiko@sntech.de,
	ulf.hansson@linaro.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Marco Schirrmeister <mschirrmeister@gmail.com>
Subject: [PATCH v1 1/3] dt-bindings: mmc: rockchip-dw-mshc: add rockchip,disable-runtime-pm
Date: Sat, 10 Jan 2026 02:07:13 +0100
Message-ID: <20260110010715.1610159-2-mschirrmeister@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260110010715.1610159-1-mschirrmeister@gmail.com>
References: <20260110010715.1610159-1-mschirrmeister@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_170731_554098_63FB94F1 
X-CRM114-Status: UNSURE (   9.51  )
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

Add a new 'rockchip,disable-runtime-pm' property to allow boards to
inhibit runtime power management. This is required for boards like the
NanoPi R76S where the bus timing becomes unstable if the controller
is runtime-suspended during idle periods.

Signed-off-by: Marco Schirrmeister <mschirrmeister@gmail.com>
---
 .../devicetree/bindings/mmc/rockchip-dw-mshc.yaml         | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
index acb9fb9a92cd..41f2644ca2ef 100644
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -100,6 +100,14 @@ properties:
       If not specified, the host will do tuning for 360 times,
       namely tuning for each degree.
 
+  rockchip,disable-runtime-pm:
+    type: boolean
+    description:
+      Inhibit runtime power management. This is required for boards
+      where the bus timing becomes unstable if the controller is
+      runtime-suspended.
+
+
 required:
   - compatible
   - reg
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
