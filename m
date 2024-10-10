Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32CD0CF11C3
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 10:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A+tHlvqkiPxGuldizV0VKsLja0w31L7L6jzuW3jUBoY=; b=VjUulOqY+iP03t
	3pR3HqlINMtoH9xYX7pnPN8sBALm4d74ysacn8LCLV1++qaao5VcJ/+Ix8JsmSh1WUxWSXpARmRsy
	sVA/iV+WWMCeJzhYPZzDZnpbLs8FlIkyUHDb7tby/GMpOtAZqx3aeA0twBD6xQQAVDS/zpIfuCgeS
	Joul6UBqqMewV64vlffXzo8Uop5TgEkKKkRDJ/d2PzcXHU9HQ/j5Q/XqCW3XSIGu/gHe6jvRAv4f/
	I662U1JJzjZFRzzRRJlhXmuRfzQ5XSbqf3wsGAJkjiBhXduMVJQYuR1daTw6x8pHbSiDw/FDFYNeT
	KRRMPopDXyvoPy754Zlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syq1Y-0000000CKL0-0hFu;
	Thu, 10 Oct 2024 10:04:00 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1synIV-0000000BnsH-1SbD
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Oct 2024 07:09:20 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-20c714cd9c8so3974225ad.0
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Oct 2024 00:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728544158; x=1729148958; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tJtJaWjtNg9tO3T0sp+J+HlaXqzFt2qZA6ek8LhkKYA=;
        b=qJwM2rVJpZ6W/D8UoGkZSySeftWu+68gS8CZ/uzIsR1q7dfMN7wql9uhaRq+hbUJNY
         hvjiH/KgWGC8SeUtRSICNjSpYevmVmNK4zB5L4xVra10+LIUxiZ3madgcpvEnvkhmmVl
         9SWU2PhWvcLNmUD0WmOklTCFG4Hm3vChuWewoiwxomiwI87Zaax4t2yXK1zHDINZucQm
         iOatL7MGsQGZRFcLFFcTmphPuqzkAEVBxqfO20aatv2apsyBkGH66+o4qjJJZ0bURlnD
         udYpT3CeJ12/6Dzc4ZF52Qc3Vcmw6KpMHOnMDzLx0tS8ohZipjz+jQpuwktBu3tOcVh8
         7WJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728544158; x=1729148958;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tJtJaWjtNg9tO3T0sp+J+HlaXqzFt2qZA6ek8LhkKYA=;
        b=HGp+a5NHsi/loQSuznD9kly2wwuQGIm/u79Mdy9wOwhCxXRjKwlKuwKdcrI68HgeYC
         2kYyi+xPHtmwSUG4r6zxO3kKDSyFsL6OoFE2PTpq8vR8FF7/g0csRFJSmVsEZRkEaoZB
         ZRnrxGei//luzgj2qP4DjDo7Z/YjLQ9XRBYjcmHierZ2CJMJbpN143+W6yzCl8aNZiCt
         5klNL8u9m6iVvptaLM7etppjOIkwQhm/kIyI/ul/1iz9RWwkYQ2a/BzHaAs9j641mSGS
         E8NYkd7XN237bRdYr8w6YELYI+2pbROemA6si6uOilZopjEMqbD3bGD3YBDsV8PfugRT
         64ow==
X-Forwarded-Encrypted: i=1; AJvYcCVkR0P9X7AHam8ktopEoTG6Gd1W2LLpGozJnW72/KmtPf/6fh8JiYqNaCmywxcK3SelASkQxnDMOyU9Y8ojQQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxTtC1BhtteKpT8XfPdsLLVxmBHzt6RRIPKzzKT3ArwLzccoDJ/
	zUNSvUcfBsQXMtHD04lcUsC6oqKypgC8BS+TVV5xfhmGq9Yb04D9tKsOJOHy+A==
X-Google-Smtp-Source: AGHT+IEw4gY867tOo7DZxusBWqPRTN9yJ5jJLOtJDZX1qHIb6njHxYctb5N835g6n5vxSmfx6RjECA==
X-Received: by 2002:a17:902:f681:b0:204:e4c9:ce91 with SMTP id d9443c01a7336-20c636eb0b2mr73514025ad.7.1728544157915;
        Thu, 10 Oct 2024 00:09:17 -0700 (PDT)
Received: from thinkpad ([220.158.156.184])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8c215ed4sm4216135ad.217.2024.10.10.00.09.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 00:09:17 -0700 (PDT)
Date: Thu, 10 Oct 2024 12:39:11 +0530
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
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 03/12] PCI: rockchip-ep: Improve
 rockchip_pcie_ep_unmap_addr()
Message-ID: <20241010070911.ozwrpho3wddb4ezf@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-4-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007041218.157516-4-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_000919_441048_413832AE 
X-CRM114-Status: GOOD (  20.98  )
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

T24gTW9uLCBPY3QgMDcsIDIwMjQgYXQgMDE6MTI6MDlQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gRnJvbTogRGFtaWVuIExlIE1vYWwgPGRhbWllbi5sZW1vYWxAb3BlbnNvdXJjZS53
ZGMuY29tPgo+IAo+IFRoZXJlIGlzIG5vIG5lZWQgdG8gbG9vcCBvdmVyIGFsbCByZWdpb25zIHRv
IGZpbmQgdGhlIG1lbW9yeSB3aW5kb3cgdXNlZAo+IHRvIG1hcCBhbiBhZGRyZXNzLiBXZSBjYW4g
dXNlIHJvY2tjaGlwX29iX3JlZ2lvbigpIHRvIGRldGVybWluZSB0aGUKPiByZWdpb24gaW5kZXgs
IHRvZ2V0aGVyIHdpdGggYSBjaGVjayB0aGF0IHRoZSBhZGRyZXNzIHBhc3NlZCBhcyBhcmd1bWVu
dAo+IGlzIHRoZSBhZGRyZXNzIHVzZWQgdG8gY3JlYXRlIHRoZSBtYXBwaW5nLiBGdXJ0aGVybW9y
ZSwgdGhlCj4gb2JfcmVnaW9uX21hcCBiaXRtYXAgc2hvdWxkIGFsc28gYmUgY2hlY2tlZCB0byBl
bnN1cmUgdGhhdCB3ZSBhcmUgbm90Cj4gYXR0ZW1wdGluZyB0byB1bm1hcCBhbiBhZGRyZXNzIHRo
YXQgaXMgbm90IG1hcHBlZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBEYW1pZW4gTGUgTW9hbCA8ZGFt
aWVuLmxlbW9hbEBvcGVuc291cmNlLndkYy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jIHwgOCArKy0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtZXAuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvcGNpZS1yb2NrY2hpcC1lcC5jCj4gaW5kZXggNWEwNzA4NGZiN2M0Li44OWViZGYzZTQ3Mzcg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMK
PiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtZXAuYwo+IEBAIC0y
NTYsMTMgKzI1Niw5IEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfZXBfdW5tYXBfYWRkcihz
dHJ1Y3QgcGNpX2VwYyAqZXBjLCB1OCBmbiwgdTggdmZuLAo+ICB7Cj4gIAlzdHJ1Y3Qgcm9ja2No
aXBfcGNpZV9lcCAqZXAgPSBlcGNfZ2V0X2RydmRhdGEoZXBjKTsKPiAgCXN0cnVjdCByb2NrY2hp
cF9wY2llICpyb2NrY2hpcCA9ICZlcC0+cm9ja2NoaXA7Cj4gLQl1MzIgcjsKPiAtCj4gLQlmb3Ig
KHIgPSAwOyByIDwgZXAtPm1heF9yZWdpb25zOyByKyspCj4gLQkJaWYgKGVwLT5vYl9hZGRyW3Jd
ID09IGFkZHIpCj4gLQkJCWJyZWFrOwo+ICsJdTMyIHIgPSByb2NrY2hpcF9vYl9yZWdpb24oYWRk
cik7Cj4gIAo+IC0JaWYgKHIgPT0gZXAtPm1heF9yZWdpb25zKQo+ICsJaWYgKGFkZHIgIT0gZXAt
Pm9iX2FkZHJbcl0gfHwgIXRlc3RfYml0KHIsICZlcC0+b2JfcmVnaW9uX21hcCkpCgpIYXZpbmcg
dGhlc2UgdHdvIGNoZWNrcyBsb29rcyByZWR1bmRhbnQgdG8gbWUuIElzIGl0IHBvc3NpYmxlIHRo
YXQgYW4gYWRkcmVzcwpjb3VsZCBwYXNzIG9ubHkgb25lIGNoZWNrPwoKLSBNYW5pCgotLSAK4K6u
4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
