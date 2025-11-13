Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E18BCCD98CC
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 19:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQgFH5K9BNv1szZ8L5SLvmWeDbTLCnapmUsJ56hI8II=; b=ROagGtqeHWELSk
	1eLTZj/cU2+p0yQzrH7VBHSLBu8GygUkpPI7ilPFTVELUAdFt7zv1BQ5DdE3DpY0fB329IWEb50lU
	NC4npQ06iDTbQixRmL4I2UWdPVdbQli0lo6PCSeVBpWMCaMKhn6Dc/59kezfnJN0lGHnIf0C0U6zx
	dAb8+J/CTrfEhY90LpRDG2zOIgclonKhiBp6BNZ3Dd4ON6ULcwcfXQctyirrM2sxNzizrCDHvHzEJ
	XNMfN5K28MLLdUlX44qvQcrG3M5HmqCvynxcobpH7FrsIhe1hS4XEnIz75tiOnJIjpx+rsqz779Xn
	2z+UEpOmdirDJldXd19g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJd3E-0000000B0Sd-2Ifo;
	Thu, 13 Nov 2025 19:32:12 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJd3D-0000000B0R6-0BRS
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 19:32:12 +0000
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-7c6ddd07c5dso324896a34.2
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Nov 2025 11:32:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763062329; x=1763667129; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ojyXh9J+hBwCNMVLciyvICBaCTIpiiyWT0C0jl060F0=;
        b=JuJPeG+Q4UExWqiG10d+FOlRj2I3dEPoQPL3iKh4ZMbiEq7ZFFZMDfrFIU3RS1BP/v
         CiYJsteF9PE/iwz3y11lK6+iDoRggo7Qm5ZQJJ6K8RDOOsgbC+4orGtfm/Ks7nBLzPUd
         zaIXHKE+/0suV68BVfPqefeu3IdaGJ3oYEmi1821gAShhrsSl4O4jPZinnG39I4u/3al
         /HirbAgviulDIcbPKDxdibTIlxL6jy6dfFKqFPYqW7kiME03L3VVoCi/u26f1NZ8QsAS
         L6HBrWJtl+Bfz37wGIcLuXL4brZc75j80K9frD6OmE7OLfSQPh7eUAmllftbmZAhGdRD
         GdKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763062329; x=1763667129;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ojyXh9J+hBwCNMVLciyvICBaCTIpiiyWT0C0jl060F0=;
        b=PembAD/avPewkflql8mMKZzAb2DPPyFvHBFMJGBCEAB/J3k4WOoovhGzBm4Elm/3Il
         KZB0VncQEbeBAc4bAkwWdjmZcSr/wZtTqTzsYRq6UqQ7ZtH5mxNStBMiNIHJ+z+bGo3S
         zQQu1LtvzkXciEepV4KA0bHDXL85ZwgkKkHvwWT/v0J/xSkirwG89Ma4NrL7o2I3rb5W
         66ab7UHzmM4mhYru6kgxC+llSyrRchTwzkxxk9897VLC/2i2a8YQd4beWxrKhPjgG4Bd
         exe33n3jMjZ8ABf9kJE+KvCVUUOs9v65LcsPo87ablnH3KGtY1ZlMRvvKASfbFuwK9P4
         qXLg==
X-Gm-Message-State: AOJu0YwaowOR6sy5RQ+C34KeQdsIASSNgGTECdMS0NGkD+Mow5dtjccb
	hija1N2KbKNKOCIMPXaZ8n65+M0NMM62PncNe7D8MoOeil6bsOVGYcDU/B4Qmg==
X-Gm-Gg: ASbGncuo4jtdWqZVDSYlepKa9D1x6UBbhSiJJMyJAn4lu5+WCNX7J4gNnIHEQFpCT90
	z4FqoF1joADlnHvRKU9mf7Q6K5sJhjMxPxUxD9yzY/zjMPv/FmG0gUV8+i+PFKJ5xPzna1qxHVv
	nR5SZGg2f9xVpeZxFk9YnGkZPefQhzEDJBOaYpzZsq+nJtUnxbAcsfRT5m9dogIMFtcwDCPgzbt
	plnVWWCHgeQ21tBp2XQOxLU97ov/yx/32RlfRpROwb48LJibpxUICl82O1mqevFc0a8alb6acHa
	hf8iGfUCgZ7KA2lP9IrYgelhN2tXlVkXUoY1KZT2jNrNuumCUPeQB4/MBnzjLZFXRAPvnw0Esnv
	q3OzpciXHtVqD4JsorvBxCNPoI90F0q6+RUn0LU3HdPLlQhnWRIkAFhtD7k4hFPM3CWKvuAtM4n
	M4h/GRnGiw
X-Google-Smtp-Source: AGHT+IFxeDPnr+c8wuNGsY9u69U5OD00ERq1Zo4Tm+ccQl+K/E1e0bde7KqzTrSFky5MSRTost79jQ==
X-Received: by 2002:a05:6830:348e:b0:745:9272:4a39 with SMTP id 46e09a7af769-7c7445506c0mr510040a34.25.1763062329639;
        Thu, 13 Nov 2025 11:32:09 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a392fa5sm1693527a34.19.2025.11.13.11.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 11:32:08 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: mripard@kernel.org,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	rfoss@kernel.org,
	tzimmermann@suse.de,
	jonas@kwiboo.se,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	jernej.skrabec@gmail.com,
	dri-devel@lists.freedesktop.org,
	andrzej.hajda@intel.com,
	andy.yan@rock-chips.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/3] dt-bindings: display: rockchip: Add no-hpd for dw-hdmi-qp controller
Date: Thu, 13 Nov 2025 13:29:37 -0600
Message-ID: <20251113192939.30031-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113192939.30031-1-macroalpha82@gmail.com>
References: <20251113192939.30031-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_113211_089063_C3E581C8 
X-CRM114-Status: GOOD (  10.44  )
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
