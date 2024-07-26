Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71079C3DA49
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jul 2024 19:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mxjy9+Ty8vLQxCs5dW0BHIdrZNI3bTo8+GD2zyoNz04=; b=KdgeUg3nrzIEWA
	Mvxde+DjrjokP4o/ArbKq2UBXFXiuj32xtgfwCV+MkpzrnKxuxfPFzj+X8M8dIevcUsY3LmDBMkYr
	QaYnb8NU8b5pX53/TyBq4I97ZPG6Y7P66XyFB6KoNhhF+WWRyOa2o9T/3dheHIvS8BloiMGj5sArK
	MSm7gbaXVjUDkTnPLKSiPrlFcpSsUzcq8YgOcEzQ0GnNjDC8jkEVu5fGuWfzzHbYLzE3YNfQ7FLZP
	O8ij7hp/q3hyzOgLN21xkydXnQyFrAW6SNQBGNaYnjGJpG6T85ZPQx30nDMLzubYspFzdG/MLZzKI
	J2lKhCa5fpbm8CxS8+AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXQzG-00000004pD8-3O2Y;
	Fri, 26 Jul 2024 19:52:22 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXQzD-00000004pAo-2Rh6
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jul 2024 19:52:20 +0000
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-709340bd54dso675312a34.1
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jul 2024 12:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722023538; x=1722628338; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4+k3gjF8BoooWUfXQn49JWorftRpntAb8sxIAYpbdwo=;
        b=kKciYIdB2PAuLIJ/9zJYf2hiEnguEbTLem+5p9a0gKi7QqAeR5SyMxhXWgp7nxqDZ9
         Qz41UAt3WF1dgzq2MIVs78Dm+yubqdyvYdzgPZGi7ogGBhY5KSYHQocHG5SIAqCrbPJT
         yojCrM0WfSe4Ko58+D2+3lHp9KpwkTMrX8ZkEIq7vGmxR7XY7Rb0RXeDobCZx7ggKm1z
         BMUv2xvOEXPLNCBPs+ISfAKO/iEH81835kXBFLehAfSiow98sPFe/6Cu6AJBml1R7YCA
         bCYEDOj/CQchxERwCT0jVX9tnESIB8XtSUacqrZ6GDRJJI2/+TV0rVTvSocjw4L2k/ym
         F+Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722023538; x=1722628338;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4+k3gjF8BoooWUfXQn49JWorftRpntAb8sxIAYpbdwo=;
        b=ozgheHSZQ0vaTYya2sEzwFSTS0EnYG8Zn6nEWqTM1JFZskuvUPnzD4/+iUg7tTym8l
         fYH30ncf+NL4l9fJxb+yziOB84X6sGZGUROBxjliA6nvTYnsUDzGA+GDmNUvuwlIaIlD
         WEmM4PBWh5yR9rYyHbTPwhOx7HigFqItEcC6A9mKj7F5Qpm6QvPulhAyh2q5Z7XIqANZ
         JGIeXf8KsZr+KUs7kKXgkRmHKbtloQveZn7twPeWhsx2NarbsHLCydgXIuxoWjJv5mon
         fTRUzY91ASuyUUCbZnnCFfIAlXNdtGiuUEud5aL52yuxJC928Qr0FMs3qZQ7so2hICw8
         3YzA==
X-Gm-Message-State: AOJu0YwshXky4Jvt4YACIrzM34dvN0ZldbcfsQjdrG0xnMiDifGmDhS9
	Eh6l+ZcC5xcNqj5Sa72v2tcOU8u23WWYJfS7Z0Ht6XnKaZOWvkHbHFT/hg==
X-Google-Smtp-Source: AGHT+IHuz8TrULo3PxDivHC7WO52EaKTYugZpCRax3nUL6uYgAUk3XLu9b73tQtTCA8ceOKeHGVvbQ==
X-Received: by 2002:a05:6830:350b:b0:709:41c4:6a5 with SMTP id 46e09a7af769-70941c40c40mr158952a34.3.1722023537867;
        Fri, 26 Jul 2024 12:52:17 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:c1f3:7caa:bc8b:ab10])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70930778069sm889972a34.59.2024.07.26.12.52.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jul 2024 12:52:17 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	jagan@edgeble.ai,
	andyshrk@163.com,
	jonas@kwiboo.se,
	sre@kernel.org,
	t.schramm@manjaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/5] dt-bindings: power: supply: add dual-cell for cw2015
Date: Fri, 26 Jul 2024 14:49:44 -0500
Message-Id: <20240726194948.109326-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240726194948.109326-1-macroalpha82@gmail.com>
References: <20240726194948.109326-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_125219_656549_D6489F17 
X-CRM114-Status: GOOD (  11.18  )
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

According to the datasheet for the cw2015 the device supports dual-cell
configurations. Add a new device tree property for this condition so
that the voltage values reported to userspace are correct.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/power/supply/cw2015_battery.yaml    | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml b/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml
index dc697b6147b2..0e7866d42cca 100644
--- a/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml
+++ b/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml
@@ -34,6 +34,12 @@ properties:
     minItems: 64
     maxItems: 64
 
+  cellwise,dual-cell:
+    description: |
+      This property specifies if the battery is used in a dual-cell series
+      configuration so that the correct voltage is presented to userspace.
+    type: boolean
+
   cellwise,monitor-interval-ms:
     description:
       Specifies the interval in milliseconds gauge values are polled at
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
