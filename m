Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B4BEC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Nov 2021 02:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2LEQbGygUdQ0NP36qQ1XLFbB4oi2PnCUbL/3OeUIHK8=; b=Fg5OJ8fzBmYWTJ
	CPya+YGMUqjmEsmB5lO2AliJxbM+aoMbsTTrauDpGJ/dj9KF+1DO1Gd1k3t62sYQPjQQyF75ArkKd
	vzgvw6d9wcbeikXJIvD9lPpDrbHqMGOQA2KdA2DPb1Edzmnt8TUknCrUEoj2CAVl5Y0uSFSWhTMQQ
	UBqTqFkt3dO/8pIrqBTTJI5C45sxi3T2Wu1CwSauIFBxdCbJCW3Ata2FTMxuYysiHfx8/miU8VDa7
	LCPJOb2Y/Fi7uLJijH4dt144PqjPs9me4dVs4X8q0VV7Lm0N+EMLvPkOVuUMqFUcYZVnSWPntmxMh
	BRVPKzypWyOX8pdQjACA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mrsUD-003HkO-DF; Tue, 30 Nov 2021 02:03:13 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mrsUA-003Hjw-Df
 for linux-rockchip@lists.infradead.org; Tue, 30 Nov 2021 02:03:11 +0000
Received: by mail-wm1-x330.google.com with SMTP id
 n33-20020a05600c502100b0032fb900951eso18290748wmr.4
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Nov 2021 18:03:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oNAyLgnuZABX+bMA51k+CzRNb1OQiDBReWGxpwrvkAA=;
 b=ESmty3TuZqmk8BEd9I61fOy+QGqtPAfmBTZAQxLblWJkEazUKnzIJQP4TnVikuDtC9
 7ZY6nXEbueVbMMdm4go2LwFHT81DXrY6uIPH6mM63PLILkBr0tY5MJ//ftbQ4KlcalaV
 eHmWVrT5HLMFmzGEaQPGhjhrrfVbaq0aQZKBRha8quIazJEIq+p+3Igi/XBmsNNwbVte
 thYYLn4z1Kq9cwUirUkdM3+a9dg/lMftgcrbxJU+U4jNG0MkYPhPZ4WSHasIw8MlZs+S
 oLUNKjqWrz7iFKtwladsdT07nHOCFJ+cM8mMRUlr0PAu/TTUDz9txkZFeYd84x8iM8WP
 wSqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oNAyLgnuZABX+bMA51k+CzRNb1OQiDBReWGxpwrvkAA=;
 b=A8Gggj1i/mP9EnZkKN9ZW+y2WNrXWlkBqC4UZW+wjm/juogsWiT/ow12rdpXWRZMPf
 V8HVAkt8x9w4bfAokCmFWy+8VVcbPEIELMCYV3ThxiJv9IIFkA2xGpLIG4aEEoIjpYoj
 UhLda244ljpCfb0UGE4BQngNrZ0mDT0LNu5f4mk9dWr8Enz7ri20+bI1T5zmTUiew8YA
 7vaU/h79VfM8Zf3ZQKTtqfZEGCYUQqvOug/Fxc6AqmWY/0iLRCh69m4JTP7u8r0B0HIa
 H/3Qrr5G2t895PSeTGDPzHZoO3LIihZcomWxbt6gpL5842hTSlEVBMAownNFP8WkN5MP
 ppxg==
X-Gm-Message-State: AOAM531KRNV1uj3LqC4MBmP3vfGvRYpQmQCDQf6RDsMeeg6tpb1kOy1v
 vBGhHXQJPzpLLjMb+Y7TUoCPGGmHf7I=
X-Google-Smtp-Source: ABdhPJyoyZIn7vYgj4XrwOEkc0ib3WyviLwl6D1rFwxG20nXGR+6JZAT3PPQpF9WiXhUbOxMA4Dcnw==
X-Received: by 2002:a05:600c:221a:: with SMTP id
 z26mr1871268wml.20.1638237784953; 
 Mon, 29 Nov 2021 18:03:04 -0800 (PST)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id r17sm983950wmq.5.2021.11.29.18.03.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 18:03:04 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: lee.jones@linaro.org, robh+dt@kernel.org, heiko@sntech.de, sre@kernel.org,
 maccraft123mc@gmail.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Chris Morgan <macromorgan@hotmail.com>, Chris Morgan <macroalpha82@gmail.com>
Subject: Re: [PATCH v4 RESEND 0/4] power: supply: Add Support for RK817 Charger
Date: Tue, 30 Nov 2021 03:03:03 +0100
Message-ID: <2759402.V8G6Gt6Xmj@archbook>
In-Reply-To: <20210916194208.10387-1-macroalpha82@gmail.com>
References: <20210916194208.10387-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211129_180310_517732_515FFADC 
X-CRM114-Status: GOOD (  12.16  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Donnerstag, 16. September 2021 21:42:04 CET Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> This series is to add support for the Rockchip rk817 battery charger
> which is present in all Rockchip RK817 PMICs. The driver was written
> as a joint effort by Maya Matuszczyk <maccraft123mc@gmail.com> and
> myself Chris Morgan <macromorgan@hotmail.com>.

Hi Chris and Maya,

Gave this a whirl on my Quartz64 Model A. I noticed that this will
happily let me discharge past voltage_min_design:

 $ cat /sys/class/power_supply/rk817-battery/voltage_min_design 
 3625000
 $ cat /sys/class/power_supply/rk817-battery/voltage_avg 
 3381360

Is this normal? It went all the way to under 3V before the
board finally locked up.

Does the minimum voltage not affect some sort of cutout on
the RK817? Does it even have one? Is it the driver's job to
do something here or not?

Regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
