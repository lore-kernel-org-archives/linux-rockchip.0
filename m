Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D023C3DA61
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 06:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:References:In-Reply-To:
	Message-ID:Date:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kTglnUbNH9NgxT6on11J2lL1iukQrmtsiibnEsVB5es=; b=FZKQ6GAMKf96im
	bI/YbCKdxok9PU0fT9r+WkFmojpZLIU0S+E+nmkSCVw0IT9/6JtNmp+dlzeEDKVEhAg00zymekCUD
	vtxkcJWNUkgOlg7FeabHxnuNO6j3JyGzNiwRMeXQrWGr9PyfLlhLmTesOB3SgvdOsxFSurSFRHA71
	OEXMDsrlMFMqhEAmUJyg9B8RZou2Om4YXwzJjQdLqA0G+76OgHB/VbiRY8w8WwojwHFH6h4ONsYRK
	hzxAuOKV8Yk5ef05bgBLbMNi3ZBFS6ByayoQGGRqzeyAPT4L4/DKu18OdQ6w4p/pG9XtEhWxk0NSX
	R9iy+kvLNiwjW/Pcsyqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYgU3-0000000DrHQ-3IEt;
	Tue, 30 Jul 2024 06:37:19 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYgU0-0000000DrGS-3DrK
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Jul 2024 06:37:18 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-2cb7cd6f5f2so3175736a91.2
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2024 23:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1722321434; x=1722926234; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d8n8rYBKoxfcGnZbJLvEREPokWsFDiloFhCfdKHeZA0=;
        b=ZaAphuXTcc/Emy9KHyieRf7q3Wlt6DBNiZVQ+NWRDlCtwdghtfQhjtfZjEA0DBNZY8
         AReho+BN9ep02YY7miRM2fsKajWollphx4iPubILfr+dcelVtUFU6bOOOEiCKz2xk8Zu
         VNZNeXjS3Z8EEzMCuUyjVHSWBQ7rPHbRUt7Wc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722321434; x=1722926234;
        h=content-transfer-encoding:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d8n8rYBKoxfcGnZbJLvEREPokWsFDiloFhCfdKHeZA0=;
        b=Y8PyouZ08eJK1LhCVSvEIiThZdqZQg8SQ4/pNF4pnn/R89W/lOycLpH6yyyqXvNqYx
         UqLPCcpzw1BeFln8+G0J/LHbAStklLUIl8oGbk0ExuvGYE8r5GMRAxxcsphJxSq86fJk
         yqHHNRlEPGIBoHLghcBwIfqwf0UhNdz7s64o2uh6/TvND0zLu1Z2T8y7U9T/L9v2JtUy
         xVW/nDuBWSFtZSKtBCFLurQCPkhZ17usuF6cYP7rsS/AB4ZIIwPG8qReZS86o4Hub/Vv
         Eg7RKEot6JUL1BTMMRkAO0UehqGv9F8+oI1wdFc2eNNTlOnWmiUb/pIwTrkQZ9YXnswM
         Eemw==
X-Forwarded-Encrypted: i=1; AJvYcCUngfTCeFs+V6588ZfgIbfZ5j5pbBs0SAW8VaI87cPlO8FtVuDTfVSN1epYKXWb8eCn6OCnAlqk3JSxEmoNsLOBC/70D73GXwvhNo+p2N4aLUsF
X-Gm-Message-State: AOJu0Yxq7+u+AQJ5XliR5QG43bvEpkC1PC0+TL5znaF31Q359eJKaaFg
	ZcYP9t/sEBrgJORZFizizxUuiDXfmgJg+P8pm2Zu/5i0zEuSp0E2HkMND2eBcA==
X-Google-Smtp-Source: AGHT+IEbAYsTcrcjdD3UrZN6PQy+Do67Ei8GuSEd9YQg6UqH56tJFOZ2LAJA39UhwaNb5oNVG9ACLg==
X-Received: by 2002:a17:90a:6b4c:b0:2c9:7ebd:b957 with SMTP id 98e67ed59e1d1-2cf7e1df0abmr10618508a91.11.1722321434495;
        Mon, 29 Jul 2024 23:37:14 -0700 (PDT)
Received: from [192.168.178.38] (f215227.upc-f.chello.nl. [80.56.215.227])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cdb7608b88sm11733257a91.56.2024.07.29.23.37.07
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2024 23:37:14 -0700 (PDT)
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
To: Jacobe Zang <jacobe.zang@wesion.com>, <robh@kernel.org>, <krzk+dt@kernel.org>, <heiko@sntech.de>, <kvalo@kernel.org>, <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>, <conor+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
CC: <efectn@protonmail.com>, <dsimic@manjaro.org>, <jagan@edgeble.ai>, <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>, <arend@broadcom.com>, <linux-wireless@vger.kernel.org>, <netdev@vger.kernel.org>, <megi@xff.cz>, <duoming@zju.edu.cn>, <bhelgaas@google.com>, <minipli@grsecurity.net>, <brcm80211@lists.linux.dev>, <brcm80211-dev-list.pdl@broadcom.com>, <nick@khadas.com>
Date: Tue, 30 Jul 2024 08:37:05 +0200
Message-ID: <191025b5268.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <20240730033053.4092132-3-jacobe.zang@wesion.com>
References: <20240730033053.4092132-1-jacobe.zang@wesion.com>
 <20240730033053.4092132-3-jacobe.zang@wesion.com>
User-Agent: AquaMail/1.51.5 (build: 105105504)
Subject: Re: [PATCH v5 2/5] dt-bindings: net: wireless: brcm4329-fmac: add clock description for AP6275P
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_233716_881801_1D53A98F 
X-CRM114-Status: GOOD (  14.74  )
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

+ Linus W

On July 30, 2024 5:31:15 AM Jacobe Zang <jacobe.zang@wesion.com> wrote:

> Not only AP6275P Wi-Fi device but also all Broadcom wireless devices allow
> external low power clock input. In DTS the clock as an optional choice in
> the absence of an internal clock.
>
> Reviewed-by: Arend van Spriel <arend.vanspriel@broadcom.com>
> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
> ---
> .../bindings/net/wireless/brcm,bcm4329-fmac.yaml          | 8 ++++++++
> 1 file changed, 8 insertions(+)
>
> diff --git 
> a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml 
> b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
> index 2c2093c77ec9a..a3607d55ef367 100644
> --- a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
> +++ b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
> @@ -122,6 +122,14 @@ properties:
> NVRAM. This would normally be filled in by the bootloader from platform
> configuration data.
>
> +  clocks:
> +    items:
> +      - description: External Low Power Clock input (32.768KHz)
> +
> +  clock-names:
> +    items:
> +      - const: lpo
> +

We still have an issue that this clock input is also present in the 
bindings specification broadcom-bluetooth.yaml (not in bluetooth 
subfolder). This clock is actually a chip resource. What happens if both 
are defined and both wifi and bt drivers try to enable this clock? Can this 
be expressed in yaml or can we only put a textual warning in the property 
descriptions?

Regards,
Arend



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
