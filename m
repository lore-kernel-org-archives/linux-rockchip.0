Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09092C761AF
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 08:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r3Z9+A2YbqqyjIqKUcK0YDMtMLIIdHm4a9DpbY8wSiQ=; b=I+QGVx9FFgRk0w
	ZxssrKGcNOd6VwEnT4ucl03wFxOeHbLevJyD5LS+ZJB978iel6ADa1BB5GDScs1tceThZf5bX2qYD
	+MYWm3gPU4WJKISZk9G6IMbszSbs76ijoZThAoWMu5gDlxGxBizsIk0F9BtMR/cTny2i0BXfLSUWs
	nDhj16I0hEiRmHYSfiMB8Cn4btWX+d+L3HnDQksIvJrCTsqOtd4dcoUz2LfwBmrgUlteEtHA1WUjs
	hMcyVz3v6TAecfSEENJfspraT02XsGX55bBDo2IIeptzzOjbzgTgFrr0Zf+BaRJolGw67pMS9D2ho
	VIY7facVuD44IXAnSKag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjcLj-000a3S-1T;
	Tue, 04 Apr 2023 08:49:17 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjcJg-000YvH-1y
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Apr 2023 08:47:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680598017;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=G99E3diY62ZpH4JZ1b4pZ2Ts787AInV4dhcYUQ8Vmz8=;
	b=AJb6H1Y63PWX5b4IVqjFG07GIH83/swVhQjLknWUuiCSKvkvikIqzBX0i0lseRgNBBf/sK
	DZtgdePYj9xTOSfWVj6Ubybz842gmdMM4by9Cguq6iXl0UOVPcHXrDUdPnO6jKk9q5Unwv
	5rSLm//X2vl3Gt5R1pxfcWWal6Mm788=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-137-NEQ0hgJKNi-5GoQOlbh1gA-1; Tue, 04 Apr 2023 04:46:56 -0400
X-MC-Unique: NEQ0hgJKNi-5GoQOlbh1gA-1
Received: by mail-wr1-f69.google.com with SMTP id s28-20020adfa29c000000b002d92bb99383so3563660wra.23
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Apr 2023 01:46:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680598015;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G99E3diY62ZpH4JZ1b4pZ2Ts787AInV4dhcYUQ8Vmz8=;
        b=mo+/PHvMnfQClhgu39FwpwAQIitybM991fZ72GYPsUorZH/4pXePhdK2GhwUAOaAb8
         nmcAmbi3FktdR1cvLh6uFbRGpOo/k7qUS1NaJ8xYfj6v3jFHivl+4sMO/bW5X5e+rYxt
         WUVHboYJPZzAP7QP4Z6Lx5QxbhWB3v4CyGOTyzaLkvxr8DvD6Hpnthvq5vQnbmenQBtb
         DRrmkodQne8yGAdIrZLL9rDy0rxPwhrw57ItJS0BhEGRKPbKHFCg4myxzdzSCtFMXwcQ
         Q8VDUjfANV3LlpTYSEpTkqo2+U0fMC15qwlycLFWB1zLrB0/D1ULbuYaGyG0pHVb8gqd
         Mx+w==
X-Gm-Message-State: AAQBX9e/oZUjBaPzr/cakFvCvjei1XqNAFvKH+IqeFDR5DZfWM2LbZEe
	gOOuRnJ8HyoQ3MB+uQ66fBrxKPVH+dSKJEGgDpr7SaqZ1ho0GdpJ/KhdYKhrwH1sFrxrktaMy4Q
	bC4yU6HP8fRsGb46rFXPHWnckb/hh4/fL
X-Received: by 2002:adf:f005:0:b0:2d6:cc82:3c49 with SMTP id j5-20020adff005000000b002d6cc823c49mr931472wro.13.1680598015276;
        Tue, 04 Apr 2023 01:46:55 -0700 (PDT)
X-Google-Smtp-Source: AKy350Z8i51Ygry+zzbcD2bOKjp+1nQQ1biyfzppPWMmvxDvdWIJCYlOOMGrJyFI4cevmr2NBMZoWw==
X-Received: by 2002:adf:f005:0:b0:2d6:cc82:3c49 with SMTP id j5-20020adff005000000b002d6cc823c49mr931458wro.13.1680598014942;
        Tue, 04 Apr 2023 01:46:54 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id g6-20020adfe406000000b002d743eeab39sm11753376wrm.58.2023.04.04.01.46.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 01:46:54 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Peter Robinson <pbrobinson@gmail.com>
Cc: Jarrah <kernel@undef.tools>, Heiko =?utf-8?Q?St=C3=BCbner?=
 <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Caleb Connolly <kc@postmarketos.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Martijn Braam
 <martijn@brixit.nl>, Ondrej Jirman <megi@xff.cz>, Rob Herring
 <robh+dt@kernel.org>, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for
 Pinephone Pro to 1.5 MB
In-Reply-To: <CALeDE9M4eNq1sfQ-UcNZr8naYThmLFxDpt=zj8WkCSzHPUY8ug@mail.gmail.com>
References: <20230403175937.2842085-1-javierm@redhat.com>
 <3738011.44csPzL39Z@diego>
 <d7efebcc-5b5b-185e-bec8-b6b9d5d27d93@undef.tools>
 <87h6twdpi7.fsf@minerva.mail-host-address-is-not-set>
 <CALeDE9M4eNq1sfQ-UcNZr8naYThmLFxDpt=zj8WkCSzHPUY8ug@mail.gmail.com>
Date: Tue, 04 Apr 2023 10:46:53 +0200
Message-ID: <87bkk4dog2.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_014700_854677_722F865D 
X-CRM114-Status: GOOD (  11.72  )
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

UGV0ZXIgUm9iaW5zb24gPHBicm9iaW5zb25AZ21haWwuY29tPiB3cml0ZXM6Cgo+IE9uIFR1ZSwg
QXByIDQsIDIwMjMgYXQgOToyNOKAr0FNIEphdmllciBNYXJ0aW5leiBDYW5pbGxhcwo+IDxqYXZp
ZXJtQHJlZGhhdC5jb20+IHdyb3RlOgoKWy4uLl0KCj4+ID4gQXQgbGVhc3QgZm9yIG1lIGl0J3Mg
YmVlbiBjb252ZW5pZW50IHRvIGhhdmUgYm90aCB0aGUgUFAgYW5kIFBQUCB1c2UgdGhlCj4+ID4g
c2FtZSBzZXR0aW5ncyB3aGlsZSBkZWJ1Z2dpbmcuCj4+ID4KPj4KPj4gQWdyZWVkLCBhbGwgbXkg
b3RoZXIgYm9hcmRzIHVzZSAxMTUyMDAgYXMgd2VsbCwgdGhlIG9ubHkgZXhjZXB0aW9ucyBhcmUK
Pj4gdGhlIFJvY2twcm82NCBhbmQgUGluZVBob25lIFBybyBmb3IgbWUuCj4KPiBBbGwgUm9ja2No
aXBzIGRldmljZXMgdXNlIDEuNW0gZXhjZXB0IGEgY2hyb21lYm9vayBhbmQgdGhlIFB1bWEsIGFu
ZAo+IHRoaXMgZGV2aWNlLgo+CgpZZXMsIEkgbWVhbnQgYWxsIHRoZSBvdGhlciBub24tcm9ja2No
aXAgYm9hcmRzIEkgaGF2ZS4gU28gSSB1bmRlcnN0b29kIHRoZQphcHBlYWwgb2Ygd2hhdCBKYXJy
YWggbWVudGlvbmVkIGFib3V0IHVzaW5nIDExNTIwMCBmb3IgZXZlcnl0aGluZy4KCkhhdmluZyBz
YWlkIHRoYXQsIG15IHZvdGUgd291bGQgYmUgdG8gY2hhbmdlIHRoZSBQaW5lUGhvbmUgUHJvIHRv
IDEuNSBNQgpnaXZlbiB0aGF0IGl0IGlzIHdoYXQgYWxsIHRoZSByb2NrY2hpcCAoYnV0IHR3bykg
Ym9hcmRzIHVzZSBpbiBtYWlubGluZS4KCi0tIApCZXN0IHJlZ2FyZHMsCgpKYXZpZXIgTWFydGlu
ZXogQ2FuaWxsYXMKQ29yZSBQbGF0Zm9ybXMKUmVkIEhhdAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
