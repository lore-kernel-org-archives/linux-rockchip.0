Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D0C2C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 15:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sxArNaIqwKdeENCJ0TbDimDHzvgUb9UQOw7M558vl34=; b=H2tgE1Akc4nVss
	X1iJ3jLV+KruQpoGPI+Bm+8XJSsVyVb1yk3E+Cu66DrmfLUJ8jTpTV7eFPayfKJS67uXoj2Y3dW8t
	ywKk2G0vCoeySoyklZrdhNDE5b2Ih8LycldRB+cUgUl9KzP3ERrr8QisovzhYe41JjVgKGNfEJokk
	YxqQ+MGcnEPkULQD0EjHO/voOuoHWgBke9Uxu+kVuJvA3LzGMQD+1mkDzCloeShwdorUFqT/2e08n
	MfRMtMCIRUZY7wRAiZo8u+CdTcTE/dZ70Ej4CGPTp2+6FxY16t8thwHflA23E22+wbm4dGo+EAlPl
	J1O2Fq0CHWK6qthVkMgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o18Ax-00A5YN-DL; Tue, 14 Jun 2022 15:09:51 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o18Al-00A5TR-Ma
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 15:09:41 +0000
Received: by mail-pg1-x536.google.com with SMTP id s135so8744547pgs.10
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jun 2022 08:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=OCjtBXke5NyaFriVJBoaZn9Z4g68RyDeHdJ5UXQYWpg=;
        b=jugy91NBZPZIHcuatVTSW4OX8xDcs/D/JLBqIjpVGI2aEHe26RryjY3Fh6tDtAu0bi
         a4qZKyya+E1jORA/unTh2BMyT+HD0qMxvY9Dv5AwCVx1B1aeFHMfSk81C1loimp4JsJd
         TunUFpi0c/BK9/sYM1P/O6bDPDYuQFemucwSo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=OCjtBXke5NyaFriVJBoaZn9Z4g68RyDeHdJ5UXQYWpg=;
        b=DntX9La1VcYye5Zdq3g6uX3OlzbCsCbyxDxctdXYTHlY1x35nVTYpzz2vGc4Ro8eCu
         O91pHcfcyTC5V+MIE78B317V+MertbQealPu0w5G6GdQxerVylB02/NjkSaxlEL2G3Au
         k4nzlNAmnlABApbVl0IVhAPgywkAZ59sYciTfErmnYKMFee3Gm4h6VEukUCeHXJHUXIh
         s2uTUJAny7gx6LvIItHbgGh2Quy7ny7u7OssU4liGmcu/iXA1/SPBU74MEaHPJw/5YxJ
         8KU30fd5yx9nTKzPLPx9AIRSiXptswTX4EKFXMWKhjDMvPlF6K+Ecla9eo0tdn8vP8g1
         shLw==
X-Gm-Message-State: AOAM531T7ABX4AQJbGdP7LRhWt9NMdE1ohAANAf9g0OLkt1ey/Pvneq1
	SwTK+z+4mP8HttKMofhN2iLHCw==
X-Google-Smtp-Source: ABdhPJwrhsuNyNRt0k0cRWz03PtNgbgQ8JaGo8vAgHkShQNZIFRzIQkmVeLaecnomn0sdyLQsO5iTQ==
X-Received: by 2002:a63:a55:0:b0:3fd:e492:354e with SMTP id z21-20020a630a55000000b003fde492354emr4877729pgk.416.1655219376838;
        Tue, 14 Jun 2022 08:09:36 -0700 (PDT)
Received: from google.com ([240f:75:7537:3187:e483:9a18:bba3:a0dd])
        by smtp.gmail.com with ESMTPSA id b10-20020a170902650a00b001675991fb7fsm7330052plk.55.2022.06.14.08.09.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jun 2022 08:09:35 -0700 (PDT)
Date: Wed, 15 Jun 2022 00:09:28 +0900
From: Sergey Senozhatsky <senozhatsky@chromium.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Cc: sunjunchao2870@gmail.com, jack@suse.cz, viro@zeniv.linux.org.uk,
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
	pmladek@suse.com, senozhatsky@chromium.org, rostedt@goodmis.org,
	john.ogness@linutronix.de, keescook@chromium.org, anton@enomsg.org,
	ccross@android.com, tony.luck@intel.com, heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, maco@android.com, hch@lst.de,
	gregkh@linuxfoundation.org, jirislaby@kernel.org,
	suzuki.poulose@arm.com
Subject: Re: [BUG] rockpro64 board hangs in console_init() after commit
 10e14073107d
Message-ID: <YqikqHUv51PXOjwq@google.com>
References: <Yqdry+IghSWnJ6pe@monolith.localdoman>
 <Yqigw6vu6RYBIqHK@monolith.localdoman>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yqigw6vu6RYBIqHK@monolith.localdoman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_080939_746896_9DD63520 
X-CRM114-Status: UNSURE (   8.27  )
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

On (22/06/14 15:53), Alexandru Elisei wrote:
> (+Suzuki)
>
> I was able to boot the board after applying this patch from Suzuki [1].

OK, so the board actually boots to panic and the issue is that printk
does not flush panic messages. I think Petr has a patch for it.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
