Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B8EECF648C
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Nov 2025 22:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQgFH5K9BNv1szZ8L5SLvmWeDbTLCnapmUsJ56hI8II=; b=LqA08AbMsutMg4
	KcJ6/4s+Ua5F2FGAwplUAwjC3Ct7hhQhs2Utc5dHLyzH6gwKJQkZOuBjtzSzm1u/7p5hjbFazGu6L
	mHg01Uae8k2YKmuHOWj2eyZbhWjwQgLzZYuPWxmqSvK4mkQNO3b8osedOqsxm81XgRGCdlW5c/KcI
	RsO2yxzz5vkaqltzMYTpDTbgeEm+Y7VQI1hD6TslwWP9Giq4JxLepbSdH67TAPXv1kix9/ZDzajDy
	lpwvp7OjPZMcnJE51DAV6s/FcgnAPgFtUF3e6yinvL95FozS4tfTNGktsFE7ZRlNEnuEP1fobQ06s
	p6PXyfdfaGqDiZZJEvYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLr7f-00000005oyb-0ksi;
	Wed, 19 Nov 2025 22:57:59 +0000
Received: from mail-oa1-x2a.google.com ([2001:4860:4864:20::2a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLr7d-00000005oxU-1aqB
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Nov 2025 22:57:58 +0000
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-3e2eeb85822so90469fac.2
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Nov 2025 14:57:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763593076; x=1764197876; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ojyXh9J+hBwCNMVLciyvICBaCTIpiiyWT0C0jl060F0=;
        b=V+NVVPFdL8et/AxgvrEU/06nBGVCPbohYGLsq6BVPE0Resy8o8vtOcqUdKZqn0eOVJ
         FTJx7jz/vBTQPIA4Gg9JEypYWMGYFncS5FB7v0BlzzyFylWUo7c8IYsx0erJThn0T0fy
         w63QOOL7Qidmd0tHo5l/qVwL1vv/jCY18g4RNY97/t8fgEqGG0DQlPR4EBYHw++DJY9e
         kGaM1nRcKUyPP7kWkiHra/2q1rSRSCwOJ5Q3fVyfy8ZEounAkpSq8Uy7bgWjrkPxhtEn
         HZ7+CW4KRMIsAc9CzMX1gQ1vb1l+6BKjXehqFdN3fQ/1L5JW2F2XryKzBIu76g7UY9ig
         D8Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763593076; x=1764197876;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ojyXh9J+hBwCNMVLciyvICBaCTIpiiyWT0C0jl060F0=;
        b=taEZ6+/xuP4xD+g+daqDb8Q78raItIpN3ayE9etO+vyjuhfgG84B2OmbwuJJ7ty6xJ
         1L3IC/5pXifuDXn1UVn+Vl0U4QKYstzSKRu/J26Jdg84ZkakEu7UpKZgN06TZb7l7dUA
         GvvHIt312lrPRp/ycxQ277gjYMtP2RXXQbLhpCT4/P50nauc6a95hFdrDi5EWAkoVOgV
         s/w41rGMFAXbcBOj/Cmtn1X13OsYfiWyqmsjyCqiJqgEKiZzXADx7xev9yK589CUx8la
         ecShrEiHEdr7I0E59kF303G0rPeHvuow0Ak5IjVVuly+3t19/+IJfVeqDWNCwdmpmM8S
         e+tg==
X-Gm-Message-State: AOJu0YyI9oGTsFFErfF5QXR6c1knWiOxPy3ofLqIvckIXPXtFU4bsdo/
	0OM3ZI4YjkT2hFHFmptqlNP7+CO5cwlyOg1nqWtbzjbUr1TuWfFDveGwrN09bg==
X-Gm-Gg: ASbGncv5WbrD0rO6eEELeh8Ue93GiscFV16m0+L8XV6+0QYboq/L3r0BH8M0HxtSffp
	4PTwASoGqniq648O3SQ1NirAjXEWD93HAD33iBs2rrANW0GoiXmLxQQ1PwiZr7reym3y9A79kIm
	A0m8FiUeu4YqES8VMD7fRrWvYdRXRvap3ikUxmsodtT17j8Kz93ux8RIBelqgcvdC/thH/QRv/o
	csYOKaC3cu7h4v6H+bdJza0dZHQriiqe0L6ay+d2wFUAuK7Th+DdkEsG91pXcTSNoSBvzdTXFVg
	ypN6jEwc49CBI/Zl3Rz/DrB4nalQnG1zOOJL1mi2M75ST3HZULGAiTXJsuY/QiN4cnpYA9K7oED
	s74PoUZ2UAAFG7vJTPOKvTfQ6pN4A90ZI/pOOgrHefa2PEmXYjhl9T75ww4vo6Wba+ERSqZcxSL
	1rJK9SlX+DUZycSAZNTkJ1YZGvOySKfw==
X-Google-Smtp-Source: AGHT+IEkoK4IKUSKkADKn3nl7MMZN9fnLRgr8FuZfcsJqIloseBEgJ9BYQnnl0mgNPa4iiUW2K74ZQ==
X-Received: by 2002:a05:6871:825:b0:3d4:fe66:28f6 with SMTP id 586e51a60fabf-3eca16b166cmr140484fac.27.1763593076280;
        Wed, 19 Nov 2025 14:57:56 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ec9dcfe28csm346496fac.22.2025.11.19.14.57.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 14:57:55 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH V3 1/3] dt-bindings: display: rockchip: Add no-hpd for dw-hdmi-qp controller
Date: Wed, 19 Nov 2025 16:55:24 -0600
Message-ID: <20251119225526.70588-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251119225526.70588-1-macroalpha82@gmail.com>
References: <20251119225526.70588-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_145757_423476_DC80E4C9 
X-CRM114-Status: GOOD (  11.22  )
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, rfoss@kernel.org, heiko@sntech.de, jonas@kwiboo.se, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org, Chris Morgan <macromorgan@hotmail.com>, sebastian.reichel@collabora.com, mripard@kernel.org, Conor Dooley <conor.dooley@microchip.com>, andrzej.hajda@intel.com, jernej.skrabec@gmail.com, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, robh@kernel.org, Laurent.pinchart@ideasonboard.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chris Morgan <macromorgan@hotmail.com>

Add an attribute of "no-hpd" for the Rockchip dw-hdmi-qp controller.
This is used to describe implementations where the HPD pin is not
connected or used for other purposes, such as in the RK3588S based
Gameforce Ace which repurposed the GPIO for an additional face
button.

The "no-hpd" option was chosen to be consistent with other devices
which already define this parameter for broken or missing hpd
functionality.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml        | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
index 96b4b088eebe..07342838cd52 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
@@ -69,6 +69,12 @@ properties:
       - const: main
       - const: hpd
 
+  no-hpd:
+    type: boolean
+    description:
+      The HPD pin is not present or used for another purpose, and the EDID
+      must be polled instead to determine if a device is attached.
+
   phys:
     maxItems: 1
     description: The HDMI/eDP PHY
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
