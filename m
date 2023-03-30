Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 010C8C7619A
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Mar 2023 22:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1wvP3uuu/V6aArWWnzQUYK5QPsA/V2iW66I9pkYOgHA=; b=ATWEM6/HJZr0MJ
	e2zAi0seXxT1F49ubwqbnKZkLYPjeHt19yPW6B32cTR9LdGdeVnUNrfDmH4HBwKG7O1B5lph3YK5Q
	TxAwkJLoo3i067Rdpl6cvChAsK6okSmP57E+CLZbbzitlXZeF06iW24RjThPPsqZ/w395fx64DHWT
	ZILsy1xSyqLBAvsKBYHdLJ2yUtjLsS+KYq441OiWmOoYCpEh3wWgmhrj3Q7sO4FGaVfeFmXaIj+gK
	0b/eebel6e+yLaPcDWxDfXuopBUYednezBLVh7cc3LLWKpEDUmPi/4cUg6I2f7zmpXQg7pdKifdyF
	O9cGjiEhTHVxwGAyQD5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pi1F7-005Hbq-35;
	Thu, 30 Mar 2023 22:59:41 +0000
Received: from us-smtp-delivery-124.mimecast.com ([216.145.221.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pi1F5-005Hb1-1r
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Mar 2023 22:59:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680217178;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PSvZcuNzIWdZTppCNeVJAh5JBpftffHWdli4hkKHtS8=;
	b=WtOTbngH9cN+VroXeMKC+n2lZByUXfxCKyvhvI+jIsv8K1rB6h7Uk9j5upyKTkuz3MDAGt
	R+p7Mgwkk1Cp+uGr3BBGq/ATu5mOoqbZSHM1h+TAwsYbqDPtSluFAQwSq743+I2fkyes5s
	3iphPgiVR3hgtIIC1Fd4ur+7zQ37DAE=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-2-m92z5eMPPn-_yprg-UsHtA-1; Thu, 30 Mar 2023 18:59:27 -0400
X-MC-Unique: m92z5eMPPn-_yprg-UsHtA-1
Received: by mail-wm1-f72.google.com with SMTP id o7-20020a05600c4fc700b003edf85f6bb1so11081871wmq.3
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Mar 2023 15:59:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680217166;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o6OjiitjPwr2q3+VgtTu4P0B7q8Y0XJ2G6/rSSRxlds=;
        b=tQqDtNzCDBEHTmR4Lj/Vpo4NqN5ybwy7FCM29zHnPJmYX9BUerTvazlRiXIHnbMH6Y
         xY/pEKjXhMVLULwIR3RqYEJnPfW3g68PEVcHOuESxogiyZNEOxAhg+2zJyfvsdfCwN37
         tYS/oy3E2DGIWjsN14BgdBXCgx3ObEpjbxTIzcohle0lF06MnySXm0fJ9tOBsVrSwoOU
         EWyglc+F1oGPl1Cuau9AwXFE1cMxv8JTRo4cYR7niCqm9U7wz8ONaz8Z9VM8QnkWnngB
         EfU2vLrIYogsoTYtc2+F3XIvzZizCaxDGMii13JtUg60SBotwvanE2lcXmqR6uqZ7iA0
         0iTg==
X-Gm-Message-State: AAQBX9dzmeYpuvnsHzZ0iwX9nqkAUIPpSe0Fq/I3dbnhEe5F36uhwsNc
	sQYMjo/zUZIjaZ11WkqsjNXvOtmOy64I426YhQTsGBRaaTvz2ZaUqJ6ROkYicZ+5BL2BDiWlLbo
	5uaNZmxbwDy5kc1ABD0qqJPfaPTY9T/M4
X-Received: by 2002:a1c:7714:0:b0:3ee:1084:aa79 with SMTP id t20-20020a1c7714000000b003ee1084aa79mr4645667wmi.20.1680217166719;
        Thu, 30 Mar 2023 15:59:26 -0700 (PDT)
X-Google-Smtp-Source: AKy350Yecu73nIBzSwX6n9VC0rj75gvI4cfYDMCQVY5s6zogWVJi/S5ieqmyC8RCCI2B/05FAE9b9w==
X-Received: by 2002:a1c:7714:0:b0:3ee:1084:aa79 with SMTP id t20-20020a1c7714000000b003ee1084aa79mr4645652wmi.20.1680217166385;
        Thu, 30 Mar 2023 15:59:26 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id v13-20020a05600c444d00b003ee8ab8d6cfsm7846029wmn.21.2023.03.30.15.59.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Mar 2023 15:59:26 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Brian Norris <briannorris@chromium.org>
Cc: linux-kernel@vger.kernel.org, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Douglas Anderson <dianders@chromium.org>,
 Enric Balletbo i Serra <eballetbo@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Judy Hsiao <judyhsiao@chromium.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Lin Huang
 <hl@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, zain wang <wzz@rock-chips.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Remove non-existing pwm-delay-us
 DT property
In-Reply-To: <CA+ASDXOtyBgr0o+bhjOScjs2h3oUKdouoAi4m+Z=R=Bho=iRFA@mail.gmail.com>
References: <20230330220251.2388494-1-javierm@redhat.com>
 <CA+ASDXOtyBgr0o+bhjOScjs2h3oUKdouoAi4m+Z=R=Bho=iRFA@mail.gmail.com>
Date: Fri, 31 Mar 2023 00:59:24 +0200
Message-ID: <87355lg81f.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_155939_687887_44C8F278 
X-CRM114-Status: GOOD (  18.17  )
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

QnJpYW4gTm9ycmlzIDxicmlhbm5vcnJpc0BjaHJvbWl1bS5vcmc+IHdyaXRlczoKCkhlbGxvIEJy
aWFuLAoKPiBPbiBUaHUsIE1hciAzMCwgMjAyMyBhdCAzOjAz4oCvUE0gSmF2aWVyIE1hcnRpbmV6
IENhbmlsbGFzCj4gPGphdmllcm1AcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Cj4+IFRoZXJlIGlzIG5v
IG5laXRoZXIgYSBkcml2ZXIgdGhhdCBwYXJzZXMgdGhpcyBub3IgYSBEVCBiaW5kaW5nIHNjaGVt
YSB0aGF0CgpVcHMsIEkgbm90aWNlZCBub3cgdGhhdCB0aGVyZSdzIGFuIHVubmVjZXNzYXJ5ICJu
byIgYW5kIGl0IHNob3VsZCBiZSBpbnN0ZWFkOgoKIlRoZXJlIGlzIG5laXRoZXIgYSBkcml2ZXIu
Li4iCgo+PiBkb2N1bWVudHMgaXQgc28gbGV0J3MgcmVtb3ZlIGl0IGZyb20gdGhlIERUUyBmaWxl
cyB0aGF0IG1ha2UgdXNlIG9mIHRoaXMuCj4+Cj4+IFRoZSBwcm9wZXJ0aWVzIHRoYXQgZXhpc3Qg
YXJlIHBvc3QtcHdtLW9uLWRlbGF5LW1zIGFuZCBwd20tb2ZmLWRlbGF5LW1zLAo+PiBkZWZpbmVk
IGluIHRoZSBwd20tYmFja2xpZ2h0IERUIGJpbmRpbmcuIFNvIHByb2JhYmx5IHdoYXQgdGhlc2Ug
RFRTIHdhbnQKPj4gaXMgc29tZXRoaW5nIGxpa2UgZm9sbG93aW5nOgo+Pgo+PiAgICAgICAgIGJh
Y2tsaWdodDogYmFja2xpZ2h0IHsKPj4gICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicHdt
LWJhY2tsaWdodCI7Cj4+ICAgICAgICAgICAgICAgICBlbmFibGUtZ3Bpb3MgPSA8JmdwaW80IDIx
IEdQSU9fQUNUSVZFX0hJR0g+Owo+PiAgICAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJk
ZWZhdWx0IjsKPj4gICAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmYmxfZW4+Owo+PiAgICAg
ICAgICAgICAgICAgcHdtcyA9IDwmcHdtMSAwIDEwMDAwMDAgMD47Cj4+ICAgICAgICAgICAgICAg
ICBwb3N0LXB3bS1vbi1kZWxheS1tcyA9IDwxMD47Cj4+ICAgICAgICAgICAgICAgICBwd20tb2Zm
LWRlbGF5LW1zID0gPDEwPjsKPj4gICAgICAgICB9Owo+Pgo+PiBCdXQgdGhhdCBzaG91bGQgYmUg
Zm9sbG93LXVwIGNoYW5nZSBpZiB0aGF0IGlzIHRoZSBjYXNlLiBCZWNhdXNlIG90aGVyd2lzZQo+
PiBpdCB3b3VsZCBiZSBjaGFuZ2UgaW4gYmVoYXZpb3VyLCBzaW5jZSBjdXJyZW50bHkgcHdtLWRl
bGF5LXVzIGlzIGEgbm8tb3AuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEphdmllciBNYXJ0aW5leiBD
YW5pbGxhcyA8amF2aWVybUByZWRoYXQuY29tPgo+Cj4gcHdtLWRlbGF5LXVzIHNlZW1zIHRvIGhh
dmUgYmVlbiBhIGRvd25zdHJlYW0tb25seSAoIkNIUk9NSVVNIiwgaWYKPiB5b3UncmUgZmFtaWxp
YXIgd2l0aCBDaHJvbWl1bU9TIGtlcm5lbCBwYXJsYW5jZSkgY2hhbmdlIHRoYXQgc2VlbXMKPiBs
aWtlIGEgY29tYmluYXRpb24gb2YgdGhlIHR3byBub3ctdXBzdHJlYW0gcHJvcGVydGllcyB5b3Ug
cG9pbnQgYXQuIEkKClllcywgdGhhdCdzIHdoYXQgSSBmb3VuZCB0b28uIFNvIGl0IHNlZW1zIHRo
YXQgdGhpcyB3YXMgYW4gb3ZlcnNpZ2h0IHdoZW4KdGhlIERUUyBmb3IgdGhlc2UgQ2hyb21lYm9v
a3Mgd2VyZSB1cHN0cmVhbWVkLgoKPiBsb29rZWQgdGhyb3VnaCB0aGUgZmlyc3QgdXNlIG9mIHB3
bS1kZWxheS11cyBvbiBSSzMzOTkgR3J1IHN5c3RlbXMsCj4gYW5kIEkgY2FuJ3QgZmluZCBhIHNw
ZWMgcmVmZXJlbmNlIHRoYXQgc2FpZCBpdCB3YXMgbmVlZGVkOyBwZXJoYXBzIGl0Cj4gd2FzIG5l
ZWRsZXNzIGNvcHkvcGFzdGUgaW1pdGF0aW9uPwo+Cj4gU28sIHNpbXBsZSBkZWxldGlvbiBpcyBw
cm9iYWJseSBmaW5lOgo+Cj4gUmV2aWV3ZWQtYnk6IEJyaWFuIE5vcnJpcyA8YnJpYW5ub3JyaXNA
Y2hyb21pdW0ub3JnPgo+CgpUaGFua3MgZm9yIHRoZSBjb25maXJtYXRpb24gYW5kIHJldmlldyEK
Ci0tIApCZXN0IHJlZ2FyZHMsCgpKYXZpZXIgTWFydGluZXogQ2FuaWxsYXMKQ29yZSBQbGF0Zm9y
bXMKUmVkIEhhdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
