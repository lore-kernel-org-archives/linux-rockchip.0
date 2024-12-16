Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 592ACE7717F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 05:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4OcMZ+Cb88CX6qLEtPRvw9+aStmCCp9qdil5qs23MuI=; b=kHP9YRnRE6CCZl
	1K45x3G97DSN2qe8e+jtOwLumGw0mJJ9w/z9ydvhaDY8X3TWQumlBNjY+tlB5kdyXG1Lv4klfuJfm
	x3UvA0L918o+C3zVwA+2+07Hmd8yKi1tkoT9gf3m2rTo79QaMFB31dslGEsXwm2PIpUbrKmtoTU6b
	7ucZnZGqhLZKJve8xc6icCBulmdg6eqqyYq/dL1U4nt15up5dTFkqeDU3KI4uUlKqyNVElaoZF7uj
	A915IVDVdLbFeA0LKLkpRLPAnTaRpCdDvBufO+QjZj4gI9bZkuiSkoxp6A5IFraA9cxl541V0YuhU
	PsDPLYGyHMStv+0jilkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN3zd-000000098Vt-3IWe;
	Mon, 16 Dec 2024 05:50:09 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN3zb-000000098VH-1kRE
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 05:50:08 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-728e81257bfso2723292b3a.2
        for <linux-rockchip@lists.infradead.org>; Sun, 15 Dec 2024 21:50:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734328206; x=1734933006; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NfDqFw/0Ge6ACx4gypsP30h0WumL7JDvT7ybs468exc=;
        b=HsAwnpU5v/vNltVGVQywBqbl0450UkUH4XL6X07y7Y+Odbxf9mXtOIoXJp9y51Bf1U
         4H7iVaybcdujbv5f1ObhBeYnNlCkRs5DJ42scf7TnLt0y+ODKekrpjRRm8y5OjyBzjgf
         MZ7tpg7QKP6QUHOtpZ7QHplUcuG4RdqDFn5TNbsThfNx9PVDuEzWShWGJT6iZ87Qw5Wv
         tM1IqIWKDHsQzc0MOsQRWp+ClzHFWAu5OYr6xhhPC2gcROQglL5MoHAKfytWTSj8GUzw
         8HlZPYCYJplgzqlC6AwJRDOLdgxhWii69QcuMVt943wvp/krrIgFcntXJuLQnVKmbB86
         WVog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734328206; x=1734933006;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NfDqFw/0Ge6ACx4gypsP30h0WumL7JDvT7ybs468exc=;
        b=A4aK3ItHkL3NnTAcRYjvV82x9YotZMVZl3C0Ww2ASzDAQhekXtUKxu3QstGx+oSBKG
         iWWcBqhT5zsSTegELbGMvlRpPbppEQ9oCTeUpHMTlzIRE6CdveomVoPGCC3VyuBCnocP
         Bn+W42MY/FxhNz60IpMtMdJYooLytZESUCNVOdgFd45v4nYApU0JsolrfARFCrOT+POM
         mnavCLaUDfiCLmWSqhYBYu3V1T1asILmgQrh9bJy9QMBbI+/wVQe1pbU3wJxg4o24iyF
         k8iMFlm75KJzfUnz3Q8/4CcGtBlMVsr2eTuiKALYaMtEaIGpmJ6k300KZJpY6t0DWPiF
         k+aA==
X-Forwarded-Encrypted: i=1; AJvYcCX9sNAU/2dTKinO51zAcM7xRoY27kHzZrWnqXAqxcZO9EzXYO/YKvWsnZRVW2322tCcgIrLuMt2ZI+Eik99rA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyOldGTHEyuUMqrXSq400DtbqqvDqmx8MyB+xHNavPEAUjC8BTf
	G9l9Bpj/WGabHZeZbpGXApfXeKk6ku9OewFTYl7JlHtpC4bgNlVJKKCPpsaFgA==
X-Gm-Gg: ASbGnctp7J7u+ecTTekCsXRCmaKlPStl36AvXXagyv/AEF/veCjhoocEYbAMrsQ3HRx
	Qir8bUEyPdn9o7J7XBLIxOKQKmjVUOihLZYvjXjuytPawprON+MNiY6kGBB1eGvOFOT+KZwwCub
	0zagyHAMUxVt1lLioED47xatVi1yaxxqp4jYTqBXCIJF3J8gLIe5XgckoHoqyRs2t8a3ibW7UuV
	fusas+tBirdOaBSCdQSwccFiCa397eEcKGwLgvWVWDzeGLc2/cSI0oeTbR3uG+D75c=
X-Google-Smtp-Source: AGHT+IGUEcdN6e9X082bHyB6rQbbINwZc/qg8MyVv7F/1/9Ib1cCa0Aa+2Iy8tnbGGf2gmSSQGQfZw==
X-Received: by 2002:a05:6a00:4386:b0:725:e4b9:a600 with SMTP id d2e1a72fcca58-7290c24cceamr15300939b3a.16.1734328206422;
        Sun, 15 Dec 2024 21:50:06 -0800 (PST)
Received: from thinkpad ([120.60.56.176])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72918bad802sm4004227b3a.141.2024.12.15.21.50.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Dec 2024 21:50:05 -0800 (PST)
Date: Mon, 16 Dec 2024 11:19:53 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v5 00/14] Fix and improve the Rockchip endpoint driver
Message-ID: <20241216054953.kj43om6fbjksbjcy@thinkpad>
References: <20241017015849.190271-1-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241017015849.190271-1-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241215_215007_471831_90D53A6C 
X-CRM114-Status: GOOD (  23.93  )
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

T24gVGh1LCBPY3QgMTcsIDIwMjQgYXQgMTA6NTg6MzVBTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gVGhpcyBwYXRjaCBzZXJpZXMgZml4IHRoZSBQQ0kgYWRkcmVzcyBtYXBwaW5nIGhh
bmRsaW5nIG9mIHRoZSBSb2NrY2hpcAo+IFBDSSBlbmRwb2ludCBkcml2ZXIsIHJlZmFjdG9yIHNv
bWUgb2YgaXRzIGNvZGUsIGltcHJvdmVzIGxpbmsgdHJhaW5pbmcKPiBhbmQgYWRkcyBoYW5kbGlu
ZyBvZiB0aGUgUEVSU1QjIHNpZ25hbC4KPiAKPiBUaGlzIHNlcmllcyBpcyBvcmdhbml6ZWQgYXMg
Zm9sbG93czoKPiAgLSBQYXRjaCAxIGZpeGVzIHRoZSByb2NrY2hpcCBBVFUgcHJvZ3JhbW1pbmcK
PiAgLSBQYXRjaCAyLCAzIGFuZCA0IGludHJvZHVjZSBzbWFsbCBjb2RlIGltcHJvdm1lbnRzCj4g
IC0gUGF0Y2ggNSBpbXBsZW1lbnRzIHRoZSAuYWxpZ25fYWRkcigpIG9wZXJhdGlvbiB0byBtYWtl
IHRoZSBSSzMzOTkKPiAgICBlbmRwb2ludCBjb250cm9sbGVyIGRyaXZlciBmdWxseSBmdW5jdGlv
bmFsIHdpdGggdGhlIG5ldwo+ICAgIHBjaV9lcGNfbWVtX21hcCgpIGZ1bmN0aW9uCj4gIC0gUGF0
Y2ggNiB1c2VzIHRoZSBuZXcgYWxpZ25fYWRkciBvcGVyYXRpb24gZnVuY3Rpb24gdG8gZml4IHRo
ZSBBVFUKPiAgICBwcm9ncmFtbWluZyBmb3IgTVNJIElSUSBkYXRhIG1hcHBpbmcKPiAgLSBQYXRj
aCA3LCA4LCA5IGFuZCAxMCByZWZhY3RvciB0aGUgZHJpdmVyIGNvZGUgdG8gbWFrZSBpdCBtb3Jl
Cj4gICAgcmVhZGFibGUKPiAgLSBQYXRjaCAxMSBpbnRyb2R1Y2VzIHRoZSAuc3RvcCgpIGVuZHBv
aW50IGNvbnRyb2xsZXIgb3BlcmF0aW9uIHRvCj4gICAgY29ycmVjdGx5IGRpc2FibGUgdGhlIGVu
ZHBvcGludCBjb250cm9sbGVyIGFmdGVyIHVzZQo+ICAtIFBhdGNoIDEyIGltcHJvdmVzIGxpbmsg
dHJhaW5pbmcKPiAgLSBQYXRjaCAxMyBpbXBsZW1lbnRzIGhhbmRsaW5nIG9mIHRoZSAjUEVSU1Qg
c2lnbmFsCj4gIC0gUGF0Y2ggMTQgYWRkcyBhIERUIG92ZXJsYXkgZmlsZSB0byBlbmFibGUgRVAg
bW9kZSBhbmQgZGVmaW5lIHRoZQo+ICAgIFBFUlNUIyBHUElPIChyZXNldC1ncGlvcykgcHJvcGVy
dHkuCj4gCgpEYW1pZW4sIHBsZWFzZSB3YWl0IGZvciBteSByZXZpZXcgYmVmb3JlIHNwaW5uaW5n
IHRoZSBuZXh0IHJldmlzaW9uLiBTb3JyeSBmb3IKdGhlIGRlbGF5LgoKLSBNYW5pCgo+IFRoZXNl
IHBhdGNoZXMgd2VyZSB0ZXN0ZWQgdXNpbmcgYSBQaW5lIFJvY2twcm82NCBib2FyZCB1c2VkIGFz
IGFuCj4gZW5kcG9pbnQgd2l0aCB0aGUgdGVzdCBlbmRwb2ludCBmdW5jdGlvbiBkcml2ZXIgYW5k
IGEgcHJvdG90eXBlIG52bWUKPiBlbmRwb2ludCBmdW5jdGlvbiBkcml2ZXIuCj4gCj4gQ2hhbmdl
cyBmcm9tIHY0Ogo+ICAtIEFkZGVkIHBhdGNoIDYKPiAgLSBBZGRlZCBjb21tZW50cyB0byBwYXRj
aCAxMiBhbmQgMTMgdG8gY2xhcmlmeSBsaW5rIHRyYWluaW5nIGhhbmRsaW5nCj4gICAgYW5kIFBF
UlNUIyBHUElPIHVzZS4KPiAgLSBBZGRlZCBwYXRjaCAxNAo+IAo+IENoYW5nZXMgZnJvbSB2MzoK
PiAgLSBBZGRyZXNzZWQgTWFuaSdzIGNvbW1lbnRzIChzZWUgbWFpbGluZyBsaXN0IGZvciBkZXRh
aWxzKS4KPiAgLSBSZW1vdmVkIG9sZCBwYXRjaCAxMSAoZHQtYmluZGluZyBjaGFuZ2VzKSBhbmQg
aW5zdGVhZCB1c2UgaW4gcGF0Y2ggMTIKPiAgICB0aGUgYWxyZWFkeSBkZWZpbmVkIHJlc2V0X2dw
aW9zIHByb3BlcnR5Lgo+ICAtIEFkZGVkIHBhdGNoIDYKPiAgLSBBZGRlZCByZXZpZXcgdGFncwo+
IAo+IENoYW5nZXMgZnJvbSB2MjoKPiAgLSBTcGxpdCB0aGUgcGF0Y2ggc2VyaWVzCj4gIC0gQ29y
cmVjdGVkIHBhdGNoIDExIHRvIGFkZCB0aGUgbWlzc2luZyAibWF4SXRlbSIKPiAKPiBDaGFuZ2Vz
IGZyb20gdjE6Cj4gIC0gQ2hhbmdlZCBwY2lfZXBjX2NoZWNrX2Z1bmMoKSB0byBwY2lfZXBjX2Z1
bmN0aW9uX2lzX3ZhbGlkKCkgaW4gcGF0Y2gKPiAgICAxLgo+ICAtIFJlbW92ZWQgcGF0Y2ggIlBD
STogZW5kcG9pbnQ6IEltcHJvdmUgcGNpX2VwY19tZW1fYWxsb2NfYWRkcigpIgo+ICAgIChmb3Jt
ZXIgcGF0Y2ggMiBvZiB2MSkKPiAgLSBWYXJpb3VzIHR5cG9zIGNsZWFudXBzIGFsbCBvdmVyLiBB
bHNvIGZpeGVkIHNvbWUgYmxhbmsgc3BhY2UKPiAgICBpbmRlbnRhdGlvbi4KPiAgLSBBZGRlZCBy
ZXZpZXcgdGFncwo+IAo+IERhbWllbiBMZSBNb2FsICgxNCk6Cj4gICBQQ0k6IHJvY2tjaGlwLWVw
OiBGaXggYWRkcmVzcyB0cmFuc2xhdGlvbiB1bml0IHByb2dyYW1taW5nCj4gICBQQ0k6IHJvY2tj
aGlwLWVwOiBVc2UgYSBtYWNybyB0byBkZWZpbmUgRVAgY29udHJvbGxlciAuYWxpZ24gZmVhdHVy
ZQo+ICAgUENJOiByb2NrY2hpcC1lcDogSW1wcm92ZSByb2NrY2hpcF9wY2llX2VwX3VubWFwX2Fk
ZHIoKQo+ICAgUENJOiByb2NrY2hpcC1lcDogSW1wcm92ZSByb2NrY2hpcF9wY2llX2VwX21hcF9h
ZGRyKCkKPiAgIFBDSTogcm9ja2NoaXAtZXA6IEltcGxlbWVudCB0aGUgcGNpX2VwY19vcHM6OmFs
aWduX2FkZHIoKSBvcGVyYXRpb24KPiAgIFBDSTogcm9ja2NoaXAtZXA6IEZpeCBNU0kgSVJRIGRh
dGEgbWFwcGluZwo+ICAgUENJOiByb2NrY2hpcC1lcDogUmVuYW1lIHJvY2tjaGlwX3BjaWVfcGFy
c2VfZXBfZHQoKQo+ICAgUENJOiByb2NrY2hpcC1lcDogUmVmYWN0b3Igcm9ja2NoaXBfcGNpZV9l
cF9wcm9iZSgpIG1lbW9yeSBhbGxvY2F0aW9ucwo+ICAgUENJOiByb2NrY2hpcC1lcDogUmVmYWN0
b3Igcm9ja2NoaXBfcGNpZV9lcF9wcm9iZSgpIE1TSS1YIGhpZGluZwo+ICAgUENJOiByb2NrY2hp
cC1lcDogUmVmYWN0b3IgZW5kcG9pbnQgbGluayB0cmFpbmluZyBlbmFibGUKPiAgIFBDSTogcm9j
a3NoaXAtZXA6IEltcGxlbWVudCB0aGUgcGNpX2VwY19vcHM6OnN0b3BfbGluaygpIG9wZXJhdGlv
bgo+ICAgUENJOiByb2NrY2hpcC1lcDogSW1wcm92ZSBsaW5rIHRyYWluaW5nCj4gICBQQ0k6IHJv
Y2tjaGlwLWVwOiBIYW5kbGUgUEVSU1QjIHNpZ25hbCBpbiBlbmRwb2ludCBtb2RlCj4gICBhcm02
NDogZHRzOiByb2NrY2hpcDogQWRkIHJvY2twcm82NCBvdmVybGF5IGZvciBQQ0llIGVuZHBvaW50
IG1vZGUKPiAKPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSAgICAgICAg
IHwgICAxICsKPiAgLi4uL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQtcGNpZS1lcC5kdHNvICAg
IHwgIDIwICsKPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMgICAg
IHwgNDMyICsrKysrKysrKysrKysrLS0tLQo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUt
cm9ja2NoaXAtaG9zdC5jICAgfCAgIDQgKy0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ll
LXJvY2tjaGlwLmMgICAgICAgIHwgIDIxICstCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNp
ZS1yb2NrY2hpcC5oICAgICAgICB8ICAyNCArLQo+ICA2IGZpbGVzIGNoYW5nZWQsIDQwNiBpbnNl
cnRpb25zKCspLCA5NiBkZWxldGlvbnMoLSkKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC1wY2llLWVwLmR0c28KPiAKPiAt
LSAKPiAyLjQ3LjAKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+
4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
