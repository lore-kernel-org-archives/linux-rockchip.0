Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFCB606A32C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 10:01:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DegUw5ic;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=V/YBkTvq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5q2andZE3q/7w/YKJbsnY7Q+49DNtJltL81FPcVdV2g=; b=DegUw5icM8Vy0/Oy6oF514cgVv
	/pt/o5szPnFrA4/SCTAcDeIJWM6ZnbHlXHeFhQ89My2YSucxzsSBFd6kIiqxdrlsX7myL+NZcdNTi
	RzkaYyj1VwQn8EIZ717UpNZkd1MeN81DuJsBHGUGUgQhp2QCpKUwJB4TUUtYToEvKq+e4txQVhX6t
	HvQvf/CFGhJ0SJYh5dG9wGmeGsuZkuW19PT8LppKob1vCYYt3mJBg9mUgXrlQmHD3DEyxMFeZ/Ldg
	9zERns424ADegESQN60V4Rud0rlgSYw4eQyr/aUYNmuELYDcHtzf4F43+7z6NMGIOfspNAbWR7/he
	BD2F3Mfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xStWC-00000001sOW-3KvR;
	Mon, 16 Nov 2026 10:00:56 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xStW9-00000001sLp-18zE;
	Mon, 16 Nov 2026 10:00:55 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1794823239; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=CUf5+UwYhRfnn8buxQ8wPL6o5V1CqkFUd02zBuF3/3wUjfGTYXwyWaeMpZePi+Yb13asn+2aEkj1FffAl9A5YC+pYc33h7F0LdpND24zoOIOxoKBBHV38O5qFZkDnVNvbkLsaH58sCYbOCgqP9R3C0dl53LPZjJKeOdNeU3/7HY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1794823239; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=+RGkjd/Qfb4Dw3SBbE+1NagLSuw1G0THfq1R7Ey/gug=; 
	b=A84ZmGMlEkDQWkyxVnHmRSVcSvfABnfX5ksXn7JUP7RmXdhjWkMqV0qe6kB1Foe2XU6M8N+NiiDNRsbXjzgEFGXswvhifdhyozwBEcvMyyniZxJHOnEgs6fXXBhpFk/fjJX5ENoLNn7OImzQUTBYdegNJO5t+Aoz4xn4t3GSV3g=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=michael.riesch@collabora.com;
	dmarc=pass header.from=<michael.riesch@collabora.com>
DKIM-Signature: a=rsa-sha256; b=V/YBkTvq+AuWstlhlVzFK5LywsMcAB/lZUIDwgs66uK9j1v+qq3XqmX1RpQ7E36zCdf+5chq5/7sn1lm/i/0zJY9JjWvCWsh6JWRB6y8wP2e3D9qsM52I7O7T3DiK8eKQbSuono0eD8yej7CQtNF6bYfpFSOIsGFaA4dUmB/GOw=; c=relaxed/relaxed; s=zohomail; d=collabora.com; v=1; bh=+RGkjd/Qfb4Dw3SBbE+1NagLSuw1G0THfq1R7Ey/gug=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zohomail.com with SMTPS id 1794823237050288.840830608097;
	Mon, 16 Nov 2026 02:00:37 -0800 (PST)
Message-ID: <0d837fe2-e192-4fc6-a2e5-c23df40684ab@collabora.com>
Date: Mon, 16 Nov 2026 11:00:22 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/9] phy: rockchip-samsung-dcphy: Unwind power-on on
 PLL lock failure
To: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Guochun Huang <hero.huang@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>
References: <20261110-dcphy-rx-v1-v6-0-d681ba20b36a@gmail.com>
 <20261110-dcphy-rx-v1-v6-3-d681ba20b36a@gmail.com>
 <3ab93996-7e37-4143-aa4c-b4b4b0e025d8@collabora.com>
 <CAPwA33JHxsd=nr9F9_KFKWPx+HGaR8P3ee7hxMc8XCS6QY46gw@mail.gmail.com>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <CAPwA33JHxsd=nr9F9_KFKWPx+HGaR8P3ee7hxMc8XCS6QY46gw@mail.gmail.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_020053_560199_6277B385 
X-CRM114-Status: GOOD (  22.08  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgSmFzb24sCgpPbiAxMS8xNi8yNiAwNDowMSwg5qWK5pm65oiQIHdyb3RlOgo+IEhpIE1pY2hh
ZWwsCj4gCj4gT24gMTEvMTEvMjYgMTQ6MDIsIE1pY2hhZWwgUmllc2NoIHdyb3RlOgo+PiBJIHdv
bmRlciB3aGV0aGVyIHRoaXMgc2hvdWxkIGJlIGhlcmUgaW4gdGhlIGZpcnN0IHBsYWNlLiBPbmx5
IGp1ZGdpbmcgYnkKPj4gdGhlIG5hbWUsIHNhbXN1bmdfbWlwaV9kY3BoeV9wbGxfZW5hYmxlIGlz
IHNvbWV0aGluZyB0aGF0IGFmZmVjdHMgdGhlCj4+IGNvbXBsZXRlIGxvZ2ljIGJsb2NrIGFuZCBw
cm9iYWJseSBzaG91bGQgYmUga2VwdCBpbiBydW50aW1lIHJlc3VtZSB0bwo+PiBiZWdpbiB3aXRo
Lgo+Pgo+PiBIb3dldmVyLCBzaW5jZSBfZHBoeV9yeF9wb3dlcl9vbiBkb2VzIG5vdCBjYWxsIHRo
aXMgZnVuY2lvbiwgaXQgc2VlbXMgdG8KPj4gYmUgc29tZXRoaW5nIHJlbGF0ZWQgb25seSB0byB0
aGUgVFggc2lkZSBvZiB0aGUgbG9naWMgYmxvY2ssIGJ1dCBmb3IKPj4gRC1QSFkgYW5kIEMtUEhZ
LiBJbiB0aGlzIGNhc2UsIGl0IHByb2JhYmx5IHNob3VsZCBnbyBpbnRvCj4+IHNhbXN1bmdfbWlw
aV9kY3BoeV90eF9wb3dlcl9vbi4KPj4KPj4gT24gdGhlIG9mZiBjaGFuY2UgdGhhdCB0aGlzIGlz
IGFjdHVhbGx5IGZvciB0aGUgRC1QSFkgVFggb3BlcmF0aW9uLCB0aGUKPj4gZnVuY3Rpb24gc2hv
dWxkIGJlIHJlbmFtZWQgIipfZGNwaHlfcGxsXyoiIC0+ICIqX2RwaHlfcGxsXyoiIG9yCj4+ICIq
X2RwaHlfdHhfcGxsXyoiLgo+Pgo+PiBXaGF0IGRvIHlvdSB0aGluaz8KPiAKPiBUaGUgc2V0dGlu
Z3MgaW4gdGhpcyBmdW5jdGlvbiBhcmUgaW5kZWVkIG9ubHkgZm9yIFRYLCBmb3IgYm90aCBELVBI
WQo+IGFuZCBDLVBIWSwgc28gSSB3aWxsIHJlbmFtZSB0aGUgUExMIGhlbHBlcnMgdG8KPiBzYW1z
dW5nX21pcGlfZGNwaHlfdHhfcGxsXyogaW4gdGhlIHJlbmFtaW5nIHBhdGNoICg2LzkpLgo+IAo+
IHNhbXN1bmdfbWlwaV9kY3BoeV90eF9wb3dlcl9vbiBkb2VzIGxvb2sgbGlrZSBhIG1vcmUgc3Vp
dGFibGUgcGxhY2UuCj4gSG93ZXZlciwgSSBkbyBub3QgaGF2ZSBhIEMtUEhZIGJvYXJkLCBhbmQg
SSBvbmx5IGhhdmUgb25lIHBhbmVsIHdpdGgKPiBtYWlubGluZSBzdXBwb3J0LCBzbyBJIG1heSBu
b3QgYmUgYWJsZSB0byB0ZXN0IHRoZSBEQy1QSFkgVFggc2lkZQo+IHRob3JvdWdobHkuIEZvciBu
b3cgSSBhbSB0cnlpbmcgdG8gbGVhdmUgdGhlIFRYIGNvZGUgdW5jaGFuZ2VkIHVubGVzcwo+IG15
IHNlcmllcyBhZmZlY3RzIHRoYXQgY29kZS4KPiAKPiBTaG91bGQgSSBtb3ZlIHRoZSBQTEwgZW5h
YmxlIHRvIHNhbXN1bmdfbWlwaV9kY3BoeV90eF9wb3dlcl9vbiwgb3Iga2VlcAo+IHRoaXMgZXJy
b3IgY2xlYW51cCBwYXRoIGFuZCB0aGUgcmVuYW1pbmcgY2hhbmdlIGZvciBub3c/CgpUaGFua3Mg
Zm9yIHRoZSBjbGFyaWZpY2F0aW9uLgoKSSB0YWtlIGl0IHRoYXQgdGhlIHBhdGNoIGlzIG9ubHkg
aGVyZSBiZWNhdXNlIHNhc2hpa28gY29tcGxhaW5lZCBhYm91dApzb21lIGV4aXN0aW5nIGJ1Zy4g
WW91ciBwYXRjaCBmaXhlcyB0aGlzIGFzLWlzLCB0aGVyZWZvcmUKClJldmlld2VkLWJ5OiBNaWNo
YWVsIFJpZXNjaCA8bWljaGFlbC5yaWVzY2hAY29sbGFib3JhLmNvbT4KClN0aWxsIHdoYXQgd2Ug
ZGlzY3Vzc2VkIG1ha2VzIHNlbnNlLCBzbyBsZXQgdXMgZG8gc29tZSByZWZhY3RvcmluZyBpbiBh
CmxhdGVyIHNlcmllcy4gSSBkb24ndCBoYXZlIGFueSBib2FyZCB3aXRoIGRpc3BsYXkgZWl0aGVy
LCBidXQgSSB0aGluawpIZWlrbyBhbmQgUXVlbnRpbiBtaWdodCBoYXZlIG9uZSBmb3IgdGVzdGlu
Zy4KCkJ1dCBhZ2FpbiwgbGV0J3MgZm9jdXMgb24gZ2V0dGluZyB5b3VyIHBhdGNoIHNlcmllcyBt
ZXJnZWQgZmlyc3QuCgpCZXN0IHJlZ2FyZHMsCk1pY2hhZWwKCgo+IFRoYW5rcywKPiBKYXNvbgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
