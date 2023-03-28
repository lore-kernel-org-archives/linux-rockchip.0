Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A60F0C761A6
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Mar 2023 07:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cx7/OKjTy4ZQZCVxjjJiXBbqNCE6yDA486WtVlTCA8Y=; b=L/P8YjM2Pj47b4
	MUU/fVfNsLOR73L0WJM9iHECreIRTM+QthX2M4gk3Z8njNoJ7+7aoePtE8sMNbFkaUKX29zChNRx0
	otvOXZUks1mgrDyTxXvX+ybOimTlMcMXqRR3l1HfAumaUHtHvVwYOtAwZdWHpG93eMKXu2CFT9Q4i
	t4Tqfs4ERWaqJDofAuU0ccloClgTW50uAsvAwy2OddiR3oAqEoY6o/abdeNhuFsVbCKEKQfbJu5Ba
	6nyFIkwigCCjhhFYgEfgIRTYl4YF6SF9Hmb9SmNva8d9gkkvQl6cGml+U7tFp4H2kREJkP+aDt65A
	IolXuWMzOZdwqyhIgJlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3pi-00DSKE-2o;
	Tue, 28 Mar 2023 07:33:30 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3pY-00DSF5-0z
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Mar 2023 07:33:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679988799;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3RKROZr4GzDPgqMOFWqSLDrRs2RHwcu0c+oEbFcDZ1s=;
	b=VXLxhGwmdRMsdQ5YLXj/5mWi/XBO22/+EIiJ/GDTKvAHpnW5+rDn3S7rak9Ils/OnODCT7
	jXlFRJkKJ+2aBYPMtyXUyeJWSS6nR/iPtWpObpFGB3cTp2uqIGSV7B04fMVhRwEZarZBJp
	rrYFw9MO9cS+ULOxXaa02BNTokD45Cs=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-638-3Lt7-shsOYyOEKFaBsbUYQ-1; Tue, 28 Mar 2023 03:33:17 -0400
X-MC-Unique: 3Lt7-shsOYyOEKFaBsbUYQ-1
Received: by mail-wr1-f71.google.com with SMTP id v30-20020adfa1de000000b002d557ec6d15so975609wrv.18
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Mar 2023 00:33:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679988796;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3RKROZr4GzDPgqMOFWqSLDrRs2RHwcu0c+oEbFcDZ1s=;
        b=K0NUfr0QOBwkuX54mJuqHAfT+2HEp6JDLBGvVooBWezXo95J1vhJgVyv/pZqVuusvj
         Dw4HyzMOxzRE4nvmi914KVpaz9tM2d4rrKi1x2QqO6VyJIoL8eP9h+LJxfSyAewfZPrX
         E1NM7gFdCaO8PqhvBrVesQb4sjpylJuDdf4apoxAbAIaDpKZzVuh51z2mVWXGhWKEbkT
         DeKYkxT70gMQUqnjQEk65jhKxgq0WC4EmU/hDVgjOtdK7DyD9Ji56Aowo//DQo+2EBLZ
         7H8I/0XEy3rkeXOCar0Tr3uam92hNFa6MSTo70cIoFUh4VNPRB4phHGIFw6sEYS9z6zf
         5o4g==
X-Gm-Message-State: AO0yUKUaeHXJfvunURI7a8okIUDTLBbH/b49Ssi06fN8kcTH8pFS0PUz
	Cj8cEwCAwzI9+DNSJ1XoadHyBKR4dTfeszUTHKyYVPRVtnynZXHwZfeqxySj3lWZ7Hm30VZOQU/
	R6JlySGcu8XqhpXrpfOuWqgyDnHYa4Yhp
X-Received: by 2002:a05:600c:287:b0:3ed:cc22:23db with SMTP id 7-20020a05600c028700b003edcc2223dbmr11833330wmk.3.1679988796651;
        Tue, 28 Mar 2023 00:33:16 -0700 (PDT)
X-Google-Smtp-Source: AK7set+E7Hunz2KKt4RZvQ903yvOLNFadeK9bEOzN8DCEVH3HEHCePFn8XpKOb8OMCb77RgGdWB2qw==
X-Received: by 2002:a05:600c:287:b0:3ed:cc22:23db with SMTP id 7-20020a05600c028700b003edcc2223dbmr11833309wmk.3.1679988796327;
        Tue, 28 Mar 2023 00:33:16 -0700 (PDT)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id j6-20020a05600c190600b003ef6bc71cccsm7527075wmq.27.2023.03.28.00.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Mar 2023 00:33:16 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Peter Robinson <pbrobinson@gmail.com>,
	Tom <tom@tom-fitzhenry.me.uk>,
	Robert Mader <robert.mader@collabora.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Martijn Braam <martijn@brixit.nl>,
	Ondrej Jirman <megi@xff.cz>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	=?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jarrah Gosbell <kernel@undef.tools>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3 1/2] arm64: dts: rk3399-pinephone-pro: Add internal display support
Date: Tue, 28 Mar 2023 09:33:08 +0200
Message-Id: <20230328073309.1743112-2-javierm@redhat.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230328073309.1743112-1-javierm@redhat.com>
References: <20230328073309.1743112-1-javierm@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_003320_422894_EC9BEE3F 
X-CRM114-Status: GOOD (  14.78  )
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

RnJvbTogTWFydGlqbiBCcmFhbSA8bWFydGlqbkBicml4aXQubmw+CgpUaGUgcGhvbmUncyBkaXNw
bGF5IGlzIHVzaW5nIGEgSGFubnN0YXIgTENEIHBhbmVsLiBTdXBwb3J0IGl0IGJ5IGFkZGluZyBh
CnBhbmVsIERUIG5vZGUgYW5kIGFsbCBuZWVkZWQgbm9kZXMgKGJhY2tsaWdodCwgTUlQSSBEU0ks
IHJlZ3VsYXRvcnMsIGV0YykuCgpTaWduZWQtb2ZmLWJ5OiBNYXJ0aWpuIEJyYWFtIDxtYXJ0aWpu
QGJyaXhpdC5ubD4KQ28tZGV2ZWxvcGVkLWJ5OiBLYW1pbCBUcnpjacWEc2tpIDxheXVmYW5AYXl1
ZmFuLmV1PgpTaWduZWQtb2ZmLWJ5OiBLYW1pbCBUcnpjacWEc2tpIDxheXVmYW5AYXl1ZmFuLmV1
PgpDby1kZXZlbG9wZWQtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6PgpTaWduZWQtb2Zm
LWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KU2lnbmVkLW9mZi1ieTogSmF2aWVyIE1h
cnRpbmV6IENhbmlsbGFzIDxqYXZpZXJtQHJlZGhhdC5jb20+ClRlc3RlZC1ieTogT25kcmVqIEpp
cm1hbiA8bWVnaUB4ZmYuY3o+Ci0tLQoKQ2hhbmdlcyBpbiB2MzoKLSBGaXggc29tZSAuL3Njcmlw
dHMvY2hlY2twYXRjaC5wbCAtLXN0cmljdCB3YXJuaW5ncy4KLSBBZGQgT25kcmVqIEppcm1hbiBU
ZXN0ZWQtYnkgdGFnLgotIENoYW5nZSBQV00gcGVyaW9kIHRvIDUwMDAwIHNpbmNlIDIwIGtIeiBp
cyByZWNvbW1lbmRlZCAoT25kcmVqIEppcm1hbikuCi0gUmVtb3ZlIHVzZWxlc3MgY29tbWVudHMg
Zm9yIHRoZSBwYW5lbCByZWd1bGF0b3JzIChPbmRyZWogSmlybWFuKS4KLSBEcm9wIHVubmVlZGVk
IHBpbmN0cmwgcHVsbCBkb3duIGNvbmYgZm9yIHBpbnMgdGhhdCBlaXRoZXIgYWxyZWFkeSBoYXZl
CiAgYSBwdWxsLWRvd24gcmVzaXN0b3Igb3IgYXJlIGFscmVhZHkgZHJpdmVuIGJ5IHRoZSBTb0Mg
KE9uZHJlaiBKaXJtYW4pLgotIFJlbW92ZSAicHdtLWRlbGF5LXVzIiBwcm9wZXJ0eSBub3Qgc3Vw
cG9ydGVkIGluIG1haW5saW5lIChPbmRyZWogSmlybWFuKS4KCkNoYW5nZXMgaW4gdjI6Ci0gRHJv
cCB0b3VjaHNjcmVlbiBub2RlIGJlY2F1c2UgdXNlZCB0aGUgd3JvbmcgY29tcGF0aWJsZSAoT25k
cmVqIEppcm1hbikuCi0gRml4IGFzc2lnbmVkLWNsb2NrLXBhcmVudHMgaW4gdm9wYiBub2RlIChP
bmRyZWogSmlybWFuKS4KLSBBZGQgdm9wbCBhbmQgdm9wbCBub2Rlcy4KCiAuLi4vZHRzL3JvY2tj
aGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cyAgICAgfCA5NSArKysrKysrKysrKysrKysrKysr
CiAxIGZpbGUgY2hhbmdlZCwgOTUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMKaW5kZXggYTA3OTVh
MmIxY2IxLi41MzliMzZlOGJmZjUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzCkBAIC0yOSw2ICsyOSwxMSBAQCBjaG9z
ZW4gewogCQlzdGRvdXQtcGF0aCA9ICJzZXJpYWwyOjExNTIwMG44IjsKIAl9OwogCisJYmFja2xp
Z2h0OiBiYWNrbGlnaHQgeworCQljb21wYXRpYmxlID0gInB3bS1iYWNrbGlnaHQiOworCQlwd21z
ID0gPCZwd20wIDAgNTAwMDAgMD47CisJfTsKKwogCWdwaW8ta2V5cyB7CiAJCWNvbXBhdGlibGUg
PSAiZ3Bpby1rZXlzIjsKIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKQEAgLTEwMiw2ICsx
MDcsMzAgQEAgd2lmaV9wd3JzZXE6IHNkaW8td2lmaS1wd3JzZXEgewogCQkvKiBXTF9SRUdfT04g
b24gbW9kdWxlICovCiAJCXJlc2V0LWdwaW9zID0gPCZncGlvMCBSS19QQjIgR1BJT19BQ1RJVkVf
TE9XPjsKIAl9OworCisJLyogTUlQSSBEU0kgcGFuZWwgMS44diBzdXBwbHkgKi8KKwl2Y2Mxdjhf
bGNkOiB2Y2MxdjgtbGNkIHsKKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOworCQll
bmFibGUtYWN0aXZlLWhpZ2g7CisJCXJlZ3VsYXRvci1uYW1lID0gInZjYzF2OF9sY2QiOworCQly
ZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKKwkJcmVndWxhdG9yLW1heC1taWNy
b3ZvbHQgPSA8MTgwMDAwMD47CisJCXZpbi1zdXBwbHkgPSA8JnZjYzN2M19zeXM+OworCQlncGlv
ID0gPCZncGlvMyBSS19QQTUgR1BJT19BQ1RJVkVfSElHSD47CisJCXBpbmN0cmwtbmFtZXMgPSAi
ZGVmYXVsdCI7CisJfTsKKworCS8qIE1JUEkgRFNJIHBhbmVsIDIuOHYgc3VwcGx5ICovCisJdmNj
MnY4X2xjZDogdmNjMnY4LWxjZCB7CisJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsK
KwkJZW5hYmxlLWFjdGl2ZS1oaWdoOworCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2MydjhfbGNkIjsK
KwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MjgwMDAwMD47CisJCXJlZ3VsYXRvci1tYXgt
bWljcm92b2x0ID0gPDI4MDAwMDA+OworCQl2aW4tc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsKKwkJ
Z3BpbyA9IDwmZ3BpbzMgUktfUEExIEdQSU9fQUNUSVZFX0hJR0g+OworCQlwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiOworCX07CiB9OwogCiAmY3B1X2FsZXJ0MCB7CkBAIC0xMzksNiArMTY4LDEx
IEBAICZlbW1jX3BoeSB7CiAJc3RhdHVzID0gIm9rYXkiOwogfTsKIAorJmdwdSB7CisJbWFsaS1z
dXBwbHkgPSA8JnZkZF9ncHU+OworCXN0YXR1cyA9ICJva2F5IjsKK307CisKICZpMmMwIHsKIAlj
bG9jay1mcmVxdWVuY3kgPSA8NDAwMDAwPjsKIAlpMmMtc2NsLXJpc2luZy10aW1lLW5zID0gPDE2
OD47CkBAIC0zNjIsNiArMzk2LDM5IEBAICZpb19kb21haW5zIHsKIAlzdGF0dXMgPSAib2theSI7
CiB9OwogCismbWlwaV9kc2kgeworCXN0YXR1cyA9ICJva2F5IjsKKwljbG9jay1tYXN0ZXI7CisK
Kwlwb3J0cyB7CisJCW1pcGlfb3V0OiBwb3J0QDEgeworCQkJI2FkZHJlc3MtY2VsbHMgPSA8MD47
CisJCQkjc2l6ZS1jZWxscyA9IDwwPjsKKwkJCXJlZyA9IDwxPjsKKworCQkJbWlwaV9vdXRfcGFu
ZWw6IGVuZHBvaW50IHsKKwkJCQlyZW1vdGUtZW5kcG9pbnQgPSA8Jm1pcGlfaW5fcGFuZWw+Owor
CQkJfTsKKwkJfTsKKwl9OworCisJcGFuZWxAMCB7CisJCWNvbXBhdGlibGUgPSAiaGFubnN0YXIs
aHNkMDYwYmh3NCI7CisJCXJlZyA9IDwwPjsKKwkJYmFja2xpZ2h0ID0gPCZiYWNrbGlnaHQ+Owor
CQlyZXNldC1ncGlvcyA9IDwmZ3BpbzQgUktfUEQxIEdQSU9fQUNUSVZFX0xPVz47CisJCXZjYy1z
dXBwbHkgPSA8JnZjYzJ2OF9sY2Q+OworCQlpb3ZjYy1zdXBwbHkgPSA8JnZjYzF2OF9sY2Q+Owor
CQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOworCisJCXBvcnQgeworCQkJbWlwaV9pbl9wYW5l
bDogZW5kcG9pbnQgeworCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmbWlwaV9vdXRfcGFuZWw+Owor
CQkJfTsKKwkJfTsKKwl9OworfTsKKwogJnBtdV9pb19kb21haW5zIHsKIAlwbXUxODMwLXN1cHBs
eSA9IDwmdmNjXzF2OD47CiAJc3RhdHVzID0gIm9rYXkiOwpAQCAtNDI5LDYgKzQ5NiwxMCBAQCAm
c2RpbzAgewogCXN0YXR1cyA9ICJva2F5IjsKIH07CiAKKyZwd20wIHsKKwlzdGF0dXMgPSAib2th
eSI7Cit9OworCiAmc2RtbWMgewogCWJ1cy13aWR0aCA9IDw0PjsKIAljYXAtc2QtaGlnaHNwZWVk
OwpAQCAtNDc5LDMgKzU1MCwyNyBAQCBibHVldG9vdGggewogJnVhcnQyIHsKIAlzdGF0dXMgPSAi
b2theSI7CiB9OworCismdm9wYiB7CisJc3RhdHVzID0gIm9rYXkiOworCWFzc2lnbmVkLWNsb2Nr
cyA9IDwmY3J1IERDTEtfVk9QMF9ESVY+LCA8JmNydSBEQ0xLX1ZPUDA+LAorCQkJICA8JmNydSBB
Q0xLX1ZPUDA+LCA8JmNydSBIQ0xLX1ZPUDA+OworCWFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDA+
LCA8MD4sIDw0MDAwMDAwMDA+LCA8MTAwMDAwMDAwPjsKKwlhc3NpZ25lZC1jbG9jay1wYXJlbnRz
ID0gPCZjcnUgUExMX0dQTEw+LCA8JmNydSBEQ0xLX1ZPUDBfRElWPjsKK307CisKKyZ2b3BiX21t
dSB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKKworJnZvcGwgeworCXN0YXR1cyA9ICJva2F5IjsK
Kwlhc3NpZ25lZC1jbG9ja3MgPSA8JmNydSBEQ0xLX1ZPUDFfRElWPiwgPCZjcnUgRENMS19WT1Ax
PiwKKwkJCSAgPCZjcnUgQUNMS19WT1AxPiwgPCZjcnUgSENMS19WT1AxPjsKKwlhc3NpZ25lZC1j
bG9jay1yYXRlcyA9IDwwPiwgPDA+LCA8NDAwMDAwMDAwPiwgPDEwMDAwMDAwMD47CisJYXNzaWdu
ZWQtY2xvY2stcGFyZW50cyA9IDwmY3J1IFBMTF9HUExMPiwgPCZjcnUgRENMS19WT1AxX0RJVj47
Cit9OworCismdm9wbF9tbXUgeworCXN0YXR1cyA9ICJva2F5IjsKK307Ci0tIAoyLjQwLjAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
