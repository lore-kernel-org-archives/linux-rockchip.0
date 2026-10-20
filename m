Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0A560A260E
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 13:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bwc92GlW;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=dUaiSYOh;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=R8rsXKOl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Y4Zk1LVSvvA+asaSa2Q8sOw+A8OwMvol3Xi0tZMHTw=; b=bwc92GlWWWJFq+
	DtOxdu8/Xe5po9mt6tCId8VWFjaJvSKVZPEvbwHgeZs3EZvFsvxhyHJWJY1lE8IPV08RQUB9X4ma0
	m4lNZ/Z475b02Fjme1QSyDuk7pvBhv1R8lnAAg2T5yWvMCKXdI8glC+uscqdH7KlHbUeOVKVZ35HK
	JajiXZGjIBxAs3W8flM4ijRFaincmx1Ae8AOXzsiPD5w4EKwNALjSjpNd5NmW/JwJ6JDGKi0IITsw
	C8QL6TMLHpFUYl0n1TrE4wNeegupkKHzT4eK9+Rr7sBm0uYNHV3Xyc6/Kn8KlW8r6B3dzmiuEhmzE
	JFFSOZP8jc1Wjsfy/1LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJA2N-00000009oMh-3v1t;
	Tue, 20 Oct 2026 13:37:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJA2K-00000009oLX-3qp9;
	Tue, 20 Oct 2026 13:37:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=m8yfQEcljjdCYG73U7/b7AoriibsdHfzmxVKPS8fPUs=; b=dUaiSYOh4ExQgbxc0XsYsgdbyc
	gYXUFCtnQX4zJfjSf2fkKrm0fM4isdR2wiFzdlG58Roqr//HTuuy7O9n8UzDM44L+y/R2ZbO5Kj5p
	wIc5yXe30gACnxEAmLIaqjRips6Dntr6K1BDHOX94v4Or3JUgrLRHkmgw4Yis9OTG7uP6md6EBP6c
	N14ugyk1ub/oW/XJbhU66nl1sysj1WNgWb6YPQFk/Q02r04QOSDX3AfWEhuB1UCQb74oa46TS4jkB
	VXYaQPmqDpSkaJhTmErnQH+6Ix3byO9HToUyKre1SuKo6ocvEoR7xyiAUmTRUxjvkgQv0Ov3AQxnv
	dlkCpU+A==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xJA2F-00000004ltv-3zYb;
	Tue, 20 Oct 2026 13:37:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=m8yfQEcljjdCYG73U7/b7AoriibsdHfzmxVKPS8fPUs=; b=R8rsXKOlypisObnCg9uR6fNJlX
	3Ubrwa1LV61x/Q2ZHgC5nkXY6zgx+U0J3139rGr7qgrXVCaOFicihD2ArvNXmk3po7ySxW+/iKiA+
	ZSVKW6spvm8mn7dKG86W6sztHwm1Zaue5dFIOkgFPxaJDeZsyVWimViZN6t2uR58W/fgW2zSyADH/
	8N77TIADYxy7+zZMLREv7YAkIfD5l6c7xqSXjnqB0poA9y0O92RuJavkgLP9bEJe05gVeX13vUjgk
	nRHqV/V6MLrFK3mGyzBM96C2HURgOjSjJup1Yf6oMTK4ddLWw3jTrM9y2A+/+ivOZdy+vdYmznz+I
	a1VDQpHA==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
 =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>,
 Michael Riesch <michael.riesch@collabora.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Guochun Huang <hero.huang@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/8] dt-bindings: phy: rockchip,rk3588-mipi-dcphy: Add a cell
 to select TX or RX
Date: Tue, 20 Oct 2026 15:37:35 +0200
Message-ID: <2501273.NG923GbCHz@diego>
In-Reply-To: <73ef0d06-75c5-4c10-b4c3-c7b3c07a1e18@collabora.com>
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
 <20261019150631.GA265407-robh@kernel.org>
 <73ef0d06-75c5-4c10-b4c3-c7b3c07a1e18@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_143749_967824_3F127F0F 
X-CRM114-Status: GOOD (  42.87  )
X-Spam-Score: -0.2 (/)
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
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gRGllbnN0YWcsIDIwLiBPa3RvYmVyIDIwMjYsIDAwOjIwOjQ3IE1pdHRlbGV1cm9ww6Rpc2No
ZSBTb21tZXJ6ZWl0IHNjaHJpZWIgTWljaGFlbCBSaWVzY2g6Cj4gSGkgYWxsLAo+IAo+IE9uIDEw
LzE5LzI2IDE3OjA2LCBSb2IgSGVycmluZyB3cm90ZToKPiA+IE9uIE1vbiwgT2N0IDE5LCAyMDI2
IGF0IDA0OjE1OjAzUE0gKzA4MDAsIOaliuaZuuaIkCB3cm90ZToKPiA+PiBIaSBLcnp5c3p0b2Ys
IFJvYiwKPiA+Pgo+ID4+PiBFeGlzdGluZyBPUyBzaG91bGQgaWdub3JlIHN1cnBsdXMgY2VsbCBp
ZiB0aGUgZHJpdmVyIGlzIGNvZGVkIHByb3Blcmx5Lgo+ID4+PiBTYW1lIGFzIGFkZGluZyBuZXcg
cHJvcGVydGllcyBvciBuZXcgZnJvbnQtY29tcGF0aWJsZS4gIFRoZSBxdWVzdGlvbiBpcwo+ID4+
PiBob3cgdGhlIGV4aXN0aW5nIGRyaXZlciBiZWhhdmVzPwo+ID4+Cj4gPj4gQXMgeW91IHBvaW50
ZWQgb3V0IG9uIDUvOCwgdGhlIHhsYXRlIGNoZWNrcyBhcmdzX2NvdW50ICE9IDEuIFRoZSBEQy1Q
SFkKPiA+PiBkcml2ZXIgd2FzIG1lcmdlZCBpbiB2Ni4xNSwgc28gZXZlcnkga2VybmVsIHNpbmNl
IDYuMTUgZmFpbHMgb24gYSBzZWNvbmQgY2VsbC4KPiA+Pgo+ID4+IDEuIEtlZXAgdGhlIHNlY29u
ZCBjZWxsLiBBZGQgdGhlIHBhdGNoIGFzIGZvbGxvd3M6Cj4gPj4KPiA+PiAtIGlmIChhcmdzLT5h
cmdzX2NvdW50ICE9IDEpIHsKPiA+PiArIGlmIChhcmdzLT5hcmdzX2NvdW50IDwgMSkgewo+ID4+
ICAgICBkZXZfZXJyKGRldiwgImludmFsaWQgbnVtYmVyIG9mIGFyZ3VtZW50c1xuIik7Cj4gPj4g
ICAgIHJldHVybiBFUlJfUFRSKC1FSU5WQUwpOwo+ID4+ICAgfQo+ID4+Cj4gPj4gKyBpZiAoYXJn
cy0+YXJnc19jb3VudCA+IDEgJiYgYXJncy0+YXJnc1sxXSkgewo+ID4+ICsgICBkZXZfZXJyKGRl
diwgIm9ubHkgdGhlIHRyYW5zbWl0dGVyIGlzIHN1cHBvcnRlZFxuIik7Cj4gPj4gKyAgIHJldHVy
biBFUlJfUFRSKC1FSU5WQUwpOwo+ID4+ICsgfQo+ID4+Cj4gPj4gICBXaXRoIEZpeGVzOiBhbmQg
Q2M6IHN0YWJsZSwgdGhlIHN0YWJsZSBrZXJuZWxzIG1haW50YWluZWQgYXQgdGhhdAo+ID4+ICAg
dGltZSAoY3VycmVudGx5IDYuMTgueSBhbmQgNy4yLnkpIGtlZXAgRFNJIHdvcmtpbmcgd2l0aCB0
aGUgbmV3Cj4gPj4gICBkdHMsIGFuZCB0aGUgcmVjZWl2ZXIgZmFpbHMgY2xlYW5seSBpbnN0ZWFk
IG9mIGdldHRpbmcgdGhlIHRyYW5zbWl0dGVyLgo+ID4+ICAgQnV0IEVPTCBrZXJuZWxzICg2LjE1
LCA2LjE2LCA2LjE3LCA2LjE5LCA3LjAsIDcuMSkgc3RheSBhZmZlY3RlZC4KPiA+PiAgIEl0IGdv
ZXMgaW4gd2l0aCB0aGUgc2VyaWVzLCBzaW5jZSB0d28tY2VsbCBkdHMgb25seSBleGlzdCBhZnRl
ciBpdC4KPiA+Pgo+ID4+IDIuIFVzZSBhIGZsYWcgaW4gdGhlIHVwcGVyIGJpdHMgb2YgdGhlIGV4
aXN0aW5nIGNlbGwsIGFzIFJvYgo+ID4+ICAgICBzdWdnZXN0ZWQuIEV4aXN0aW5nIGtlcm5lbHMg
YXJlIG5vdCBhZmZlY3RlZCwgdW5sZXNzIGEgYm9hcmQgZW5hYmxlcwo+ID4+ICAgICB0aGUgREMt
UEhZIENTSS0yIHJlY2VpdmVyIG9uIDcuMCBvciBsYXRlciB3aXRob3V0IHRoaXMgc2VyaWVzLgo+
ID4+Cj4gPj4gSSB3aWxsIHdyaXRlIHRoZSBpbXBhY3QgY2xlYXJseSB3aGljaGV2ZXIgIGFwcHJv
YWNoIGlzIHNlbGVjdGVkIGluCj4gPj4gdGhlIHJlbGF0ZWQgY29tbWl0IG1lc3NhZ2VzIGFuZCB0
aGUgY292ZXIgbGV0dGVyLgo+ID4+Cj4gPj4gSSB0aGluayB0aGUgY2VsbCBhcHByb2FjaCBpcyBl
YXNpZXIgdG8gcmVhZCBhbmQgbW9yZSBzeW1tZXRyaWMgaW4gdGhlCj4gPj4gbG9uZyB0ZXJtLAo+
ID4+IGJ1dCBpdCBicmVha3MgbW9yZS4gV2hpY2ggb25lIGRvIHlvdSB0aGluayBpcyBiZXR0ZXI/
IFRoYW5rcy4KPiA+IAo+ID4gSSdtIG5vdCBhIHVzZXIgb2YgdGhpcyBwbGF0Zm9ybSwgc28gSSBk
b24ndCBjYXJlLiBVcCB0byB0aGUgcGxhdGZvcm0gCj4gPiBtYWludGFpbmVycyB0byBkZWNpZGUg
aWYgYnJlYWthZ2UgaXMgYWNjZXB0aWJsZS4gWW91IGp1c3QgbmVlZCB0byAKPiA+IGRvY3VtZW50
IHRoZSBpc3N1ZSBpbiB0aGUgY29tbWl0IG1lc3NhZ2UuCj4gPiAKPiA+IFJvYgo+IAo+IEl0J3Mg
YSBiaXQgb2YgYSBwaWNrbGUsIGFsbCB0aGlzLgo+IAo+IEkgZ2F2ZSBpdCBzb21lIG1vcmUgdGhv
dWdodC4gSW4gdGhlIGVuZCB0aGlzIGlzIGFuIElQIGJsb2NrIHdpdGggdHdvCj4gUEhZcy4gTm8g
bW9yZSwgbm8gbGVzcy4gT25lIGNlbGwgaXMgc3VmZmljaWVudCB0byBhZGRyZXNzIHRob3NlLCBh
bmQgaXQKPiBjb3VsZCBiZSAwIGZvciB0aGUgdHJhbnNtaXR0aW5nIFBIWSAoRFNJLCBkaXNwbGF5
KSBhbmQgMSBmb3IgdGhlCj4gcmVjZWl2aW5nIFBIWSAoQ1NJLCBjYW1lcmEpLgo+IAo+IE9mIGNv
dXJzZSB0aGUgdHdvIFBIWXMgY2FuIG9wZXJhdGUgaW4gZWl0aGVyIERQSFkgb3IgQ1BIWSBtb2Rl
LiBUaGUKPiBwaHktY2VsbHMgaGF2ZSBiZWVuIChtaXM/KXVzZWQgdG8gc2VsZWN0IHRoZSBwcm9w
ZXIgbW9kZSBvZiBjb21ibyBQSFlzLAo+IGFuZCB0aGlzIHByaW5jaXBsZSBoYXMgYmVlbiBhcHBs
aWVkIGhlcmUgdG9vLgo+IAo+IEhvd2V2ZXIsIHdlIGhhdmUgdGhlIHNwZWNpYWwgc2l0dWF0aW9u
IGhlcmUgdGhhdCB0aGUgbW9kZSBjYW4gb25seSBiZQo+IGNoYW5nZWQgZm9yIHRoZSBjb21wbGV0
ZSBJUCBibG9jayAoYW5kIHRodXMgZm9yIGJvdGggUEhZcyBhdCB0aGUgc2FtZQo+IHRpbWUpLiBB
cyBCcnlhbiBwb2ludHMgb3V0LCB3ZSBuZWVkIHRvIGNoZWNrIGFuZCBjb21wbGFpbiBpZiB0aGUg
UEhZCj4gbW9kZSBpcyBub3Qgc2V0IHRvIHRoZSBzYW1lIHZhbHVlIGZvciBib3RoIFBIWXMuCj4g
Cj4gSSBzdWdnZXN0IHVzaW5nIGEgcHJvcGVydHkKPiAgICAgc2Ftc3VuZyxjcGh5LW1vZGU7CgpJ
IGd1ZXNzLCBhIG1heWJlIG5pY2VyIHdheSB3b3VsZCBiZSBtaW1pY2luZwoJRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9pbnRlbCxjb21iby1waHkueWFtbAoKd2l0aCBpdHMK
CWludGVsLHBoeS1tb2RlID0gPHg+Cgp3aXRoIHggY29taW5nIGZyb20gaW5jbHVkZS9kdC1iaW5k
aW5ncy9waHkvcGh5LmgKZm9yIHRoZSBkaXN0aW5jdGlvbiBiZXR3ZWVuIGNwaHkgYW5kIGRwaHks
IHNvIHdlIGRvbid0IGludHJvZHVjZSB5ZXQKYW5vdGhlciB3YXkgdG8gZGVzY3JpYmUgdGhpcy4K
CkFzIHlvdSBzYWlkLCB0aGUgZWxlY3RyaWNhbCB3aXJpbmcgaXMgY29tcGxldGVseSBkaWZmZXJl
bnQgYmV0d2VlbiB0aGUgZHBoeQphbmQgY3BoeSBwYXJ0cywgc28gaXMgYSBwcm9wZXJ0eSBvZiB0
aGUgYm9hcmQuCgoKPiAobmFtZSB0byBiZSBiaWtlc2hlZGRlZCkgdGhhdCBzZXRzIHRoZSBjb21w
bGV0ZSBJUCBibG9jayBpbnRvIENQSFkgbW9kZQo+IChEUEhZIGJlaW5nIHRoZSBkZWZhdWx0KSB0
byBkaXN0aW5ndWlzaCBiZXR3ZWVuIHRoZSBtb2Rlcy4gU2luY2UgYm90aAo+IG1vZGVzIHVzZSBh
IGRpZmZlcmVudCBlbGVjdHJpY2FsIGludGVyZmFjZSwgdGhpcyBpcyBjbGVhcmx5IGEgaGFyZHdh
cmUKPiB0aGluZyBhbmQgdGh1cyBzdWl0YWJsZSBmb3IgZGV2aWNlIHRyZWUuCj4gCj4gVGhlbiwg
d2UgY2FuIGFkZHJlc3MgdGhlIHR3byBQSFlzIHdpdGggdGhlIGhlbHAgb2YgdGhlIGFscmVhZHkg
ZXhpc3RpbmcKPiBwaHkgY2VsbCAod2l0aG91dCBhbnkgYml0ZmxhZyB0d2Vha3MgdG8gdGhlIHZh
bHVlKS4KPiAKPiBUaGUgc29sZSBkcmF3YmFjayBpcyB0aGF0IHdlIG5lZWQgdG8gYWNjZXB0IHRo
ZSBQSFlfVFlQRV9EUEhZIGFuZAo+IFBIWV9UWVBFX0NQSFkgdmFsdWVzIHRoYXQgc29tZSBPUyBp
biB0aGUgZmllbGQgbWlnaHQgcGFzcy4gKEZvciBMaW51eCwKPiBpdCBzaG91bGQgb25seSBiZSB0
aGUgZm9ybWVyLikgQW5kIHdlIG5lZWQgdG8gaGFuZGxlIHRob3NlIHZhbHVlcwo+IGNvcnJlY3Rs
eS4gQnV0IEkgdGhpbmsgdGhpcyBpcyBub3QgbW9yZSBwYWluZnVsIHRoYW4gdGhlIG90aGVyCj4g
YXBwcm9hY2hlcy4gQXQgdGhlIHNhbWUgdGltZSwgdGhpcyBkZXNpZ24gc2VlbXMgdG8gYmUgdGhl
IG1vc3QgY29ycmVjdAoKVGhlIGN1cnJlbnQgY2VsbCB2YWx1ZXMgYXJlIDEwICsgMTEsIHNvIGFz
IGxvbmcgYXMgd2UgZG9uJ3QgcmUtdXNlIHRob3NlCmV4YWN0IHZhbHVlcyBmb3IgdGhlIG90aGVy
IGNvbnN0YW50cyB0aGUgZHJpdmVyIHNob3VsZCBzb21ld2hhdCBlYXNpbHkKYmUgYWJsZSB0byBy
ZWNvZ25pemUgYW4gb2xkIERUPwoKCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
