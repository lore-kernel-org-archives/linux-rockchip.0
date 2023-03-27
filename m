Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77957C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Mar 2023 16:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ctbas/U8HmTeB75YlJaA130g78sh7VIsocBLrlt+ots=; b=yH86uG4Z3h2o/r
	TwZbzex95Qyh1KoiOskqRiMv711QPc9wtrWe9doLtdzV1cIpl4Yi4AUmznTc2jtizGBKv3FyLBZnK
	Q7bY9arRNHKr7p+HAT6eQvWXk+T3teTaKeTk1ZP+AAsk6x0HyjHGfkY5gGTwTUcoYWkCfyPSknuMB
	6cGzrMWbxxpjqH2ES3YHqRxGQLRprdiWIp8cC+SAwIxR4mAZHqdQ0mKe/Xh9IWzf20jjU/Qr/KWi0
	QYoUAS4+YT97JQls5fjTZjjtO0yS7bCeJXPz+10xbi9cYWXvURFRszz2brHO9EpPJtasAw0mWsD6x
	PSiUF7froD93aqmNItag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgpLp-00Bep4-0S;
	Mon, 27 Mar 2023 16:05:41 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgpLn-00BenW-0A
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Mar 2023 16:05:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679933138;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WqJL4X6m/qg1tf8L3sM8zlT81P0skwOqiQ0Lw2ZJ8OU=;
	b=H3OD4whM/JqMF0Ap2XOFlIr6uA9pIdfrdt7L8FmGWgQ2xfaKM441yOdVM2Ekcq7EmUGzhQ
	SdySrT3Mf4aYtp4wr53iAnb8kjJXMlrMx6T2vRyaiJ2TcL++xQd2gtYP5UU2FyuQzmT18E
	Dpmq9OS8NokWo/bgwuHRkBFaOGPjWso=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-264-KgQj7zE-Mha9ePs5El2q0g-1; Mon, 27 Mar 2023 12:05:36 -0400
X-MC-Unique: KgQj7zE-Mha9ePs5El2q0g-1
Received: by mail-wr1-f70.google.com with SMTP id i11-20020a5d522b000000b002ceac3d4413so833376wra.11
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Mar 2023 09:05:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679933135;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L8sIf8fNOSA0LrsvSZrNL5VZXX1uPBBClTOCqCvRs0I=;
        b=WpASdJ17qxX5U+uqWAUYVlYgUfmUGMBuwf1LRyETq97hnAKUqbK1GE4npCcI+n6FbB
         Wp9d1WTHRKhABozVxINVXzoooEpSXwE92WDsWM4E5FwJt4mWthj1MRWhlYsa+veiICEs
         TCHv04LWLOwQY9kodv8/pnKcdblNswAFsGHZVDt3v1zzlV9UgGUrDdBWC6pKHWbqsFT5
         gPUtVqM53PGIyjmAXIlLL2Nvr4H6X+cUqA9XRTrW5QWrJUV4sYtbt+9TXyNQn5oL24gc
         MMwWzX5fkCJQFREaFeD2sfZGDE6axjwd/cmE77NEa+I1KgVA4ZbGUmjiU8bQIg1jex0e
         AP7Q==
X-Gm-Message-State: AO0yUKUiAc/lC4BithQuJYJC3wn5I1CtMT8LTwzfUTqc2BkdPLB9NSzF
	0mgxMBv/4Iivw3Nm9QaxabelQPDSg0Thc8q6bu9Fa/BHfQiZ+XgBQE9wp/aG6au56OUuGFnI7E+
	zJnVR333XmJvpPCrx0RYNYW2pxS+Wcr1H
X-Received: by 2002:a05:600c:220f:b0:3ed:fc8c:f197 with SMTP id z15-20020a05600c220f00b003edfc8cf197mr9512243wml.29.1679933135244;
        Mon, 27 Mar 2023 09:05:35 -0700 (PDT)
X-Google-Smtp-Source: AK7set/ueZGzGkRgkxHPRqizqte28dR8SgIO3HwkC7wFGoe8F/w4N5DuFt7NtQ/6iWmCYSxStxv8aA==
X-Received: by 2002:a05:600c:220f:b0:3ed:fc8c:f197 with SMTP id z15-20020a05600c220f00b003edfc8cf197mr9512213wml.29.1679933134969;
        Mon, 27 Mar 2023 09:05:34 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id o9-20020a05600c510900b003ed793d9de0sm22523733wms.1.2023.03.27.09.05.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 09:05:34 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, =?utf-8?Q?Ond=C5=99e?=
 =?utf-8?Q?j?= Jirman <megi@xff.cz>
Cc: linux-kernel@vger.kernel.org, Robert Mader <robert.mader@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Peter Robinson
 <pbrobinson@gmail.com>, Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Martijn Braam <martijn@brixit.nl>, Kamil =?utf-8?Q?Trzci=C5=84ski?=
 <ayufan@ayufan.eu>,
 Caleb Connolly <kc@postmarketos.org>, Jarrah Gosbell <kernel@undef.tools>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rk3399-pinephone-pro: Add internal
 display support
In-Reply-To: <1924921.PYKUYFuaPT@diego>
References: <20230327074136.1459212-1-javierm@redhat.com>
 <20230327130147.wgxl2qayhzsi2xak@core>
 <87wn32rynm.fsf@minerva.mail-host-address-is-not-set>
 <1924921.PYKUYFuaPT@diego>
Date: Mon, 27 Mar 2023 18:05:33 +0200
Message-ID: <87tty6rxgy.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_090539_166596_78336517 
X-CRM114-Status: GOOD (  13.31  )
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

SGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JpdGVzOgoKPiBBbSBNb250YWcsIDI3
LiBNw6RyeiAyMDIzLCAxNzozOTo1NyBDRVNUIHNjaHJpZWIgSmF2aWVyIE1hcnRpbmV6IENhbmls
bGFzOgo+PiBPbmTFmWVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+IHdyaXRlczoKPj4gCj4+IEhlbGwg
T25kxZllaiwKPj4gCj4+ID4gSGkgSmF2aWVyLAo+PiA+Cj4+ID4gSSd2ZSB0cmllZCB0aGUgcGF0
Y2ggb24gdG9wIG9mIGxpbnVzL21hc3RlciBhbmQgaXQgd29ya3MgYXMgZXhwZWN0ZWQuIE15Cj4+
ID4gRFJNIHRlc3QgYXBwIHNob3dzIDE2LjY2OW1zIGJldHdlZW4gZnJhbWVzLiBUaGUgZGlzcGxh
eSBvdXRwdXQgaXMgb2sgb24KPj4gPiBkZXZlbG9wZXIgYmF0Y2ggcGluZXBob25lIHBybywgYW5k
IGlzIGNvcnJ1cHRlZCBvbiBwcm9kdWN0aW9uIHZlcnNpb24uCj4+ID4gRGlzcGxheSBhbHNvIGRv
ZXNuJ3QgY29tZSBiYWNrIGFmdGVyIGJsYW5raW5nLiBBbGwgYXMgZXhwZWN0ZWQuCj4+ID4KPj4g
PiBUZXN0ZWQtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+PiA+Cj4+IAo+PiBUaGFu
a3MgZm9yIHRlc3RpbmcuCj4+IAo+PiA+IEEgZmV3IG1vcmUgY29tbWVudHMgYmVsb3cuCj4+ID4K
Pj4gCj4+IEknbSBPSyB3aXRoIHRoZXNlIGNvbW1lbnRzIGJ1dCBJIGRpZCBhIGdpdCBkaWZmIHdp
dGggeW91ciBvcmFuZ2UtcGktNi4zCj4+IGJyYW5jaCBqdXN0IGJlZm9yZSBwb3N0aW5nIGFuZCB0
aGlzIHdhcyB0aGUgbGF0ZXN0IHRoYXQncyBpbiB5b3VyIHRyZWUuCj4+IAo+PiBTbyBmZWVsIGZy
ZWUgdG8gZWl0aGVyIHBvc3QgYSB2MyBhZGRyZXNzaW5nIHRoZSB0aGluZ3MgeW91IGFyZSBwb2lu
dGluZwo+PiBvdXQgb3IgbGV0cyBsYW5kIHRoaXMgYW5kIHdlIGNhbiBwb3N0IGFueSBmdXJ0aGVy
IGNsZWFudXBzIG9uIHRvcCBJTU8uCj4KPiBJIHdvdWxkIHJlYWxseSBsaWtlIHRvIF9ub3RfIGFw
cGx5IGVzc2VudGlhbGx5IGJyb2tlbiBjb2RlLCBzbyByZWFsbHkKPiB3b3VsZCBwcmVmZXIgdGhl
IHYzLWFwcHJvYWNoLgo+CgoKPiBUaGFua3MKPiBIZWlrbwo+Cj4KCi0tIApCZXN0IHJlZ2FyZHMs
CgpKYXZpZXIgTWFydGluZXogQ2FuaWxsYXMKQ29yZSBQbGF0Zm9ybXMKUmVkIEhhdAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
