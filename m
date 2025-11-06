Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9F4CCCFA13
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 18:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3fv7KwHPYn3tPvgetqtcLsjrINYPvAv7vliQ+wBGilo=; b=CjAzbawRO4HRE9
	piD9W40IhoJhZs6Pg5WI3GVmcjtdUymc975Wu4ED5EcH5ITZWQwFkkeugDa+HFX356RGhxECDsjau
	tkfFdnIWcrl+7LEybBbTaYmyQHDkzTf0s8qg6Hl9ctBHpLAZiCzqhmuCP0UyiG13/XcZJ6omPKiDJ
	Fsj4CfJrwf5+KLjMIGFBjPKCLqHYrirrAoPiQBqjeHU1g2wuR1UvWmIc+CVVYMXGn4VW8Nvuy64Li
	SA/dmap8bN/2SvVenyqtIP+gS++WEJaY0ZI/ow3iZRhzATAbCPuD3iFesdBRBPaKwY9s+TpvHIaxE
	VcRsh+J5xdebVQXtqiqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH4SU-0000000G4rI-3Wif;
	Thu, 06 Nov 2025 18:11:42 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH4SR-0000000G4pq-3cN9
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 18:11:40 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-3d5bb03d5c2so753094fac.1
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Nov 2025 10:11:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762452698; x=1763057498; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T0LfZV6ZvHIu2m+187yq+/hilPWa6I1ikCEzp8Vg+NA=;
        b=BNP68psRvJKB+2wIiFBpDtfg5YgNT078Vy8fruErKUtyV/W1t1zNS2i9JSxAeB2xDQ
         /C7i8Btb8K/fWe7wWbDEglSgf9YjSoyCHV6ArsWsbE8gVg/wREj95u2xAOT9q7Yof9yr
         KHm7NThGpc+WI1z4GGiQJTDmOEOnf4FZRgWEIgxsmaAn8fC1QCHPmqy3xZbIYQm00ZDF
         ZyJjr6kfjhdMZ4CpnDiGdr6mHKVndeGCPUYFg3z20XI4HEKTPEDZ0ZyKtYKYHwy2CZnr
         BNvMgbpNL1ElqNNNj9PoqDqaqI1FYcsXo2pt4xqeLAkzELuCeW2BEdirFMboP0/uKVqc
         Uw6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762452698; x=1763057498;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=T0LfZV6ZvHIu2m+187yq+/hilPWa6I1ikCEzp8Vg+NA=;
        b=UIGDefwOXeZK75jsrA+Eg7SLN++M/YjZp6T/G+cGN6YcyBA+OUFyTKkRnO5DbY79cm
         dw7bcWhgPGGllVjMQqT4A4if6Zs8CwRjxXzy3Okj0+ws/ikC8EBDv8aRZiO9PR851ERo
         Bziq/7c/NHxfCbRKSoKQGpnYTZVrPu95HGwzQxitvFeYkPF70v9jW8mDN5Sn+qCHOhGU
         zvzMh4IObVg3A86OCeq6+aiQfyoUJvzK0CHPROhWSMrazNzOxYnqZZwPlqnmTF2TsPRX
         /ydTjQ/boq8XxdjWb/FipnUcvp59oW1ivaVbTcVGwBZo+P7TKXjoun6+FCuuaTMJsZjI
         OpbQ==
X-Gm-Message-State: AOJu0Yz1D94XJXEMAzuRS+nOnffmluPrKvhQBUq4cdY0Qja4c4hY6Xpi
	QsYBwmzrUCkSPq5toAHxoo9wfZtxSFO2CL1uFk8u2CfnLIe9itC9+LTSHyOe4A==
X-Gm-Gg: ASbGncs+Zui/kL5XrtUvTRjkhLKHZc5/9ohEjRGZfyRZObWaX1VBXMIrO71zgRhxJiQ
	UfLEO9TF2Onw/BzeKdmRB1eKq7qOJRKdRfROattlvC3uwA0HKf+3nWU4SA396DHPW7pDWGCsxex
	Terq+V+MX3rQdQVCCnNVuyGg/054btkV+Qj39tRo/sV3Pu+Gtx8MpG12AxxDYFNwDIv7Xd0R3Kx
	syT/ZCeJx+8ZOih0tM0kQC3t9U0Na4DN9hwfyu5ILEQF6Q3VrbqcuvUa8wTMKaDi5Lt13Szf3Tm
	kHbWpId6l0NVOXqCQ94TjzRrZuLLYnbY/uePLkgEamldskXngG6KmCppMinvdHRdF3GelvH9obY
	Sno8dmb1UXFhM0RJ26rXf6mmE/xbmJU/mvu1ere/Y/2ttWK+tuE0f1S6mTKjQMLmotcQphtCfgR
	lov9HS8oFJ0HDobOGr6n0kVaCeyBHCKg==
X-Google-Smtp-Source: AGHT+IEuLeAiIcFbvckZdi0fEGQUB8Xf6ZhxDDLX2HCSRm7iQ+wj5DqmHKY9RpQQmONnKJ+cIm7Vyw==
X-Received: by 2002:a05:6871:1d5:b0:3d3:5f85:af68 with SMTP id 586e51a60fabf-3e41e3c250emr345117fac.10.1762452698548;
        Thu, 06 Nov 2025 10:11:38 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:41f9:c9d3:db30:c36a])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3e41ed0aa06sm137739fac.8.2025.11.06.10.11.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 10:11:38 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH 1/3] dt-bindings: display: rockchip: Add no-hpd for dw-hdmi-qp controller
Date: Thu,  6 Nov 2025 12:09:12 -0600
Message-ID: <20251106180914.768502-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251106180914.768502-1-macroalpha82@gmail.com>
References: <20251106180914.768502-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_101139_904220_9D802964 
X-CRM114-Status: GOOD (  11.30  )
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
Cc: mripard@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>, rfoss@kernel.org, tzimmermann@suse.de, jonas@kwiboo.se, neil.armstrong@linaro.org, heiko@sntech.de, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dri-devel@lists.freedesktop.org, andrzej.hajda@intel.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, robh@kernel.org, Laurent.pinchart@ideasonboard.com
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
