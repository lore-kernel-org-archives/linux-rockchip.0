Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16CB8C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Aug 2024 11:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:References:In-Reply-To:
	Message-ID:Date:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=djsWXcDm22wefpnH7pK9dtRF5QlXLWa9gGpWANaP2jI=; b=cKPindRlQ46wuC
	N45WRktwCoI6xj4wergqa5u9Q8FbYZa4EchXhEP+U9HQ2yVMVRT13+rDDHevkDIL+NHILhXpEnVzV
	jwYjfZ2+TJ+GgfHXo8eB2sqSL6LyYaq4y4SCm7iaJwuXvYlj4dzDR0ecfQRH5GBhpo0twooWQxI3C
	+76F5FaX9YDhKW/og+wzCS2gEacNkAF35VrZQi8AnLKLzBtpgfrW8USA4Q33L2W8ELG86PTtpcz8k
	7EufyQ5RBfS5xwstkgKTdjhWX8yLeDptBXruseNQPpfy+4Tg/Yf8We2DTTrXNg2fO3Oev18WBZmtE
	42ZhrQxwBMwh3CM6U5lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sckCL-0000000E3mz-20lJ;
	Sat, 10 Aug 2024 11:23:49 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sckCI-0000000E3mC-2LId
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Aug 2024 11:23:47 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-58ef19aa69dso2855924a12.3
        for <linux-rockchip@lists.infradead.org>; Sat, 10 Aug 2024 04:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1723289025; x=1723893825; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nDh1fCmWj10iQxhI7WVQeAn05256/EGfVYp4b/9uFoQ=;
        b=OVVucr9cFLFQQ7uMCAyekBsF91iRFUvZMn0Cduh8zfGW2bZV/hQyeQozcadvx3IVVe
         oc6tiIM5GAHXzqGPJ4SHM7tl4ODZSJD2hhxs7BGm47G5DSriDtuKwiXBAeTxFD2y8diV
         3lqS3UM/e3hzPktcJi3Z9L/yxHsr7c3/XT/+w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723289025; x=1723893825;
        h=content-transfer-encoding:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nDh1fCmWj10iQxhI7WVQeAn05256/EGfVYp4b/9uFoQ=;
        b=LJqG70FkRcSspIeoLqJPryfbXlgfU8Pb5OHWydI2zCnZgHfttYYrKfvTkQrimLueHf
         LitywW9BQKRdtIvZphXzWxTPSKV+VqOvGdlmtUtpUYApcpIv+RMK5BGrsvIlMHjS8c0/
         B/KBE+8NJ7axNeqT0+m36nmGM6tUKtOI4hJCATY4lHTGLZ5lqn4zzx8Vqt13njhEjPvd
         SptoFLlTtsIDaZQBeMsoUEujJFU4t72FbrqrNQ2ybO2yeEov+NSejmKp+xkytdUxHhFg
         guXo9oiyFL2YlupWflCXoaEBv8XyqM+iEDvChIHE1DySFb4EZumM6eSnwapEvWmMLkQs
         uw+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXpXpGennizSA/VjVQXnERl8yjKYfsXrMiKcD6q2iDOBo+RJDwapH4nbOW8Uapae7foeoc9uV1rAJpojAGL4m0PXAhLYFuxVhYPbtMUJdgY7/AI
X-Gm-Message-State: AOJu0Yx1hDL3MM3qvFWOt3/PVL51SE3UMOVUkX4+WpFqx6YZZxrG+mLj
	OduUYR9HcWsp7sFG2wY/fQy/kutqh0wKg8TD6wusKtQyx3BDvegy4miWnOhITw==
X-Google-Smtp-Source: AGHT+IGFm1oTOum+km6q9IW7OvihX00b13brOsvRjwSLEedERSI+44X5FqA6T/GsmR2C4k72tHaIfw==
X-Received: by 2002:a05:6402:2791:b0:5a2:763e:b8bf with SMTP id 4fb4d7f45d1cf-5bd0a61181fmr3652216a12.25.1723289024565;
        Sat, 10 Aug 2024 04:23:44 -0700 (PDT)
Received: from [192.168.178.38] (f215227.upc-f.chello.nl. [80.56.215.227])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bd1a60181csm530489a12.81.2024.08.10.04.23.43
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Aug 2024 04:23:44 -0700 (PDT)
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
To: Jacobe Zang <jacobe.zang@wesion.com>, <robh@kernel.org>, <krzk+dt@kernel.org>, <heiko@sntech.de>, <kvalo@kernel.org>, <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>, <conor+dt@kernel.org>
CC: <efectn@protonmail.com>, <dsimic@manjaro.org>, <jagan@edgeble.ai>, <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>, <arend@broadcom.com>, <linux-wireless@vger.kernel.org>, <netdev@vger.kernel.org>, <megi@xff.cz>, <duoming@zju.edu.cn>, <bhelgaas@google.com>, <minipli@grsecurity.net>, <brcm80211@lists.linux.dev>, <brcm80211-dev-list.pdl@broadcom.com>, <nick@khadas.com>
Date: Sat, 10 Aug 2024 13:23:43 +0200
Message-ID: <1913c07b218.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <20240810035141.439024-5-jacobe.zang@wesion.com>
References: <20240810035141.439024-1-jacobe.zang@wesion.com>
 <20240810035141.439024-5-jacobe.zang@wesion.com>
User-Agent: AquaMail/1.51.5 (build: 105105504)
Subject: Re: [PATCH v9 4/5] wifi: brcmfmac: Add optional lpo clock enable support
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240810_042346_620418_03412E1F 
X-CRM114-Status: GOOD (  14.31  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On August 10, 2024 5:52:11 AM Jacobe Zang <jacobe.zang@wesion.com> wrote:

> WiFi modules often require 32kHz clock to function. Add support to
> enable the clock to PCIe driver and move "brcm,bcm4329-fmac" check
> to the top of brcmf_of_probe. Change function prototypes from void
> to int and add appropriate errno's for return values that will be
> send to bus when error occurred.
>
> Co-developed-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> Co-developed-by: Arend van Spriel <arend.vanspriel@broadcom.com>
> Signed-off-by: Arend van Spriel <arend.vanspriel@broadcom.com>
> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
> ---
> .../broadcom/brcm80211/brcmfmac/bcmsdh.c      |  4 +-
> .../broadcom/brcm80211/brcmfmac/common.c      |  3 +-
> .../wireless/broadcom/brcm80211/brcmfmac/of.c | 53 +++++++++++--------
> .../wireless/broadcom/brcm80211/brcmfmac/of.h |  9 ++--
> .../broadcom/brcm80211/brcmfmac/pcie.c        |  3 ++
> .../broadcom/brcm80211/brcmfmac/sdio.c        | 24 ++++++---
> .../broadcom/brcm80211/brcmfmac/usb.c         |  3 ++
> 7 files changed, 63 insertions(+), 36 deletions(-)

[...]

> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c 
> b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> index 6b38d9de71af6..461b7ff3be24b 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c

[...]

> @@ -4474,8 +4480,10 @@ struct brcmf_sdio *brcmf_sdio_probe(struct 
> brcmf_sdio_dev *sdiodev)
>  bus->brcmf_wq = wq;
>
>  /* attempt to attach to the dongle */
> - if (!(brcmf_sdio_probe_attach(bus))) {
> + probe_attach_result = brcmf_sdio_probe_attach(bus);

There is no need for probe_attach_result anymore. Just use ret variable 
instead.

> + if (probe_attach_result < 0) {
>  brcmf_err("brcmf_sdio_probe_attach failed\n");
> + ret = probe_attach_result;
>  goto fail;
>  }



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
