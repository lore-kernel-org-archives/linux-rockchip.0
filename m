Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 982E6C6FD18
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 12:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+a4fVMvM2nqn+AhKzczKKHGKmB3Q5g6aBQpJedieCU=; b=Z2sMEFhSdN29yq
	FsaNRNC6xyXtd2+ZQ97Ah6hl77vdsx+dSY9gSuKqqu+qnyypN/jp6XgFE4SDlkb/Jdmwtl/imLr8a
	D4BX7Vil9q5V5oZgsbQQZgoIP8K8048Uc9iDbwzVh5sJIIrvm2vvFMyAtNpe7vvFBX1fCywoLAliD
	2ZCoqSGjwn4UbxkXXU7WFg2lQ6twn3QzWjCjoqNaVtHOqCrE/tde6lBoKGzHnvegwaxU5qnvGrnBA
	7FoEGI8a58v4FdW8pmuJQ0XfivAlHt+8D/0pCiwq5Fb/yojjLoAI2ROBq4eqNXAMC52h17pfoLNT0
	EoB+aCT25XmDVU3ETdhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pokBr-0024Ug-2i;
	Tue, 18 Apr 2023 12:12:07 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pokBp-0024T6-0O
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Apr 2023 12:12:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1681819919;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=F9Me01d4k5dgk/H+q8LfHcSOA0xP1lI82W57GA4jODU=;
	b=KSv4vGlFxRayOyd7ZSMfedmJsUoP266fW/KopmwD0IMuZU4npHlDVFOf5DOi8FxMrxxclf
	YzFoy/RlJXmO0Ej3vVWlu0mv3lzQIv2siU41Rx44o8KofifKy5wIAE1WbpMYH/TT7HDl2F
	b0HTdpU3ZVr3NQWmKxsfIHs9oJCbF4g=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-155-DwfUjlKeNJqcjhf2ckGBUQ-1; Tue, 18 Apr 2023 08:11:55 -0400
X-MC-Unique: DwfUjlKeNJqcjhf2ckGBUQ-1
Received: by mail-wm1-f69.google.com with SMTP id p17-20020a05600c1d9100b003f178430c87so878856wms.9
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Apr 2023 05:11:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681819914; x=1684411914;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JkJh/B/i3KU/KW7H270nTjye9dmLNKxDnAlmOJnN0vY=;
        b=Ibq8d6PDCx/JDUxiEnrEEQ0WkBBWtvRYpjRJqEW9W3OHa/zq596E7E49+XYr/05oGa
         5It1EEVDA4qvmxYbNUxvvTiG1duCI4ZtEfrMxTEO+bJ/6l/Uc/CLDwR8DsFbYjcYbJ5u
         JjI+GOOXnhEJsFlQObmftDH7xtnWus3z/lKFZlCaHqY0OQhG/I4U8vyS7/snh1zAHpWd
         oswEeQqNSB8Mu3/bMScisvvhIqJ8Gdf5jTDW242DkIPTHgt4GDtYftjs3OEKrAZlj+Ct
         cWnANpI+7g7hCvHj6nbv6SZ2lU5I3B7OzORt3UYq9ZC8MO6zqR3Dff2yGFhTVtZ7V0me
         pszg==
X-Gm-Message-State: AAQBX9cgujNz4laywYYuYXgrrdskG6nN2jgdLbJxzt1MrczsQpMFwhNb
	Q8pQtnj1ocw0UkOVxOflhoYkThcT8GW8anZAWhju9dUOIMLgEfygnof5q71GurUM5i4EwmZFrg9
	Tuc1OFw1dl882Zinmj8h4p11ik746Vzgb
X-Received: by 2002:a05:600c:2212:b0:3ed:711c:e8fe with SMTP id z18-20020a05600c221200b003ed711ce8femr14686228wml.2.1681819914708;
        Tue, 18 Apr 2023 05:11:54 -0700 (PDT)
X-Google-Smtp-Source: AKy350b65iCGtMf2oVoLYMy41tFWkUlUkLBuyvo6vU/7asGqIjHXB/GjSqEJ1yCvOz3n6/Bz0bD6nQ==
X-Received: by 2002:a05:600c:2212:b0:3ed:711c:e8fe with SMTP id z18-20020a05600c221200b003ed711ce8femr14686210wml.2.1681819914409;
        Tue, 18 Apr 2023 05:11:54 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id u15-20020a05600c19cf00b003ede3f5c81fsm18542538wmq.41.2023.04.18.05.11.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Apr 2023 05:11:54 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Peter Geis
 <pgwipeout@gmail.com>
Cc: linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
 Caleb Connolly <kc@postmarketos.org>, Jarrah Gosbell <kernel@undef.tools>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Martijn Braam
 <martijn@brixit.nl>, Ondrej Jirman <megi@xff.cz>, Rob Herring
 <robh+dt@kernel.org>, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for
 Pinephone Pro to 1.5 MB
In-Reply-To: <3999080.iIbC2pHGDl@diego>
References: <20230403175937.2842085-1-javierm@redhat.com>
 <3738011.44csPzL39Z@diego>
 <CAMdYzYqT=vVZxFK=P6xYDAht_KWk3CTsTtruPAbGqx1K9EcJsQ@mail.gmail.com>
 <3999080.iIbC2pHGDl@diego>
Date: Tue, 18 Apr 2023 14:11:53 +0200
Message-ID: <87h6tdie46.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_051205_252317_18BBDFB0 
X-CRM114-Status: GOOD (  23.80  )
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

SGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JpdGVzOgoKSGVsbG8gSGVpa28sCgo+
IEhpIFBldGVyLAo+Cj4gQW0gRGllbnN0YWcsIDQuIEFwcmlsIDIwMjMsIDE0OjUyOjAyIENFU1Qg
c2NocmllYiBQZXRlciBHZWlzOgo+PiBPbiBUdWUsIEFwciA0LCAyMDIzIGF0IDM6NTXigK9BTSBI
ZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPj4gPgo+PiA+IEhpLAo+PiA+
Cj4+ID4gQW0gTW9udGFnLCAzLiBBcHJpbCAyMDIzLCAxOTo1OTozNyBDRVNUIHNjaHJpZWIgSmF2
aWVyIE1hcnRpbmV6IENhbmlsbGFzOgo+PiA+ID4gVGhpcyBiYXVkIHJhdGUgaXMgc2V0IGZvciB0
aGUgZGV2aWNlIGJ5IG1haW5saW5lIHUtYm9vdCBhbmQgaXMgYWxzbyB3aGF0Cj4+ID4gPiBpcyBz
ZXQgaW4gdGhlIFBpbmVib29rIFBybyBEZXZpY2UgVHJlZSwgd2hpY2ggaXMgYSBkZXZpY2Ugc2lt
aWxhciB0byB0aGUKPj4gPiA+IFBpbmVQaG9uZSBQcm8gYnV0IHdpdGggYSBkaWZmZXJlbnQgZm9y
bSBmYWN0b3IuCj4+ID4gPgo+PiA+ID4gT3RoZXJ3aXNlLCB0aGUgYmF1ZCByYXRlIG9mIHRoZSBm
aXJtd2FyZSBhbmQgTGludXggZG9uJ3QgbWF0Y2ggYnkgZGVmYXVsdAo+PiA+ID4gYW5kIGEgJ2Nv
bnNvbGU9dHR5UzIsMTUwMDAwMG44JyBrZXJuZWwgY29tbWFuZCBsaW5lIHBhcmFtZXRlciBpcyBy
ZXF1aXJlZAo+PiA+ID4gdG8gaGF2ZSBwcm9wZXIgb3V0cHV0IGZvciBib3RoLgo+PiA+Cj4+ID4g
VGhlIGludGVyZXN0aW5nIHF1ZXN0aW9uIGlzIGFsd2F5cyBpZiB0aGlzIHdpbGwgYnJlYWsgc29t
ZW9uZSBlbHNlJ3Mgc2V0dXAuCj4+ID4gSSd2ZSBuZXZlciByZWFsbHkgdW5kZXJzdG9vZCB0aGUg
c3RyYW5nZSBzZXR0aW5nIG9mIDEuNU1CcHMsIGJ1dCBvbiB0aGUKPj4gPiBvdGhlciBoYW5kIGl0
IF9pc18gYSByZWFsaXR5IG9uIG1vc3QgYm9hcmRzLgo+Cj4+IFRoZSAxLjVNIGJhdWQgaXMgZGVm
YXVsdCBiZWNhdXNlIHRoZSBjbG9jayBzdHJ1Y3R1cmUgb24gcm9ja2NoaXAKPj4gZGV2aWNlcyBk
b2VzIG5vdCBhbGxvdyBhIGNsZWFuIDExNTIwMCBiYXVkLiBCeSBhdHRlbXB0aW5nIHRvIGZvcmNl
Cj4+IDExNTIwMCwgaXQgd2lsbCBhbHdheXMgYmUgc2xpZ2h0bHkgb2ZmIChlaXRoZXIgbG93IG9y
IGhpZ2ggZGVwZW5kaW5nCj4+IG9uIGhvdyB0aGUgZHJpdmVyIGRlY2lkZWQgdG8gcm91bmQpLiBJ
ZiB0aGlzIGFjdHVhbGx5IGNhdXNlcyBhbnkKPj4gcHJvYmxlbXMgaXMgdGhlIHN1YmplY3Qgb2Yg
bXVjaCBkZWJhdGUuCj4KPiB0aGFua3Mgc28gbXVjaCBmb3IgdGhpcyBwaWVjZSBvZiBjbG9jay1k
ZXRhaWwuIEFzIEkgd3JvdGUsIEkgbmV2ZXIgcmVhbGx5Cj4gdW5kZXJzdG9vZCB0aGUgd2h5IF9i
ZWZvcmVfIGJ1dCBhbHNvIG5ldmVyIGNhcmVkIHRoYXQgbXVjaCB0byBkaXZlCj4gaW50byBpdCBh
bmQgZmluZCBvdXQuCj4KPiBTbyB5b3VyIGV4cGxhbmF0aW9uIGNsb3NlcyBvbmUga25vd2xlZGdl
IGdhcCBpbiBteSBoZWFkLgo+Cj4gVGhhbmtzIGEgbG90IDotKQoKRGlkIHlvdSBtYWtlIGEgZGVj
aXNpb24gYWJvdXQgdGhpcz8gSSBndWVzcyB0aGUgY2xvY2sgZXhwbGFuYXRpb24gaXMgeWV0CmFu
b3RoZXIgYXJndW1lbnQgaW4gZmF2b3VyIG9mIHN3aXRjaGluZyB0aGUgUFBQIHRvIGEgMS41IE1i
cHMgYmF1ZCByYXRlID8KCi0tIApCZXN0IHJlZ2FyZHMsCgpKYXZpZXIgTWFydGluZXogQ2FuaWxs
YXMKQ29yZSBQbGF0Zm9ybXMKUmVkIEhhdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
