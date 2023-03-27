Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8F5CC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Mar 2023 15:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4rR385mxW+b0vkH40g+n26aNicN6hSuSWgNY4Qy/Obs=; b=wSwwLGSPg1MJeC
	a3usvMUK4e23npRCwl7tCWd7lRS9J/ZWOUSBstCJ/ZWpZPpBBZVpPmQulZmu3Jq0E+WtpkhlMjr/b
	3SmY0mvmolpR7eFNaMxC5Fu9uLHyEXjcV2GFwMofzioZ0H/hxthMsJGDGz82SLOOANkXoc71piAt/
	EZyLDSLw6RZKUcD4Xvzx/7HZCz98+ya3f5iBzJdzGAK2CxvdcdMdu3mKtTptb7ntpa6xxk2nefvkx
	78Ug5krV4wxxdWkO6lEr8CEmNj5eYh7aZp5kMBkvUJfEbdxNbb6qAkO95JtUqDp9phc2yHhvTvpSX
	Uw1sdarDVDeK0KxYopnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgox4-00BZdM-1e;
	Mon, 27 Mar 2023 15:40:06 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgox1-00BZcJ-2V
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Mar 2023 15:40:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679931602;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YdanRT+ne+cfkfmiIxrWznhoBAlaxgbURB+eWBN8fi8=;
	b=RmbmHAxaMNC3IFGkRIzmNSQNjWex9IwgyPEVoobNRY8++Eb5y//UzIhtOcU9hDdTMG1/R7
	35aqs2Sr958nd+OSkiQUuEaQy42KifFm2XNvf/GwDaCOYIkgLnOCzWBjnjGaAe6oKIrHv1
	jBvW5yw1xUx5uy1Y95XHT7BvaTsxaDE=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-620-7nJ5_BU0P0OfvYHyh_4WZg-1; Mon, 27 Mar 2023 11:40:00 -0400
X-MC-Unique: 7nJ5_BU0P0OfvYHyh_4WZg-1
Received: by mail-wr1-f72.google.com with SMTP id j17-20020adfb311000000b002d660153278so828260wrd.20
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Mar 2023 08:40:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679931599;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YdanRT+ne+cfkfmiIxrWznhoBAlaxgbURB+eWBN8fi8=;
        b=0msUOHYsD8H/CuaGxmcmHD7A59Bkbh+XxBvOvE0yNc/6+audQFP9BinR1lTaYqJeCi
         MBmq/xEMfrCK2iOtGs24PoBofVLDwX57MU+xnxn5lGsbvGlBGpPKsWf5eJAVzvLyW0ie
         g+7/b1iOZpSg7sGh67uqt8yfrd0p9w00QVlooXPMYzxLDroJQLevdeb5jfeqd1Mjm0yv
         JbonoCl02RqDleAkRGYgI3Ub4HiTXBXS8RC93jc74+vDPOkh+525xDqeAgzeoFoNYJKp
         kIFC3l4vkg/Y5cD4EYclIfLvXGRYGfBMxjE6RliP+7UtGQq0vsWQcpWGRHpQpmbnoQ5C
         P5fA==
X-Gm-Message-State: AO0yUKUXQZml/e6fcqMx1LOVVuN5b6P24de9Rf6yeqoSkQNvz7xug9VY
	moKoXWqK8y2qymeZPjKlVOQBHgU1gHJlvTFqlBvTYiB+PISfzJ9kGRrI65WuFcnOshmEZb+fpcE
	5WilIJB6fAOzpvkz0NBb3wfj7z8MXnfZb
X-Received: by 2002:a7b:cd99:0:b0:3ee:4dc0:d4f6 with SMTP id y25-20020a7bcd99000000b003ee4dc0d4f6mr9265589wmj.17.1679931599117;
        Mon, 27 Mar 2023 08:39:59 -0700 (PDT)
X-Google-Smtp-Source: AK7set+YJMEZ0pdLBD7p1SuDbHQKB75TdGkUhh6pIw6rpYOFeeHQ4g+zqAh/Fbj3rpVnKJacGZ1JWQ==
X-Received: by 2002:a7b:cd99:0:b0:3ee:4dc0:d4f6 with SMTP id y25-20020a7bcd99000000b003ee4dc0d4f6mr9265572wmj.17.1679931598776;
        Mon, 27 Mar 2023 08:39:58 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id i6-20020a05600c354600b003ede6540190sm9439951wmq.0.2023.03.27.08.39.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 08:39:58 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
Cc: linux-kernel@vger.kernel.org, Robert Mader <robert.mader@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Peter Robinson
 <pbrobinson@gmail.com>, Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Martijn Braam <martijn@brixit.nl>, Kamil =?utf-8?Q?Trzci=C5=84ski?=
 <ayufan@ayufan.eu>,
 Caleb Connolly <kc@postmarketos.org>, Heiko Stuebner <heiko@sntech.de>,
 Jarrah Gosbell <kernel@undef.tools>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, Tom
 Fitzhenry <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rk3399-pinephone-pro: Add internal
 display support
In-Reply-To: <20230327130147.wgxl2qayhzsi2xak@core>
References: <20230327074136.1459212-1-javierm@redhat.com>
 <20230327130147.wgxl2qayhzsi2xak@core>
Date: Mon, 27 Mar 2023 17:39:57 +0200
Message-ID: <87wn32rynm.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_084003_910630_C126EF0A 
X-CRM114-Status: GOOD (  10.73  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T25kxZllaiBKaXJtYW4gPG1lZ2lAeGZmLmN6PiB3cml0ZXM6CgpIZWxsIE9uZMWZZWosCgo+IEhp
IEphdmllciwKPgo+IEkndmUgdHJpZWQgdGhlIHBhdGNoIG9uIHRvcCBvZiBsaW51cy9tYXN0ZXIg
YW5kIGl0IHdvcmtzIGFzIGV4cGVjdGVkLiBNeQo+IERSTSB0ZXN0IGFwcCBzaG93cyAxNi42Njlt
cyBiZXR3ZWVuIGZyYW1lcy4gVGhlIGRpc3BsYXkgb3V0cHV0IGlzIG9rIG9uCj4gZGV2ZWxvcGVy
IGJhdGNoIHBpbmVwaG9uZSBwcm8sIGFuZCBpcyBjb3JydXB0ZWQgb24gcHJvZHVjdGlvbiB2ZXJz
aW9uLgo+IERpc3BsYXkgYWxzbyBkb2Vzbid0IGNvbWUgYmFjayBhZnRlciBibGFua2luZy4gQWxs
IGFzIGV4cGVjdGVkLgo+Cj4gVGVzdGVkLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4K
PgoKVGhhbmtzIGZvciB0ZXN0aW5nLgoKPiBBIGZldyBtb3JlIGNvbW1lbnRzIGJlbG93Lgo+CgpJ
J20gT0sgd2l0aCB0aGVzZSBjb21tZW50cyBidXQgSSBkaWQgYSBnaXQgZGlmZiB3aXRoIHlvdXIg
b3JhbmdlLXBpLTYuMwpicmFuY2gganVzdCBiZWZvcmUgcG9zdGluZyBhbmQgdGhpcyB3YXMgdGhl
IGxhdGVzdCB0aGF0J3MgaW4geW91ciB0cmVlLgoKU28gZmVlbCBmcmVlIHRvIGVpdGhlciBwb3N0
IGEgdjMgYWRkcmVzc2luZyB0aGUgdGhpbmdzIHlvdSBhcmUgcG9pbnRpbmcKb3V0IG9yIGxldHMg
bGFuZCB0aGlzIGFuZCB3ZSBjYW4gcG9zdCBhbnkgZnVydGhlciBjbGVhbnVwcyBvbiB0b3AgSU1P
LgoKLS0gCkJlc3QgcmVnYXJkcywKCkphdmllciBNYXJ0aW5leiBDYW5pbGxhcwpDb3JlIFBsYXRm
b3JtcwpSZWQgSGF0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
