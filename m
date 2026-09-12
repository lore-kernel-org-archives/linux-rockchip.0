Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12482C88E56
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Sep 2026 15:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZiDcsMS0zvuyVrgpN/SvjABDTdl4OHFzijS30iBWSY=; b=LM7mCHDVV719yQ
	ehZucYAEnxHPQMYbOmlPuhcu6q8eR/IZoQeyd22/TBZv65ZIhZ9Ro2mi3HILZZ2MfMGWGLYBlKdOM
	LX851Msecxkp0y5VOuvgvOtcqnS8u/Nu+W4qB52DtN6JAu0P0qXVYBQ5hlRoH7FY0N42uQfxQm8Z0
	cMHEj8iD3Ae9sX6VwRT9SLAoBzkfLYk5ojSS7yoSng6J9/wQUDnDXmDbqJXvHNMw8QWuxuTYECHNV
	D9r0QxAioOZiy0TW7JPfkzJVGRYmM7F1fcoBEZvEPanCrI+FABtARpHeZHCg9M9xJfbYHH3O1x3jO
	g739Paf6eHdvGRMaLFYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5PyP-0000000100u-0CRq;
	Sat, 12 Sep 2026 15:49:01 +0000
Received: from out-11.mta0.migadu.com ([2001:41d0:1004:224b::b] helo=mta0.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5PyL-00000000zzt-1xuL
	for linux-rockchip@lists.infradead.org;
	Sat, 12 Sep 2026 15:48:59 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=7Xxdw0BpYVeSsVYvjnUMpQGHZK67v9pQzvF+pta/r2k=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1789228135; v=1; x=1789832935;
 b=jtWBlZvuvS7+BgGr4dZSQnEoaFTAqoHZWo6YPzn/vDM9GNWzVDcTl2BhEe6g+dwbTRNTvbnd
 RZavAPp0l7kVXvovMev9f/5LS9mng2aTS0kPhhWwUalRtyugeUCWTmiFF4j/jUrVECRwMS3RhSC
 iqNtBV6xanaGzUlH1blXIkHTnkAjx1T3VtQDmMusmhQR7r7WuBx769LptoJivx1UgrCNnvuNxjj
 7wtkB8dg1nsfcYiANnors7R+d8rH34krSDFUr9xX6Rf4PL3TU0O4wO/CZcJL4IOkmmKfucXjQVy
 +wY9PVMEHd9n7XRJNqAh+xxYgPqz/uxZYOAexsulVUBdg==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 835f230ca6fc7137;
	Sat, 12 Sep 2026 15:48:55 +0000
X-Mizu-Trace-ID: 835f230ca6fc7137
X-Migadu-Flow: FLOW_OUT
Mime-Version: 1.0
Date: Sat, 12 Sep 2026 17:48:52 +0200
Message-Id: <DLDGFSSZUIKQ.19CS0SRKYOKOJ@cknow-tech.com>
Cc: "Ricardo Pardini" <ricardo@pardini.net>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix i2c6 clock-frequency on
 NanoPC-T6
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Diederik de Haas" <diederik@cknow-tech.com>, "Heiko Stuebner"
 <heiko@sntech.de>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
X-Mailer: aerc 0.22.0-9-ge948bb7230f4
References: <20260911152911.2088363-1-diederik@cknow-tech.com>
 <2071782.usQuhbGJ8B@phil> <DLDEGZ68QQ19.1MJEB7QOK4G7T@cknow-tech.com>
In-Reply-To: <DLDEGZ68QQ19.1MJEB7QOK4G7T@cknow-tech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260912_084857_864666_C50DE981 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
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

T24gU2F0IFNlcCAxMiwgMjAyNiBhdCA0OjE2IFBNIENFU1QsIERpZWRlcmlrIGRlIEhhYXMgd3Jv
dGU6Cj4gT24gU2F0IFNlcCAxMiwgMjAyNiBhdCAyOjQxIFBNIENFU1QsIEhlaWtvIFN0dWVibmVy
IHdyb3RlOgo+PiBBbSBGcmVpdGFnLCAxMS4gU2VwdGVtYmVyIDIwMjYsIDE3OjI4OjMzIE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRGllZGVyaWsgZGUgSGFhczoKPj4+IFRo
ZSBpMmM2IGJ1cyBuZWVkcyB0byBydW4gYXQgMjAwa0h6LCBiZWNhdXNlIGF0IHRoZSBkZWZhdWx0
IGZyZXF1ZW5jeSBvZgo+Pj4gMTAwa0h6IGl0IG1heSBmYWlsIHRvIGZpbmQgdGhlIFJUQyByZXN1
bHRpbmcgaW4gd2FybmluZ3MvZXJyb3JzIGxpa2UKPj4+IAo+Pj4gICBydGMtaHltODU2MyA2LTAw
NTE6IG5vIHZhbGlkIGNsb2NrL2NhbGVuZGFyIHZhbHVlcyBhdmFpbGFibGUKPj4+ICAgcnRjLWh5
bTg1NjMgNi0wMDUxOiBoY3Rvc3lzOiB1bmFibGUgdG8gcmVhZCB0aGUgaGFyZHdhcmUgY2xvY2sK
Pj4+IAo+Pj4gQnV0IG9ubHkgc29tZXRpbWVzLiBUaGlzIHNob3VsZCBub3QgaGFwcGVuIHdoZW4g
dGhlcmUgaXMgYSBiYXR0ZXJ5IGJhY2tpbmcKPj4+IHRoZSBSVEMsIHlldCBpdCBkb2VzIC4uLiBz
b21ldGltZXMuCj4+Cj4+IEknbSBjb25mdXNlZCwgc2hvdWxkbid0IGEgc2xvd2VyIGNsb2NrIGFs
d2F5cyB3b3JrPwo+PiBMaWtlIEkgdW5kZXJzdGFuZCBob3cgYSBjbG9jayB0aGF0IGlzIHRvbyBm
YXN0IGNhbiBjYXVzZSBpc3N1ZXMgZHVlCj4+IHRvIGhhcmR3YXJlIGxpbWl0YXRpb25zLCBidXQg
cnVubmluZyB0aGUgYnVzIHNsb3dlciBzb21laG93IHNob3VsZG4ndAo+PiBjYXVzZSBpc3N1ZXM/
Cj4KPiBJbXBlY2NhYmxlIHRpbWluZyAuLi4gYXMgSSB3YXMganVzdCBhYm91dCB0byByZXRyYWN0
IHRoaXMgcGF0Y2guCj4KPiBTbyBwbGVhc2UgaWdub3JlL2Ryb3AgdGhpcyBhbmQgc29ycnkgZm9y
IHRoZSBub2lzZS4KCmh0dHBzOi8vZ2l0aHViLmNvbS9yb2NrY2hpcC1saW51eC9rZXJuZWwvY29t
bWl0LzgxNWM5YTA4NGU2MmQ3MDBhYjU0ODc5NzRiNjMwMzVlNzcyYTI5YTQKInJlbW92ZSB0aGUg
YnVmWzBdICYgSFlNODU2M19TRUNfVkwsIGl0J3MgdW5zdWl0YWJsZSBmb3Igc29tZSBoeW04NTYz
LgpzZXQgcnRjIGluaXQgdGltZSBmb3IgZmlyc3QgcG93ZXIgb24uIgoKSSBndWVzcyBJIGhhdmUg
J3NvbWUgaHltODU2MycgaW4gYm90aCBteSBOYW5vUEMtVDYgTFRTICYgUGx1cyA6LS8KVGhlIG9u
ZSBpbiBteSBOYW5vUGkgUjVTIHdvcmtzIGdyZWF0LCBzbyBJJ2xsIGp1c3QgdXNlL2RlcGVuZCBv
biB0aGF0IG9uZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
