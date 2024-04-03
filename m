Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1070CD1294
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 09:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7rKwemLIpGybuwG5qUCstOPT9/JtSVt444PUBv/U0HQ=; b=A5UBvyqBC8W45r
	0gSBO9q5b+evtDPMgnYoRt97IZbVgxF9N56BCZHU5AIbQxVsKbMpvyo/xgzWUnYEqdCS1VmIX9gKE
	Ykrxt448BvrT1gzwns4EDFuBlq5HvwYIUJ+eXEIyUyoozK3FORJBenJWZpUPxKX02ItoCslHNB8e9
	2X7sDxEjcri1IWO9h8CyjypXVvRzelEfL1SJmTUUHhGgXSOV0/IZy0cP3zJjegfqonOGstWJ7O82S
	fswYifzbe0QNiy7Dzkbh7j0Mz1YLhycPDmy3AEMFnQiWnh1b0DVWYkbiTtOVISAVgOQKHsMbBH/If
	ELHdwzsWNWr+S97PaQlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrxEi-0000000FIEJ-37V5;
	Wed, 03 Apr 2024 09:48:52 +0000
Received: from mail-io1-xd2e.google.com ([2607:f8b0:4864:20::d2e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrxEf-0000000FIBB-19DN
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Apr 2024 09:48:51 +0000
Received: by mail-io1-xd2e.google.com with SMTP id ca18e2360f4ac-7d0262036afso314511339f.3
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Apr 2024 02:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712137727; x=1712742527; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EPXFh7gsPyAU+iXcewtYZIELGdFkMytovmlJfVGNhNo=;
        b=Hoh8/pOQaa/2icM08Ja5k9coQlMMLX2BNgpH3drJ1u/l8gpT9Xys4DZD6KlJVyuzja
         XkrY1Gu2n1nfxwPcVRI1hXQC2J958w3FP/m15sWs8XJFTspqrDZeH21qsDXuxbTAwnrq
         jZOkhOcnfFja5mZoTmsMTgI2nEZzGgzFYwulLZ4fRp5i9dpHGIx6C3qJcU7wsUYXaOfR
         SDePTv5HCJFpuzNot2TUx02EgKoxYfpK0XIduVqyQ+JqCzTZrbdtvjP49vIvgLTGVoWp
         jdY3naIOLzNyrG6/UERmeFaU2THmgm1ROcya+TzNepFUAcBIzWhIEOvXk+zYyHkc/MiA
         H+gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712137727; x=1712742527;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EPXFh7gsPyAU+iXcewtYZIELGdFkMytovmlJfVGNhNo=;
        b=Rgarfgd6Ld+5Hbpw8rmfNZu8kFPd4K0ggnwg6BiTHTpBDiMAn32sFPpHx8Kn7aoP3O
         XHfaf8CH9LdzJ0jvYMzE2M1QQ6KRMnGXE1cmwb8Wsu1QojTRXZ6SvsDdNFyH7ZDXt8Gk
         ZLU+ACiQ75wvCw00kNhbMyvjKc0yENrdPathyKBTcJEy4a8nTZEqTyNWmhVQr0kttPrb
         wY49LF05yFK7dtPsd7iwNb9VC9YUbrNdYaXQaQDV9a5CzmbPq/sHT6CSINJr+XQ1f9S6
         xLBU7Lq5B5R0OFpo2/74TROU9Ps3PXQlg9zhVHZP1V2oT6IA7fmO3NkGnAEFwwZYj2z/
         pOfQ==
X-Forwarded-Encrypted: i=1; AJvYcCU3k3C3UVsSI9lhkMkHBfZmoNATTGHuWm4PfzniFhTPvqw2kTgI8pHQWgUZtwYv9zbiIcOaXM/q8h7042V0m4YmQXnBW97zVS7nIi4234m3qNg3
X-Gm-Message-State: AOJu0YzxX0HbZ3hsJ7Tnnln095KmaM5dHUxu69QV5Kib5/jO+Ti+duLo
	DcNRJH1cTQLxZ1jREwRbjRWuWGw7iAXULnVCBftjwfLOlNFLk3NAYBTP+ULjr6OiLHZzgfUyH+Q
	=
X-Google-Smtp-Source: AGHT+IEbUkv1YVum64pYJ7p3hjvBN8WVLeTTz4TjDHu3j5DUSh/cjz4maB41kqZEWFfHUMT1vj9VFA==
X-Received: by 2002:a05:6e02:1c08:b0:369:efba:71c1 with SMTP id l8-20020a056e021c0800b00369efba71c1mr1638352ilh.16.1712137726677;
        Wed, 03 Apr 2024 02:48:46 -0700 (PDT)
Received: from thinkpad ([103.28.246.48])
        by smtp.gmail.com with ESMTPSA id d21-20020a634f15000000b005dbd0facb4dsm10931377pgb.61.2024.04.03.02.48.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 02:48:46 -0700 (PDT)
Date: Wed, 3 Apr 2024 15:18:40 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v2 03/18] PCI: endpoint: Introduce
 pci_epc_mem_map()/unmap()
Message-ID: <20240403094840.GI25309@thinkpad>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
 <20240330041928.1555578-4-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240330041928.1555578-4-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_024849_456865_5BBF11E9 
X-CRM114-Status: GOOD (  33.93  )
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

T24gU2F0LCBNYXIgMzAsIDIwMjQgYXQgMDE6MTk6MTNQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gSW50cm9kdWNlIHRoZSBmdW5jdGlvbiBwY2lfZXBjX21lbV9tYXAoKSB0byBmYWNp
bGl0YXRlIGNvbnRyb2xsZXIgbWVtb3J5Cj4gYWRkcmVzcyBhbGxvY2F0aW9uIGFuZCBtYXBwaW5n
IHRvIGEgUkMgUENJIGFkZHJlc3MgcmVnaW9uIGluIGVuZHBvaW50Cj4gZnVuY3Rpb24gZHJpdmVy
cy4KPiAKPiBUaGlzIGZ1bmN0aW9uIGZpcnN0IHVzZXMgcGNpX2VwY19tYXBfYWxpZ24oKSB0byBk
ZXRlcm1pbmUgdGhlIGNvbnRyb2xsZXIKPiBtZW1vcnkgYWRkcmVzcyBhbGlnbm1lbnQgKG9mZnNl
dCBhbmQgc2l6ZSkgY29uc3RyYWludHMuIFRoZSByZXN1bHQgb2YKPiB0aGlzIGZ1bmN0aW9uIGlz
IHVzZWQgdG8gYWxsb2NhdGUgYSBjb250cm9sbGVyIHBoeXNpY2FsIG1lbW9yeSByZWdpb24KPiB1
c2luZyBwY2lfZXBjX21lbV9hbGxvY19hZGRyKCkgYW5kIG1hcCBpdCB0byB0aGUgUkMgUENJIGFk
ZHJlc3MKPiBzcGFjZSB3aXRoIHBjaV9lcGNfbWFwX2FkZHIoKS4gU2luY2UgcGNpX2VwY19tYXBf
YWxpZ24oKSBtYXkgaW5kaWNhdGUKPiB0aGF0IGEgbWFwcGluZyBjYW4gYmUgc21hbGxlciB0aGFu
IHRoZSByZXF1ZXN0ZWQgc2l6ZSwgcGNpX2VwY19tZW1fbWFwKCkKPiBtYXkgb25seSBwYXJ0aWFs
bHkgbWFwIHRoZSBSQyBQQ0kgYWRkcmVzcyByZWdpb24gc3BlY2lmaWVkIGFuZCByZXR1cm4KPiBh
IHNtYWxsZXIgc2l6ZSBmb3IgdGhlIGVmZmVjdGl2ZSBtYXBwaW5nLgo+IAo+IFRoZSBjb3VudGVy
cGFydCBvZiBwY2lfZXBjX21lbV9tYXAoKSB0byB1bm1hcCBhbmQgZnJlZSB0aGUgY29udHJvbGxl
cgo+IG1lbW9yeSBhZGRyZXNzIHJlZ2lvbiBpcyBwY2lfZXBjX21lbV91bm1hcCgpLgo+IAo+IEJv
dGggZnVuY3Rpb25zIG9wZXJhdGUgdXNpbmcgc3RydWN0IHBjaV9lcGNfbWFwIGRhdGEgc3RydWN0
dXJlIHdoaWNoIGlzCj4gZXh0ZW5kZWQgdG8gY29udGFpbiB0aGUgcGh5c2ljYWwgYW5kIHZpcnR1
YWwgYWRkcmVzc2VzIG9mIHRoZSBhbGxvY2F0ZWQKPiBjb250cm9sbGVyIG1lbW9yeS4gRW5kcG9p
bnQgZnVuY3Rpb24gZHJpdmVycyBjYW4gdXNlIHN0cnVjdCBwY2lfZXBjX21hcAo+IHRvIGltcGxl
bWVudCByZWFkL3dyaXRlIGFjY2Vzc2VzIHdpdGhpbiB0aGUgbWFwcGVkIFJDIFBDSSBhZGRyZXNz
IHJlZ2lvbgo+IHVzaW5nIHRoZSAtPnZpcnRfYWRkciBhbmQgLT5zaXplIGZpZWxkcy4KPiAKPiBU
aGlzIGNvbW1pdCBjb250YWlucyBjb250cmlidXRpb25zIGZyb20gUmljayBXZXJ0ZW5icm9lawo+
IDxyaWNrLndlcnRlbmJyb2VrQGdtYWlsLmNvbT4uCj4gCgpBZGRpbmcgJ0NvLWRldmVsb3BlZC1i
eSAmJiBTaWduZWQtb2ZmLWJ5JyB0YWdzIHdvdWxkIGdpdmUgdGhlIGR1ZSBjcmVkaXQuCgo+IFNp
Z25lZC1vZmYtYnk6IERhbWllbiBMZSBNb2FsIDxkbGVtb2FsQGtlcm5lbC5vcmc+Cj4gLS0tCj4g
IGRyaXZlcnMvcGNpL2VuZHBvaW50L3BjaS1lcGMtY29yZS5jIHwgNjggKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysKPiAgaW5jbHVkZS9saW51eC9wY2ktZXBjLmggICAgICAgICAgICAgfCAg
NiArKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA3NCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcGNpL2VuZHBvaW50L3BjaS1lcGMtY29yZS5jIGIvZHJpdmVycy9wY2kvZW5k
cG9pbnQvcGNpLWVwYy1jb3JlLmMKPiBpbmRleCAzNzc1OGNhOTFkN2YuLjAwOTViNTRiZGY5ZSAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9lbmRwb2ludC9wY2ktZXBjLWNvcmUuYwo+ICsrKyBi
L2RyaXZlcnMvcGNpL2VuZHBvaW50L3BjaS1lcGMtY29yZS5jCj4gQEAgLTUzMCw2ICs1MzAsNzQg
QEAgaW50IHBjaV9lcGNfbWFwX2FkZHIoc3RydWN0IHBjaV9lcGMgKmVwYywgdTggZnVuY19ubywg
dTggdmZ1bmNfbm8sCj4gIH0KPiAgRVhQT1JUX1NZTUJPTF9HUEwocGNpX2VwY19tYXBfYWRkcik7
Cj4gIAo+ICsvKioKPiArICogcGNpX2VwY19tZW1fbWFwKCkgLSBhbGxvY2F0ZSBhbmQgbWFwIENQ
VSBhZGRyZXNzIHRvIFBDSSBhZGRyZXNzCgpIb3cgYWJvdXQsICdwY2lfZXBjX2FsbG9jX21hcCgp
Jz8gSSB0aGluayB0aGUgJ21lbScgcHJlZml4IHdhcyBhZGRlZCB0byB0aGUKZXhpc3RpbmcgQVBJ
cyBzaW5jZSB0aGUgZnVuY3Rpb24gZGVmaW5pdGlvbnMgYXJlIGluIHBjaS1lcGMtbWVtIGRyaXZl
ciwgYnV0Cm5vdCBuZWVkZWQgaGVyZS4KCj4gKyAqIEBlcGM6IHRoZSBFUEMgZGV2aWNlIG9uIHdo
aWNoIHRoZSBDUFUgYWRkcmVzcyBpcyB0byBiZSBhbGxvY2F0ZWQgYW5kIG1hcHBlZAo+ICsgKiBA
ZnVuY19ubzogdGhlIHBoeXNpY2FsIGVuZHBvaW50IGZ1bmN0aW9uIG51bWJlciBpbiB0aGUgRVBD
IGRldmljZQo+ICsgKiBAdmZ1bmNfbm86IHRoZSB2aXJ0dWFsIGVuZHBvaW50IGZ1bmN0aW9uIG51
bWJlciBpbiB0aGUgcGh5c2ljYWwgZnVuY3Rpb24KPiArICogQHBjaV9hZGRyOiBQQ0kgYWRkcmVz
cyB0byB3aGljaCB0aGUgQ1BVIGFkZHJlc3Mgc2hvdWxkIGJlIG1hcHBlZAo+ICsgKiBAc2l6ZTog
dGhlIG51bWJlciBvZiBieXRlcyB0byBtYXAgc3RhcnRpbmcgZnJvbSBAcGNpX2FkZHIKPiArICog
QG1hcDogd2hlcmUgdG8gcmV0dXJuIHRoZSBtYXBwaW5nIGluZm9ybWF0aW9uCj4gKyAqCj4gKyAq
IEFsbG9jYXRlIGEgY29udHJvbGxlciBwaHlzaWNhbCBhZGRyZXNzIHJlZ2lvbiBhbmQgbWFwIGl0
IHRvIGEgUkMgUENJIGFkZHJlc3MKCiJBbGxvY2F0ZSBhbiBFUEMgYWRkcmVzcyBzcGFjZSByZWdp
b24uLi4iCgo+ICsgKiByZWdpb24sIHRha2luZyBpbnRvIGFjY291bnQgdGhlIGNvbnRyb2xsZXIg
cGh5c2ljYWwgYWRkcmVzcyBtYXBwaW5nCj4gKyAqIGNvbnN0cmFpbnRzIChpZiBhbnkpLiBSZXR1
cm5zIHRoZSBlZmZlY3RpdmUgc2l6ZSBvZiB0aGUgbWFwcGluZywgd2hpY2ggbWF5CgpSZXR1cm4g
dmFsdWUgc2hvdWxkIGJlIHNwZWNpZmllZCBzZXBhcmF0ZWx5IGZvciBLZG9jLgoKPiArICogYmUg
bGVzcyB0aGFuIEBzaXplLCBvciBhIG5lZ2F0aXZlIGVycm9yIGNvZGUgaW4gY2FzZSBvZiBlcnJv
ci4KPiArICovCj4gK3NzaXplX3QgcGNpX2VwY19tZW1fbWFwKHN0cnVjdCBwY2lfZXBjICplcGMs
IHU4IGZ1bmNfbm8sIHU4IHZmdW5jX25vLAo+ICsJCQl1NjQgcGNpX2FkZHIsIHNpemVfdCBzaXpl
LCBzdHJ1Y3QgcGNpX2VwY19tYXAgKm1hcCkKPiArewo+ICsJaW50IHJldDsKPiArCj4gKwlyZXQg
PSBwY2lfZXBjX21hcF9hbGlnbihlcGMsIGZ1bmNfbm8sIHZmdW5jX25vLCBwY2lfYWRkciwgc2l6
ZSwgbWFwKTsKPiArCWlmIChyZXQpCj4gKwkJcmV0dXJuIHJldDsKPiArCj4gKwltYXAtPnZpcnRf
YmFzZSA9IHBjaV9lcGNfbWVtX2FsbG9jX2FkZHIoZXBjLCAmbWFwLT5waHlzX2Jhc2UsCj4gKwkJ
CQkJCW1hcC0+bWFwX3NpemUpOwoKSXQnZCBiZSBuaWNlIHRvIG1vdmUgcGNpX2VwY19tYXBfYWxp
Z24oKSBpbnNpZGUgdGhlIGV4aXN0aW5nCnBjaV9lcGNfbWVtX2FsbG9jX2FkZHIoKSBBUEkgdG8g
bWFrZSBzdXJlIHRoYXQgdGhlIGFsbG9jYXRlZCBtZW1vcnkgZm9sbG93cyB0aGUKY29uc3RyYWlu
dHMgb2YgdGhlIEVQQy4KCldvdWxkIHRoYXQgbWFrZSBzZW5zZT8KCi0gTWFuaQoKPiArCWlmICgh
bWFwLT52aXJ0X2Jhc2UpCj4gKwkJcmV0dXJuIC1FTk9NRU07Cj4gKwo+ICsJbWFwLT5waHlzX2Fk
ZHIgPSBtYXAtPnBoeXNfYmFzZSArIG1hcC0+bWFwX29mc3Q7Cj4gKwltYXAtPnZpcnRfYWRkciA9
IG1hcC0+dmlydF9iYXNlICsgbWFwLT5tYXBfb2ZzdDsKPiArCj4gKwlyZXQgPSBwY2lfZXBjX21h
cF9hZGRyKGVwYywgZnVuY19ubywgdmZ1bmNfbm8sIG1hcC0+cGh5c19iYXNlLAo+ICsJCQkgICAg
ICAgbWFwLT5tYXBfcGNpX2FkZHIsIG1hcC0+bWFwX3NpemUpOwo+ICsJaWYgKHJldCkgewo+ICsJ
CXBjaV9lcGNfbWVtX2ZyZWVfYWRkcihlcGMsIG1hcC0+cGh5c19iYXNlLCBtYXAtPnZpcnRfYmFz
ZSwKPiArCQkJCSAgICAgIG1hcC0+bWFwX3NpemUpOwo+ICsJCXJldHVybiByZXQ7Cj4gKwl9Cj4g
Kwo+ICsJcmV0dXJuIG1hcC0+cGNpX3NpemU7Cj4gK30KPiArRVhQT1JUX1NZTUJPTF9HUEwocGNp
X2VwY19tZW1fbWFwKTsKPiArCj4gKy8qKgo+ICsgKiBwY2lfZXBjX21lbV91bm1hcCgpIC0gdW5t
YXAgZnJvbSBQQ0kgYWRkcmVzcyBhbmQgZnJlZSBhIENQVSBhZGRyZXNzIHJlZ2lvbgo+ICsgKiBA
ZXBjOiB0aGUgRVBDIGRldmljZSBvbiB3aGljaCB0aGUgQ1BVIGFkZHJlc3MgaXMgYWxsb2NhdGVk
IGFuZCBtYXBwZWQKPiArICogQGZ1bmNfbm86IHRoZSBwaHlzaWNhbCBlbmRwb2ludCBmdW5jdGlv
biBudW1iZXIgaW4gdGhlIEVQQyBkZXZpY2UKPiArICogQHZmdW5jX25vOiB0aGUgdmlydHVhbCBl
bmRwb2ludCBmdW5jdGlvbiBudW1iZXIgaW4gdGhlIHBoeXNpY2FsIGZ1bmN0aW9uCj4gKyAqIEBt
YXA6IHRoZSBtYXBwaW5nIGluZm9ybWF0aW9uCj4gKyAqCj4gKyAqIEFsbG9jYXRlIGFuZCBtYXAg
bG9jYWwgQ1BVIGFkZHJlc3MgdG8gYSBQQ0kgYWRkcmVzcywgYWNjb3VudGluZyBmb3IgdGhlCj4g
KyAqIGNvbnRyb2xsZXIgbG9jYWwgQ1BVIGFkZHJlc3MgYWxpZ25tZW50IGNvbnN0cmFpbnRzLgo+
ICsgKi8KPiArdm9pZCBwY2lfZXBjX21lbV91bm1hcChzdHJ1Y3QgcGNpX2VwYyAqZXBjLCB1OCBm
dW5jX25vLCB1OCB2ZnVuY19ubywKPiArCQkgICAgICAgc3RydWN0IHBjaV9lcGNfbWFwICptYXAp
Cj4gK3sKPiArCWlmICghcGNpX2VwY19mdW5jdGlvbl9pc192YWxpZChlcGMsIGZ1bmNfbm8sIHZm
dW5jX25vKSkKPiArCQlyZXR1cm47Cj4gKwo+ICsJaWYgKCFtYXAgfHwgIW1hcC0+cGNpX3NpemUp
Cj4gKwkJcmV0dXJuOwo+ICsKPiArCXBjaV9lcGNfdW5tYXBfYWRkcihlcGMsIGZ1bmNfbm8sIHZm
dW5jX25vLCBtYXAtPnBoeXNfYmFzZSk7Cj4gKwlwY2lfZXBjX21lbV9mcmVlX2FkZHIoZXBjLCBt
YXAtPnBoeXNfYmFzZSwgbWFwLT52aXJ0X2Jhc2UsCj4gKwkJCSAgICAgIG1hcC0+bWFwX3NpemUp
Owo+ICt9Cj4gK0VYUE9SVF9TWU1CT0xfR1BMKHBjaV9lcGNfbWVtX3VubWFwKTsKPiArCj4gIC8q
Kgo+ICAgKiBwY2lfZXBjX2NsZWFyX2JhcigpIC0gcmVzZXQgdGhlIEJBUgo+ICAgKiBAZXBjOiB0
aGUgRVBDIGRldmljZSBmb3Igd2hpY2ggdGhlIEJBUiBoYXMgdG8gYmUgY2xlYXJlZAo+IGRpZmYg
LS1naXQgYS9pbmNsdWRlL2xpbnV4L3BjaS1lcGMuaCBiL2luY2x1ZGUvbGludXgvcGNpLWVwYy5o
Cj4gaW5kZXggOGNmYjRhYWYyNjI4Li44NjM5N2E1MDBiNTQgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVk
ZS9saW51eC9wY2ktZXBjLmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L3BjaS1lcGMuaAo+IEBAIC0z
MDQsNCArMzA0LDEwIEBAIHZvaWQgX19pb21lbSAqcGNpX2VwY19tZW1fYWxsb2NfYWRkcihzdHJ1
Y3QgcGNpX2VwYyAqZXBjLAo+ICAJCQkJICAgICBwaHlzX2FkZHJfdCAqcGh5c19hZGRyLCBzaXpl
X3Qgc2l6ZSk7Cj4gIHZvaWQgcGNpX2VwY19tZW1fZnJlZV9hZGRyKHN0cnVjdCBwY2lfZXBjICpl
cGMsIHBoeXNfYWRkcl90IHBoeXNfYWRkciwKPiAgCQkJICAgdm9pZCBfX2lvbWVtICp2aXJ0X2Fk
ZHIsIHNpemVfdCBzaXplKTsKPiArCj4gK3NzaXplX3QgcGNpX2VwY19tZW1fbWFwKHN0cnVjdCBw
Y2lfZXBjICplcGMsIHU4IGZ1bmNfbm8sIHU4IHZmdW5jX25vLAo+ICsJCQl1NjQgcGNpX2FkZHIs
IHNpemVfdCBzaXplLCBzdHJ1Y3QgcGNpX2VwY19tYXAgKm1hcCk7Cj4gK3ZvaWQgcGNpX2VwY19t
ZW1fdW5tYXAoc3RydWN0IHBjaV9lcGMgKmVwYywgdTggZnVuY19ubywgdTggdmZ1bmNfbm8sCj4g
KwkJICAgICAgIHN0cnVjdCBwY2lfZXBjX21hcCAqbWFwKTsKPiArCj4gICNlbmRpZiAvKiBfX0xJ
TlVYX1BDSV9FUENfSCAqLwo+IC0tIAo+IDIuNDQuMAo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+Cv
jeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
