Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 559EDC5472D
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Aug 2024 16:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DPbDxULmm97MH6NsXun2tzToiiFrruXpceTSvpLYu4c=; b=3Q+WqvHjJJ1RP7
	i5F9PHyTEU+k23hEWkF9zVG980iUgd21ishGfPBFjO+rbEKPUhkSy4OLyfjWuZ1LOENoJN3/ojymp
	w7fyLVppltXsoZISx4ZI36qI0KayRYaN0Q/tndDRmTP0FvRgLT+OZ8LDA0D1qhfttG+Rvh2RIhzCN
	tQNrTgmmv1SxJZuKmofLThrxskKj6Wt3C6A0YTlOOpudubRLV4u/wLsjfuoD/JHOvLu6VTHxbzT4I
	FsUsbZJcgWtHqr7ymkq8pV398DWsBUuNxdBMGdpGKiYfAw0nbG+107bjY1jCxaoS21Y+Q2ZIpXJ6J
	KUZGLsLqCnnkdtPRPLaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shtsT-00000002YgN-07h1;
	Sat, 24 Aug 2024 16:44:37 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shtsP-00000002Yff-2P4d;
	Sat, 24 Aug 2024 16:44:35 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-20203988f37so29028475ad.1;
        Sat, 24 Aug 2024 09:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724517872; x=1725122672; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rMJqxsXbKdshmWc6Vt4OVDWOFw/ne4JO6chf1aTJxRg=;
        b=T5Tnwyz+NJUU0LjB1RlqnT1m5bB6z3JaEER8TCyFBudPpRVn7V2SUu0t3yt8RvIC58
         6n6KuukFgBaIQh/ADhsEbAaQ/Oq0yaDKhYxBmsav0jf1BDmnRaVdaphTvfm2cRTl+GOr
         MAnmVDFHSnEO7PBxMGVEEy+MUPjXw7uiFJ/QRBdEXgWjLqhj7gr2ISYbZ+Nahh2B05hq
         MW4DQAVzmsAzg2huvi9tb6OQktNKSz4vDb1RCdVb5KjpljuZuRes5APsrpXX7PJxSfRw
         hQFQg0d/wGNXIzBH0x8N5vPavYrskFGxrFMkof4oGUH7Vq5BuvJlqY++f6olySI/zAuP
         urJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724517872; x=1725122672;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rMJqxsXbKdshmWc6Vt4OVDWOFw/ne4JO6chf1aTJxRg=;
        b=qEaqtuoZHwYruBOFhn5Mh2OzZsUYdFW0Tf4brY9CGoQmC7Gl35q/xuXDVzPlFIV10e
         L8We2nDAsf73h1zih/ZbRZnEdC7Qn5xy4m1Lr98UmaeFlI3bQKrVZyKbdhOaAiYATWTO
         gAzVNWMwNU5ni/+qr7Qcc7QtluO8Ru5aHTiNXz5tH4m782UqEbOd+NfQcq4B6/dbTrSd
         YfOtibfRKdKNASq8ALZEKTj/0n7pt3hNqFbB2B0eRGcvX86S9T4/Z3lziUUXRal5+nye
         k47by+ANm2KJyCF31W50jFd/EGvEMIH4ftwOPb1CbocJjoMSkbunwuuiuliQMy3Vq6WH
         0q8w==
X-Forwarded-Encrypted: i=1; AJvYcCUGhVsFEJEGfhZ5SSepmO5iYfSk662Yo/9drvD0gp5/jsl3gq+/3eBgEbjxU7Qaugf/v1GU8rlSv26BktE03uE=@lists.infradead.org, AJvYcCWwhJgaLu8fUOX6F5KyvWIX5v42zQk1E0MVI5kRUcIlJHQ2kBF96zHiV/pF9AdPRHOYp+bHdPoyJKIHGekWg3D+@lists.infradead.org
X-Gm-Message-State: AOJu0Yzgoju74CgtUurERVChaCQmfjpsU5uPfWfnSQ9Ss2WMnky5J3Rw
	x/om9G03k/zsHVRiz4a/XmE9fz33PL1J0I88aVPcLJhLXUr/Up30
X-Google-Smtp-Source: AGHT+IHcYVQoDXdmHH2kSyn3hjnKQGyb2SXXwv2a+G7g13SX+ywaROxz6n48bYMEHtMXrfqxmEat4A==
X-Received: by 2002:a17:902:e750:b0:202:401f:ec6c with SMTP id d9443c01a7336-2039e4f1d23mr66486985ad.48.1724517872012;
        Sat, 24 Aug 2024 09:44:32 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20385bdc5e0sm44114565ad.271.2024.08.24.09.44.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Aug 2024 09:44:31 -0700 (PDT)
Date: Sat, 24 Aug 2024 09:44:29 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Andi Shyti <andi.shyti@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>, Lee Jones <lee@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Mark Brown <broonie@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
	Chukun Pan <amadeus@jmu.edu.cn>, Andy Yan <andyshrk@163.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>,
	Ondrej Jirman <megi@xff.cz>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Alexey Charkov <alchark@gmail.com>,
	Elon Zhang <zhangzj@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>, Jisheng Zhang <jszhang@kernel.org>,
	Jamie Iles <jamie@jamieiles.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
	linux-i2c@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-mmc@vger.kernel.org, linux-serial@vger.kernel.org,
	linux-spi@vger.kernel.org, linux-watchdog@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v2 09/12] dt-bindings: watchdog: Add rockchip,rk3576-wdt
 compatible
Message-ID: <612a447c-8a74-48c1-8470-280dddca8d19@roeck-us.net>
References: <20240823150057.56141-1-detlev.casanova@collabora.com>
 <20240823150057.56141-10-detlev.casanova@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240823150057.56141-10-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240824_094433_635102_9A43C1BE 
X-CRM114-Status: GOOD (  15.70  )
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

On Fri, Aug 23, 2024 at 10:52:36AM -0400, Detlev Casanova wrote:
> It is compatible with the other rockchip SoCs.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>

Acked-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> index c7aab0418a320..b5a3dc3770706 100644
> --- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> @@ -29,6 +29,7 @@ properties:
>                - rockchip,rk3368-wdt
>                - rockchip,rk3399-wdt
>                - rockchip,rk3568-wdt
> +              - rockchip,rk3576-wdt
>                - rockchip,rk3588-wdt
>                - rockchip,rv1108-wdt
>            - const: snps,dw-wdt
> -- 
> 2.46.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
