Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C644BD10BF6
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Oct 2024 10:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Az9wh0IhSJU1jGEG/aH7gbcARXqIEKekBzX/jJHnuVA=; b=rTQ4WvnrelW0WP
	D8Ux4kya0SHqVG/eJkzrdR2uIsA+PIUVWb09MLQf4VfXgyJUa5GzyWRIyw6AVkyL5OmvCXoATl2MR
	W+MuIGnnV4FbaGDE1jVSvHOAyXSfMh693FD/FPO6Ci5UvunO8x4T94TMSMAbiTW6DiUUE9u52jDDE
	7IJ1hGXcq/iNqGdIwSgHOlA2hqI2EgKZqPXoO3aRz7dYaV7gCmkJL0hgFqxI+XRVLUEFF0/EQOWgG
	prAcLuF5GThG0tCf5//VU4BCL+sC8znSsVEB4n8t9W6N7S6agwHmZ1syc9u6DqimLWC/1ZX9KUra9
	IzEC8poUoOpHBWdP6Tpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4ddt-00000006Kmd-2JpB;
	Sat, 26 Oct 2024 10:03:33 +0000
Received: from mail-oo1-xc2a.google.com ([2607:f8b0:4864:20::c2a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4ddr-00000006KlY-0ZUf
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Oct 2024 10:03:32 +0000
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-5ebc0c05e25so1549735eaf.3
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Oct 2024 03:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729937009; x=1730541809; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PtIjTDy9lDpuU0/YTK/D0NL0z5C1zzHhHW/wK2u+E5c=;
        b=VehN4zzAXFclmnNb+j2D1CNgUy8PipQlup/rsEEyLfCiyN7vdX3v1rCeFU3RE0yC+C
         sHsWYMB0zt+IB6cIf2RCZD7bWOaKgLPG5guSDaOv5x+kTIweDVIyvysmTQEkoGi0Xu0G
         WfVTKaxaXl7LBUwUrAz4Fu7JFrJmoZR9Rpucj/A9K7omSNgCF7Fpwo4oKvUMTaJl0P4d
         TjiZSFO+cYkSqNuybfkKTlSHkTlhdVoxamLCvGwIt7/BSdVyVzukvArhSoMSjNaiCuU2
         fMyPM9rCAsSGeGpXRlYLDhj7Pr/Jb4uwl4fRGXaxOj2CcmxkTVfo1HkW41chcoun+KRF
         jdFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729937009; x=1730541809;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PtIjTDy9lDpuU0/YTK/D0NL0z5C1zzHhHW/wK2u+E5c=;
        b=PGeH2KkcsqjWsbHDHhq/+TlhjWG4Ko4M21PBrIyR2FnBKjTGl3nR9J6Mxa5ReiOhOG
         nN/v/VGyDmIlCrK8TzyyPz75hO6GFc9dF9/X9RsTzSsg4dheWyDIrcWBejpXAYbbTlVy
         O6274kqunNrO4bjSWcncfCiss3Nv6IkTkCs2mfv5U/vj52NC2f9UjX5ldZWyMlvvaW6/
         0Z5TInc9IGHGtiHH9ZOFXpWG9+kNmDjOBRNGkE+wsvtWccIRKjDX52hy43VzR5Kw/wMS
         Gvwk1TJuHu5ZsrLVx+x8HH1hF9hUYNECdlwedYXcIM2OfGbazghPY2uddVRzFk4/9aeU
         bWLw==
X-Forwarded-Encrypted: i=1; AJvYcCXDChbu8GdQ2Mzh6Ij/QmtXPBELmIqmJLyTptn4lhCtINxaIZiPlJYIYaWZt/ZYF6Qx565S+YTIDz45EwuyLg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/lIQFMmJkfAGTvv/6K3ldzCc1nD1uEl2KQM3ZG3G9UYBRHXL/
	o81gQvUfLei0dUQwBwDctkLtSfmpdX3jABR8NB6fBZXt4SJw2S3M
X-Google-Smtp-Source: AGHT+IG4WrMtvDsnH7WRDE8qNOHLKvxRAai+FUq2hHPrlNhw7384g6T8WhIj4lR/pX/XhXEYQNegiw==
X-Received: by 2002:a05:6820:541:b0:5eb:db1c:a860 with SMTP id 006d021491bc7-5ec23aa5cd5mr1198702eaf.8.1729937009306;
        Sat, 26 Oct 2024 03:03:29 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:cefb:5eea:7da6:3c6d])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7186165841asm632243a34.48.2024.10.26.03.03.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 03:03:28 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Ondrej Jirman <megi@xff.cz>
Subject: [PATCH v1 0/15] arm64: dts: rockchip: Add Orange Pi 5 Max board
Date: Sat, 26 Oct 2024 04:48:16 -0500
Message-ID: <20241026100310.52679-1-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241026_030331_195125_34D474D8 
X-CRM114-Status: UNSURE (   5.04  )
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

The schematics have been released this week for the Orange Pi 5 Max. [1]

This is another RK3588 board from Orange Pi.
It's more compact than the Orange Pi 5 Plus, so it doesn't have:
- second 2.5gbe
- HDMI RX
- USB 3.0 hub
- USB Type-C
- Speaker Amp

Instead of the M.2 E-Key slot, the Max has a AP6611S with WiFi connected
via SDIO, and bluetooth connected UART7.

http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/service-and-support/Orange-Pi-5-Max.html


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
