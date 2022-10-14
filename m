Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1217C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Oct 2022 07:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7zqUWmMLyKxUAsaFwpUBaYr4bW6ra5kdUTG+70nJev0=; b=t4aa+IsZa3/09S
	z9e53P7HmTRqGOdfdMSj7TMTdYOyuWy2B7ywwWTGX/Q/zTx6UaaT1HMbv4SfQRFLE4XOo6DO7Bx+R
	UW+fyxr6fbTfkNVuPwmht4Ha6Byu88NDJFgyTsyA3Bp7iTgn8vDcWdEQULQrBQEK6EJg0/BhwOuRV
	MvqpilrIb8NdSniJ1eUXM/bBk1Qa2AOhnH7TEJcACtn8cPiOPwSKJhu4gbXqPy0xm7ZkjT6VzEZ3D
	le4ZduAY36qqWFGqI73kSvkQwF2qvkACWbq5N4Bsid2ZlBX1vgYuPnlfBgOc7DtHiLISt9bRdXCYn
	RN14IABbA1c6fLRPjncQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojEv8-00Dqhv-O2; Fri, 14 Oct 2022 07:15:50 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojEux-00Dqea-74; Fri, 14 Oct 2022 07:15:40 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id y10so2730151qvo.11;
        Fri, 14 Oct 2022 00:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MYtbU9ms8NkjJbi68Okb7u6sI1m59iHxzpbVIBkT+wo=;
        b=VM5Br9btJnO5Or80K2Tnd0MiryHbsv2mn7Azi5cT9xLhOsn0KObCj5sSjgl71zmpc4
         WBeRjqt+HSDxDmgZ+NwG/MYAS0iXUQZH9B9ktyxZVWnkHbcY/sWJjLHKVC/iOPDvfEdp
         fhy6jWRldRuT/VxDt06WJeRhJUMmsA+4pysgq1GU6bxwQHMwqnDdB9pEoi8Ix+zJW0D/
         AQZzDJDGPYoFaP0WtWo8BIk5fTAbeE/Nw9wTlwZT7cvhM02g7+2e1eS+32zP6qlQZxXz
         OWBKdWtSzE5aKfEIPniPwmCaIqJv8XgEzdk10bQnDXPwHkh0vZuGt8iSq3RTzQZCBo6U
         I61A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MYtbU9ms8NkjJbi68Okb7u6sI1m59iHxzpbVIBkT+wo=;
        b=4Tek0/p2HJZ7Yoe9lSJo3sxY4rA71ZdfXFgWrPmHQkx9gXa3vN+/i59lyJjqOjd9GZ
         sio7X0Z+1/c0g5ghDjWwSw5mMi5VZiKLVfKrAiFi6oTea0hUZ2kAbF21G0ua97Sna6FC
         tQkG9lzIUc2XZnwqtkIk1KHIN/p6SqboOIfw+yXwaMr7AkxnMgMxUtBhBDTOhqA5g8FP
         NcvhkZQAwqb9q5RJPlAHSKRRzr8yMS89hXH2IlurysAl+srMB9UWSL1a//ISi3IOPFnt
         kfGhKkLHTHRGhf1tC2z/BLi0lvI1lWFH87Z1He/OK+juaxoLRGUxq5dwyIYS0U6YyB2V
         UYcw==
X-Gm-Message-State: ACrzQf24WUUnXV3O9Mv0V5AI9dmYtyogf9CsBmQvXpIGj5lixlNQC4HC
	uNJV0o1PIm5lZwR0V/1ngrg=
X-Google-Smtp-Source: AMsMyM7+27HWk7xlt9ESBGEEwHheCABdyw3FB5apKO4+/9SYLUarNP9cXY2bycf/BdWqNXDePDDpHw==
X-Received: by 2002:a05:6214:c45:b0:4b4:442d:f91c with SMTP id r5-20020a0562140c4500b004b4442df91cmr2886943qvj.24.1665731737192;
        Fri, 14 Oct 2022 00:15:37 -0700 (PDT)
Received: from p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de (p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de. [2003:f6:ef03:6f00:5de6:a4d0:d791:ed01])
        by smtp.gmail.com with ESMTPSA id o16-20020a05620a2a1000b006e6a7c2a269sm1901693qkp.22.2022.10.14.00.15.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Oct 2022 00:15:36 -0700 (PDT)
Message-ID: <7ab31b13e625773976f4eb4b639d3287ee0f9efa.camel@gmail.com>
Subject: Re: [PATCH v3 2/4] iio: health: max30100: do not use internal
 iio_dev lock
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>, Nuno =?ISO-8859-1?Q?S=E1?=
	 <nuno.sa@analog.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-iio@vger.kernel.org, 
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-imx@nxp.com, Chen-Yu Tsai <wens@csie.org>, Andriy Tryshnivskyy
 <andriy.tryshnivskyy@opensynergy.com>, Ciprian Regus
 <ciprian.regus@analog.com>,  Vladimir Zapolskiy <vz@mleia.com>, Cixi Geng
 <cixi.geng1@unisoc.com>, Neil Armstrong <narmstrong@baylibre.com>, Miquel
 Raynal <miquel.raynal@bootlin.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Heiko Stuebner <heiko@sntech.de>, Fabio Estevam <festevam@gmail.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Baolin Wang <baolin.wang@linux.alibaba.com>, Hans
 de Goede <hdegoede@redhat.com>, Alexandru Ardelean <aardelean@deviqon.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, Haibo Chen
 <haibo.chen@nxp.com>, Lars-Peter Clausen <lars@metafoo.de>, Jyoti Bhayana
 <jbhayana@google.com>, Jonathan Cameron <jic23@kernel.org>,  Florian Boor
 <florian.boor@kernelconcepts.de>, Chunyan Zhang <zhang.lyra@gmail.com>,
 Orson Zhai <orsonzhai@gmail.com>, Shawn Guo <shawnguo@kernel.org>, Kevin
 Hilman <khilman@baylibre.com>
Date: Fri, 14 Oct 2022 09:16:55 +0200
In-Reply-To: <CAHp75Vc=TMsFBR8PUb7tifgM_b8foRhiAwy3VEDsX4hTOjKP=Q@mail.gmail.com>
References: <20221012151620.1725215-1-nuno.sa@analog.com>
	 <20221012151620.1725215-3-nuno.sa@analog.com>
	 <CAHp75Vc=TMsFBR8PUb7tifgM_b8foRhiAwy3VEDsX4hTOjKP=Q@mail.gmail.com>
User-Agent: Evolution 3.44.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_001539_282051_970085BB 
X-CRM114-Status: GOOD (  27.46  )
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

T24gV2VkLCAyMDIyLTEwLTEyIGF0IDIwOjQ2ICswMzAwLCBBbmR5IFNoZXZjaGVua28gd3JvdGU6
Cj4gT24gV2VkLCBPY3QgMTIsIDIwMjIgYXQgNjoxNSBQTSBOdW5vIFPDoSA8bnVuby5zYUBhbmFs
b2cuY29tPiB3cm90ZToKPiA+IAo+ID4gVGhlIHBhdHRlcm4gdXNlZCBpbiB0aGlzIGRldmljZSBk
b2VzIG5vdCBxdWl0ZSBmaXQgaW4gdGhlCj4gPiBpaW9fZGV2aWNlX2NsYWltX2RpcmVjdF9tb2Rl
KCkgdHlwaWNhbCB1c2FnZS4gSW4gdGhpcyBjYXNlLAo+ID4gaWlvX2J1ZmZlcl9lbmFibGVkKCkg
d2FzIGJlaW5nIHVzZWQgbm90IHRvIHByZXZlbnQgdGhlIHJhdyBhY2Nlc3MKPiA+IGJ1dCB0bwo+
ID4gYWxsb3cgaXQuIEhlbmNlLCBsZXQncyBtYWtlIHVzZSBvZiB0aGUgbmV3Cj4gPiBpaW9fZGV2
aWNlX2NsYWltX2J1ZmZlcl9tb2RlKCkgQVBJIHRvIG1ha2Ugc3VyZSB3ZSBzdGF5IGluIGJ1ZmZl
cmVkCj4gPiBtb2RlCj4gPiBkdXJpbmcgdGhlIGNvbXBsZXRlIHJlYWQuCj4gPiAKPiA+IE5vdGUg
dGhhdCB3ZSBhcmUgc2hhZG93aW5nIHRoZSBlcnJvciBjb2RlIHJldHVybmVkIGJ5Cj4gPiBpaW9f
ZGV2aWNlX2NsYWltX2J1ZmZlcl9tb2RlKCkgc28gdGhhdCB3ZSBrZWVwIHRoZSBvcmlnaW5hbCBv
bmUKPiA+ICgtRUFHQUlOKS4gVGhlIHJlYXNvbiBpcyB0aGF0IHNvbWUgdXNlcnNwYWNlIHN0YWNr
IG1pZ2h0IGFscmVhZHkgYmUKPiA+IHJlbHlpbmcgb24gdGhpcyBwYXJ0aWN1bGFyIGNvZGUgc28g
dGhhdCB3ZSBhcmUgbm90IHRha2luZyBjaGFuY2VzCj4gPiBhbmQKPiA+IGxlYXZlIGl0IGFsb25l
Lgo+IAo+IFRoZSBhYm92ZSBsaW5lIHdpZHRocyBzZWVtIGEgYml0IGFyYml0cmFyeSB0byBtZS4g
QnV0IEkgdGhpbmsgaXQncwo+IGR1ZQo+IHRvIGZ1bmN0aW9uIG5hbWVzIGluIHRoZW0uCj4gUGVy
aGFwcyB5b3UgY2FuIG1ha2UgdGhlbSBsZXNzIGRldmlhdGVkIGJ5IHNodWZmbGluZyBhIGJpdCwg
bGlrZQo+IG1vdmluZyAiYnV0IHRvIiB0byB0aGUgbmV4dCBsaW5lLgo+IAo+ID4gU2lnbmVkLW9m
Zi1ieTogTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KPiA+IC0tLQo+ID4gwqBkcml2ZXJz
L2lpby9oZWFsdGgvbWF4MzAxMDAuYyB8IDkgKysrLS0tLS0tCj4gPiDCoDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2lpby9oZWFsdGgvbWF4MzAxMDAuYwo+ID4gYi9kcml2ZXJzL2lpby9oZWFsdGgvbWF4
MzAxMDAuYwo+ID4gaW5kZXggMmNjYTVlMDUxOWY4Li42YWM0OTkwMWM5ZGEgMTAwNjQ0Cj4gPiAt
LS0gYS9kcml2ZXJzL2lpby9oZWFsdGgvbWF4MzAxMDAuYwo+ID4gKysrIGIvZHJpdmVycy9paW8v
aGVhbHRoL21heDMwMTAwLmMKPiA+IEBAIC0zODcsMTggKzM4NywxNSBAQCBzdGF0aWMgaW50IG1h
eDMwMTAwX3JlYWRfcmF3KHN0cnVjdCBpaW9fZGV2Cj4gPiAqaW5kaW9fZGV2LAo+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBUZW1wZXJhdHVyZSByZWFkaW5nIGNhbiBvbmx5
IGJlIGFjcXVpcmVkIHdoaWxlCj4gPiBlbmdpbmUKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICogaXMgcnVubmluZwo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgKi8KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG11dGV4X2xvY2soJmluZGlv
X2Rldi0+bWxvY2spOwo+ID4gLQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYg
KCFpaW9fYnVmZmVyX2VuYWJsZWQoaW5kaW9fZGV2KSkKPiAKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGlmIChpaW9fZGV2aWNlX2NsYWltX2J1ZmZlcl9tb2RlKGluZGlvX2Rldikp
IHsKPiAKPiBJIHRoaW5rIGEgc3VtbWFyeSBvZiByZXBsYWNpbmcgZXJyb3IgY29kZSBpcyBnb29k
IHRvIGhhdmUgaGVyZSwgbGlrZQo+IAo+IC8qCj4gwqAqIFJlcGxhY2luZyAtRUJVU1kgb3Igb3Ro
ZXIgZXJyb3IgY29kZQo+IMKgKiByZXR1cm5lZCBieSBpaW9fZGV2aWNlX2NsYWltX2J1ZmZlcl9t
b2RlKCkKPiDCoCogYmVjYXVzZSB1c2VyIHNwYWNlIG1heSByZWx5IG9uIHRoZSBjdXJyZW50Cj4g
wqAqIG9uZS4KPiDCoCovCj4gCgpUaGlzIG1pZ2h0IG1ha2Ugc2Vuc2UuLi4gSSdsbCB3YWl0IGZv
ciBKb25hdGhhbidzIHJldmlldyB0byBzZWUgaG93CnN0cm9uZyBoZSBmZWVscyBhYm91dCB0aGlz
LiBNYXliZSBoZSBjYW4gYWxzbyBhZGQgaXQgd2hlbiBhcHBseWluZy4KCi0gTnVubyBTw6EKPiAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
