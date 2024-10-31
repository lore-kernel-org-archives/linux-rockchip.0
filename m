Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 241D0E6894C
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Oct 2024 03:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GILpKfFzj7+NGHLEv3p6zj31YKKGUNNA54P6gUPggmo=; b=2taTAUBwkMSnK3
	Gi6Ccm6A6IDxOCtHWRYX8HIoNxaxdLYE4Dm7zUO3R9PP/aPb+mpokvoGDp6aAhiqq7yIvpcArv6DZ
	paRVIkSKoXaPTfTOCatOfxAxTzka9yJ9ww1HZxdLGk2lZQFA7yfIT7XBB/5T+ZwrcUViX8uWudGE8
	9AfEbyk8WgpGMS1MOt5/rNckyuoJcES9JvHrRfDlBRslPAVMDpgY5fILkT6py0U4+7zuFMzZnstsj
	If/szywFUolK/6viR36vOrjo8jMCldid24aY8mmIFUMdFl+TY5R+sOdOK8Fksjc4SWuUVv0i0rqT9
	Y98TQuCJp/1jZXQbSt0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6LjU-00000002Pzp-2HX0;
	Thu, 31 Oct 2024 03:20:24 +0000
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6LgZ-00000002Pn9-0RIa;
	Thu, 31 Oct 2024 03:17:24 +0000
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-5ebc5b4190eso315449eaf.3;
        Wed, 30 Oct 2024 20:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730344642; x=1730949442; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OifXa0xS72KIxES6SPqmMe9eJQY0uGb3CD2rL2OPXD4=;
        b=EPM1dGidua3omlt7eZxzPSIFzdUZe2rW9iA0wERH8Wp2O3MfUpYt+hb2I48zH9wT+M
         AMbQUeZ2B//FFe70XdPPz6orRRLJgbQ46BtXwQGhi2qZQpXM7eNL8dHk0cVa2MA+w7sH
         00Pdh1wBtdt9yPVPivJzZmNGoo05WpEpvC+E/nCB0fTgiEzDG319aAEGMkEhs+ORY1uO
         4Vy0ctVHPDnimN/YGfkRkutBeatKbkuu782G4yK22LW295Eq5XA2TGrI46NgvCOl1gUI
         QD2LvYWYgd7eN4qoV3tE0qXjNHNZcnsJ2lu3H/+zNnsVY2AKPN6+J0qRe5gpaZzb9n6B
         wS5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730344642; x=1730949442;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OifXa0xS72KIxES6SPqmMe9eJQY0uGb3CD2rL2OPXD4=;
        b=LMKDuD7dSVWAfJE4ZAQk8HOYeSVxvMO0YM6wu/c2nFOpMrIfkUpFa++Jqwp7d/yafY
         0to59qpv103+XVQOLilpslYMMvrm4bNpYBPrHe6yWcoxLloDLbpjxNcJkuhA9i1vLajl
         I9lzVt4qhcj1pScaA1NlYY+scSelYgu35u82fn+dOE+rXjTfbKMVDejUhxZnDYmXQi9m
         YtzDXNWqqDlsxQFSpYKXwEhfGrusicFnMjdOod6eunangzBQPa74jQ4RSxIGmEz1ewSG
         qFcLwFX4+AzW/wgnBIvYwLCZrIQe1L2FrQzCRPhsqz50l60vjxKSoM0lVONr9r5sl8LT
         vagA==
X-Forwarded-Encrypted: i=1; AJvYcCUzi7ZnslX5cyzd5RnPOHsYSASsNZl3klRbLTDgspbHou9KJEDju5PiV5hv4VCKGmYgYp70Yh9actW7/eB0ZvE=@lists.infradead.org, AJvYcCV3JqxoM7OoWCi0a/oUpEHwoAx1lhQWFyBDf0tvJOMmD9j5JCGGrfKNOfWpinrAJu4bDH7NR4/f44Tsek2/E6FJ@lists.infradead.org
X-Gm-Message-State: AOJu0Yyrf77CDzTPZEQwrdaKKwcDarFEKHHoDr1QBqMfB49266tiYHn5
	TRM9tjbROYHILYnyaKJ4g/QXTaPYlAH2IoDJ6Y/Unz1iIQHy+wc3lHytB7Ez
X-Google-Smtp-Source: AGHT+IF7jFKllMiT2dMJxZGCD1u9cR3fwECc/YiVfwxRCZA1DiGU0BR/uVgybe5QT8Y+9LaxOlFeRg==
X-Received: by 2002:a05:6871:5229:b0:288:b220:a57e with SMTP id 586e51a60fabf-294846c7effmr1558955fac.40.1730344641934;
        Wed, 30 Oct 2024 20:17:21 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:4dca:6aa0:ad60:9b88])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2948742a0bfsm270149fac.2.2024.10.30.20.17.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 20:17:20 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ondrej Jirman <megi@xff.cz>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Max
Date: Wed, 30 Oct 2024 22:14:50 -0500
Message-ID: <20241031031528.23428-3-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241031031528.23428-2-honyuenkwun@gmail.com>
References: <20241031031528.23428-2-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_201723_161201_F7B44EEE 
X-CRM114-Status: UNSURE (   8.55  )
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

Add devicetree binding for the Xunlong Orange Pi 5 Max board.

The Orange Pi 5 Max is a single board computer powered by the Rockchip
RK3588.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..8998cfe34fda 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1001,6 +1001,11 @@ properties:
           - const: xunlong,orangepi-3b
           - const: rockchip,rk3566
 
+      - description: Xunlong Orange Pi 5 Max
+        items:
+          - const: xunlong,orangepi-5-max
+          - const: rockchip,rk3588
+
       - description: Xunlong Orange Pi 5 Plus
         items:
           - const: xunlong,orangepi-5-plus
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
