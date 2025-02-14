Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25EB2C02198
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Feb 2025 18:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I6n0+/ztTH/QOyaOzW2/RsIxcgI5FNx7/mQZig04aOU=; b=Qko82BIr5uGcQu
	UjwEGP+++xAZ5u0uDR6H1tZ85yBFTLGTsnOBWC6uSSbd38xDaDTYLVMxflkxyLRzkQa66YMVJ2lyY
	gXYEA432fQ04w3qrICVMkrqLNsaqy6vDFbiUrkMd1YxEmu8FOxDUll3zxnPvTpKCStWVHLwYS3oVl
	XEog0ceXnJOiV17shaKDe2Zpg04KZlEOab/smFafthPHLlcQDAnjhWZhJ4b3z0ODPwXZrHs5b1eiV
	5xc7xVNhvQpLEFSshAllJFIbeIxta43Nr4ESBVIeed3tczKHyXCXEVgByD2NKqsSIufefPHDJlj2B
	wItV4UpTTe1aigH/iT7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tj0KG-0000000FrQz-2gn1;
	Fri, 14 Feb 2025 18:22:08 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tizgM-0000000Fkla-3xVq
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Feb 2025 17:40:56 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-21f6d2642faso62871455ad.1
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Feb 2025 09:40:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739554854; x=1740159654; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SL3H0DuOiIRBzcq9keabamHJlGFq0GX85r7ZwTWY1oc=;
        b=Jx6ic0BSW47C/Jgc2JrHFGJjK79hDMfKdfKMkeqTRfRKSWtGFYC+VXV3kxap4VUWUK
         ICewYx9PSDSHpv4f+fhdLYEnLMfyFfsgJNzgHO2jsfpO1e7NEmRK2uivluB5jXxuLp4F
         e5HtQTtiUJT9LBCCIN2ZZlfKFAHYosrSIkJPMSucq0wWVFcaPEOu9hC+fGrwcr3ON/Ro
         otTw9rq67d4lo1yHy/33n/BC8qn6awT/zKNrsvKX3meQDROskIlEgHXHo95oPTc+fAdE
         ZOAUo/v647L8+CLSqWJyU4zhWJcMgc8cKu/CLbHLBfdYxG7oIT4Sf0WYDJkls/noTRUY
         bHtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739554854; x=1740159654;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SL3H0DuOiIRBzcq9keabamHJlGFq0GX85r7ZwTWY1oc=;
        b=OzXUqrKaH9aNZ+MGQBYWUt6omYFc8smAUMab7VnABGwjd0BV0aaJF6n5UvhRiH2I4j
         ox8EXtcfshSai6PhkAaaFdF4T5QBQa7F9hbddnqNDh3JSEmbaamo4IjF2bxYCREe2PQQ
         TzMZk7zUKkkperymgjGW/ghM7FbmhK/iFjvpmQ53zcUY4hSk4HtjaPJeyGheRAavflBP
         YL4TQchWB0oKfvbQfb+Sp9boMQoL89dtukGlFYLRUugvcTCn95B1T6cQaUY/HqOORTbv
         2xAbil5yoo8T+1hWAhjgqMVeSA7/WroYh7JP2MiMCR4Bjb76+o6QfGeMI0icZgxlkHnT
         hdSg==
X-Forwarded-Encrypted: i=1; AJvYcCV5cbWGBYYWpa02sq4l0EuM+VYc3Zfyk0KDbpxjTSPFbPsjy24QCeu3A74l0HL0MSdjM58fScEhNjMxLl9DQw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwADYSjLD6aqIwGHc3BSvBURXw9HSeLcP9axbfS01Tgtr5fjXSm
	aNzsffCxKlmm1BrNfnS6LkAKQKKk6jlf+UXgSdbPVcAB0Cc2j4nRhpdWEE0pjQ==
X-Gm-Gg: ASbGncsnwuLpJVU69taoKZn+gRiXyBa2tUt+IYjI2+yux8SBAbuBqyBMhMxOFEvInlg
	TudNC1o+Y5y/96L/YAE2yHwewNAy8oFvKMZnocao+CL8NuS2hWglIw55+R90DS+4N5toHvmhlwo
	9BM9LtI3U1GLWUnRN5yPGJz8JXlOz5eCU7lMVvGusHIM2SqoBs9MY6LYKN/WKpOeRfYsv61b8rO
	ZeOnTP6sbmr+v9LyqzwUDMjBBwgTzz01pJ3Ah8KXB9vPXIq1Zu+5O4kLnf/9Vyizfvu+VN+r2du
	3HmEsm915WVl+3GaR9rH7vypKaA=
X-Google-Smtp-Source: AGHT+IFh0sbLUMbF5mJTepHDsyslk02Txh0BE7kYA1Ix9Jnaoqm96HhvZ/9FCnIuMaCAHju+TzXWhg==
X-Received: by 2002:a05:6a00:3c84:b0:730:9a85:c940 with SMTP id d2e1a72fcca58-732618fa927mr321487b3a.20.1739554854197;
        Fri, 14 Feb 2025 09:40:54 -0800 (PST)
Received: from thinkpad ([120.60.134.139])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73242549d01sm3528978b3a.14.2025.02.14.09.40.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2025 09:40:53 -0800 (PST)
Date: Fri, 14 Feb 2025 23:10:47 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Jingoo Han <jingoohan1@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Udit Kumar <u-kumar1@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 0/7] PCI: endpoint: Allow EPF drivers to configure the
 size of Resizable BARs
Message-ID: <20250214174047.6zrpuvtgrbxw333t@thinkpad>
References: <20250131182949.465530-9-cassel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250131182949.465530-9-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_094054_986183_0BA8318C 
X-CRM114-Status: GOOD (  23.33  )
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

T24gRnJpLCBKYW4gMzEsIDIwMjUgYXQgMDc6Mjk6NDlQTSArMDEwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBUaGUgUENJIGVuZHBvaW50IGZyYW1ld29yayBjdXJyZW50bHkgZG9lcyBub3Qgc3Vw
cG9ydCByZXNpemFibGUgQkFScy4KPiAKPiBBZGQgYSBuZXcgQkFSIHR5cGUgQkFSX1JFU0laQUJM
RSwgc28gdGhhdCBFUEMgZHJpdmVycyBjYW4gc3VwcG9ydCByZXNpemFibGUKPiBCQVJzIHByb3Bl
cmx5Lgo+IAo+IEZvciBhIHJlc2l6YWJsZSBCQVIsIHdlIHdpbGwgb25seSBhbGxvdyBhIHNpbmds
ZSBzdXBwb3J0ZWQgc2l6ZS4KPiBUaGlzIGlzIGJ5IGRlc2lnbiwgYXMgd2UgZG8gbm90IG5lZWQv
d2FudCB0aGUgY29tcGxleGl0eSBvZiB0aGUgaG9zdCBzaWRlCj4gcmVzaXppbmcgb3VyIHJlc2l6
YWJsZSBCQVIuCj4gCj4gSW4gdGhlIERXQyBkcml2ZXIgc3BlY2lmaWNhbGx5LCB0aGUgRFdDIGRy
aXZlciBjdXJyZW50bHkgaGFuZGxlcyByZXNpemFibGUKPiBCQVJzIHVzaW5nIGFuIHVnbHkgaGFj
ayB3aGVyZSBhIHJlc2l6YWJsZSBCQVIgaXMgZm9yY2Ugc2V0IHRvIGEgZml4ZWQgc2l6ZQo+IEJB
UiB3aXRoIDEgTUIgc2l6ZSBpZiBkZXRlY3RlZC4gVGhpcyBpcyBib2d1cywgYXMgYSByZXNpemFi
bGUgQkFSIGNhbiBiZQo+IGNvbmZpZ3VyZWQgdG8gc2l6ZXMgb3RoZXIgdGhhbiAxIE1CLgo+IAo+
IFdpdGggdGhlc2UgY2hhbmdlcywgYW4gRVBGIGRyaXZlciB3aWxsIGJlIGFibGUgdG8gY2FsbCBw
Y2lfZXBjX3NldF9iYXIoKQo+IHRvIGNvbmZpZ3VyZSBhIHJlc2l6YWJsZSBCQVIgdG8gYW4gYXJi
aXRyYXJ5IHNpemUsIGp1c3QgbGlrZSBmb3IKPiBCQVJfUFJPR1JBTU1BQkxFLiBUaHVzLCBEV0Mg
YmFzZWQgRVBGIGRyaXZlcnMgd2lsbCBubyBsb25nZXIgYmUgZm9yY2VkIHRvCj4gYSBib2d1cyAx
IE1CIGZvcmNlZCBzaXplIGZvciByZXNpemFibGUgQkFScy4KPiAKPiAKPiBUZXN0ZWQvdmVyaWZp
ZWQgb24gYSBSYWR4YSBSb2NrIDViIChyazM1ODgpIGJ5Ogo+IC1Nb2RpZnlpbmcgcGNpLWVwZi10
ZXN0LmMgdG8gcmVxdWVzdCBCQVIgc2l6ZXMgdGhhdCBhcmUgbGFyZ2VyIHRoYW4gMSBNQjoKPiAg
LXN0YXRpYyBzaXplX3QgYmFyX3NpemVbXSA9IHsgNTEyLCA1MTIsIDEwMjQsIDE2Mzg0LCAxMzEw
NzIsIDEwNDg1NzYgfTsKPiAgK3N0YXRpYyBzaXplX3QgYmFyX3NpemVbXSA9IHsgU1pfMU0sIFNa
XzFNLCBTWl8yTSwgU1pfMk0sIFNaXzRNLCBTWl80TSB9Owo+ICAoTWFrZSBzdXJlIHRvIHNldCBD
T05GSUdfQ01BX0FMSUdOTUVOVD0xMCBzdWNoIHRoYXQgZG1hX2FsbG9jX2NvaGVyZW50KCkKPiAg
IGNhbGxzIGFyZSBhbGlnbmVkIGV2ZW4gZm9yIGFsbG9jYXRpb25zIGxhcmdlciB0aGFuIDEgTUIu
KQo+IC1SZWJvb3RpbmcgdGhlIGhvc3QgdG8gbWFrZSBzdXJlIHRoYXQgdGhlIERXQyBFUCBkcml2
ZXIgY29uZmlndXJlcyB0aGUgQkFScwo+ICBjb3JyZWN0bHkgYWZ0ZXIgcmVjZWl2aW5nIGEgbGlu
ayBkb3duIGV2ZW50Lgo+IC1Nb2RpZnlpbmcgRVBDIGZlYXR1cmVzIHRvIGNvbmZpZ3VyZSBhIEJB
UiBhcyA2NC1iaXQsIHRvIG1ha2Ugc3VyZSB0aGF0IHdlCj4gIGhhbmRsZSA2NC1iaXQgQkFScyBj
b3JyZWN0bHkuCj4gLU1vZGlmeWluZyB0aGUgRFdDIEVQIGRyaXZlciB0byBzZXQgYSBzaXplIGxh
cmdlciB0aGFuIDIgR0IsIHRvIG1ha2Ugc3VyZQo+ICB3ZSBoYW5kbGUgQkFSIHNpemVzIGxhcmdl
ciB0aGFuIDIgR0IgKGZvciA2NC1iaXQgQkFScykgY29ycmVjdGx5Lgo+IC1SdW5uaW5nIHRoZSBj
b25zZWN1dGl2ZSBCQVIgdGVzdCBpbiBwY2lfZW5kcG9pbnRfdGVzdC5jIHRvIG1ha2Ugc3VyZSB0
aGF0Cj4gIHRoZSBhZGRyZXNzIHRyYW5zbGF0aW9uIHdvcmtzIGNvcnJlY3RseS4KPiAKCkkgdG9v
ayB0aGUgbGliZXJ0eSBzaW5jZSB0aGlzIHNlcmllcyBpcyBtb3N0bHkgcmVsYXRlZCB0byBlbmRw
b2ludCBhbmQgYXBwbGllZAp0byBwY2kvZW5kcG9pbnQhCgotIE1hbmkKCj4gCj4gQ2hhbmdlcyBz
aW5jZSBWMzoKPiAtUGlja2VkIHVwIHRhZ3MuCj4gLUFkZHJlc3NlZCBjb21tZW50cyBmcm9tIE1h
bmkuCj4gCj4gCj4gS2luZCByZWdhcmRzLAo+IE5pa2xhcwo+IAo+IE5pa2xhcyBDYXNzZWwgKDcp
Ogo+ICAgUENJOiBlbmRwb2ludDogQWxsb3cgRVBGIGRyaXZlcnMgdG8gY29uZmlndXJlIHRoZSBz
aXplIG9mIFJlc2l6YWJsZQo+ICAgICBCQVJzCj4gICBQQ0k6IGVuZHBvaW50OiBBZGQgcGNpX2Vw
Y19iYXJfc2l6ZV90b19yZWJhcl9jYXAoKQo+ICAgUENJOiBkd2M6IGVwOiBNb3ZlIGR3X3BjaWVf
ZXBfZmluZF9leHRfY2FwYWJpbGl0eSgpCj4gICBQQ0k6IGR3YzogZW5kcG9pbnQ6IEFsbG93IEVQ
RiBkcml2ZXJzIHRvIGNvbmZpZ3VyZSB0aGUgc2l6ZSBvZgo+ICAgICBSZXNpemFibGUgQkFScwo+
ICAgUENJOiBrZXlzdG9uZTogRGVzY3JpYmUgUmVzaXphYmxlIEJBUnMgYXMgUmVzaXphYmxlIEJB
UnMKPiAgIFBDSToga2V5c3RvbmU6IFNwZWNpZnkgY29ycmVjdCBhbGlnbm1lbnQgcmVxdWlyZW1l
bnQKPiAgIFBDSTogZHctcm9ja2NoaXA6IERlc2NyaWJlIFJlc2l6YWJsZSBCQVJzIGFzIFJlc2l6
YWJsZSBCQVJzCj4gCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1rZXlzdG9uZS5j
ICAgICB8ICAgNiArLQo+ICAuLi4vcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS1l
cC5jICAgfCAyMTggKysrKysrKysrKysrKysrLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
ZHdjL3BjaWUtZHctcm9ja2NoaXAuYyB8ICAyMiArLQo+ICBkcml2ZXJzL3BjaS9lbmRwb2ludC9w
Y2ktZXBjLWNvcmUuYyAgICAgICAgICAgfCAgMzEgKysrCj4gIGRyaXZlcnMvcGNpL2VuZHBvaW50
L3BjaS1lcGYtY29yZS5jICAgICAgICAgICB8ICAgNCArCj4gIGluY2x1ZGUvbGludXgvcGNpLWVw
Yy5oICAgICAgICAgICAgICAgICAgICAgICB8ICAgNSArCj4gIDYgZmlsZXMgY2hhbmdlZCwgMjM5
IGluc2VydGlvbnMoKyksIDQ3IGRlbGV0aW9ucygtKQo+IAo+IC0tIAo+IDIuNDguMQo+IAoKLS0g
CuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
