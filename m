Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1B41C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 10:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSn9C64fGBQDfqv8SHnTkw6f3BzpS6dI5CuJHxWhpcc=; b=HNRBKIPNlAp3C0
	iF0Z2PCjkwsWzMQnsY0XavaOtfQM4S9z+ihNlBGE/jbSFRtW/t/zIcKJwxnSL+KI8aGJH9BZtx0Re
	4MA9AS9A5l5CIj5BapODWShaRf00b1ehSpsx8kyK0U11iQAZZhB0J+v69+fAKdG0IMabi64GM3RVI
	eHaOrt2MNRwNXS/rvl8A+xhloROH2voJxRbU0NhaUiyUccfBxS27umqPmyfBbVz8Mb8KxK29m4ctq
	C38k7m5/NodbwWQe/WzevPovnLa0Cz2jC+Xlx0zOsz+SpbL/1rHO5DtlMS+AX6xn9lCfdLmLbKvLV
	UBDxK2JMHJMtUR/JjShA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOcyV-00BRPt-Jq; Mon, 28 Feb 2022 10:09:51 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOcyS-00BROi-UC
 for linux-rockchip@lists.infradead.org; Mon, 28 Feb 2022 10:09:50 +0000
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 9D9C63FCA4
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 10:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646042987;
 bh=kIx+raZUijStrCGB7mdJrowRwtVAuHPRA5AhR/2Nd0I=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=Fpxwv+d1WVw5y3w8tLciDyDxJgARNZFSl0XdrEqXrIJx4NO3ZWZOJnjhXFW4BKu9D
 GMBauAFJqmUYJVmyXI+BdT2KJ34qumldvA8YgaXf9hjWN/0wWp4vwvlKQzEzeZTgD3
 USFKvV97pk6+IrHj7JmllpLKxRnuDJ8s8njuNJDIKXVmAaeWxhTV1E3IH0n7ChdYKq
 8hsWMW8n55FBvL1rABW85qgYX6a8/XQESz6EkSFTurvBQiC8aTo9Mer+ie/WUJsTru
 7zRdUJpx5TTYwhljEWWsPcaJl+OkYT6uvFP2tBQo7EWAQk2G/u/xcDNNhSZaNRfOaB
 9PtyB5KgScZag==
Received: by mail-wr1-f69.google.com with SMTP id
 w8-20020a5d4b48000000b001ef708e7f71so1380486wrs.7
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 02:09:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=kIx+raZUijStrCGB7mdJrowRwtVAuHPRA5AhR/2Nd0I=;
 b=6VHjPJuphTMWtYJ5/fm2LUFtsyeiECDy3AgE6HQVb/zV2WH/6D8p/hnvJ0CTmL/zKp
 AUIhvyjzq+vOcaVzq1HKpjWbdDX1+Z0uUsRP9j7OrrzJRE8CG8oo1mJamlhTh9/3ErQi
 YnznM5mAsAb3qdPpmYgFAMqrcGOSOqMY1C7DCFME0ajGBJOlfqG3DYuBVbp0ecBZwqqJ
 Vls1sgLgkpZhHZX1kATg9vJ7/V1/r/CEnDsC7QVI2HooVFWcMTtC+eIIg/bt1+Iry79H
 sF8Yq+Bh7gijED8FEu5zfbA2f43wHvqmGv49GY3Z6C00TEKIljNqiEXfMdr2GB4GXRUV
 5RCQ==
X-Gm-Message-State: AOAM531Yf5rhG3KaxqwD5AKRK3xWzoqHG3FsZoufJteGeB/gQHF6SD8L
 zPdl1zYVzj86a4CpkAYnw8bet3hUYK6fBypUsmo4W9+zDHN14XnflDjXmOT8kLZdYO3RhELZ6Cy
 D0AdxheZXwIqlJYW1P5G9nES5zlWRG5otM9YKZtB173bx+Qo2jw==
X-Received: by 2002:adf:d081:0:b0:1ef:9378:b7cc with SMTP id
 y1-20020adfd081000000b001ef9378b7ccmr6526404wrh.407.1646042987421; 
 Mon, 28 Feb 2022 02:09:47 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwt5qm49T+l3aWQPrCdhZj4vQvOAlvEwnYbWhxw24cBValwEqncUUoWR+qNsHkBBdWdo63G6A==
X-Received: by 2002:adf:d081:0:b0:1ef:9378:b7cc with SMTP id
 y1-20020adfd081000000b001ef9378b7ccmr6526391wrh.407.1646042987208; 
 Mon, 28 Feb 2022 02:09:47 -0800 (PST)
Received: from [192.168.0.133] (xdsl-188-155-181-108.adslplus.ch.
 [188.155.181.108]) by smtp.gmail.com with ESMTPSA id
 x2-20020a7bc762000000b00380fd1ba4ebsm22228541wmk.9.2022.02.28.02.09.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Feb 2022 02:09:46 -0800 (PST)
Message-ID: <cbca5f7a-de4f-1559-92fc-45c6d037a6d1@canonical.com>
Date: Mon, 28 Feb 2022 11:09:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 2/3] dt-bindings: Add power-domains property to
 ahci-platform
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>,
 "devicetree @ vger . kernel . org Damien Le Moal"
 <damien.lemoal@opensource.wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>
References: <20220227182800.275572-1-linux@fw-web.de>
 <20220227182800.275572-3-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220227182800.275572-3-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_020949_140769_60E43D5B 
X-CRM114-Status: GOOD (  15.77  )
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

On 27/02/2022 19:27, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Some SoC using power-domains property so add it here

Full stop.

Subject: "dt-bindings: ata: ahci-platform: Add power-domains property"

> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> changes in v3:
>   - new patch
> ---
>  Documentation/devicetree/bindings/ata/ahci-platform.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/ata/ahci-platform.yaml b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
> index cc246b312c59..cc3710fe4fd4 100644
> --- a/Documentation/devicetree/bindings/ata/ahci-platform.yaml
> +++ b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
> @@ -67,6 +67,9 @@ properties:
>        some embedded SoCs.
>      minItems: 1
>  
> +  power-domains:
> +    maxItems: 1
> +
>    resets:
>      minItems: 1
>  


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
