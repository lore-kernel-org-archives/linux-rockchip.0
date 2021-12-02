Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BF3DC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Dec 2021 16:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8iwV3I8javRpHUi/cwoaUmOHl3c9hhLx4K7iczEWFuI=; b=i1ncxF+fgJgyNv
	8ia4vGlXwzdNQjoOGHZ8oU6eLzpaX1HTAD/xYO9OkGXwoYsAtM53TNnjXIM5jTt0HarB+y35Iijpg
	1JEbTjeO3a6oqgzv2lCyYVARIF8nd/3sHIF8xxerrZh1JC+2MeZRc78VCeTtRlrxetHZyBybmy1EP
	X/EvKdE0ogcX9EQCux8jaNPfJJtflo/rgzLhv4vIxQqxTGJCz0l9Q9JRqFQxvtGx1LwvYLPYVGsJG
	4aB3eLjisYDNzhauiQLCb03zxLx8kljl8vIGFDLq/ENBEA/WeGBuZYD/RNyFLgqxETkSdD7VcDJZS
	IZXIS8vXfiDCt6DBJLPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mspDe-00D3jh-MY; Thu, 02 Dec 2021 16:46:02 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mspDb-00D3ic-U9; Thu, 02 Dec 2021 16:46:01 +0000
Received: by mail-wm1-x32c.google.com with SMTP id
 az34-20020a05600c602200b0033bf8662572so277521wmb.0; 
 Thu, 02 Dec 2021 08:45:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d00HfC2LuL3eqH7QRBDblitkpEVvyUj0s9L0tyziXIU=;
 b=Wm7lnVEoUEiY7Ss4nG9mMLaNx3/3ce06ypFZStI8wxwzMPnsb+fOwbovpTo+HK/WTq
 CGp0H1cMuiFTzC+16c9LVHhAjLJ8fddwRmGlYbIsv7CW1S6JUOf/afsUR2lE1aRe/W2A
 2K0WagPgIJPOKhJCMfAejAfnhfXlLvj3ToGe+0aM87HHBOgrVnsM7iEIx6naG1LeVmPw
 FlRA8QAhnNnN+uniFIme0Wbdyp7spcdbVc3uyFDT81sIy0C4v/y26vl5R7efvXlpmU+g
 ToWuGGKBm/zFGd3Y3r9/mRKzUNeIwW9ags3lzpeUhvQVJM+MC1xXt9kf9iuJsjm2qfxB
 h+4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d00HfC2LuL3eqH7QRBDblitkpEVvyUj0s9L0tyziXIU=;
 b=dJhZ+QkNXeWAwQsQnWj/bpYL3I7Klbc2obgEPqj/8Hnq4UNNQGe6v8X1WuIBDKUHd+
 UsW1eq4CbslwZXAZPfR35Wb4EfRNhDlsnwZmQg892M25Rs2CJMX6hrHmP6uZmdXqkPGt
 JjRA+1IYppjmz0xLiP5B0fyQansDl18ZiVnSlvo9Q62b0Lp5ImJeY2eqNSCKn0H45jyP
 QMhFhLAU3zZurmHaZVNd1FdZkfLMoGG01/CMV+Nk03BifDfNeVTFnw/KisVfLt9A1V4a
 ru38knuoVWqj66FBrhZWISEBemEALH1KLaPkifDr5XGo2kh3EBJPmJ4LTf2T3IgssKri
 NBKw==
X-Gm-Message-State: AOAM531nel81g5APeRPUj1eLO+g3s7G1UhYnND/loJthgZeA1XDaqPGk
 3jd+Iz0mrtBIvpZIHd2iMXs=
X-Google-Smtp-Source: ABdhPJw549cjukoD5hOYyqCBWLw4SEvxL5SSsJaaSXbEOlQUUAGGfkpzh/u4BL/eTYmBUmx+Mc2Tmg==
X-Received: by 2002:a1c:43c2:: with SMTP id q185mr7520904wma.30.1638463551408; 
 Thu, 02 Dec 2021 08:45:51 -0800 (PST)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id q24sm2512096wmj.21.2021.12.02.08.45.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Dec 2021 08:45:50 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: John Keeping <john@metanate.com>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, John Keeping <john@metanate.com>
Subject: Re: [PATCH] gpio/rockchip: lock GPIOs used as interrupts
Date: Thu, 02 Dec 2021 17:45:49 +0100
Message-ID: <9812574.z3kqYUtTCC@archbook>
In-Reply-To: <20211202155022.2972779-1-john@metanate.com>
References: <20211202155022.2972779-1-john@metanate.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_084600_004627_5D5CC104 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
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

On Donnerstag, 2. Dezember 2021 16:50:21 CET John Keeping wrote:
> Use the standard gpiochip request/release resource functions so that any
> GPIOs used as interrupts are properly locked.  This allows libgpiod to
> correctly show these GPIOs as in-use.
> 
> Signed-off-by: John Keeping <john@metanate.com>

Tested-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>

Applied this on my Quartz64 Model A (RK3566) where I currently am
having a play with some SPI devices. Now gpioinfo correctly shows
the interrupt pin as being in use.

Before:
         line   3:      unnamed       unused   input  active-high 

After:
         line   3:      unnamed  "interrupt"   input  active-high [used]

Regards,
Nicolas Frattaroli




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
