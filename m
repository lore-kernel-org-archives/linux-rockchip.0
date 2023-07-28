Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 635AFEB64DD
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jul 2023 23:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O9QNG7u07XPb4bLokG305/avB3jfq8Zhz+yZwrlsTbA=; b=CyILsVq5rs9TdO
	u40RIBKRYfFJ7GhLSaRcgoyQxQGI3v8xY7g8L4lfzJQu7IyrRMhlq62CojDTgwB9J34KqRg6+4YZ+
	Z6FmKrQqXHg7ZS6fM/FMBuiNclYKYi4PCgAOo/A3U82vz6KKn6azEsKTUTE/qn3D+H+Re33dM9PzZ
	pd+9fmWOWWcuhXVxqifxVUQpuo29JJWmjAqazkU30CeaIk/+i839a4queJE8uwaM3ohPJsFgsQqev
	NhajBLggtY1s4WtEhHG8rScoViUiLpCZdvuRxHW+RJwMmCPL8KedLxT5He7zrb16SxrDD117r3/aY
	ufkzheLeLJXs5Qp7F89Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPWWp-005QFG-2e;
	Fri, 28 Jul 2023 23:05:47 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPWWl-005QE2-24
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Jul 2023 23:05:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1690585541;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pDybbnVpyzDXi8H71CUjbwh8Ieem2gNZw1KxyzH3oKM=;
	b=d4DVvGqsmfaMLxEGhsqRIedxC/wuCKYHHaEPoIz+kY9CC8iyrHJVTu7k0naUFzwK8KpfUe
	0zcqbDiYPVdGjcJyvJ40grRL7c7a24vVgJ6udhzZoKWp1M2ItGiezC0C+H1PMb+k40FqkT
	kH8rjp3fyWDqr1DrtpF9I4sN2cBs42g=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-672-bZ7CEZAqPbSQNhd9cRhbhw-1; Fri, 28 Jul 2023 19:05:38 -0400
X-MC-Unique: bZ7CEZAqPbSQNhd9cRhbhw-1
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-3178532c6c8so1043268f8f.1
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Jul 2023 16:05:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690585537; x=1691190337;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UYKoF8Ks1Q67e6cOSRG114BapfSWNUAmHuoWgV7fg1k=;
        b=gbeyOLiDStkoSLtaf1B0Yarqr3t6dgjVHeYi9z6O+lzquyNI+Jo3rxXejfPDVfEvpr
         6okf+Wncv/pqs2m9FDGjjVwjUdk22BG11evsYh59X9c00m0vXF7er+/wkWduWwU1OrDX
         k9Vu3KAx/sslJ/xZ2ol4uWpYi3sM8mOCRC5OgPS8+eVOs7eNJ+V0EwY/iOn2ibujcXbQ
         HXvpXv/U0u/A7jaYG9eYstkv/jZcLHm62yEtMCFW5xzTqdzrJuSS8JjhYFn9AeqRP87V
         llfiSYvSj+GfudiuWVnVXHNaErwXPR0qJndlOw0WQGHVluvT0oKvXvrxOWnBk1tUKXZI
         C54w==
X-Gm-Message-State: ABy/qLYXtHCcHX20z6EpUh1/XnGXXGtruhRmUKdY1hs50IGUIIKKusdD
	3P7gJDYqRwIl61iL5QhxT6ZHHLbbTvzinSfSJnbepP/I4JSrYucMd4UFXU/XwzPMw3GHZkqKbA7
	7w140qSoBbbsoYIz6KE/Tsd9iUCfyLJ4L
X-Received: by 2002:a5d:570f:0:b0:317:6f5b:2fb7 with SMTP id a15-20020a5d570f000000b003176f5b2fb7mr2789599wrv.57.1690585536917;
        Fri, 28 Jul 2023 16:05:36 -0700 (PDT)
X-Google-Smtp-Source: APBJJlGaqeup1KKkFNHEx1uCh4LA2D3TrUL7PCcqpRPBbZgzdQVEdE5dFoZXTmOfccIkNlSYxmwzdA==
X-Received: by 2002:a5d:570f:0:b0:317:6f5b:2fb7 with SMTP id a15-20020a5d570f000000b003176f5b2fb7mr2789560wrv.57.1690585535608;
        Fri, 28 Jul 2023 16:05:35 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id y18-20020adff152000000b0031784ac0babsm4768741wro.28.2023.07.28.16.05.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jul 2023 16:05:35 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Maya Matuszczyk <maccraft123mc@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, linux-kernel@vger.kernel.org, Peter
 Robinson <pbrobinson@gmail.com>, Caleb Connolly <kc@postmarketos.org>,
 Jarrah Gosbell <kernel@undef.tools>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Martijn Braam <martijn@brixit.nl>,
 Ondrej Jirman <megi@xff.cz>, Rob Herring <robh+dt@kernel.org>, Tom
 Fitzhenry <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for
 Pinephone Pro to 1.5 MB
In-Reply-To: <CAO_Mup+JZjUyQK4yC8XwgcRpDU8_TTRJT0rjFQ6OpsEU1BnbJw@mail.gmail.com>
References: <20230403175937.2842085-1-javierm@redhat.com>
 <3797122.KgjxqYA5nG@diego>
 <87pm4kuanl.fsf@minerva.mail-host-address-is-not-set>
 <4495367.TLkxdtWsSY@phil>
 <CAO_Mup+JZjUyQK4yC8XwgcRpDU8_TTRJT0rjFQ6OpsEU1BnbJw@mail.gmail.com>
Date: Sat, 29 Jul 2023 01:05:34 +0200
Message-ID: <87fs57y6v5.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230728_160543_761084_77DD457D 
X-CRM114-Status: GOOD (  15.90  )
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

TWF5YSBNYXR1c3pjenlrIDxtYWNjcmFmdDEyM21jQGdtYWlsLmNvbT4gd3JpdGVzOgoKPiBIaSBI
ZWlrbwo+Cj4gcHQuLCAyOCBsaXAgMjAyMyBvIDIxOjAwIEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IG5hcGlzYcWCKGEpOgo+PgoKWy4uLl0KCj4+IFNvIGZhciBwZW9wbGUgb25seSBy
ZXBvcnRlZCAiYnJlYWtzIG15IHNldHVwIi4gSSdtIGluIGEgcGlja2xlIGhlcmUgOy0pIC4KPj4g
V2l0aG91dCBhbnlib2R5IHNheWluZyAiSSB3YW50IHRvIGFsc28gbW92ZSBpbnRvIHRoaXMgZGly
ZWN0aW9uIiBJIHJlYWxseQo+PiBmZWVsIEkgc2hvdWxkIG5vdCBtZXJnZSBhIHBhdGNoIHRoYXQg
YnJlYWtzIG90aGVyIHBlb3BsZXMgc2V0dXBzLgo+Cj4gV2VsbCwgSSdkIHByZWZlciAxLjVNIGJh
dWQgcmF0ZSBhcyBpdCBpcyBtb3JlIGNvbnNpc3RlbnQgd2l0aCBvdGhlciBSb2NrY2hpcAo+IGJv
YXJkcyBhbmQgaXQgbWFrZXMgZm9yIGEgbXVjaCBtb3JlIHVzYWJsZSB0ZXJtaW5hbCBleHBlcmll
bmNlIHdoZW4KPiBsb2dnZWQgaW4sIGl0IGFsc28gZG9lc24ndCBhZmZlY3QgYm9vdCB0aW1lcyB3
aGVuIHNlcmlhbCBpcyBlbmFibGVkIHdpdGggYQo+IGhpZ2ggbG9nbGV2ZWwgYW5kIGNvbnNvbGUg
b24gc2VyaWFsIGFzIDExNTIwMCBkb2VzLgo+Cj4gVGhvdWdoIEknbSBqdXN0IGZpbmUgd2l0aCB1
c2luZyBrZXJuZWwncyBjbWRsaW5lIHRvIHNldCBhIGJhdWQgcmF0ZS4KPgoKU2FtZSwgYnV0IGFs
c28gd2hhdCBQZXRlciBtZW50aW9uZWQgaW4gdGhpcyB0aHJlYWQ6CgpQZXRlciBHZWlzIDxwZ3dp
cGVvdXRAZ21haWwuY29tPiB3cml0ZXM6Cj4KPiBHb29kIE1vcm5pbmcgSGVpa28sCj4KPiBUaGUg
MS41TSBiYXVkIGlzIGRlZmF1bHQgYmVjYXVzZSB0aGUgY2xvY2sgc3RydWN0dXJlIG9uIHJvY2tj
aGlwCj4gZGV2aWNlcyBkb2VzIG5vdCBhbGxvdyBhIGNsZWFuIDExNTIwMCBiYXVkLiBCeSBhdHRl
bXB0aW5nIHRvIGZvcmNlCj4gMTE1MjAwLCBpdCB3aWxsIGFsd2F5cyBiZSBzbGlnaHRseSBvZmYg
KGVpdGhlciBsb3cgb3IgaGlnaCBkZXBlbmRpbmcKPiBvbiBob3cgdGhlIGRyaXZlciBkZWNpZGVk
IHRvIHJvdW5kKS4gSWYgdGhpcyBhY3R1YWxseSBjYXVzZXMgYW55Cj4gcHJvYmxlbXMgaXMgdGhl
IHN1YmplY3Qgb2YgbXVjaCBkZWJhdGUuCj4KPiBWZXJ5IFJlc3BlY3RmdWxseSwKPiBQZXRlciBH
ZWlzCj4KClNvIHRoYXQncyBhbm90aGVyIGFyZ3VtZW50IGZvciBzZXR0aW5nIGl0IHRvIDEuNU0u
IEFueXdheXMsIEknbGwganVzdCBzdG9wCmFza2luZyBmb3IgdGhpcyBhbmQgc2V0IG15IGNtZGxp
bmUgdG8gYSBub24tZGVmYXVsdCBiYXVkIHJhdGUgYW5kIG1vdmUgb24uCgpJIHdhcyBqdXN0IGFz
a2luZyBpbiBjYXNlIHRoZXJlIHdhcyBhIGRlY2lzaW9uIG1hZGUgb24gdGhpcyB0b3BpYy4KCi0t
IApCZXN0IHJlZ2FyZHMsCgpKYXZpZXIgTWFydGluZXogQ2FuaWxsYXMKQ29yZSBQbGF0Zm9ybXMK
UmVkIEhhdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
