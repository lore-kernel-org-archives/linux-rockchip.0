Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7046EC25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 07:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gUV5ssY+bYsqMma2DLstG/cQKYBcHitHnwfEPGHHyXM=; b=lMYlZNWrL4LbsV
	6ObjXibExnk2xY5TISvWTKOySrGDUQwlWtXh9050u6T1c/pS6wZ0Gku6ablGSRRjKGF5y9BOJGWPK
	bWT5VUqosgwRA91lBFD8t47INRuX0+foKFaxxIs92qFSI8h45lReI90glILaNnKo843yAELdJ650S
	lSo7Hoa2h4wlfrV7teDLY2996S9qi5L/h0fE+3A8P5nTZd1igeEIX69GAIFBXI3b42KWAfMkkTgrh
	HcTqyTSoTcrFWB7I8QW5ppavfk388NxFNeRdl8DoPdTy22F0o1tkyehrIQAGfMjeZWyoe7eobWt8F
	4MeCpjQgMNj08Xvil7Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEkm1-00000004vus-0avn;
	Wed, 05 Jun 2024 07:09:29 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEklw-00000004vrN-1GrW
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Jun 2024 07:09:27 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-57a32b0211aso2234116a12.2
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Jun 2024 00:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717571360; x=1718176160; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sQSephwmytgo/YLLaqWzVbfXRJtJuGRKYodF45aiwbI=;
        b=kIs1CCq++9r0dAUbcEmdOTMzzHdQ+xmbeKX0k+6auVS9osevZxjiCeUg/o3CB9KkYF
         y16RWt9E81vB5uHdJwILNHtivbaMuuptTBsOOFiOG/c8yVgJCvOJAJtwGRaNo2SK6FKQ
         xEH3IG2l/1U9cgAfNchBNaCZXqBjK9VHHOwqyrA6xNN6tSKJawiEKVQmvVsfQPz032PQ
         32ixN4WFvaJBs1UE/uq9fSCKItBVMJFAFneQrLW+D9KIhFf6l+S4GoIK8T1ySpj82rdX
         yBODS6C5zcq8KmDw0zSK/TEOxlfCkrX2Xn3wDgGOuLcEgSAKq04CO0VdzmdZ66j8Zkzw
         igxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717571360; x=1718176160;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sQSephwmytgo/YLLaqWzVbfXRJtJuGRKYodF45aiwbI=;
        b=CCiRP/bVw7+YxvyiLNUFfQB5+Lg2uluTuKZ7QMI1qe5oI04pkXuP/XP24s4ZYmRCON
         XSPG5rreqiNQxBj2ovdKF+g5inmTOsEz23Hta4n5sbzBAKhJ0Kcury8WsZfV1Dn+QLad
         OQXu7f2sqEqUG3iUksU0HZrBu+VlSC9TEMEMQVgpZZnw39deklVhy1gPpt2b2O5IxOLe
         t64/mfLWBezwCZ+ucH/nQTNRSFoXZCM1pqSGKlN+m/OkzaHGfcEwNOiOYd+F623IcmKP
         8EPNGtrTbWoZdGaJ2yWXEZdWZunZ20g4v9DPElJ9RQr8aNFMZBZiXv5uCQGD3de1e21L
         2Yyw==
X-Forwarded-Encrypted: i=1; AJvYcCU7pRQannnG7sJHmAGeWO8VLC6iJ+k5810VxVXQDDwnt6DuJnrOSAXNdvKeZru6dumMN6+Gt3EWPB8yiz/3ma6V2NTTSjcL5ThKM70N4GmRs93c
X-Gm-Message-State: AOJu0YwO5g93FPgp2EZwFwN8d3EQrbHe4OzppHRMS9pAE11SipifHCx0
	xG8NzvGnzQTGe7y5TAh0/Yfg+f6m302krEdvJ5u6KGZ5tejMAHctciDdcB6bR+U=
X-Google-Smtp-Source: AGHT+IE7k9799F3Xk82hR/6XkZaITtGSnHgKLu6xSA11pSPaaMg0gh4dvJQRX0RwV80Q9FtYUJBK3Q==
X-Received: by 2002:a50:9e62:0:b0:579:cf9d:d6a with SMTP id 4fb4d7f45d1cf-57a8b6b88c5mr1085082a12.20.1717571359412;
        Wed, 05 Jun 2024 00:09:19 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a35e86c36sm8560156a12.54.2024.06.05.00.09.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 00:09:18 -0700 (PDT)
Date: Wed, 5 Jun 2024 10:09:14 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Dmitry Yashin <dmt.yashin@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Jianqun Xu <jay.xu@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] pinctrl: rockchip: delay recalced_mask and
 route_mask init
Message-ID: <094fbb0c-099c-4839-b2c5-162775e35710@moroto.mountain>
References: <20240604141020.21725-1-dmt.yashin@gmail.com>
 <20240604141020.21725-2-dmt.yashin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240604141020.21725-2-dmt.yashin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_000924_381996_03945FE7 
X-CRM114-Status: GOOD (  12.49  )
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

On Tue, Jun 04, 2024 at 07:10:19PM +0500, Dmitry Yashin wrote:
> For some SoC's like rk3308 additional runtime setup needed, so delay
> recalced_mask and route_mask init.
> 
> Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>

This sounds like it needs a Fixes tag.  Should it be backported to
stable?

I understand that you only know that rk3308 is affected, and probably
you worry that other devices are as well?  Just do your best on trying
to figure out which is the first commit where this bug started to
matter.  Any information is better than no information.

The commit message should say what the bug looks like to the user.  Why
would a user want this patch?  I can probably figure it out from reading
the code, but I shouldn't have to.

regards,
dan carpenter



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
