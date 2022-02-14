Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA7C4C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 21:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RriuFm0OmQqhtK1d6ySOogHeeAY4lUK0tkocgYBy7WY=; b=tzfRufVJITL4EP
	FYNNQ1MCKLUHWkTtNpcxmLeIzYR38GTS2ti2HCYsbVbonDDK5aUWEg3yb2FJ0RMvDMxehI9oQW+Ol
	HZZHEzl1nqVsaVe3vFPaHQfjy9tNVeU+emOFMK3DcyhoIGrePIVj6/Y3mTrnwtmtcUqVcTEOsWUKa
	gMZacc5Jm8vfqLUSQaX1JvDhuHvz02LrmAu/aW3CZpiiRha/T9mYg2JKgttDXVPNhnSMDRlPRqjjU
	HsQ1x670J5+PUsIRWgTcnWe1bxPAAQ4jVQbHszHCmRCh+2JOUi5WxZvXdvNT2944tDvm+ux0YX4kO
	EJNp/g+zMHlbVW/viM6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJiVB-00Gv5z-DL; Mon, 14 Feb 2022 21:03:17 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJiV8-00Gv4l-NE
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 21:03:16 +0000
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 95B8A4033E
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 21:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644872586;
 bh=2bp2Rosxu6+8ZhH/EAY6coxFH5lGR8Dxl8BwV5vJAno=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=GyBG5qnie5SYEK6t+mzBwe6I+QC3QBsorZzTpJy741H0Px8qrnxVpeA4TzMgJ+l4J
 u2KwdmVIOARsCHYbIG4KHaVYON+soBEfR1WROzxUbshV8cCy3ox7XhAKqPxesQuiUo
 pmbIOwGoC5I1TrkX68d3osnFbDbRutE1EjumwQhBeAbAV4b4SyjuBKOVpsJEMllP8/
 2o5DNKNUbAVb4vMOJVnhiw2aGOLXJuLuCkXst/n741ahbScziWtLnCJQTBG1LCoM7W
 KjvKjYYoED4JI0CvxcIdQn2DiZ+4wdnGg20W+j9B98az8ySbF9hmqKduhCj52aEtsD
 I4V7EFAc5YZ5g==
Received: by mail-ej1-f70.google.com with SMTP id
 m4-20020a170906160400b006be3f85906eso6379057ejd.23
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 13:03:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=2bp2Rosxu6+8ZhH/EAY6coxFH5lGR8Dxl8BwV5vJAno=;
 b=SqPIpivJkMBGzuUK96LM7J5mBShIQwX96Tlc1XK5YoORPh1FmJiAXn7m2XUTFLCCKE
 HOTaqzxTwZdPXM5n5OVBiID5rB+YBB3gyxi85bASNMdQx8VE3OORLNSftsJo3GHBci9B
 hQGme+o/5egoVC6DGkklhnR3qYmnUzLwPe0f6uLsBVcBRCPnFSdO2E2bLT6toFN1+0Yj
 XKedyrLPZkjDZJCmf4pcicNohiz0vF+NIpJ9l1lMXELBsAA1S3cugmq28c2rmc4Gc4wg
 1RsZGRJByjkfNmknHlC5V0sKBa2FEHJEnB6BUaRFPLDim3cPyIA68vnRwr8I3nZOS8Mo
 HohQ==
X-Gm-Message-State: AOAM533n7N0JMudR512Zm3ADAYTM6viwqqy3bm0mYNWA0cXBRfDjJmDD
 FnLi5CmMA7Nfsj65irJY0ofiF5TDHUQEobYmKv8KCeDzAdmjm/jVkDlJWu7rWPe9DRU48foEiJT
 uJbTYs7L8yTmP84z1caQbWBxO0xtM48eQ64XwB4EQv5YS8Exg8Q==
X-Received: by 2002:aa7:c3da:: with SMTP id l26mr727090edr.294.1644872586069; 
 Mon, 14 Feb 2022 13:03:06 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx2FJZ3WFrmr3yKtdBu95hKE7kW2/adNT3dVxtT4u/B6q+4CQFvbOXViM594Gt5SL7EJZdGvA==
X-Received: by 2002:aa7:c3da:: with SMTP id l26mr727056edr.294.1644872585884; 
 Mon, 14 Feb 2022 13:03:05 -0800 (PST)
Received: from [192.168.0.106] (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id j21sm1153464ejj.193.2022.02.14.13.03.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Feb 2022 13:03:05 -0800 (PST)
Message-ID: <f9cdef5e-a52b-03ba-a069-e0bc16ccd595@canonical.com>
Date: Mon, 14 Feb 2022 22:03:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 11/15] dt-bindings: pwm: intel, keembay: do not require
 pwm-cells
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Thierry Reding <thierry.reding@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
 Philipp Zabel <p.zabel@pengutronix.de>, Anson Huang <anson.huang@nxp.com>,
 Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>,
 Rahul Tanwar <rtanwar@maxlinear.com>, Jeff LaBundy <jeff@labundy.com>,
 Yash Shah <yash.shah@sifive.com>, Sagar Kadam <sagar.kadam@sifive.com>,
 Vignesh R <vigneshr@ti.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-riscv@lists.infradead.org
References: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
 <20220214081605.161394-11-krzysztof.kozlowski@canonical.com>
 <20220214182824.gevtqbtv4qrddjqb@pengutronix.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220214182824.gevtqbtv4qrddjqb@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_130314_903008_D4B43C1C 
X-CRM114-Status: GOOD (  12.03  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMTQvMDIvMjAyMiAxOToyOCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gSGVsbG8gS3J6
eXN6dG9mLAo+IAo+IHdoZW4gSSByZWFkIHRoZSBzdWJqZWN0IGxpbmUgSSB0aG91Z2h0IHRoZSBw
YXRjaCBpbnRlbnRpb24gdG8gYmUgd3JvbmcuCj4gTWF5YmUgbWFrZSB0aGF0Ogo+IAo+IAlkdC1i
aW5kaW5nczogaW50ZWwsa2VlbWJheS1wd206IERvbid0IHJlcXVpcmUgI3B3bS1jZWxscyB0d2lj
ZQo+IAo+ID8KCkFoLCB5ZXMsIHRoaXMgc291bmRzIGJldHRlci4gSSdsbCBzZW5kIGEgdjIuCgoK
QmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
