Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4BB4C2D0CD
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 May 2025 15:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3PihVmzMCrmzXs0x8oZlvdX4m3IONPftaFKdfkoauaU=; b=el14U9xOQatHX1
	Ldj3DVU6/7wxqpa6VuEZyIFO+xsUUUMvwz5C/WYDDO3NmMZaS+wWlEz70YuefrNbS3NiXzcUf50Ck
	2XtPp6R2b5i5j2+V9YI9MiYDqnTSYXiRKvAeESblbLQUz2NTI4f5Xe9uE7vuEpXruqjk97dKWixbC
	WvD6wWvHzIeyNZ9px1zkxKrkvsyxiDu8lvXonjAPYiu52mzl9yBESIwsf194+Q44zYYj8ioVFFDyW
	Xh3gzpfhCnEEscghTcRQUZqcc1Bbbn4R0eU6KjRJUBMgricMMn7/6QENYmAn+kNIs+EkMCDaUKTf1
	WR9Rej/6ImEb9KTUzMvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFabk-000000014Js-4Bs4;
	Thu, 15 May 2025 15:34:53 +0000
Received: from mail-il1-x12e.google.com ([2607:f8b0:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFabi-000000014JV-0gZ4
	for linux-rockchip@lists.infradead.org;
	Thu, 15 May 2025 15:34:51 +0000
Received: by mail-il1-x12e.google.com with SMTP id e9e14a558f8ab-3db6ddcef4eso8742925ab.2
        for <linux-rockchip@lists.infradead.org>; Thu, 15 May 2025 08:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747323289; x=1747928089; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=R1oUzeNn3PSQzFXS/GTf3c+fuc8IUfYozI68g4wCl1c=;
        b=hlf6OJTEIism1+br4LUrLuaLk02OKAGBIjopWlpttLQPkK8NflWzKNGe1W6VwCAG3V
         6SNi2KxZbWW3OIr+mnJcrCk/3TU7u05U4PXYFM9lrOBoeii0olRoWNtVs+BwXhuQib/8
         +SCjT9liL4dx0W85/9rLRm+iUjmzf7awklUo8LZJR74P/0SjXzxamxbl6xgFNEsMtFRA
         j9QML4tCNNl8G1Z1hX8qzCgCi7cbE7jwHv5wKDZdLrnqSga0tHmjKqH02pHHLeX3Zcbr
         sMERBhwKpsYvjPsEMMZpc3BP0Tj3WfbFyBaRmHB3EMAnyAyvRGfVwViOxGbBmLg+k0Fl
         UdRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747323289; x=1747928089;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R1oUzeNn3PSQzFXS/GTf3c+fuc8IUfYozI68g4wCl1c=;
        b=uRkfBAuiVo6Vgs8x/CelFgh+o1tLjYIPurBiGs+GOrdcTGQseIT1WWdiEkAROYQRe5
         kPXVSdm+m8LI0tX4BiALGp6xBZWfWMtDPr6vaLdc75XaX9vru9h+QWWosTu/YDKPM5sc
         G07dCrn6aEwo/cd7bHxXVVG/7qyrRmzIs9Mr5DO3HE+uxIsrHAniHAjYLx3Il/TZZHR/
         kQ+4P4xbAWwHrTil4IbIbVQtwJFxKCfubMw0AqRpGjSvM+T5pisjCJURsyIUFfwkjR0D
         y+/z14r2sZA6y3aRa5W2cvRW1vIovu9RLpObFjqonkZS68LiONjivgYN+N8OEtNU1c+Q
         ftmA==
X-Forwarded-Encrypted: i=1; AJvYcCW+bq/L/v8NKAI8Q03/070Uks4H2iZTHIHyTkRiUwxrLfC2OgLtCq1v8sbuqRD5OOJ92RKPy0BdvfVbOomkGw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzl1cwV1+wsjKmWqffmch+q46l5TxgwlwPax/y8Uos2B6Wte7ol
	j13buxQ5qabqve6UCdUrVu56qHBIdm3NvIIVyVlnHx3JCnX55sfu3ucYXK1cMDN4dku6GsKjy6n
	rKYI3wabe6ihug+CyQE/4uTGK0KJx0CtTEqVAO8E=
X-Gm-Gg: ASbGnctHlxaXPD6wO3jZu5S7A7XLbGxOjdVvbOIvsMYYnoeIRCzIuCDVMNfA+5N996V
	pgs4l1QUR/nFwkfaOSWF8huaQGeOc1pRnuzISr3zk3CaBwK0lx2GTiMFO24QHujYv+SiMQGm0X9
	RYoOf4GBp+AVEdgIlEQ2De7qBmL1W7K7c=
X-Google-Smtp-Source: AGHT+IES9V8lVTTvWICKfzxYu+CVMAq48KVI6mYqwRTqXoil9/mI8MFLo8buShxdopzagn4Vwo06mZosFQzi/+WSNBc=
X-Received: by 2002:a05:6e02:3611:b0:3da:7004:25c3 with SMTP id
 e9e14a558f8ab-3db842d965cmr1447895ab.12.1747323288642; Thu, 15 May 2025
 08:34:48 -0700 (PDT)
MIME-Version: 1.0
References: <20250514173856.3677454-1-joseph.kogut@gmail.com> <9103406.VV5PYv0bhD@diego>
In-Reply-To: <9103406.VV5PYv0bhD@diego>
From: Joseph Kogut <joseph.kogut@gmail.com>
Date: Thu, 15 May 2025 08:34:12 -0700
X-Gm-Features: AX0GCFtar0G-IXOcyvduUi1LOxjuzJw4BSv0FtZ2_BdZ4SN0PKzbJLc94dikmjI
Message-ID: <CAMWSM7iy0y=rUgok4XL4J5DDD9haq=9sLa-mAzhiLc78RRa1Wg@mail.gmail.com>
Subject: Re: [RFC PATCH 1/1] arm64: dts: rockchip: add Radxa CM5 and IO board
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Steve deRosier <derosier@cal-sierra.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250515_083450_203708_C7B48381 
X-CRM114-Status: UNSURE (   4.57  )
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

Hello Heiko,

Thanks for your time and feedback, it's much appreciated. I'll address
these issues and follow up with a v2.

Best,
Joseph

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
