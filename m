Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27B37C32771
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 18:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mDW/wHVC5dzaqTMp/JFM2A+Wyml9BQ0SW3m6faXZlw=; b=C/jufiGN4fu77R
	74/a6tGudx6M7OtPDZz9WcVq3zofZ+QZaFV60O8g35dqCqxc/CInAlFKKYsqZyVadyuD4QERcIR05
	ws1MwSXb6StSEfcBBmZU7OfSQd2t/3JpAj4FlY5f4zeTi5VaxWQDUSmA1Tq8drnEDOT5nJRMrZPVm
	NS2kcki0/G9rLPBMjuJg0XkSZHXosg9RSdxVY3dYPTugPKVwxvPvYrrkZBj1VOVpL/ije3L7Ry+Pi
	bPu6+Wh63gbx2Z8UXnjJyWiKsCKq8fiscLHa6hbknrbKmsUM6PuywXdxnla8CMM+gooH4z7klA5IB
	ynEOURsW0PkW26zcqEjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odboW-0001yS-3P; Wed, 28 Sep 2022 18:29:44 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odboT-0001xO-0m
	for linux-rockchip@lists.infradead.org; Wed, 28 Sep 2022 18:29:42 +0000
Received: by mail-ed1-x52e.google.com with SMTP id f20so18395828edf.6
        for <linux-rockchip@lists.infradead.org>; Wed, 28 Sep 2022 11:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=LecMmmCV4KkS+yKiNrgFY1wAFi+9PPAIyyf/Hq5BKnc=;
        b=lInReJjxSFjgeQ2BQQM+yyrHx23D+TioDVNvYfHww08wCGmXNjxz2C80XsNix7FuTn
         JYyXvFA+9YB5EN2yZW+gYDaKP/vuwVCPw6sxgI1tsHD4JCh5RSJOYYEt0wgM/3h0ReTG
         APqJ+hksh1NymTeNVn4UHaml5a7rC78lce7mGuUFEGAUgoaKiJNijym8iKaj46zd0lIb
         isEC1nZaEBWEFiL2l9Zj1x3OOwtzKCHqRhbkvxHSqZYYoXI8i3MEIcos3sUnx9OveWgR
         ZQoZcLbZs7LU9ke9GyBJru5nHcqFnaiZP9gw/BWEIyRht1XeQs43FHqXU8XHWBDZ13Uy
         bvAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=LecMmmCV4KkS+yKiNrgFY1wAFi+9PPAIyyf/Hq5BKnc=;
        b=iccSaUfbWJe5sJn3ts2LANeynG//RCmOYigDXfdnXbS0TkwBRO/8DNHK2eV9lKQBc3
         5WLT6yZqGfZi9Nrqt675mHWWNw0PtceIWNS2sIh7f7h3GemyupQJDJmWlSQAjrvKWZPo
         +Kab7nXmGaHcZv06BQFAD2uFXSqurCZB8V46t+qGL+KrJ/XfwoYAzaOHswIbFqcYoo42
         1pZj6zM9cHH3dCEw0TqAaT1OeA8zxk3I36hZKaPPYyupEFtynHQbiqG/KQFPeTymlwPQ
         IRPHyUtAIaig8spjhiw5nFMiitS/RY7vgXkArI3/AbHFKtpsySVuB9krQ2oRlFvoObAh
         OqPQ==
X-Gm-Message-State: ACrzQf1qG6bZpDA6e4Sz5Jk/LJr8u6wMhix1Mr4PUQdMozOEeU2X2eP5
	ADkI82Op4EvjR8ZYp0rp270=
X-Google-Smtp-Source: AMsMyM5W/8fPkCuQCjMr6yqVljOnuxDalpqaUEAD/1BRpsYWqZNOIJ/9blKcYqFLSULFtXp9xsuyxw==
X-Received: by 2002:a05:6402:4310:b0:451:3b07:9114 with SMTP id m16-20020a056402431000b004513b079114mr33628300edc.153.1664389777355;
        Wed, 28 Sep 2022 11:29:37 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id m17-20020a50c191000000b00456f569f31dsm3939463edf.75.2022.09.28.11.29.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 11:29:36 -0700 (PDT)
Message-ID: <66b5b616-ae9f-a1aa-e2b5-450f570cfcdd@gmail.com>
Date: Wed, 28 Sep 2022 20:29:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/1] dt-bindings: pwm: rockchip: Add description for
 rk3588
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com, linux-pwm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>
References: <20220901135523.52151-1-sebastian.reichel@collabora.com>
 <1662059695.095333.2226883.nullmailer@robh.at.kernel.org>
 <20220913091202.2oawzrq2u5iiz6hq@pengutronix.de>
 <20220913141601.fi6pl2xdo4xmtw6t@mercury.elektranox.org>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20220913141601.fi6pl2xdo4xmtw6t@mercury.elektranox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_112941_103738_3EEFC557 
X-CRM114-Status: GOOD (  26.59  )
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

CgpPbiA5LzEzLzIyIDE2OjE2LCBTZWJhc3RpYW4gUmVpY2hlbCB3cm90ZToKPiBIaSwKPiAKPiBP
biBUdWUsIFNlcCAxMywgMjAyMiBhdCAxMToxMjowMkFNICswMjAwLCBVd2UgS2xlaW5lLUvDtm5p
ZyB3cm90ZToKPj4gSGVsbG8gUm9iLAo+Pgo+PiBPbiBUaHUsIFNlcCAwMSwgMjAyMiBhdCAwMjox
NDo1NVBNIC0wNTAwLCBSb2IgSGVycmluZyB3cm90ZToKPj4+IE9uIFRodSwgMDEgU2VwIDIwMjIg
MTU6NTU6MjMgKzAyMDAsIFNlYmFzdGlhbiBSZWljaGVsIHdyb3RlOgo+Pj4+IEFkZCAicm9ja2No
aXAscmszNTg4LXB3bSIgY29tcGF0aWJsZSBzdHJpbmcgZm9yIFBXTSBub2RlcyBmb3VuZAo+Pj4+
IG9uIGEgcmszNTg4IHBsYXRmb3JtLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFu
IFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+Cj4+Pj4gLS0tCj4+Pj4g
Tm8gZHJpdmVyIGNoYW5nZXMgcmVxdWlyZWQuCj4+Pj4gLS0tCj4+Pj4gIERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9wd20vcHdtLXJvY2tjaGlwLnlhbWwgfCAxICsKPj4+PiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4+Pj4KPj4+Cj4+PiBSdW5uaW5nICdtYWtlIGR0
YnNfY2hlY2snIHdpdGggdGhlIHNjaGVtYSBpbiB0aGlzIHBhdGNoIGdpdmVzIHRoZQo+Pj4gZm9s
bG93aW5nIHdhcm5pbmdzLiBDb25zaWRlciBpZiB0aGV5IGFyZSBleHBlY3RlZCBvciB0aGUgc2No
ZW1hIGlzCj4+PiBpbmNvcnJlY3QuIFRoZXNlIG1heSBub3QgYmUgbmV3IHdhcm5pbmdzLgo+Pj4K
Pj4+IE5vdGUgdGhhdCBpdCBpcyBub3QgeWV0IGEgcmVxdWlyZW1lbnQgdG8gaGF2ZSAwIHdhcm5p
bmdzIGZvciBkdGJzX2NoZWNrLgo+Pj4gVGhpcyB3aWxsIGNoYW5nZSBpbiB0aGUgZnV0dXJlLgo+
Pgo+PiBJcyB0aGlzIGEgbGlzdCBvZiAqbmV3KiB3YXJuaW5ncywgb3IgaXMgdGhlIHJlcG9ydCAo
c29tZXdoYXQpIG9ydGhvZ29uYWwKPj4gdG8gdGhlIGFjdHVhbCBjaGFuZ2UgYW5kIHlvdSBqdXN0
IHVzZWQgdGhlIG9wcG9ydHVuaXR5IHRoYXQgc29tZW9uZQo+PiB0b3VjaGVkIHRoZSBwd20tcm9j
a2NoaXAgYmluZGluZyB0byBwb2ludCBvdXQgdGhhdCB0aGVyZSBpcyBzb21lIGNsZWFudXAKPj4g
dG8gZG8/Cj4+Cj4+PiBGdWxsIGxvZyBpcyBhdmFpbGFibGUgaGVyZTogaHR0cHM6Ly9wYXRjaHdv
cmsub3psYWJzLm9yZy9wYXRjaC8KPj4KPj4gSG0sIHRoYXQgZ2l2ZXMgbWUgYSA0MDQuCj4gCgo+
IFRoaXMgaXMgYW4gZXhpc3RpbmcgcHJvYmxlbSB3aXRoIHRoZSBydjExMDggYmluZGluZy4KPiBU
aGUgcmszNTg4IGRvZXMgbm90IGhhdmUgcHdtIGludGVycnVwdHMuCgpIaSwKCkNvdWxkIHlvdSBy
ZWNoZWNrPwoKRnJvbSBSb2NrY2hpcMKgUkszNTg4wqBEYXRhc2hlZXTCoFYwLjEtMjAyMTA3Mjcu
cGRmOgoKUFdNClN1cHBvcnQgMTYgb24tY2hpcCBQV01zKFBXTTB+UFdNMTUpIHdpdGggaW50ZXJy
dXB0LWJhc2VkIG9wZXJhdGlvbgpQcm9ncmFtbWFibGUgcHJlLXNjYWxlZCBvcGVyYXRpb24gdG8g
YnVzIGNsb2NrIGFuZCB0aGVuIGZ1cnRoZXIgc2NhbGVkCkVtYmVkZGVkIDMyLWJpdCB0aW1lci9j
b3VudGVyIGZhY2lsaXR5ClN1cHBvcnQgY2FwdHVyZSBtb2RlClN1cHBvcnQgY29udGludW91cyBt
b2RlIG9yIG9uZS1zaG90IG1vZGUKUHJvdmlkZXMgcmVmZXJlbmNlIG1vZGUgYW5kIG91dHB1dCB2
YXJpb3VzIGR1dHktY3ljbGUgd2F2ZWZvcm0KT3B0aW1pemVkIGZvciBJUiBhcHBsaWNhdGlvbiBm
b3IgUFdNMywgUFdNNywgUFdNMTEsIFBXTTE1Cgo9PT0KCkFSTTogZHRzOiByazMyODg6IGFkZCB0
aGUgaW50ZXJydXB0cyBwcm9wZXJ0eSBmb3IgUFdNIApodHRwczovL2dpdGh1Yi5jb20vcm9ja2No
aXAtbGludXgva2VybmVsL2NvbW1pdC8xNmI3YjI4NDYxOGQxNjUyZTY5NGY2Mjg2ZjU3NWNlODJm
NWYwM2U1CgpDb21tZW50OgpBdCB0aGUgbW9tZW50LCB3ZSBjYW4gZmluZCB0aGUgcmVtb3RlY3Rs
IHB3bSBpcyBuZWVkZWQgb24gYm94LgpXZSBjYW4gYWRkIHRoZSBwcm9wZXJ0eSBmb3IgYWxsIFBX
TXMuIEFGQUlLLCB0aGUgcHdtIGRyaXZlciBkb24ndCB1c2UgaXQKYnV0IHRoZSBkcml2ZXJzL2lu
cHV0L3JlbW90ZWN0bC9yb2NrY2hpcF9wd21fcmVtb3RlY3RsLmMKCj09PQoKRnJvbSBSb2NrY2hp
cCBSSzM1NjggVFJNIFBhcnQxIFYxLjEtMjAyMTAzMDEucGRmCgo4LWJpdCByZXBlYXQgY291bnRl
ciBmb3Igb25lLXNob3Qgb3BlcmF0aW9uLiBPbmUtc2hvdCBvcGVyYXRpb24gd2lsbCBwcm9kdWNl
IE4gKyAxCnBlcmlvZHMgb2YgdGhlIHdhdmVmb3JtLCB3aGVyZSBOIGlzIHRoZSByZXBlYXQgY291
bnRlciB2YWx1ZSwgYW5kIGdlbmVyYXRlcyBhCnNpbmdsZSBpbnRlcnJ1cHQgYXQgdGhlIGVuZCBv
ZiBvcGVyYXRpb24KCkNvbnRpbnVvdXMgbW9kZSBnZW5lcmF0ZXMgdGhlIHdhdmVmb3JtIGNvbnRp
bnVvdXNseSwgYW5kIGRvZXMgbm90IGdlbmVyYXRlcwphbnkgaW50ZXJydXB0cwoKPiAKPiAtLSBT
ZWJhc3RpYW4KPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
