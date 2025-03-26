Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D44BC36008
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Mar 2025 16:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mtoG8QXB9gsCB3cE89EzokLpsuJ8o/nfhChVBh/Ta9w=; b=1sKCp8G6croGkl
	N+xAvJmKFIZIT6NHhta233VTFmftqF7gte5N2Pjhuz2ZKdYWwQvP1z2HP8BrausdZRyahOOQ+uHTa
	R9aJHSTVv00bVjdDBg4agWqO8AIQBGOyuRSMTt9J9b0iiZZWvEfgCZHSZYvjJylohnESIwAcbkGuh
	YKZSqbH+AGOdCCW7xGuNTfM8CXKmoleGJheNQIxoTTjapmRidLwlXLVqqKutT8XPeK95mzP+itx5d
	Yo0OWXqfBrctvumzHcx3+CT/zGDdLwAX0QuBI8/rIQUyx1K5dff9syub8BIfpxRoXck9gKB4RcU0C
	xveTvXVF6tRrGZgyZHcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txTbC-0000000919c-47W0;
	Wed, 26 Mar 2025 16:27:26 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txTXl-000000090Kq-0EMB
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Mar 2025 16:23:54 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-ac25d2b2354so1172344366b.1
        for <linux-rockchip@lists.infradead.org>; Wed, 26 Mar 2025 09:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1743006231; x=1743611031; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TIHXHkF/8pZLgK+rwXO3tbSWnw+8GWfU/CEp6SLN7PM=;
        b=JwISJZdGKZuq89ceoYDz6WN3qSUPay1sZj5HD3wVLytIAdLl/63QsxRXGd2B77YPfo
         /Hj2fYr+m7lEq3t0FAd6RR/CMWgViJJ8T3HPfOaEs/xalunFOrP6ba4eqeCdkAYlT/+Z
         vch0sN4UoFXQCTPEqHF9RjQ/Q4nb3oii9SBjUusKdALJCtA8srAy8yBvZOi7QEL1clOp
         OdcTjW9t+KDarxwofGgEbxyzGgDBenGroxJex7ZjRaJK3AwwFsfQEMk/NtOScaYoWLNG
         5ct9Ftkd2P/gCXaGTh+4r+DH6oGiYkj1M0+Ptm/Ac3GcMy69/sezbnYlitVda2LK2X16
         Ov3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743006231; x=1743611031;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TIHXHkF/8pZLgK+rwXO3tbSWnw+8GWfU/CEp6SLN7PM=;
        b=oMC+iSk2Ttf+VAHPl/fVu01+PiK4ezsCB87fMythbUWsoOXW5J3lf7wQpLyLCvS1gR
         mT9M5yINtmWUDVJw5uNCDqgILtJBSvCjOnifN4lA+CL3jT5WcX3VtjsNtfQGkG8L9ym+
         WijH2u5Y+PsU7eNamhOjcegmAjLCEJMOz+PLybA1W6nQgYOHrwhB0ljtuJL/nQOg8EyT
         ypLgFOTWIA6ER3A5Wfe11F2j6QBk7O7wcK05T83OMetyul5SF6s6Rg/ci8ASrg8ImSuk
         nWg+lJxKIpdu5UrlwC5cxc6F7yc+vd0BaE/JYXRfihlTVJKQ6oQcEyeLzfjrbDuNi7RX
         09kg==
X-Forwarded-Encrypted: i=1; AJvYcCVbtiVTfb5OSBEBoypjIt6chjrgtdj/0nHPVnNbttavGHH7U6B3GLUPfe+pgKTvb0AmukK2+BQeDZfgHwV5Qg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7JUfrTKZTLYYn6yZ15L21hZmZ6QMC6ph9X+ISV/pzVpB0qjyZ
	7zhmeP6wfYfGIF7Y/X5A1BfAr9XHbE99YAf8eAYssoXX/iRYBLVef55G4lBpjNo=
X-Gm-Gg: ASbGncviRg/gA8uFuBoY4aR3Gm4WLV+xF0Hpnr+F0sOK+URsrPGxF0RSTrQd3bDvM9x
	pMaZSfObG8n8p2K4ddXVaxvzMk1GSgl/eKfmp++zEwW/VEBcrr++2617nR1vEiIepEPfkGe+U02
	fhf5F1lmcBkg0oQbMhvcn31bmxR9vyzR72CIExUXn5ZcZs/7YFpjtTJw2KmkXniDoWxRj7YkgvH
	yOmASzG5pBBnJ6nU5PHNMssTFiDolemMoAbDsmOM+fK9QSyyLy+O6IPYHRjyMpy8GdRuARnIbny
	OzOo8jzczPF6Pu/7tcOOODE3uvIyzWzNS1V1Kxbr/OOvGMsEP4GmDUW54A==
X-Google-Smtp-Source: AGHT+IGX6YIZqj3EMmg9fstP7Tv4f5XMwVql68RmQX1PGbQYAIwS++PJhhjAX5oAjP1/BAdfxlVIAA==
X-Received: by 2002:a17:907:968b:b0:abf:733f:5c42 with SMTP id a640c23a62f3a-ac6fae5fc76mr5632266b.8.1743006231199;
        Wed, 26 Mar 2025 09:23:51 -0700 (PDT)
Received: from [127.0.1.1] ([91.90.172.13])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac6f0f498ecsm76678866b.135.2025.03.26.09.23.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 09:23:50 -0700 (PDT)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Date: Wed, 26 Mar 2025 17:22:57 +0100
Subject: [PATCH 2/5] dt-bindings: usb: cypress,hx3: Add support for all
 variants
MIME-Version: 1.0
Message-Id: <20250326-onboard_usb_dev-v1-2-a4b0a5d1b32c@thaumatec.com>
References: <20250326-onboard_usb_dev-v1-0-a4b0a5d1b32c@thaumatec.com>
In-Reply-To: <20250326-onboard_usb_dev-v1-0-a4b0a5d1b32c@thaumatec.com>
To: Matthias Kaehlcke <mka@chromium.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Benjamin Bara <benjamin.bara@skidata.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Klaus Goger <klaus.goger@theobroma-systems.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, 
 quentin.schulz@cherry.de, stable@vger.kernel.org
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_092353_096139_6439112C 
X-CRM114-Status: UNSURE (   9.47  )
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

The Cypress HX3 hubs use different default PID value depending
on the variant. Update compatibles list.

Fixes: 1eca51f58a10 ("dt-bindings: usb: Add binding for Cypress HX3 USB 3.0 family")
Cc: stable@vger.kernel.org # 6.6
Cc: stable@vger.kernel.org # Backport of the patch in this series fixing product ID in onboard_dev_id_table and onboard_dev_match in drivers/usb/misc/onboard_usb_dev.{c,h} driver
Signed-off-by: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
---
 Documentation/devicetree/bindings/usb/cypress,hx3.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/cypress,hx3.yaml b/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
index 1033b7a4b8f9..f0b93002bd02 100644
--- a/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
+++ b/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
@@ -15,8 +15,14 @@ allOf:
 properties:
   compatible:
     enum:
+      - usb4b4,6500
+      - usb4b4,6502
+      - usb4b4,6503
       - usb4b4,6504
       - usb4b4,6506
+      - usb4b4,6507
+      - usb4b4,6508
+      - usb4b4,650a
 
   reg: true
 

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
