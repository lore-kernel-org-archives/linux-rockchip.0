Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D26C2E99068
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Apr 2026 09:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2jmYLYIa0EcXFB7oNHhfv4w3Dgt7ZCfxJ4H/F+lM+2M=; b=EDtloLd6H5YCBl
	u7q+P9qQ8uA6USHYg9q4MBsUlQ+/olmElw7HSbMZZYdreWMI6qYbxBRBjtlvAeba93H1gDAh+btqh
	26AlA+mjufskjLzjvAJdoIieokWjbrjgDHHaqtKbyFWjfhOBVy2JiBNPucRyU6ueJo3olGHS8lL9M
	B+KM/o+rSCqlr734RlHaVqSMOqXnrx6ipvmgpyZk5wMqmwfBUI9lkC/cV7J71XvGdI7n3EODCar++
	MNwxv15S3lro1jzDh73XyXtcrOGOhWwOm7tkuLND/0TOpwEVfdCcohreDrimHPLk25zJW5EoyYchq
	ptde95egrrH3xsyorlCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB8Za-0000000BxFk-09v4;
	Fri, 10 Apr 2026 09:54:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB8ZZ-0000000BxFS-1Xkb;
	Fri, 10 Apr 2026 09:54:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=IPTWF+bSuUauzYxg3Ith85NyjkeTXoDfED2bM+F3eT0=; b=aaS1RjNySfkU/tW1sP2QlUtVsV
	0Jdu+f6g1ZH08lY1YJl6NNdnUkhGMh3tHt0mrJH8yuAh94P1nTdtHzquMvMuYDj6ZPl56sLmmI79l
	IwAStYG6XqMl0U3utPzy+NIZ5W+62VLUv9mRqwhqQy8x3q9XjuQimmDmhsCdE2jpg6FB3UWlwLklW
	YZZ3jfPtVvnIXyyZovZ9vg8vgjte/bd1AWm036+nMFv9yVP4CY89uk7a5uAkR0aO7pQlFVBjGE/D/
	9ZDTrXzF4MEuTFrbM7/QBr1aiH/Qsj+r9SjwsTffXrOjYstvRJlxyjMJfT4pahfw/oE+5PkW0bG43
	pVTZIXgA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB8ZW-0000000DEpC-2vYx;
	Fri, 10 Apr 2026 09:54:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=IPTWF+bSuUauzYxg3Ith85NyjkeTXoDfED2bM+F3eT0=; b=C4+KnbWOwwsB2t+ayIHX+1/XfX
	UQsHLnNp57WpjpGYwFzRQ9KNMQfEJCVwizu7Nm685T43rZM8gnY+Wo2tzba8qtMGMXxWf8EiPeT1k
	dGiUi6gPsN5ij9G9VYQ8ayOSnWY6cIMgNRE5NAHufPhecvzMagSR0ypzpqFIRVeR6euPMkudx/vWT
	w8iSCde0LuXcacbEuzU5+uUueYO9GJx/ftOJuuIig+dEzlAYm+4xjj+nsxR1SiES6VpPMyTlpfeLn
	kgg6IWUk+AlKq3bjUbL7DWarkX+eE+sHBNkGUXuzzS9OkX2Ms/ReR0MrmenRhb0A1YczQm+aE7i16
	KIWavJKg==;
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stephen Boyd <sboyd@kernel.org>,
 mturquette@baylibre.com
Subject: Re: [GIT PULL] Rockchip dts32 changes for 7.1 #2
Date: Fri, 10 Apr 2026 11:54:37 +0200
Message-ID: <1879424.3VsfAaAtOV@phil>
In-Reply-To: <13980380.dW097sEU6C@phil>
References: <13980380.dW097sEU6C@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260410_105442_794321_6CD26775 
X-CRM114-Status: GOOD (  13.39  )
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

QW0gRnJlaXRhZywgMy4gQXByaWwgMjAyNiwgMTU6Mzk6MzEgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBIZWlrbyBTdHVlYm5lcjoKPiBIaSBzb2MgbWFpbnRhaW5lcnMsCj4g
Cj4gcGxlYXNlIGZpbmQgYmVsb3cgYSBuZXcgQVJNMzIgUm9ja2NoaXAgU29DIGZvciA3LjEgLiBU
aGlzIGdvZXMgb24gdG9wCj4gb2YgdGhlIGdlbmVyaWMgYXJtMzIgY2hhbmdlcyBJIGp1c3Qgc2Vu
dC4KPiAKPiAKPiBJJ3ZlIHNwbGl0IHRoaXMgb2ZmIGZyb20gdGhlIG90aGVyIEFSTTMyIGNoYW5n
ZXMsIGJlY2F1c2UgdGhpcyBjb250YWlucwo+IGEgc2hhcmVkIGNsb2NrIGhlYWRlciwgc2hhcmVk
IGJldHdlZW4gdGhlIGRldmljZXRyZWUgc2lkZSBhbmQgdGhlIGNsb2NrLQo+IGRyaXZlciBzaWRl
Lgo+IAo+IFRoZSBjbG9jayBwdWxsLXJlcXVlc3QgaXMgc2VudCBbMF0sIGJ1dCBub3QgbWVyZ2Vk
IHlldCAtIHByb2JhYmx5IGFmdGVyCj4gZWFzdGVyIEkgZ3Vlc3MuCj4gCj4gQW5kIHdoaWxlIGlu
IHRoZSBwYXN0IHRoaXMgaGFzIGFsd2F5cyBjb21lIHRvZ2V0aGVyIGluIHRpbWUgZm9yIHRoZQo+
IG1lcmdlLXdpbmRvdywgSSB3YXNuJ3Qgc3VyZSBpZiBpbiB0aGUgc29jIG11bHRpLW1haW50YWlu
ZXIgY29udGV4dCB0aGUKPiBoYW5kbGluZyBjaGFuZ2VzLiBTbyBkZXBlbmRpbmcgb24geW91ciBw
cmVmZXJlbmNlIHRoaXMgY291bGQgYWxzbyB3YWl0Cj4gdW50aWwgYWZ0ZXIgdGhlIGNsb2NrLXN1
YnN5c3RlbS1zaWRlIGdvdCBtZXJnZWQuCgpjbG9jayBtYWludGFpbmVycyBzZWVtIHRvIGJlIG9u
IHZhY2F0aW9uIHNpbmNlIDIwMjYtMDMtMjUsIHNvIEknbSBub3QKc28gc3VyZSBtZXJnaW5nIHRo
ZSByZWxhdGVkIGNsb2NrIGRyaXZlciB3aWxsIGhhcHBlbiBpbiB0aW1lIGFueW1vcmUsCmhlbmNl
IHRoaXMgUFIgc2hvdWxkIHByb2JhYmx5IGJlIHNraXBwZWQgZm9yIG5vdy4KCklsbCByZWJhc2Ug
dGhlIFNvQyBjaGFuZ2VzIG9udG8gNy4xLXJjMSBvbmNlIHRoZSBjbG9jayBkcml2ZXIgZ2V0cwpt
ZXJnZWQuCgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
