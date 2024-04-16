Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 248F8C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 03:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xw+IVOGITnXMIkGuFsZOfXeOTtZr6FtI7BGEeRZwg0o=; b=ajUugQSNLnYQXv
	pWrPnRwVzMYzyULc3VFOro2EwyGpTLvSScrYRRVB39ITnheevK0Uvwby7s6cn+EroFTssyO6vqhWS
	AC/hppqp4lUP+O1anLReGsW7Mxre3kQ/epdD++hKK91olQuJlivSV6TDcarwMULv71+DoKJQNGNwJ
	oXl3howbFxU9HcYGFKdWuGyfXLiDXMD9GE9Kfw9ITx9b07Tmht3XV8fqZqyH9NHZoyksj6Bg/9wel
	7i3RoJTQCj+DPvk3jKajcxxhDUOcrZV4YXU74qmltKTPLvX/hSRG+s+l71f9ellgj8KrKD3HABBvz
	wJcMwm6Hq6lyWXHTZxZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwZ5E-0000000AbMZ-47jG;
	Tue, 16 Apr 2024 03:02:08 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwZ5B-0000000AbK7-3fGR;
	Tue, 16 Apr 2024 03:02:07 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-5d3907ff128so3132155a12.3;
        Mon, 15 Apr 2024 20:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713236522; x=1713841322; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=goyH9+TLCFLYzjM6kwvbHz19xxuQz4u4EiT1p7hK700=;
        b=Fk1xDfm1/pM2AePCbPzZEdGYti3elexJHvANio6iY9rKTMfoxjbciRhmZcr6eH2BEQ
         Y82woLqzpGC/f13kit8pnB7gtTGqENbPce4gL2rEXRGz0F7wX/WR0QheP8HaZAGDM99w
         m41XeOHKOhC7QT8SvHsMhXPp0oy4Rl8kkDZ3xdNGdhUyMmdYlDEtTDaKDYxrZdNYgfHp
         jatfEJ5/ptoGYW55QuJrvNnYs75IvL0XFlsQe7ib1r+kVWJ6Vn+SK3qhd29gA6n5bDhy
         kTqCG3xYCbRbnafpF/nUD8SfRDHWynoqBwTq2LjaxKFujXJ+bjOHpYYZKlVZ8cn4Y8lP
         G/Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713236522; x=1713841322;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=goyH9+TLCFLYzjM6kwvbHz19xxuQz4u4EiT1p7hK700=;
        b=JpZbrLDStO0OypzZNjc/SyvdY1M8kEkrZog2KO8W5HfAHBAUg7Gjy2dUL4lZoZbiU9
         FPmU+JJR2hHQYKUXFF0LEnfu/5yTnL1R+doyqRmhz+9f4+HzOlYXb9Glpcj/gd/6ps6k
         J04Nyt0e6UfoN5kRJnIQnayzL6iwHwspNSzS1LVwGHfnsjduwI02ns2iJUXG+Oy8O9zt
         QzBC282nM0/W7kqpD7HAaQUWpNW0JfPWIAX1MUUzPXC/oKVWXoVroO2i9WW7s0VtRbBN
         MfMHoOa1Mh4yVAdui/H57qB7kfevNYdR4Iq9hq8zGcKS321LE9bKx+Qp7gIX09lxruL2
         7LfA==
X-Forwarded-Encrypted: i=1; AJvYcCUWKPq8wib133FDBnbwWlarVxAIPpA28YcWb2Uay6hQkvKEtcKWNWvMAm9AnmJmBKl53UG3J4I3iX+oBVESOXU4MygehRLgzRqr162CCLNeguELb5HO5jMbi2YZ8+Og2zKCmeGtEPsWnrYDsJqSFuDJxQ+ZzHAGnYA=
X-Gm-Message-State: AOJu0Yxr0F1Jl1D7hf1n/ssYtM7YzFdYrEgs9fU6nWY5LPV0MOFgjOL6
	hVYMV4murhR8o83rLBk0HDsAWQnBA2StaS2KzXxvjrekoFXD+rkEIYYcpWWia3Q=
X-Google-Smtp-Source: AGHT+IGoAT+ooiCtpCFxy4xAqYZG4G/w+O0USbguVhVRr8kBlygkh/RDH21n2MkgKqwLt4lC0frHxA==
X-Received: by 2002:a17:90a:8b05:b0:2a7:40ba:48bc with SMTP id y5-20020a17090a8b0500b002a740ba48bcmr9399013pjn.6.1713236522273;
        Mon, 15 Apr 2024 20:02:02 -0700 (PDT)
Received: from localhost.localdomain ([221.220.135.251])
        by smtp.gmail.com with ESMTPSA id v9-20020a17090a458900b0029bacd0f271sm9427284pjg.31.2024.04.15.20.01.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 20:02:01 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: robh@kernel.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au,
	weizhao.ouyang@arm.com
Subject: Re: [PATCH v2 0/3] Add ArmSom Sige7 board
Date: Tue, 16 Apr 2024 11:01:51 +0800
Message-Id: <20240416030151.311231-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <171320634254.4749.2865905152184927129.robh@kernel.org>
References: <171320634254.4749.2865905152184927129.robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_200205_941780_9D1B1F71 
X-CRM114-Status: UNSURE (   6.77  )
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

On Mon, 15 Apr 2024 13:46:53 -0500, Rob Herring wrote:
>New warnings running 'make CHECK_DTBS=y rockchip/rk3588-armsom-sige7.dtb' for 20240413153633.801759-1-liujianfeng1994@gmail.com:
>
>arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts:44.20-49.5: ERROR (duplicate_label): /leds/led-0: Duplicate label 'led_rgb_g' on /leds/led-0 and /pinctrl/leds/led-rgb-g
>arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts:51.20-56.5: ERROR (duplicate_label): /leds/led-1: Duplicate label 'led_rgb_r' on /leds/led-1 and /pinctrl/leds/led-rgb-r
>ERROR: Input tree has errors, aborting (use -f to force output)
>make[3]: *** [scripts/Makefile.lib:427: arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dtb] Error 2

Thank you for checking this. I'm sorry that I added the led label since
v2 without checking. I will check the whole devicetree and send patch v4.

Best regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
