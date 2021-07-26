Return-Path: <SRS0=Sv+h=MS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60EF5C4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jul 2021 22:20:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3370260F6C
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jul 2021 22:20:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3370260F6C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nqRUUWcPLx1hfEdyskiG9CSScHwnUOH65VYC0FmbumU=; b=f/+p4X/qh05Y9q
	y68PhWEwpJii+6E1zKUHmaY4erpqBqX+H4PdC0fxYWm2hVa7Ow053KiAQGqvufoqEtM7Gxk6cRdP5
	oPe/lt6mQ+CiPMojCvNO22UAOzPV4KRA6s0bJigIttQgm4X/kqKYcmmdPJz5nJcfzvQrkVmN1C2Mm
	CoQU0TtXmR94rgdPoRSPToE7Pfw10SP7lQMVnhv3c/FHY9BbU5oJyUIqMDFEgCgQi75XJ+uD9bg7F
	wIQ02RLLNPccBvkeBwKRrSkm+vXzN8lV+OOiIQIcYp8G1UNHbwCwBHLEDLEFfwyPCsN+NkRp0zHWG
	nIdKKqAtuYArtJf7OYUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m88xO-00CZH4-Rx; Mon, 26 Jul 2021 22:20:18 +0000
Received: from mail-io1-f52.google.com ([209.85.166.52])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m88xM-00CZGT-FR
 for linux-rockchip@lists.infradead.org; Mon, 26 Jul 2021 22:20:17 +0000
Received: by mail-io1-f52.google.com with SMTP id a13so13813492iol.5
 for <linux-rockchip@lists.infradead.org>; Mon, 26 Jul 2021 15:20:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/UPTsSiPssy2lUwQ2bCypVro7JXhjzsIo3rMa398JW0=;
 b=RlILNYQDf+6XEvX5ftp2sloRJxJfFUxxkEXFKNBKLBGhvnnH7vjT2FubNRxDDrEQyK
 IVDdBQg2TpeFbCeazLWuAP5S2cfidSUimpcTe5E6vYFEcHNUOiZjlOl89H3ePBWGi/tT
 YYwquvCNbuZbOJM0540SrEN1251yXJuhAsYRQH0YconnxfM4bqfGFgBWX3o27HJ45EhY
 SiLXLajOeGY4Xgj6w5LF8QuiEdaLMJqOh1uHTF5Lbvt5jYRG2iH44A2Vcw/GoZwM7vBb
 eKatPp3SOMKqwFHUbxfHGymtNjpwPbR9xz2todxfS+QrNye3eoC0x2KifsHUuATJ6TiQ
 zIXA==
X-Gm-Message-State: AOAM531fOFWjBwdkE+Wl4c1Hop6J4d2+O0iUIMmJENsrBIEG0vf5N/Qd
 DoUziR5ujMEshUjVjJHmoA==
X-Google-Smtp-Source: ABdhPJyym75PURmZfN5Nxhsua4zaOr9IGbKcUMcawU/jhiLfJ7DA3ZH6Nav8c0QrQsRNSKYDZwqwmg==
X-Received: by 2002:a6b:6f11:: with SMTP id k17mr16247995ioc.114.1627338013818; 
 Mon, 26 Jul 2021 15:20:13 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id v18sm582510iln.49.2021.07.26.15.20.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Jul 2021 15:20:13 -0700 (PDT)
Received: (nullmailer pid 974953 invoked by uid 1000);
 Mon, 26 Jul 2021 22:20:10 -0000
Date: Mon, 26 Jul 2021 16:20:10 -0600
From: Rob Herring <robh@kernel.org>
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-gpio@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 bgolaszewski@baylibre.com, Liang Chen <cl@rock-chips.com>,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 4/9] dt-bindings: gpio: change items restriction of
 clock for rockchip,gpio-bank
Message-ID: <20210726222010.GA974922@robh.at.kernel.org>
References: <210726013345.1634442-1-jay.xu@rock-chips.com>
 <20210726013457.1634557-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210726013457.1634557-1-jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210726_152016_557990_4EEB2F13 
X-CRM114-Status: GOOD (  12.09  )
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

On Mon, 26 Jul 2021 09:34:57 +0800, Jianqun Xu wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> The clock property need 2 items on some rockchip chips.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
> v7:
>  - none
> v6:
>  - add to this serials
> 
>  .../devicetree/bindings/gpio/rockchip,gpio-bank.yaml         | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
