Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CD6FC021B6
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Feb 2025 16:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3P1RrTToS4ky7JjGlw89KvviaLkSQRP9NmPnXZZJRY=; b=KR9myWFESWtf8F
	4j3d+YFY1//jow1jVqKwCjXj+4uoZvK6wq7E2JYaCHhDuQxzAco4yxRaaQsSUAHVeg0tYH8ZEiORY
	Ja3+0imONglLX9lypL7dEz4gdB5tbEHMdc2XkANG1iQfrvbOlSuouYpYLKZ+h6RZLitPmoPpuntnz
	D30064uSAC0wsm+9NhT6RS254P8O5R5slVjha6WnuJCSEl8olXRJoiXvsKoDdnZy1snvPrsS9aKDf
	hI4lrpqhrXGY+rCXfMxLLenVu/jHto7VaLoF3/I0YgsCE0wHr45uLQ7T7mY8A6Ak24IgDi1pF6RNg
	tJi54zAEG6DtkTBxfuww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlsD3-00000008LK9-2pOG;
	Sat, 22 Feb 2025 16:18:33 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tls3Y-00000008KHf-0hYj
	for linux-rockchip@lists.infradead.org;
	Sat, 22 Feb 2025 16:08:45 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-220d28c215eso47837885ad.1
        for <linux-rockchip@lists.infradead.org>; Sat, 22 Feb 2025 08:08:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740240523; x=1740845323; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=m6nKOO+ujfvI6kP5NRUFljlra8jwiaSae/QIEC4vlMk=;
        b=C2Qp7VIcAr8g6HG9TTQMBA7Hw6FQsMwLCy95L2QW86l6rD8YZnHByreBvdMgJfoJcd
         TnEjQ15HbaMCHnJLuM9JCzeL2I65rbJDGWJdv3ZTEXCCYq13MBDY0orWwg/BBhMcsy36
         b39ut1XRqNXD+P60dUr6jAaWS+RjdJ/dkI2Bnn0pWBZtswW5Z0yTbm8WayfHpz5VxnI0
         VL/dl77AMjiGlCLdUI5YOvmM1fnEolrmP7CKQLeMsyOT0TIJRC7+Ps7xB11xjtSNqHEx
         DXbCNfwXKkJFeZEhZO7Uipu4bzTnCObwKyAMvg0RGMke1CWkSS/OO00OZt3WpQzx2sYc
         uWUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740240523; x=1740845323;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m6nKOO+ujfvI6kP5NRUFljlra8jwiaSae/QIEC4vlMk=;
        b=Ezd182qkKD6/nBYkbf1G9WjPG13l8zJ4DrZ7EEHUs/U12On+4eIEflcDC6EJCvO0lK
         Dh4vjV4viytMl9H3nTaEU//CVz5MZygpYxiUgYFdLowuI6ST1l2vV2jSL3pR5uJNRr7b
         R0BeSiM4Es0JDGcMpcZc4j42/30GIgpCxwuUNyg1yUcZTUXGg7vUTCt1MyYBY4JK+4Ij
         9sNLs/ac36ihEjPAhdN28bgVn5MjCtAfDSDazAXBUoxAqOr0dsCzIX9IwSLTCikLK24h
         n1oKy7tAX8TuS3kk5gK5aGZl2U6qHN1i1bi/g6ku3KiPKGd0b7dJXXGAcWVC9tBypgmI
         FWtw==
X-Forwarded-Encrypted: i=1; AJvYcCVOjZCnGwVlIGEqj3Km4uLKShdnGeBmvPgEEyFLINYRRGgXj9VzzTVWrf0GaxANRqrep0HpxsrAq1aQJEYKKw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwxlLgRsPsOPUBLAecDGcwRbriCpyyk/lhBGk2rS1I2Au1MCj30
	8YnFe/mUwK52j81jedsabDLNplfpjKjmS25VeW23ZoB/14ZOpClkP4H8tFQy8g==
X-Gm-Gg: ASbGncvZQSOvFjeGHOyjrL6pOBeRMLh1ECWJeDCcQ14l0SVgAZdvV7WSm+b4U0RN/DV
	VHdztBNVsSIbh5/ebTL038IvF/Z7Jp98V7q+VDqms3ykNsib8WojivM54eZJJVVbT79cldBA3Il
	G6uUKJDOteKdJ8Q/gCL3IIHX1D/ZwXM89SrDoZnSTomuzVPMoGPOBcmFOb4H56jNf7OQRQwulPR
	Sqpz1NmoFQBjmsfgfxXDgZCrq6wMrYfNAEMienroT2zU1aLZItcCgjo0Wv9Z+37O8tcGMyl9cx7
	1S8Ox5h0V++odwUl0GRozR1dnb1by+LaDIDRUQ==
X-Google-Smtp-Source: AGHT+IHN0WlvX+IkHk8JMgEJNSbtnqx/TMfpzaynwWxX8s++M0aKqed9Cxvgkv+KhaqAUxrXEQr99g==
X-Received: by 2002:a17:902:e80b:b0:215:44fe:163e with SMTP id d9443c01a7336-2219ff34b52mr134423285ad.1.1740240522821;
        Sat, 22 Feb 2025 08:08:42 -0800 (PST)
Received: from thinkpad ([120.60.135.149])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fceb02d7dasm3319824a91.5.2025.02.22.08.08.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 08:08:42 -0800 (PST)
Date: Sat, 22 Feb 2025 21:38:37 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Damien Le Moal <dlemoal@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/2] PCI: dw-rockchip: hide broken ATS capability
Message-ID: <20250222160837.mropn3laiyv3acaa@thinkpad>
References: <20250221202646.395252-3-cassel@kernel.org>
 <20250221202646.395252-4-cassel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250221202646.395252-4-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250222_080844_197131_CC3B15D1 
X-CRM114-Status: GOOD (  31.43  )
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

T24gRnJpLCBGZWIgMjEsIDIwMjUgYXQgMDk6MjY6NDhQTSArMDEwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBXaGVuIHJ1bm5pbmcgdGhlIHJrMzU4OCBpbiBlbmRwb2ludCBtb2RlLCB3aXRoIGFu
IEludGVsIGhvc3Qgd2l0aCBJT01NVQo+IGVuYWJsZWQsIHRoZSBob3N0IHNpZGUgcHJpbnRzOgo+
IERNQVI6IFZULWQgZGV0ZWN0ZWQgSW52YWxpZGF0aW9uIFRpbWUtb3V0IEVycm9yOiBTSUQgMAo+
IAo+IFdoZW4gcnVubmluZyB0aGUgcmszNTg4IGluIGVuZHBvaW50IG1vZGUsIHdpdGggYW4gQU1E
IGhvc3Qgd2l0aCBJT01NVQo+IGVuYWJsZWQsIHRoZSBob3N0IHNpZGUgcHJpbnRzOgo+IGlvbW11
IGl2aGQwOiBBTUQtVmk6IEV2ZW50IGxvZ2dlZCBbSU9UTEJfSU5WX1RJTUVPVVQgZGV2aWNlPTYz
OjAwLjAgYWRkcmVzcz0weDQyYjViMDFhMF0KPiAKPiBVc3VhbGx5LCB0byBoYW5kbGUgdGhlc2Ug
aXNzdWVzLCB3ZSBhZGQgYSBxdWlyayBmb3IgdGhlIFBDSSB2ZW5kb3IgYW5kCj4gZGV2aWNlIElE
IGluIGRyaXZlcnMvcGNpL3F1aXJrcy5jIHdpdGggcXVpcmtfbm9fYXRzKCkuIFRoYXQgaXMgYmVj
YXVzZQo+IHdlIGNhbm5vdCB1c3VhbGx5IG1vZGlmeSB0aGUgY2FwYWJpbGl0aWVzIG9uIHRoZSBF
UCBzaWRlLgo+IAo+IEluIHRoaXMgY2FzZSwgd2UgY2FuIG1vZGlmeSB0aGUgY2FwYWJpbHRpZXMg
b24gdGhlIEVQIHNpZGUuIFRodXMsIGhpZGUgdGhlCj4gYnJva2VuIEFUUyBjYXBhYmlsaXR5IG9u
IHJrMzU4OCB3aGVuIHJ1bm5pbmcgaW4gRVAgbW9kZS4gVGhhdCB3YXksCj4gd2UgZG9uJ3QgbmVl
ZCBhbnkgcXVpcmsgb24gdGhlIGhvc3Qgc2lkZSwgYW5kIHdlIHNlZSBubyBlcnJvcnMgb24gdGhl
IGhvc3QKPiBzaWRlLCBhbmQgd2UgY2FuIHJ1biBwY2lfZW5kcG9pbnRfdGVzdCBzdWNjZXNzZnVs
bHksIHdpdGggdGhlIElPTU1VCj4gZW5hYmxlZCBvbiB0aGUgaG9zdCBzaWRlLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IE5pa2xhcyBDYXNzZWwgPGNhc3NlbEBrZXJuZWwub3JnPgo+IC0tLQo+ICBkcml2
ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgfCA0NiArKysrKysrKysr
KysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA0NiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYyBiL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+IGluZGV4IDgzNmVh
MTBlYWZiYi4uMmJlMDA1YzFhMTYxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
ZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+IEBAIC0yNDIsNiArMjQyLDUxIEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgZHdfcGNpZV9ob3N0X29wcyByb2NrY2hpcF9wY2llX2hvc3Rfb3BzID0gewo+ICAJ
LmluaXQgPSByb2NrY2hpcF9wY2llX2hvc3RfaW5pdCwKPiAgfTsKPiAgCj4gKy8qCj4gKyAqIEFU
UyBkb2VzIG5vdCB3b3JrIG9uIHJrMzU4OCB3aGVuIHJ1bm5pbmcgaW4gRVAgbW9kZS4KPiArICog
QWZ0ZXIgYSBob3N0IGhhcyBlbmFibGVkIEFUUyBvbiB0aGUgRVAgc2lkZSwgaXQgd2lsbCBzZW5k
IGFuIElPVExCCj4gKyAqIGludmFsaWRhdGlvbiByZXF1ZXN0IHRvIHRoZSBFUCBzaWRlLiBUaGUg
cmszNTg4IHdpbGwgbmV2ZXIgc2VuZCBhIGNvbXBsZXRpb24KPiArICogYmFjayBhbmQgZXZlbnR1
YWxseSB0aGUgaG9zdCB3aWxsIHByaW50IGFuIElPVExCX0lOVl9USU1FT1VUIGVycm9yLCBhbmQg
dGhlCj4gKyAqIEVQIHdpbGwgbm90IGJlIG9wZXJhdGlvbmFsLiBJZiB3ZSBoaWRlIHRoZSBBVFMg
Y2FwLCB0aGluZ3Mgd29yayBhcyBleHBlY3RlZC4KPiArICovCj4gK3N0YXRpYyB2b2lkIHJvY2tj
aGlwX3BjaWVfZXBfaGlkZV9icm9rZW5fYXRzX2NhcF9yazM1ODgoc3RydWN0IGR3X3BjaWVfZXAg
KmVwKQo+ICt7Cj4gKwlzdHJ1Y3QgZHdfcGNpZSAqcGNpID0gdG9fZHdfcGNpZV9mcm9tX2VwKGVw
KTsKPiArCXN0cnVjdCBkZXZpY2UgKmRldiA9IHBjaS0+ZGV2Owo+ICsJdW5zaWduZWQgaW50IHNw
Y2llX2NhcF9vZmZzZXQsIG5leHRfY2FwX29mZnNldDsKPiArCXUzMiBzcGNpZV9jYXBfaGVhZGVy
LCBuZXh0X2NhcF9oZWFkZXI7Cj4gKwo+ICsJLyogb25seSBoaWRlIHRoZSBBVFMgY2FwIGZvciBy
azM1ODggcnVubmluZyBpbiBFUCBtb2RlICovCj4gKwlpZiAoIW9mX2RldmljZV9pc19jb21wYXRp
YmxlKGRldi0+b2Zfbm9kZSwgInJvY2tjaGlwLHJrMzU4OC1wY2llLWVwIikpCj4gKwkJcmV0dXJu
OwoKQ29tcGF0aWJsZSBjaGVja3MgYWx3YXlzIHRlbmQgdG8gZXh0ZW5kLiBTbyBwbGVhc2UgdXNl
IGEgYm9vbGVhbiBmbGFnIHRvCmlkZW50aWZ5IHRoZSBxdWlyayBpbiAnc3RydWN0IHJvY2tjaGlw
X3BjaWVfb2ZfZGF0YScgYW5kIHNldCBpdCBpbgoncm9ja2NoaXBfcGNpZV9lcF9vZl9kYXRhX3Jr
MzU4OCcuIFRoaXMgd2F5LCBvdGhlciBTb0NzIGNvdWxkIGFsc28gcmV1c2UgdGhlCmZsYWcgaWYg
cmVxdWlyZWQuCgo+ICsKPiArCXNwY2llX2NhcF9vZmZzZXQgPSBkd19wY2llX2ZpbmRfZXh0X2Nh
cGFiaWxpdHkocGNpLCBQQ0lfRVhUX0NBUF9JRF9TRUNQQ0kpOwo+ICsJaWYgKCFzcGNpZV9jYXBf
b2Zmc2V0KQo+ICsJCXJldHVybjsKPiArCj4gKwlzcGNpZV9jYXBfaGVhZGVyID0gZHdfcGNpZV9y
ZWFkbF9kYmkocGNpLCBzcGNpZV9jYXBfb2Zmc2V0KTsKPiArCW5leHRfY2FwX29mZnNldCA9IFBD
SV9FWFRfQ0FQX05FWFQoc3BjaWVfY2FwX2hlYWRlcik7Cj4gKwo+ICsJbmV4dF9jYXBfaGVhZGVy
ID0gZHdfcGNpZV9yZWFkbF9kYmkocGNpLCBuZXh0X2NhcF9vZmZzZXQpOwo+ICsJaWYgKFBDSV9F
WFRfQ0FQX0lEKG5leHRfY2FwX2hlYWRlcikgIT0gUENJX0VYVF9DQVBfSURfQVRTKQo+ICsJCXJl
dHVybjsKPiArCj4gKwkvKiBjbGVhciBuZXh0IHB0ciAqLwo+ICsJc3BjaWVfY2FwX2hlYWRlciAm
PSB+R0VOTUFTSygzMSwgMjApOwo+ICsKPiArCS8qIHNldCBuZXh0IHB0ciB0byBuZXh0IHB0ciBv
ZiBBVFNfQ0FQICovCj4gKwlzcGNpZV9jYXBfaGVhZGVyIHw9IG5leHRfY2FwX2hlYWRlciAmIEdF
Tk1BU0soMzEsIDIwKTsKPiArCj4gKwlkd19wY2llX2RiaV9yb193cl9lbihwY2kpOwo+ICsJZHdf
cGNpZV93cml0ZWxfZGJpKHBjaSwgc3BjaWVfY2FwX29mZnNldCwgc3BjaWVfY2FwX2hlYWRlcik7
Cj4gKwlkd19wY2llX2RiaV9yb193cl9kaXMocGNpKTsKClRoaXMgY29kZSBpcyBtb3N0bHkgZ2Vu
ZXJpYy4gU28gcGxlYXNlIG1vdmUgaXQgdG8gcGNpZS1kZXNpZ253YXJlLWVwLmMuIFRoZQpmdW5j
dGlvbiBzaG91bGQganVzdCBhY2NlcHQgdHdvIENBUCBJRHMgKHByZXYgYW5kIHRhcmdldCkgYW5k
IGhpZGUgdGhlIHRhcmdldApjYXBhYmlsaXR5LiBMaWtlLAoKCWR3X3BjaWVfaGlkZV9leHRfY2Fw
YWJpbGl0eShwY2ksIFBDSV9FWFRfQ0FQX0lEX1NFQ1BDSSwKCQkJCSAgICBQQ0lfRVhUX0NBUF9J
RF9BVFMpOwoKSXRzIHRvbyBiYWQgdGhhdCB3ZSBjYW5ub3QgdHJhdmVyc2UgYmFjayBmcm9tIHRo
ZSB0YXJnZXQgY2FwYWJpbGl0eS4gV2UgY291bGQKb3BlbiBjb2RlIGR3X3BjaWVfZXBfZmluZF9l
eHRfY2FwYWJpbGl0eSgpIHRvIGtlZXAgdHJhY2sgb2YgdGhlIHByZXZfY2FwX29mZnNldAp0aG91
Z2guCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a
4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
