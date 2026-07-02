Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CF25C43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 18:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FBYzdeKF02mWBSIyUChGKFB6JgUPJ/yi7clIXMT2mkw=; b=rLS04RC1lFtiw3
	aOCPtMwja+v8Bvc3ECG8krDdsFShLt7nmxKOFtV9hAwhyXSZUzmFgGccddqHInSd9U2H3ZuqsOsGQ
	HCOqo890jSA1ldjhpMQGCFNsC6fZHla2/rWErU8hcT4WSDJqlJ7lpzjW/VYr7CRNCtSYy0S3a3tkH
	GEbU9IXVan9wF5Kiw5hnBb8AKxN1mClXS7tC8avngmCrPnJ3V6FsF2VQmRQr2H8VUHzf+rzxb6/vA
	UZnP/TWMj5n70GU9J3mKUhhkXQk54u8M6Z8fr6s+SMaoG/wlJE+0l80fVkY/0n93V894mGBxdSa9D
	vx5fiMsGk/ud3luFUpjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfLiM-00000005CN2-3UwQ;
	Thu, 02 Jul 2026 18:00:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfLiK-00000005CLt-2HWC;
	Thu, 02 Jul 2026 18:00:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=xebSVH9btvoOA5wd7jjkFogUQ3KfJvU2qpvSEydg5Yc=; b=Eskz2zrsAbkrle95IzFL6WFPYp
	vzn1wrAtXWwesXNsY8DQ6r1kiiuT9A9+DV5hhILJE/ps4aaDJ1Gi8+h6lU54Qr0wxF50SUu3ar2R4
	dIKbvO1KKyEoyJvW7xVkbL+GZnKjEewoBjNGrWgvVKLEjKxQq10zMdcZC02VOjJgIIPlZIb1N8Hiu
	JzXUv1WAgEfK6+Xf8Cbeceqzcxfkk03qW43BZ5Qmx15pzN5Q9LO0B6/awajLOwQoCONl9bsdrNS5e
	jOJ/VamA0aB47VHoHD566MtaJ3gdB6MrwoSTmgUl8X5o7VYBZWgWzxwsFHNZxGd6AIlrfGUqsgaDW
	B+rHYTrQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>
Cc: Diederik de Haas <diederik@cknow-tech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH v2 0/2] rockchip: Fix devices suspend freeze on RK3568/RK3566
Date: Thu, 02 Jul 2026 20:00:32 +0200
Message-ID: <9647226.A5hrfCrGMc@phil>
In-Reply-To: <20260624192726.781864-1-jonas@kwiboo.se>
References: <20260624192726.781864-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_110040_586307_4856B747 
X-CRM114-Status: GOOD (  11.82  )
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

SGkgSm9uYXMsCgpBbSBNaXR0d29jaCwgMjQuIEp1bmkgMjAyNiwgMjE6Mjc6MjMgTWl0dGVsZXVy
b3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBKb25hcyBLYXJsbWFuOgo+IFRoaXMgc2VyaWVz
IGZpeGVzIGEgc3lzdGVtIGZyZWV6ZSBkdXJpbmcgc3VzcGVuZCBpbiBvaGNpX3N1c3BlbmQoKSBk
dWUKPiB0byBjbGtfdXNicGh5MV80ODBtIG5vdCBiZWluZyBlbmFibGVkIHdoZW4gRUhDSS9PSENJ
IHJlZ2lzdGVycyBhcmUKPiBhY2Nlc3NlZCBvbiBlLmcuIGEgUmF4YSBST0NLIDNDIGJvYXJkLgo+
IAo+IEZvbGxvd2luZyBwbV90ZXN0IG1vZGVzIHdvcmsgb24gbXkgUk9DSyAzQyB3aXRoIHRoZSBt
aXNzaW5nIHVzYnBoeSBjbGsKPiByZWZzIGFkZGVkOgo+IAo+ICAgZWNobyBOID4gL3N5cy9tb2R1
bGUvcHJpbnRrL3BhcmFtZXRlcnMvY29uc29sZV9zdXNwZW5kCj4gCj4gICBlY2hvIGRldmljZXMg
PiAvc3lzL3Bvd2VyL3BtX3Rlc3QKPiAgIGVjaG8gcGxhdGZvcm0gPiAvc3lzL3Bvd2VyL3BtX3Rl
c3QKPiAgIGVjaG8gcHJvY2Vzc29ycyA+IC9zeXMvcG93ZXIvcG1fdGVzdAo+ICAgZWNobyBjb3Jl
ID4gL3N5cy9wb3dlci9wbV90ZXN0Cj4gCj4gICBlY2hvIG1lbSA+IC9zeXMvcG93ZXIvc3RhdGUK
PiAKPiBDaGFuZ2VzIGluIHYyOgo+IC0gSW5jbHVkZSByb2NrY2hpcCxyazM1ODgtZWhjaSBpbiB0
aGUgRUhDSSBjb25zdHJhaW50Cj4gLSBNYWtlIGNsb2NrcyBwcm9wIHJlcXVpcmVkIGZvciBFSENJ
IGFuZCBPSENJCj4gLSBDb2xsZWN0IHQtYiB0YWcKPiAKPiBKb25hcyBLYXJsbWFuICgyKToKPiAg
IGR0LWJpbmRpbmdzOiB1c2I6IEFkZCBSb2NrY2hpcCBSSzM1NjggY29tcGF0aWJsZSBmb3IgRUhD
SSBhbmQgT0hDSQoKaXQgc2VlbXMgSSB3YXNuJ3QgaW4gQ2MgZm9yIHRoZSBmaXJzdCBwYXRjaCwg
c28gY2FuJ3Qga25vdyBpZiBhbmQgd2hlbgp0aGF0IGdldHMvZ290IGFwcGxpZWQuCgpBbHNvIEkg
dGhpbmsgSSByZW1lbWJlciBHcmVnIHByZWZlcnJpbmcgbm90IGhhdmluZyB0byBzcGxpdCBhcGFy
dCBwYXRjaApzZXJpZXMnLCBzbyBJIHRoaW5rIHRoZSBiaW5kaW5nIHBhdGNoIG1pZ2h0IGJlIGJl
dHRlciBvZmYgc3RhbmRpbmcgYWxvbmUuCgoKSGVpa28KCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
