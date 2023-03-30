Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F482C761A6
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Mar 2023 15:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rw54pDQl3YMtSqK15Cbr061rthFyi60NNwxi8vUEXHk=; b=YFVEKvPQnOgo+E
	miC6xIxCoB9T0OR97XW+wIq6DJYlDlijZnRn5vKRhvqytvu+GiG8M3IzmB1A6zTWQZynJdDGRye7i
	82Ql8utQYF/ktNH2Qt47YFjHaDfl/x/gSz/qt+2qTg5UOSx1MqePh1MMNuuPEF5p2sfrnq/D8Nwyj
	kMdsgmat5yCAqN3YoTY6AUmDD4ta6IDQqs5qmVGobX5yO4JxMWL6SlYeXCBbIvRDOIa8gaXxEER3D
	kNa8Li3j003DrRcpvOrDGSiUfQIADW2Z04Ks2fT0/xnboQVwG9Bm1VxeKJade4KclY7COuajDWr0R
	WZKswDCHuzddQXeACWqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phuEu-004I7z-2q;
	Thu, 30 Mar 2023 15:31:00 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phuEs-004I76-0f
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Mar 2023 15:30:59 +0000
Received: by mail-wm1-x32e.google.com with SMTP id m6-20020a05600c3b0600b003ee6e324b19so12061988wms.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Mar 2023 08:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680190254;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s6mjtUcThghUsbwg6hgP26FqHa4HFNPgLRW+Curo8kk=;
        b=kqnKTzM86XNR2ARxUIfxqZMXoyG3BfuDNRke9susvkPn940HcRJGTC14Ih4ms9H3pU
         ZQFLWeh8LAZok7GlFi3UZjzZi9vTohFvGP1YTOfgt+DLtnd4GWZBPgyZEayU8x9DBAqI
         Gng8WlI8QKESKy3wCuLzweEk1OmCkW2O9QCBMshVHrfboVpxh//QuDHgD3R8xiZtEqls
         5lQUyCQhXLOIzzQ6LeHcFuWy42DpAf+SNM/rffQ/2+VfiNWvogVCpF8INtZQaX6LCS61
         OCy9a/9Hy1m3dD4fwCIStiwo9CLCFs+z3CJiuhYZ/Ry5K94NWoaJDrpNvfH7CPSMmrPf
         mT1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680190254;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s6mjtUcThghUsbwg6hgP26FqHa4HFNPgLRW+Curo8kk=;
        b=dgzrKagbpk9eiXaD0Dx+PNpWo/J866KEgdt8CqN+qZC9HCAcTBEUNI9nHE5iJoGian
         Ktmj7X2dlGpXVcBv2uQ3Rpc2DCyJ+fyXtobzKvXeg7bXYovJBPBkjsSLyunJFEPo45jo
         wNzpiRzLpnu4EcV9UHtiZ/0nVdyQUtR0B6BpnUBDRJYLe6mNGWXuKcTAmFLjSj9Lj37D
         fXtJ2WuYad5Pc2+kSYwNI+RPFy5Bhl5j1LV8V6JbMO05Nqtk+vSEZQNEZ+DtChqlMwoJ
         cTta4DBqooJdl+3kXwLwZQH/iQEbdLro7R6LF/EbCIuCnb0rr+z5/aViZcJsi2LYDDus
         THEw==
X-Gm-Message-State: AO0yUKV11yjVZY9Q71NmkttHe8UHVj2YruvkkiQVbv7ShKWBWgmx8yfv
	h1xe/p0AQTikpvdX63+r7d0zYw==
X-Google-Smtp-Source: AK7set+NeqsVrowWMDfF6T6rZilc9ifIbSky8N5GLc+lr02wKKZPBRvW4HqMrMLra4qXGjfZz9tTCQ==
X-Received: by 2002:a05:600c:22d6:b0:3ed:e5db:52e1 with SMTP id 22-20020a05600c22d600b003ede5db52e1mr18969810wmg.15.1680190254456;
        Thu, 30 Mar 2023 08:30:54 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:9ee7:40a0:eee0:62cc? ([2a05:6e02:1041:c10:9ee7:40a0:eee0:62cc])
        by smtp.googlemail.com with ESMTPSA id v15-20020a5d590f000000b002cfec8b7f89sm33266449wrd.77.2023.03.30.08.30.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 08:30:53 -0700 (PDT)
Message-ID: <ea42f3b2-ee4b-b13f-22fd-22066d75c408@linaro.org>
Date: Thu, 30 Mar 2023 17:30:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH=5d_thermal/drivers/rockchip=3a_use=c2=a0de?=
 =?UTF-8?Q?vm=5freset=5fcontrol=5farray=5fget=5fexclusive=28=29?=
Content-Language: en-US
To: ye.xingchen@zte.com.cn, rafael@kernel.org
Cc: amitk@kernel.org, rui.zhang@intel.com, heiko@sntech.de,
 p.zabel@pengutronix.de, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <202303241108553006227@zte.com.cn>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <202303241108553006227@zte.com.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_083058_245675_3E39D5F8 
X-CRM114-Status: UNSURE (   6.80  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjQvMDMvMjAyMyAwNDowOCwgeWUueGluZ2NoZW5AenRlLmNvbS5jbiB3cm90ZToKPiBGcm9t
OiBZZSBYaW5nY2hlbiA8eWUueGluZ2NoZW5AenRlLmNvbS5jbj4KPiAKPiBTd2l0Y2ggZGV2bV9y
ZXNldF9jb250cm9sX2FycmF5X2dldCgpIHRvCj4gZGV2bV9yZXNldF9jb250cm9sX2FycmF5X2dl
dF9leGNsdXNpdmUoKS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBZZSBYaW5nY2hlbiA8eWUueGluZ2No
ZW5AenRlLmNvbS5jbj4KPiAtLS0KCkFwcGxpZWQsIHRoYW5rcwoKLS0gCjxodHRwOi8vd3d3Lmxp
bmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNv
Q3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJv
PiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwK
PGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
