Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3215CD11C2
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Apr 2024 08:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7RJvufnfJ/EJ5aZxnItfoq+ccNq5A/QapZyB42Gip8s=; b=vbxaOhC0qQ6Lub
	KTdZKbcpJXQMpWpbI3h+F34oQN7L4jG8Dk0RjivD8WvyCkZ1LZiVkXTynvx1YiL7YhLzm4zlacf3d
	T1Yo2rvoc2kL7MeLQOqr77BQLukwcrQMN8uUK1Pa7Ms2LSDrbe2VGneDXC1LcjWF/hzGa3kPpuieN
	bL1t1dBZ6iExvL1D03bK3pZ4EEQmy98AD1gGkamvhUBCv9iDYvlgbjPco6b++rR3oa4NqywCVsZYe
	uniCSt9FKMH6nb3TjqBUQKK3DjtdPl6AERDbt72PM9i3kQvdrWNv92ZjekSmjPLQ6Bnn4NWEC+4YP
	fvxCq3vT1SrjJwIFCgZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtNar-0000000C4pb-26s1;
	Sun, 07 Apr 2024 08:09:37 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtNao-0000000C4nj-3Wyv
	for linux-rockchip@lists.infradead.org;
	Sun, 07 Apr 2024 08:09:36 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-516dbc36918so1146453e87.0
        for <linux-rockchip@lists.infradead.org>; Sun, 07 Apr 2024 01:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1712477368; x=1713082168; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RoR1pZo3Vw2aL2foO6O0rlclxwNL4uebAWFaAlNYhYo=;
        b=ffWsJBfx9+L74dgnk79u7HwwLgCFxJ2wcdw6zZI7kz9wk2JWdV1DwaTz9d69NiJZyl
         7Uab38OMbjHbSSLwVyGFKXNKf9HcUJ3bV47+V7RHdcm2G4/8XyqC9AC00rK02jnyqdZ+
         BPhG/Ras3YiAOxC3+D7dHfC6GUO3t+ps8hs9MXK3xXP4yRq8mWHtxxdsrRnPxLPLdf3l
         2dvfbgNrxz+D6w+jx7yDkJShMkdvtwjvfDwSTdekXhzlDVIAq297AazUn2NjuVtAq7bd
         /55r2jlXHcc32Pjk6TkMoYbL7UYF6yCEjbiu5YfMWxxIvnPY9StkQS2OELyH5f1fNR72
         wu2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712477368; x=1713082168;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RoR1pZo3Vw2aL2foO6O0rlclxwNL4uebAWFaAlNYhYo=;
        b=V3tnaFDyC5LKIYovj5LXmiteRdZhf+2Pxjh+QUlU+gE2S/iXHH525PWHPIToTtqHxS
         9Wn1oZviFse3F0Z1WmoSPQRxSfFmwQ7WB3dk8u3kw51veKwaPFqwIdyVvQLgAk5XY2AQ
         eVtY6R8C3AbJCYaZ+w3S3gM3Cu/yPOdVhSKyfcYbbBYltB84RRQW6ZLyByl/w329m4iX
         oDd75bURG2AF4mOR5+U4zVuc3vPJCxSxEZu3DJ7voYMawXutCFDnfqKRxsOXKJj9sVpi
         C//xZuwEBBFmUnSDfJwBGF5EBarYj+lbn0qNWD5mK95gfPqYDY8OU2AtoUqnLWbsxf5C
         hH4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUtIeKnmoaky28O2+knr5A4NrFKNS3l3oKWoAjXbhgEYlnSbgUnHSk3/GlDB1hbiUbH93IJQkomL9j1wwk7dgwRumGz2mUHsF94/j+GpY6sFCzm
X-Gm-Message-State: AOJu0Yx7ZMJ+Hp1gIuSS+doNFr5OTnn5KNwD9rOGxNZH4C7esrTZ1L5Z
	W89q3Jo2b2Dh+lCgQaFsI2Gl15LZ+cqwCYW4gWkzYrQkEF1x2ogdx8D0qRAKxV0=
X-Google-Smtp-Source: AGHT+IH0P9sWNMW1yyWdHET4wFxBLnPE44dQ6iyO/SJlklsjpRQZxUghb+32SdG+wT+lEVbRaNVwUg==
X-Received: by 2002:ac2:4c3c:0:b0:516:d482:d720 with SMTP id u28-20020ac24c3c000000b00516d482d720mr3681790lfq.30.1712477368029;
        Sun, 07 Apr 2024 01:09:28 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (ip-185-104-138-24.ptr.icomera.net. [185.104.138.24])
        by smtp.gmail.com with ESMTPSA id s7-20020adfea87000000b0033e7de97214sm6144093wrm.40.2024.04.07.01.09.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 01:09:27 -0700 (PDT)
Message-ID: <ed0b32ec6da10f46ff5d820612bfe700388fae1e.camel@ndufresne.ca>
Subject: Re: [PATCH v2 0/2] Enable JPEG encoding on rk3588
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Link Mauve <linkmauve@linkmauve.fr>
Cc: linux-kernel@vger.kernel.org, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>,  Heiko Stuebner <heiko@sntech.de>, Joerg Roedel
 <joro@8bytes.org>, Will Deacon <will@kernel.org>,  Robin Murphy
 <robin.murphy@arm.com>, Sebastian Reichel
 <sebastian.reichel@collabora.com>, Cristian Ciocaltea
 <cristian.ciocaltea@collabora.com>, Dragan Simic <dsimic@manjaro.org>,
 Shreeya Patel <shreeya.patel@collabora.com>, Chris Morgan
 <macromorgan@hotmail.com>, Andy Yan <andy.yan@rock-chips.com>, Nicolas
 Frattaroli <frattaroli.nicolas@gmail.com>,  linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,  devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  iommu@lists.linux.dev
Date: Sun, 07 Apr 2024 10:08:58 +0200
In-Reply-To: <ZhAI6tQZTD7BTosI@desktop>
References: <20240327134115.424846-1-linkmauve@linkmauve.fr>
	 <bbcb66e9499120a86b367e7abdac2d8e2e704bfb.camel@ndufresne.ca>
	 <ZhAI6tQZTD7BTosI@desktop>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual; keydata=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
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240407_010934_898413_9CA1054F 
X-CRM114-Status: GOOD (  37.29  )
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

TGUgdmVuZHJlZGkgMDUgYXZyaWwgMjAyNCDDoCAxNjoyMSArMDIwMCwgTGluayBNYXV2ZSBhIMOp
Y3JpdMKgOgo+IE9uIFRodSwgQXByIDA0LCAyMDI0IGF0IDAxOjQxOjE1UE0gLTA0MDAsIE5pY29s
YXMgRHVmcmVzbmUgd3JvdGU6Cj4gPiBIaSwKPiAKPiBIaSwKPiAKPiA+IAo+ID4gTGUgbWVyY3Jl
ZGkgMjcgbWFycyAyMDI0IMOgIDE0OjQxICswMTAwLCBFbW1hbnVlbCBHaWwgUGV5cm90IGEgw6lj
cml0wqA6Cj4gPiA+IE9ubHkgdGhlIEpQRUcgZW5jb2RlciBpcyBhdmFpbGFibGUgZm9yIG5vdywg
YWx0aG91Z2ggdGhlcmUgYXJlIHBhdGNoZXMKPiA+ID4gZm9yIHRoZSB1bmRvY3VtZW50ZWQgVlA4
IGVuY29kZXIgZmxvYXRpbmcgYXJvdW5kWzBdLgo+ID4gCj4gPiBbMF0gc2VlbXMgbGlrZSBhIGJy
b2tlbiBsaW5rLiBUaGUgVlA4IGVuY29kZXIgUkZDIGlzIGZvciBSSzMzOTkgKGFuZCBIYW50cm8g
SDEKPiA+IHBvc3RlZCBieSBTVCBtb3JlIHJlY2VudGx5KS4gVGhlIFRSTSBzYXlzICJWRVBVMTIx
KEpQRUcgZW5jb2RlciBvbmx5KSIsIHdoaWNoCj4gPiBzdWdnZXN0IHRoYXQgdGhlIEguMjY0IGFu
ZCBWUDggZW5jb2RlcnMgdXN1YWxseSBmb3VuZCBvbiB0aGUgVkVQVTEyMSBhcmUKPiA+IHJlbW92
ZWQuIEFzIFJvY2tjaGlwIGhhdmUgcmVtb3ZlIHRoZSBzeW50aGVzaXplIHJlZ2lzdGVyIHdoaWxl
IG1vZGlmeWluZyB0aGUgSDEKPiA+IElQLCBpdCBpcyBkaWZmaWN1bHQgdG8gdmVyaWZ5LiBDb25m
dXNpbmdseSB0aGUgSC4yNjQgc3BlY2lmaWMgcmVnaXN0ZXJzIGFyZQo+ID4gZG9jdW1lbnRlZCBp
biB0aGUgVFJNIGFyb3VuZCBWRVBVMTIxLgo+IAo+IEFoLCB0aGUgbGluayBiZWNhbWUsIGFuZCB3
YXMgaW5kZWVkIFNU4oCZcyBzZXJpZXM6Cj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9w
cm9qZWN0L2xpbnV4LXJvY2tjaGlwL2xpc3QvP3Nlcmllcz03ODk4ODUmYXJjaGl2ZT1ib3RoCj4g
Cj4gQnV0IHRoZSBUUk0gcGFydCAxIHNheXMgdGhlIFZFUFUxMjEgc3VwcG9ydHMgSC4yNjQgZW5j
b2RpbmcgKHBhZ2UgMzY3KSwKPiBhbmQgaXTigJlzIGxpa2VseSB0aGV5IGRpZG7igJl0IHJlbW92
ZSBqdXN0IFZQOCBzdXBwb3J0IHNpbmNlIHRoZSBjb2RlYwo+IGZlYXR1cmVzIGFyZSBwcmV0dHkg
Y2xvc2UgdG8gSC4yNjTigJlzLgo+IAo+ID4gCj4gPiA+IAo+ID4gPiBUaGlzIGhhcyBiZWVuIHRl
c3RlZCBvbiBhIHJvY2stNWIsIHJlc3VsdGluZyBpbiBmb3VyIC9kZXYvdmlkZW8qCj4gPiA+IGVu
Y29kZXJzLiAgVGhlIHVzZXJzcGFjZSBwcm9ncmFtIEnigJl2ZSBiZWVuIHVzaW5nIHRvIHRlc3Qg
dGhlbSBpcwo+ID4gPiBPbml4WzFdLCB1c2luZyB0aGUganBlZy1lbmNvZGVyIGV4YW1wbGUsIGl0
IHdpbGwgcGljayBvbmUgb2YgdGhlc2UgZm91cgo+ID4gPiBhdCByYW5kb20gKGJ1dCBkaXNwbGF5
cyB0aGUgb25lIGl0IHBpY2tlZCk6Cj4gPiA+ICUgZmZtcGVnIC1pIDxpbnB1dCBpbWFnZT4gLXBp
eF9mbXQgeXV2ajQyMHAgdGVtcC55dXYKPiA+ID4gJSBqcGVnLWVuY29kZXIgdGVtcC55dXYgPHdp
ZHRoPiA8aGVpZ2h0PiBOVjEyIDxxdWFsaXR5PiBvdXRwdXQuanBlZwo+ID4gCj4gPiBJIGRvbid0
IGxpa2UgdGhhdCB3ZSBleHBvc2luZyBlYWNoIGlkZW50aWNhbCBjb3JlcyBhIHNlcGFyYXRlIHZp
ZGVvIG5vZGVzLiBJCj4gPiB0aGluayB3ZSBzaG91bGQgYWltIGZvciAxIGRldmljZSwgYW5kIHRo
ZW4gbXVsdGktcGxleCBhbmQgc2NoZWR1bGUgZGUgY29yZXMgZnJvbQo+ID4gaW5zaWRlIHRoZSBM
aW51eCBrZXJuZWwuCj4gCj4gSSBhZ3JlZSwgYnV0IHRoaXMgc2hvdWxkIGJlIGhhbmRsZWQgaW4g
dGhlIGRyaXZlciBub3QgaW4gdGhlIGRldmljZQo+IHRyZWUsIGFuZCBpdCBjYW4gYmUgZG9uZSBs
YXRlci4KCkFzIHRoZSBiZWhhdmlvdXIgd2Ugd2FudCBpcyB0aGF0IHRoZXNlIGNvcmVzIGJlY29t
ZXMgYSBncm91cCBhbmQgZ2V0IHNjaGVkdWxlCnRvZ2V0aGVyLCBpdHMgY2VydGFpbmx5IGEgZ29v
ZCB0aW1lIHRvIHNsb3cgZG93biBhbmQgZXZhbHVhdGUgaWYgdGhhdCBwYXJ0IG5lZWRzCnRvIGJl
IGltcHJvdmUgaW4gdGhlIERUIHRvby4KCkhhbnRybyBHMS9IMSBhbmQgVkVQVS9WRFBVMTIxIGNv
bWJvcyBvcmlnaW5hbGx5IHNoYXJlZCB0aGUgc2FtZSBzcmFtIHJlZ2lvbi4gSXRzCm5vdCBjbGVh
ciBpZiBhbnkgb2YgdGhlc2UgY29yZXMgaGF2ZSB0aGlzIGxpbWl0YXRpb24gYW5kIGlmIHRoaXMg
c2hvdWxkIGJlCmV4cHJlc3NlZCBpbiB0aGUgRFQgLyBkcml2ZXIuCgo+IAo+ID4gCj4gPiBOb3Qg
ZG9pbmcgdGhpcyBub3cgbWVhbnMgd2UnbGwgbmV2ZXIgaGF2ZSBhbiBvcHRpbWFsIGhhcmR3YXJl
IHVzYWdlCj4gPiBkaXN0cmlidXRpb24uIEp1c3QgY29uc2lkZXIgdHdvIHVzZXJzcGFjZSBzb2Z0
d2FyZSB3YW50aW5nIHRvIGRvIGpwZWcgZW5jb2RpbmcuCj4gPiBJZiB0aGV5IGJvdGggdGFrZSBh
IGd1ZXNzLCB0aGV5IG1heSBlbmR1cCB1c2luZyBhIHNpbmdsZSBjb3JlLiBXaGVyZSB3aXRoIHBy
b3Blcgo+ID4gc2NoZWR1bGluZyBpbiBWNEwyLCB0aGUga2VybmVsIHdpbGwgYmUgYWJsZSB0byBw
cm9wZXJseSBkaXN0cmlidXRlIHRoZSBsb2FkLiBJCj4gPiBpbnNpc3Qgb24gdGhpcywgc2luY2Ug
aWYgd2UgbWVyZ2UgeW91IGNoYW5nZXMgaXQgYmVjb21lcyBhbiBBQkkgYW5kIHdlIGNhbid0Cj4g
PiBjaGFuZ2UgaXQgYW55bW9yZS4KPiAKPiBXaWxsIGl0IHJlYWxseSBiZWNvbWUgQUJJIGp1c3Qg
bGlrZSB0aGF0PyAgVXNlcnNwYWNlIHNob3VsZCBhbHdheXMKPiBkaXNjb3ZlciB0aGUgdmlkZW8g
bm9kZXMgYW5kIHRoZWlyIGNhcGFiaWxpdGllcyBhbmQgbm90IGhhcmRjb2RlIGUuZy4gYQo+IHNw
ZWNpZmljIC9kZXYvdmlkZW9OIGZpbGUgZm9yIGEgc3BlY2lmaWMgY29kZWMuICBJIHdvdWxkIGFy
Z3VlIHRoYXQgdGhpcwo+IHNlcmllcyB3b3VsZCBsZXQgdXNlcnNwYWNlIGRvIEpQRUcgZW5jb2Rp
bmcgcmlnaHQgYXdheSwgZXZlbiBpZiBpbiBhCj4gbGVzcyBvcHRpbWFsIHdheSB0aGFuIGlmIHRo
ZSBkcml2ZXIgd291bGQgcm91bmQtcm9iaW4gdGhlbSB0aHJvdWdoIGEKPiBzaW5nbGUgdmlkZW8g
bm9kZSwgYnV0IHRoYXQgY2FuIGFsd2F5cyBiZSBhZGRlZCBpbiBhIGZ1dHVyZSB2ZXJzaW9uLgoK
TWlnaHQgYmUgb24gdGhlIGdyYXkgc2lkZSwgYnV0IHRoZXJlIGlzIGdvb2QgY2hhbmNlcyBzb2Z0
d2FyZSB3cml0dGVuIGZvciB5b3VyCnNwZWNpZmljIGJvYXJkIGNhbiBzdG9wIHdvcmtpbmcgYWZ0
ZXIgdGUgZ3JvdXBpbmcgaXMgZG9uZS4KCj4gCj4gPiAKPiA+IEkgdW5kZXJzdGFuZCB0aGF0IHRo
aXMgaW1wb3NlIGEgcmV3b3JrIG9mIHRoZSBtZW0ybWVtIGZyYW1ld29yayBzbyB0aGF0IHdlIGNh
bgo+ID4gcnVuIG11bHRpcGxlIGpvYnMsIGJ1dCB0aGlzIHdpbGwgYmUgbmVlZGVkIGFueXdheSBv
biBSSzM1ODgsIHNpbmNlIHRoZSBya3ZkZWMyLAo+ID4gd2hpY2ggd2UgZG9uJ3QgaGF2ZSBhIGRy
aXZlciB5ZXQgaXMgYWxzbyBtdWx0aS1jb3JlLCBidXQgeW91IG5lZWQgdG8gdXNlIDIgY29yZXMK
PiA+IHdoZW4gdGhlIHJlc29sdXRpb24gaXMgY2xvc2UgdG8gOEsuCj4gCj4gSSB0aGluayB0aGUg
bWVkaWF0ZWsgSlBFRyBkcml2ZXIgYWxyZWFkeSBzdXBwb3J0cyB0aGF0LCB3b3VsZCBpdCBiZSBv
awo+IHRvIGRvIGl0IHRoZSBzYW1lIHdheT8KCkkgZG9uJ3Qga25vdyBmb3IgSlBFRywgdGhlIE1U
SyB2Y29kZXIgZG8gc3VwcG9ydCBjYXNjYWRpbmcgY29yZXMuIFRoaXMgaXMKZGlmZmVyZW50IGZy
b20gY29uY3VycmVudCBjb3Jlcy4gSW4gTVRLIGFyY2hpdGVjdHVyZSwgZm9yIHNvbWUgb2YgdGhl
IGNvZGVjLAp0aGVyZSBpcyBMQVQgKGVudHJvcHkgZGVjb2RlcikgYW5kIENPUkUgKHRoZSByZWNv
bnN0cnVjdGlvbiBibG9jaykgdGhhdCBhcmUKc3BsaXQuCgpOaWNvbGFzCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
