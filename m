Return-Path: <SRS0=MDEE=CV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DABEC433E2
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Sep 2020 11:36:10 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 36C9721548
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Sep 2020 11:36:10 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="1kLjNzvw";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BCnXsDJM"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 36C9721548
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z7i1MChauriJUy1mxx+5qICEpy+asTnttSyciT7fkyk=; b=1kLjNzvwgFlSlk6qNk1YK4dc4
	lX2g1EISWiHOU7DPpAy1ykVVDQwGnxcDJloEqDw1VbNOPIWvclT5HsRNBOgcRE8r+/7ISpW2yKT5r
	K5CE3YZ/HEBGOS3mcqBVvH9FLfT24DGHU0MC1PTd9FOT+XZgEsqo8WsHfeKuSTFKIm2MBUKUrUIeH
	CFMln5ifr0u3ZKxnIqahz9jvcNcLtPbwhNOj9+mPdgOf2k7QCE4BCZBlr0N6kISzosNhwNQT8od2n
	6TpgLwrjh1F2Zd/G5bmNFenGxluUxf/btcO/En8JyMsJeslZf4NfIv194URQbUKz1KRP25ZGVkWJK
	ZR7E7xOHg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kH3p3-0001KX-M6; Sat, 12 Sep 2020 11:36:01 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kH3p1-0001K7-13
 for linux-rockchip@lists.infradead.org; Sat, 12 Sep 2020 11:35:59 +0000
Received: by mail-lj1-x241.google.com with SMTP id c2so14613182ljj.12
 for <linux-rockchip@lists.infradead.org>; Sat, 12 Sep 2020 04:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SBAW04TFeupQnNnmk4S53sUPFeF4xMX2LlDKsbafVOs=;
 b=BCnXsDJMLcQc9CcuNaCCCIMmCJzyhnZSkh/mGM80pc5h7kjwLzFc02Gl5HNLZRB+uM
 PhQGymJZiQ+jpALDJfuWlqAcaUwgkjMIX6UGZgFgWwSKkOJ1UlDm0n6Ko4W8dIQz2NU8
 oA2f6N/6Xx/2HvykpwRb1EJqSyjZfeyVEPur48xDgHpt0HJF/KLThDrB96CjHLky2LRE
 +sTE4ZLjtQFHxlT7eG/xfW9odl5rSWFDpU08+YxmXa4nKZhdCspl+x1rFTKDuLhP7Xen
 tYElwWFquIBqudVzwXLg7VxPMiGR3XYtgE0Hc/KH9x98xVtT2T+4nVd9S9kYO9qY7M9e
 H6IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SBAW04TFeupQnNnmk4S53sUPFeF4xMX2LlDKsbafVOs=;
 b=HSCk5RHusVrw+G4RnU+HGXWhqafHvijNbDn+o/b+lWqHp6r78FIBiwqEVhIn65f9RI
 xCCD9dzIZ5hv+IshWnC08l6kFTWTAL7fxvlknMeDATRw1cyLa1Yb/BOnvI830RUvXiq0
 AzkmCv0QbuYgJv4L0Dwmcexw9tM0xemro+1R6KBLh/tD4nPmv0mjvastCapC7vO4kK8X
 hkvgid4bpY69fP7+kae2JtxXDvbkGDvcX3ZT1ssoqlO1RmxrP3mq+6PxSYWxzz6gpvzY
 bBCGJ1hoHdLuFpab35KE2NLMXieLSjV1wS/b0Z5BIE1vt4YWYEJHg3d5R1T9aNvdO5Sz
 pR0w==
X-Gm-Message-State: AOAM531zGVlj5LBJdaQs+ARr6fOLbgiQw6R2QcbzQtwSjOiVpGmUhI/5
 0ruN8yJOEUIDVa1hQXNZhla55NWUFkb8/o8G3V/xrQ==
X-Google-Smtp-Source: ABdhPJw7hWpd8Ek3ujyUQxMfSlqeXcNu01/Q9l69PHtaPxgqJnbDpy0a6/0EAy6dkAGat1naP1BU8/wkwujt6f+oDdE=
X-Received: by 2002:a2e:810e:: with SMTP id d14mr2477614ljg.100.1599910557737; 
 Sat, 12 Sep 2020 04:35:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200831084753.7115-1-jay.xu@rock-chips.com>
 <20200907025927.9713-1-jay.xu@rock-chips.com>
In-Reply-To: <20200907025927.9713-1-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 12 Sep 2020 13:35:46 +0200
Message-ID: <CACRpkdYHTWBU5hkAZ-E-ECMEjJTcPReQqGQ-yTVQq4hXS5Da7g@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] rockchip-pinctrl fixes for GKI
To: Jianqun Xu <jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200912_073559_104213_075F0355 
X-CRM114-Status: GOOD (  11.24  )
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Sep 7, 2020 at 4:59 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> These patches will fix some issues and modify for GKI.

I am sorry that responses and review is slow. The GKI thing is a bit
controversial leading to slowdowns in the community because it is
unclear how this should be dealt with in some cases.

> Heiko Stuebner (1):
>   pinctrl: rockchip: depend on OF

I already applied this patch separately.

> Jianqun Xu (4):
>   pinctrl: rockchip: make driver be tristate module
>   pinctrl: rockchip: enable gpio pclk for rockchip_gpio_to_irq
>   pinctrl: rockchip: create irq mapping in gpio_to_irq
>   pinctrl: rockchip: populate platform device for rockchip gpio

Why have the big series of 13 patches from july been cut down to this?

I would prefer the "big" fix I even tried applying the old (13 patches)
series but it didn't work :(

We can apply this once they are reviewed, but I'd like the rest of the
13 patches as well I think.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
