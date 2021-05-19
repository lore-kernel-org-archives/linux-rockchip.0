Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3306C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 13:13:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 47D2860FF1
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 13:13:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 47D2860FF1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q9SYWs+Hw84Io5YOFgAbSx+7sdzh1B8kDncfEpxbWQY=; b=cWKYMNj1MLyG/G+Y3geVHEBhi
	8Y33F/n45fdpTtTjLfhJZk5J1jTkki4t9gNhYqOxWaHv2G7NWvdIsjQOzBPhUat46NjTSqMlVu4Ay
	g6axAFpjwTm0/HYh3hlMhvnP4bzQ4MWP/vXvNkzsRfTQRB7GpoPkH4ecO9d/5AM/AB3sKl/STXNPL
	ZpAT6VdSwpezHKo0Vbob5BLLj8rEIQJGBhQ20WRe7BU4NUCQt+t2fmR9yTAomm5k9bBzpBAfhZ15V
	Qc/vTH3VpVzfc4z7uWwo46vB9C67nRFz8b1g4sKj5so0ySydJ2ONz1PRyvAuYXcbOrz+5GD/+og3r
	Zc4ujOAPw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljM0V-0044MS-Bs; Wed, 19 May 2021 13:13:03 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljLll-003zTf-Ac; Wed, 19 May 2021 12:57:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=aipg9oIDAuCQSbPEUtZjOrYb0WaeP7Y8nbKSRmG50Bc=; b=lCC3OLJacnLdDPH2KgV2h6nO/9
 a1+E5VgtaION3xdCYs+wRwsRIffq/k6v3KWfPGak0ZQVvhrMQhLCUYOMAlb4wjBHh+Vz408Oi8oj6
 BGB6ObztZW9VoswLnwy5RkKJFRUTPmSk+i5c1he1HwGqmjAjPIUZ1taNQ3522PEJrWih63LuGnAB/
 K9XKxPKROIYsv9HFsZT9dE2J9JVSRfgF6H+iibs0VUZgSSZHShGdxdiiJxNjT6oPcN9kK6f8iGmyd
 CchVGi9bA+IOQNoaHSZW/ktlNuiAFFy+dP3tnQXyWK3TuataTcejGt68g49anZMb1i9u7FItSxf+8
 zkHI4X1w==;
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljLli-00FTeX-Cx; Wed, 19 May 2021 12:57:47 +0000
Received: by mail-qk1-x730.google.com with SMTP id k4so1447472qkd.0;
 Wed, 19 May 2021 05:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=aipg9oIDAuCQSbPEUtZjOrYb0WaeP7Y8nbKSRmG50Bc=;
 b=Pa4ogUhOF7OBZJ6ZHNl0MgR59SkKIlnoGrDNn/lcOBGbuPpPz34+2AOEpjE6KcRep0
 3rhPml2WgX1tHOgnE1NyFZrFzIlt51EJmUSsfjrkf10trdA60D+Zcz73YlqdI0rdL3D0
 KrGwfkNaKB0U/YzFPmg3WUmOjWMfEjOBenyI3ohJ8Lx3B0u5X/nxD0NtpdaB9371Y0md
 dCOkLqkLT/f7QItk5bUjTi6/SI7VFvvOngKItIaipenTMH6IuuHpoeOaIaVv7YRKCb5q
 /YNW293ujFUdLxhJ07r8jesWtFVEBcPP9Nu7eWr+ikxPxIpnIJhQQ8mwpXU3mKa6ib6s
 AOpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=aipg9oIDAuCQSbPEUtZjOrYb0WaeP7Y8nbKSRmG50Bc=;
 b=rQxeWlk5/QgMMopWWAG0NstUSDoupeLb0w/WW0fKO+ZKAAty/gTSOK+ZZCdLo7IXb8
 72If/HbAQSwFQIAPp1/LOioyopbdAMQ2K7jUubQv48xDEgR18hVo5BIyVmdecdF31Pd5
 zbckR0NzsLmjZTFKeAEgU7JuNFdfI2Rt3uIqdV6bHB6utOPy/gSep7fzUtrrgl9cbTYr
 7O6GM+t7xWHLc6eZ5JkiX2GSkz6yo0ENFDHZnz2zat3DQRADYHNxx1kS69ec53JBjqXt
 uLDjynYemn1biJCeWoHAH7UpISaCgvAA23smR3HykhkDBpDiF/FgNjCwexeJdMGbaPiw
 6dnQ==
X-Gm-Message-State: AOAM530HCW/8knaxo9cumdnl2de3wA8YajAGU4opQTxC/1YjFbNdelL5
 OOUIlw3dCn0S6DOnprlGgJI=
X-Google-Smtp-Source: ABdhPJzaymXiwmNRUJ76y5xNhS+pauWT0YHJrip4/vT9Q++zTymq3niN2b7yOKjYqwJx982fyC8aoA==
X-Received: by 2002:ae9:c016:: with SMTP id u22mr11911036qkk.114.1621429063845; 
 Wed, 19 May 2021 05:57:43 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id d11sm15252598qke.61.2021.05.19.05.57.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 May 2021 05:57:42 -0700 (PDT)
Date: Wed, 19 May 2021 05:57:41 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: cl@rock-chips.com
Cc: heiko@sntech.de, robh+dt@kernel.org, jagan@amarulasolutions.com,
 wens@csie.org, uwe@kleine-koenig.org, mail@david-bauer.net,
 jbx6244@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 jensenhuang@friendlyarm.com, michael@amarulasolutions.com,
 cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com,
 shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com,
 wim@linux-watchdog.org, jamie@jamieiles.com,
 linux-watchdog@vger.kernel.org, maz@kernel.org
Subject: Re: [PATCH v4 04/10] dt-bindings: watchdog: dw-wdt: add description
 for rk3568
Message-ID: <20210519125741.GA2241939@roeck-us.net>
References: <20210429081151.17558-1-cl@rock-chips.com>
 <20210429081151.17558-5-cl@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210429081151.17558-5-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_055746_459435_93B90B4D 
X-CRM114-Status: GOOD (  14.93  )
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

On Thu, Apr 29, 2021 at 04:11:45PM +0800, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> add "rockchip,rk3568-wdt", "snps,dw-wdt" for watchdog nodes on
> a rk3568 platform to snps,dw-wdt.yaml.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> Acked-by: Rob Herring <robh@kernel.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> index b58596b1831d..6461eb4f4a27 100644
> --- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> @@ -27,6 +27,7 @@ properties:
>                - rockchip,rk3328-wdt
>                - rockchip,rk3368-wdt
>                - rockchip,rk3399-wdt
> +              - rockchip,rk3568-wdt
>                - rockchip,rv1108-wdt
>            - const: snps,dw-wdt
>  

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
