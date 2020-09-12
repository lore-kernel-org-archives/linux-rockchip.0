Return-Path: <SRS0=MDEE=CV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A2FBC43461
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Sep 2020 11:28:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A1DEC208FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Sep 2020 11:28:03 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="WaoWISCu";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K2ir22V8"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A1DEC208FE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Yl/vMeVC7IzkiDoVBD8Od6Z/nPcQvhj7T3lrwv1G8DU=; b=WaoWISCu7dGXfafR8+Sh0Ycee
	3UJORHd9KAn75Ua8pPAXTSQQrK/ARWTH856hCSPXBPJ4Fnapr5VIgiulEtVDS4cb78rvcXOrMXh3I
	1S4pwLvNY3Zb6qjq006m7A/c4Q/o9D0ZnppJZPaKlwE/iGsf4ScGogfysL8otuQkOk+9lOuNSlsor
	/novXI/JdSx6zNx7woWegXDyhPAParh+fxw3ceoZlDUDbwx1zIHLGJlrxRfQoqRaZ096KffIqFmSM
	1FvO3lYx6alcW8KV/ixrFgTndG1rtXL52+uXViV0jAKV5Qgf8P/oGU8U1YjI63HieB2az1o9TMJEm
	LVaXbcC2w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kH3hG-0000p7-Vv; Sat, 12 Sep 2020 11:27:59 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kH3hE-0000om-Ae
 for linux-rockchip@lists.infradead.org; Sat, 12 Sep 2020 11:27:57 +0000
Received: by mail-lj1-x242.google.com with SMTP id k25so14644647ljk.0
 for <linux-rockchip@lists.infradead.org>; Sat, 12 Sep 2020 04:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XMgjoPvhBymfHHvxoDHXTWG3WNCgF0x+QyIygNl61qo=;
 b=K2ir22V83VWYej3YXRtevdddjiVrwkyl9QVqmYMZG3B7/24spsZWiQX+krop1tfWAB
 KB58AfX+WRynhoSlRl51gU8WCfEolkXA1set4DxteuYMb5BDl6uhbE6WkgCZtTjOrYMH
 gNH/SykGqxdt2Zt1DR0Axxpf7uyfmhHnHlB7aS0nGBSZpaMOMSFsm1ukk2jnQWul6pv/
 HARODYj7k1Jw9VcX63i/zQDmEEIyWjyZX6UnlNB8z/46S9IrO2TpLRWMGKIQoXuBWElD
 azi9iVA2mvJV8N5bx2mtIrNhkcgXgScgOLAThgzgvg+NKpfoJibr3DiTfkIcylg+nkCy
 UPhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XMgjoPvhBymfHHvxoDHXTWG3WNCgF0x+QyIygNl61qo=;
 b=suU9CDO7nXOOoFHlwGSRaxf9q7dqFc0OC4YXe2GjGej7PMhxUR2RNA0sdR69/Ta3iS
 nCF/gyN0mfNyZ9psxtTL3wbpI3bemm99jJnocveIv+yYuEx1nZ4dy2FUnN28mVY1Py/G
 wRT6PS5On+3aoZ4GtwW8N1B4F/ZkFkVcWkeKYYcNrNovPo/XkRhlaG7pxZRYPQ2xQBew
 pW4QZcLCMtZTFReN4PqllvzXxFu7bl8/x13U4oO8kcBpn6lru0zO/m3EJdnVwaUBylyT
 IMjA2VlxKjYOifXTmQ/Amk5oiOzCmDFhrakfCaOXtYsdtDWK5Yosc908Z1pajwtKMulM
 aj5g==
X-Gm-Message-State: AOAM532EX2gBFKF8Q9J2xVoWvLar2Re3WEzwxYkE8EyD5Ytx7AA/CO8g
 Q1JxG/h48l4RMh4iZmm/35bIlo/1YHR+xmq5a9aP/Q==
X-Google-Smtp-Source: ABdhPJwQe9XEaD08U6BUOCKzC2OeLI06PoyDUFw0hqEreXKuQOwFBcqG+MtAuhhsofCax+HVS//1g9iR5Ma1hBfvdUk=
X-Received: by 2002:a2e:4e09:: with SMTP id c9mr2344401ljb.283.1599910074793; 
 Sat, 12 Sep 2020 04:27:54 -0700 (PDT)
MIME-Version: 1.0
References: <c4ec95a7-aaf1-2331-352f-2def319a1c7d@rock-chips.com>
 <20200117081358.5772-1-jay.xu@rock-chips.com>
In-Reply-To: <20200117081358.5772-1-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 12 Sep 2020 13:27:44 +0200
Message-ID: <CACRpkdYGJsK4Ek8pDCeNMWt41dd2s--Lkxewh4Po4E-45UdwMg@mail.gmail.com>
Subject: Re: [PATCH 0/2] pinctrl: rockchip: codingstyle for pinctrl-rockchip
To: Jianqun Xu <jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200912_072756_470464_5B44257B 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 David Wu <david.wu@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Jianqun, Heiko,

On Fri, Jan 17, 2020 at 9:14 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> Do codingstyle for pinctrl-rockchip by spliting driver by SoC types.
>
> Convenienty for reviewing, the first patch only moving
> pinctrl-rockchip.c from driver/pinctrl to driver/pinctrl/rockchip/ .
>
> Jianqun Xu (2):
>   pinctrl: rockchip: new rockchip dir for pinctrl-rockchip
>   pinctrl: rockchip: split rockchip pinctrl driver by SoC type

Why were these patches never applied? Is it my fault?

I don't even have patch 2/2 in my mailbox, possibly it was
too big!

Heiko if you're OK with this change can Jianqun just send a
rebased version?

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
