Return-Path: <SRS0=iGaN=IJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B91A6C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 12:06:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 423FD64FC0
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 12:06:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 423FD64FC0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ffftSVuT3PKRXCglCl8JPEU0PX64rLHOAf+eI1kWMmE=; b=iwDPkBUo2rDwydmP+qmFnbIHn
	h/kpBks/LDnCh3ZlVprPCEvJ/LXenaNUKuPdIgl0DNqp6HuzBtL7TCbgQkP6XBuVCJM8wPx/8tcZ8
	UUfXSY1q83M7FAQhfDb6YfZ8xknGDG7paJjnLFPPrihgx33VrVZRykvLLv8Q1s9jM172MtwKx81+t
	yAxE+2M4e2WmwtbbkZnRAQHuCRsTfbl+uDaXV3/9zFSMk0P8zmD1upL0qpfo5wb1EgdCFq0lSrgUG
	nReoC17EqHl1/M53wUikyvdIF+HR1aS0pavm6OhHJd52gs8T4fTPjsXYvHh0F3pGwPZdwDCuq87Ae
	q+Lyj4Y4Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKK5a-0091kn-Rd; Thu, 11 Mar 2021 12:06:51 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKK3w-0091JB-7t
 for linux-rockchip@lists.infradead.org; Thu, 11 Mar 2021 12:05:15 +0000
Received: by mail-wm1-x32e.google.com with SMTP id
 124-20020a1c00820000b029010b871409cfso13032847wma.4
 for <linux-rockchip@lists.infradead.org>; Thu, 11 Mar 2021 04:05:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=aMz02Pw/MDl0mrQwKqYDtH71nVS5Z34c9wdMRV1lOr0=;
 b=aVrMdt8T8/22diTp99YzVzKObN++3fBBNcFoCKDLcHbKPjlu2RlTSq3KZOHMDaTg36
 CHJCYlRl2Fw+L2GAynR9pSnImyRYMJgIUANmZn5OfC9l6ocb6zfv9FFLrF2Jm19Xp5z0
 TyvHKIJJ/ySTAdnkr7ks3OFvI/IRhxHyKuHiRAuEM1xZWTRWV1i3ksIhcKEJvSup6tPl
 BmHCoem893e/iZSd8QV8kU/Ie3Et4yXDfBmC+dAml5FV+uq7CJFRZpjVl2TLvdkg6LaY
 1JfxVfUa/3foEvpug8MaBgaa+rnbD8I4jtF/p+GnbI8eafOdORQcqhCdf5tTGPAMMx22
 W6ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aMz02Pw/MDl0mrQwKqYDtH71nVS5Z34c9wdMRV1lOr0=;
 b=L8+S/7MD9rJAwDIpp2M7t5VdLDSB06J4yQMMc6x5dHhhfxzDbol+Mc6z5OL6v1/TJZ
 yT7UDroODVgDNyoVZrgi/H66jSZ0IZG8bW9e1ttqGcYzp6x2fJvdJ00zVT0AN7pnwTie
 vx4JtNcZdoPiIQ+rJ1PmY4X/nSVmZB5xfW8fWf1UZcKLgkYGNi7IAAD62BjqiRtD1FdO
 2UByigJcnMogoIxgBRZQupuc7zydEmXHgdyt8RpouNfnPM483kkxxDEpk5CGyugzgQwN
 mkES+zeHMNwjRxkfDdTYUIlZvkZccMpbYkii2IsrtKXPGoh/WXrjs+cNbZciqTQ2oEZS
 9ITA==
X-Gm-Message-State: AOAM531b7D8Q+dxqk6pk6pJ9k127LoJTQUHcpQQvzj34gkHfmxY2wONg
 kcNk+Upb3ChUqi6tnxJsTpzing==
X-Google-Smtp-Source: ABdhPJy6rICxcQ9Lhw2Aw4PIYEzaZG0Ub83ywDHcSjrrLcV7UYTGYnhSG+DcKXgHOaT1D38zVLyo/A==
X-Received: by 2002:a1c:9d85:: with SMTP id g127mr7881382wme.161.1615464306057; 
 Thu, 11 Mar 2021 04:05:06 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:84cf:7f4d:d470:dfd4?
 ([2a01:e34:ed2f:f020:84cf:7f4d:d470:dfd4])
 by smtp.googlemail.com with ESMTPSA id c9sm3516205wrr.78.2021.03.11.04.05.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Mar 2021 04:05:05 -0800 (PST)
Subject: Re: [RESEND PATCH v5 2/4] arm64: dts: rk3399: Add dfi and dmc nodes.
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Lin Huang <hl@rock-chips.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 =?UTF-8?Q?Ga=c3=abl_PORTAY?= <gael.portay@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, Helen Koike <helen.koike@collabora.com>,
 Chen-Yu Tsai <wens@csie.org>, Jacob Chen <jacob2.chen@rock-chips.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>, Robin Murphy
 <robin.murphy@arm.com>, Boris Brezillon <boris.brezillon@collabora.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20210308233858.24741-1-daniel.lezcano@linaro.org>
 <20210308233858.24741-2-daniel.lezcano@linaro.org>
 <9c36893a-6ca8-dade-e203-890a4071bf50@gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <01efe343-673a-6f4f-13e7-cbf2a7254b6b@linaro.org>
Date: Thu, 11 Mar 2021 13:05:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <9c36893a-6ca8-dade-e203-890a4071bf50@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_120508_727305_AAC10CD2 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
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

T24gMDkvMDMvMjAyMSAxMjo0MiwgSm9oYW4gSm9ua2VyIHdyb3RlOgo+IEhpIERhbmllbCwKCj4g
Cj4gKFRoaXMgaXMgYSBnZW5lcmljIGR0c2kuIEhvdyBhYm91dCBjb29saW5nIGFuZCBkbWMgPz8p
ClllYWgsIEkgd2lsbCBhZGQgaXQgYWZ0ZXIuIEkgbmVlZCB0byBmaWd1cmUgb3V0IHRoZSByaWdo
dCBkeW5hbWljIHBvd2VyCmNvZWZmaWNpZW50IGZyb20gdGhlIGRpZmZlcmVudCBwbGFjZXMgYXJv
dW5kIChhbmRyb2lkIC8gY2hyb21lb3MgLwpldGMuLi4pLiBBbnkgaGVscCBmb3IgdGhhdCBpcyB3
ZWxjb21lLgoKClsgLi4uIF0KCi0tIAo8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9y
ZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAg
PGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDov
L3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5v
cmcvbGluYXJvLWJsb2cvPiBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
