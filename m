Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C05AAC761A6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 08:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=atTyoF208ECRE1RUprWDLukpuzFeHy219XaxtoQY3H4=; b=WW5sYCwCChxFxR
	9dFRaa+nqf/YHBFILD29UDwBhh2pH4GEmojICcpQHfnbIkCJUc6p+HmvF4qpMjWwoP4l/X6LamQPc
	DMyuwi7cnplZYeIsLQ6hnaCeSP1nU9iX9yx9qvQ83fdFePVpsfHIP99QHs22bMJYUjSVhudv3l+vg
	9R8uuWqANNPzZpMx+7XkcKOJv3Fiy1WHtEo6L8CPDniBXmaSS7eWARtY83BITfgXmHg1l4OuiG+pe
	G9QRcUV2MXOJgA7oBiVDcbIGEi9u+zdyKIl7leWhdzjBGxLhFVxUpQO5qEnmOyfYqjHfr5V62N2QW
	K6qyKrpM/DLVgIZ190Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbmG-000PTi-32;
	Tue, 04 Apr 2023 08:12:29 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbia-000Oim-0m
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Apr 2023 08:08:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680595710;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hn1AXe78MZiAefg753Z9tv0guDjx6YbQXs8wX7MNm2g=;
	b=EY9Z9MnKwtfnyjGKkcRC+l1vPMhEaCq/ryuo+qPkIEDT1tBNecJc7p5a7OeXF95paHug/W
	oo97hB0Z1wQ9CRYRv59sJVoDIJKzLcFhfXa9SRxpjqTFV9IIL91i9IlbQkFVRWQZe4XAoT
	inUnBd+c+zTbCoEu3JcvVocdH78UfjQ=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-486-wm20GQLlNYeYldM_h689ug-1; Tue, 04 Apr 2023 04:08:28 -0400
X-MC-Unique: wm20GQLlNYeYldM_h689ug-1
Received: by mail-wm1-f70.google.com with SMTP id q21-20020a05600c46d500b003ee570749f7so15945518wmo.7
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Apr 2023 01:08:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680595707;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mtn5RoXP7HXa+BOr8vc5/QnnSmZkKMTt0vR1h1F5mXI=;
        b=lESBQFIB297ghq46D6rt15IpJE0oUtcBCl/ggzZutHlVMf8tj5HDRTXy9CQEYpMaUk
         Pb8RpcqXgn+9Hm145BiXc4F1L01aDch6w8jQT70o7tesv/yl3E6v19U1Ken776IYZxhR
         mZ8SRCjYhutw3c+Rh6SlykUJxsaD6xK0DV0YaEMhESntEifw0Vt8hBGDtA+3LNBab5dU
         8BV9t8VZFlyjTGBMrmc3DUIweaHIDbcU+N6Yf6qU9m2j8mROStUmncn5pQwjVzWaKpwN
         xmh199ZZ5B9f+2s2Xsf1WlrI7kxsKO/3o9YVGPeiPgLLDuWICa6qwdckkH+ruagly5zx
         tnVg==
X-Gm-Message-State: AAQBX9fz9nKP4CsNnHHOswPg1laRi89APcTbJhGA+newoLfj8UuuQKRW
	RkwpMvt3mt224jYUyr97RYLpRljPDCmeRBKVC8KhT1UavW9umoDmBD6gMztehnRERAWr1O7jw8S
	5WEM9BA38KxLGR64Dt9hs0cupWnFG8aWL
X-Received: by 2002:a5d:4847:0:b0:2cf:e956:9740 with SMTP id n7-20020a5d4847000000b002cfe9569740mr15090858wrs.6.1680595707737;
        Tue, 04 Apr 2023 01:08:27 -0700 (PDT)
X-Google-Smtp-Source: AKy350a6DZsF9Oxz2qiQs8bPQTVCKprYDZAyS4oPgFEDW46CEfH2BaASGaZqnn1vnIayoOh1lJQS6w==
X-Received: by 2002:a5d:4847:0:b0:2cf:e956:9740 with SMTP id n7-20020a5d4847000000b002cfe9569740mr15090833wrs.6.1680595707386;
        Tue, 04 Apr 2023 01:08:27 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id l18-20020adfe592000000b002c5534db60bsm11647529wrm.71.2023.04.04.01.08.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 01:08:27 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 linux-kernel@vger.kernel.org
Cc: Peter Robinson <pbrobinson@gmail.com>, Caleb Connolly
 <kc@postmarketos.org>, Jarrah Gosbell <kernel@undef.tools>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Martijn Braam
 <martijn@brixit.nl>, Ondrej Jirman <megi@xff.cz>, Rob Herring
 <robh+dt@kernel.org>, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for
 Pinephone Pro to 1.5 MB
In-Reply-To: <3738011.44csPzL39Z@diego>
References: <20230403175937.2842085-1-javierm@redhat.com>
 <3738011.44csPzL39Z@diego>
Date: Tue, 04 Apr 2023 10:08:25 +0200
Message-ID: <87jzysdq86.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_010845_005718_B0C9B0BD 
X-CRM114-Status: GOOD (  19.19  )
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

SGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JpdGVzOgoKSGVsbG8gSGVpa28sCgpU
aGFua3MgZm9yIHlvdXIgZmVlZGJhY2suCgo+IEhpLAo+Cj4gQW0gTW9udGFnLCAzLiBBcHJpbCAy
MDIzLCAxOTo1OTozNyBDRVNUIHNjaHJpZWIgSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzOgo+PiBU
aGlzIGJhdWQgcmF0ZSBpcyBzZXQgZm9yIHRoZSBkZXZpY2UgYnkgbWFpbmxpbmUgdS1ib290IGFu
ZCBpcyBhbHNvIHdoYXQKPj4gaXMgc2V0IGluIHRoZSBQaW5lYm9vayBQcm8gRGV2aWNlIFRyZWUs
IHdoaWNoIGlzIGEgZGV2aWNlIHNpbWlsYXIgdG8gdGhlCj4+IFBpbmVQaG9uZSBQcm8gYnV0IHdp
dGggYSBkaWZmZXJlbnQgZm9ybSBmYWN0b3IuCj4+IAo+PiBPdGhlcndpc2UsIHRoZSBiYXVkIHJh
dGUgb2YgdGhlIGZpcm13YXJlIGFuZCBMaW51eCBkb24ndCBtYXRjaCBieSBkZWZhdWx0Cj4+IGFu
ZCBhICdjb25zb2xlPXR0eVMyLDE1MDAwMDBuOCcga2VybmVsIGNvbW1hbmQgbGluZSBwYXJhbWV0
ZXIgaXMgcmVxdWlyZWQKPj4gdG8gaGF2ZSBwcm9wZXIgb3V0cHV0IGZvciBib3RoLgo+Cj4gVGhl
IGludGVyZXN0aW5nIHF1ZXN0aW9uIGlzIGFsd2F5cyBpZiB0aGlzIHdpbGwgYnJlYWsgc29tZW9u
ZSBlbHNlJ3Mgc2V0dXAuCgpJbmRlZWQuCgo+IEkndmUgbmV2ZXIgcmVhbGx5IHVuZGVyc3Rvb2Qg
dGhlIHN0cmFuZ2Ugc2V0dGluZyBvZiAxLjVNQnBzLCBidXQgb24gdGhlCj4gb3RoZXIgaGFuZCBp
dCBfaXNfIGEgcmVhbGl0eSBvbiBtb3N0IGJvYXJkcy4KPgoKQXMgZmFyIGFzIEkgdW5kZXJzdGFu
ZCwgaXQgaXMganVzdCB0byBnZXQgYSBmYXN0ZXIgZGF0YSB0cmFuc21pc3Npb24gYnV0IEkKaGF2
ZSBteSBkb3VidHMgdGhhdCBpdCBpcyB3b3J0aCB0byBkaXZlcnQgZnJvbSB0aGUgbW9yZSBjb21t
b24gMTE1MjAwIHJhdGUKanVzdCBmb3IgdGhpcy4KCkFzIHlvdSBzYWlkIHRob3VnaCwgaXQgaXMg
YSByZWFsaXR5IGFuZCBhbHNvIHdoYXQgbWFpbmxpbmUgdS1ib290IHVzZXMgZm9yCnRoaXMgZGV2
aWNlLgoKPiBQZXJzb25hbGx5IEkgZG9uJ3QgY2FyZSB0aGF0IG11Y2ggZWl0aGVyIHdheSwgYnV0
IHdvdWxkIGxpa2UgYSBjb21tZW50Cj4gZnJvbSB0aGUgb3RoZXIgcGVvcGxlIHdvcmtpbmcgb24g
dGhhdCBkZXZpY2UgLSBpZiBwb3NzaWJsZS4KPgoKU2FtZSwgSSBkb24ndCBjYXJlIGVpdGhlciBi
dXQganVzdCB0aGF0IHdvdWxkIGJlIGdvb2QgdG8gbWFrZSBMaW51eCBhbmQKdS1ib290IHRvIG1h
dGNoLiBJZiB0aGlzIGNoYW5nZSB3aWxsIGJyZWFrIG90aGVyIHBlb3BsZSBzZXR1cHMsIG1heWJl
IEkKY2FuIGNvbnZpbmNlIHUtYm9vdCB0byBzeW5jIHdpdGggTGludXggYW5kIGFsc28gdXNlIDEx
NTIwMCBmb3IgdGhlIHBob25lLgoKPiBJIGd1ZXNzIGlmIHdlIGRvbid0IGhlYXIgYW55dGhpbmcs
IEknbGwgYXBwbHkgaXQgbmV2ZXJ0aGVsZXNzIGF0IHNvbWUgcG9pbnQKPgo+Cj4gSGVpa28KPgoK
LS0gCkJlc3QgcmVnYXJkcywKCkphdmllciBNYXJ0aW5leiBDYW5pbGxhcwpDb3JlIFBsYXRmb3Jt
cwpSZWQgSGF0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
