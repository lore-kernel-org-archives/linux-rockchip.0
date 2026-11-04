Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF586606A32F
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 11:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=va5kUBhf;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=Nza9K1RN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SLeVGjIY186w+4zIltRug45l1sHOByTEfd7M0YehbOI=; b=va5kUBhfRIg9z02/qJ/wyTJGxi
	qGUus8b1zPTF5SL4QhJzmtpUdsaoiVrrvlXNbkPufuresaYdwGlpvgI9qHoekjLt0lYySD53wGBKv
	7hAh2qXbKI4OO7lP65MokslK6kNkmlbXn8BuP7Y+qgv/xtQx6sfCozmA9dp238ndgYaRSs2yKWJqN
	ZufdQ8XbcjkDgAryAwhhhkkE6g0p9Uzc51Q8M5ppMQoZoLEJvrVerb2ReipREg7yZyMUZs6GnTlIS
	93YyZp59fnz8BPzNPse+x0Ff3k2qx3DwEQvdSmzvsqy0cT0tVCe0q5wgfoA96TFaEgkea3kWcTiT0
	9UIebDmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOYqg-000000056om-0cT3;
	Wed, 04 Nov 2026 11:08:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOYqb-000000056m6-3doQ;
	Wed, 04 Nov 2026 11:08:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ybk9PjsAKZvMCgCYSb/Xfuyw4DvYxnCaG7n+1bV4cp0=; b=Nza9K1RNNnmbGtzGs4dx3xHTcf
	+usFhekww9t4ygED3ZXPcYdGBGR9+MpYqihUpejRUCQMesQ9wxOOzfYnGaC+o95mYmKU83XgriN+g
	TuioynnpubfcdxJBjBh+azoeIeAa7nNa+LGPqgO99YyHthQNChyBvW37HrzOak2vS+vLY+Z99MjU4
	aZsgHM4r1caPhZf/b+JOcR4VE0qMAjjAYfx1JXJZJHConsyTvWeExcK94JBEtYfh9ZDNeF3Pj03DN
	CxmlNweHuoNKFDTjawuUazJV0gwWzQmxz8L/3xn+r5BWYygtaN4xnCqb87yJO0mkJXI2dZ7wh8h2o
	D8HGfr/g==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Oded Gabbay <ogabbay@kernel.org>,
 Igor Paunovic <royalnet026@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
 Robert Foss <rfoss@kernel.org>, Sidong Yang <sidong.yang@furiosa.ai>,
 Diederik de Haas <diederik@cknow-tech.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Jiaxing Hu <gahing@gahingwoo.com>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Jonas Karlman <jonas@kwiboo.se>, Guangshuo Li <lgs201920130244@gmail.com>,
 =?UTF-8?B?SMO8c2V5aW4=?= BIYIK <boogiepop@gmx.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v2 05/11] accel/rocket: request the core clocks by name
Date: Wed, 04 Nov 2026 12:07:42 +0100
Message-ID: <3117045.BaHzMo0RvP@diego>
In-Reply-To: <20260922080114.44662-6-royalnet026@gmail.com>
References: <20260922080114.44662-1-royalnet026@gmail.com>
 <20260922080114.44662-6-royalnet026@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_030805_904325_A7108628 
X-CRM114-Status: GOOD (  22.23  )
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gRGllbnN0YWcsIDIyLiBTZXB0ZW1iZXIgMjAyNiwgMTA6MDE6MDggTWl0dGVsZXVyb3DDpGlz
Y2hlIE5vcm1hbHplaXQgc2NocmllYiBJZ29yIFBhdW5vdmljOgo+IHJvY2tldF9jb3JlX2luaXQo
KSBoYW5kcyBjb3JlLT5jbGtzIHRvIGRldm1fY2xrX2J1bGtfZ2V0KCkgd2l0aG91dCBldmVyCj4g
c2V0dGluZyB0aGUgLmlkIG1lbWJlcnMuIFRoZSByb2NrZXRfY29yZSBhcnJheSBpcyBhbGxvY2F0
ZWQgd2l0aAo+IGRldm1fa2NhbGxvYygpIGluIHJvY2tldF9kZXZpY2VfaW5pdCgpLCBhbmQgcm9j
a2V0X3Byb2JlKCkgb25seSBmaWxscyBpbgo+IC5yZGV2LCAuZGV2IGFuZCAuaW5kZXgsIHNvIGFs
bCBmb3VyIGNsa19idWxrX2RhdGEgZW50cmllcyBhcmUgcmVxdWVzdGVkCj4gd2l0aCBhIE5VTEwg
Y29uX2lkICh1bmxpa2UgY29yZS0+cmVzZXRzLCB3aG9zZSBpZHMgYXJlIHNldCBhIGZldyBsaW5l
cwo+IGFib3ZlKS4KPiAKPiBjbGtfZ2V0KGRldiwgTlVMTCkgZW5kcyB1cCBpbiBvZl9jbGtfZ2V0
X2h3KG5wLCAwLCBOVUxMKSwgYW5kCj4gb2ZfcGFyc2VfY2xrc3BlYygpIG9ubHkgY29uc3VsdHMg
ImNsb2NrLW5hbWVzIiB3aGVuIGEgbmFtZSB3YXMgcGFzc2VkLAo+IHNvIHRoZSBpbmRleCBzdGF5
cyAwIGZvciBhbGwgZm91ciBlbnRyaWVzLiBFdmVyeSBlbnRyeSB0aGVyZWZvcmUgZW5kcyB1cAo+
IGhvbGRpbmcgYSBoYW5kbGUgdG8gdGhlICpmaXJzdCogY2xvY2sgb2YgdGhlIERUICJjbG9ja3Mi
IHByb3BlcnR5LCBpLmUuCj4gQUNMS19OUFVuLiBOb3RoaW5nIGZhaWxzOiBwcm9iZSBzdWNjZWVk
cyBhbmQgdGhlIGRyaXZlciBiZWxpZXZlcyBpdCBvd25zCj4gZm91ciBkaWZmZXJlbnQgY2xvY2tz
Lgo+IAo+IFRoZSBjb25zZXF1ZW5jZSBpcyB0aGF0IHJvY2tldF9kZXZpY2VfcnVudGltZV9yZXN1
bWUoKSBwcmVwYXJlcyBhbmQKPiBlbmFibGVzIHRoZSBBWEkgY2xvY2sgZm91ciB0aW1lcywgd2hp
bGUgaGNsaywgcGNsayBhbmQgLSBtb3N0Cj4gaW1wb3J0YW50bHkgLSB0aGUgTlBVIGNvbXB1dGUg
Y2xvY2sgKCJucHUiLCBTQ01JX0NMS19OUFUgb24gUkszNTg4KSBhcmUKPiBuZXZlciBwcmVwYXJl
ZCBvciBlbmFibGVkIGJ5IHRoaXMgZHJpdmVyIGF0IGFsbC4gVGhlIE5QVSBzdGlsbCB3b3Jrcwo+
IG9ubHkgYmVjYXVzZSB0aGUgUm9ja2NoaXAgcG93ZXItZG9tYWluIGRyaXZlciBzZXRzIEdFTlBE
X0ZMQUdfUE1fQ0xLIGFuZAo+IGl0cyBhdHRhY2hfZGV2KCkgY2FsbGJhY2sgd2Fsa3MgdGhlIGRl
dmljZSBub2RlIHdpdGggb2ZfY2xrX2dldCgpIGFuZAo+IGFkZHMgZXZlcnkgY2xvY2sgdG8gdGhl
IHBtX2NsayBsaXN0LCBzbyBnZW5wZCBoYXBwZW5zIHRvIGtlZXAgdGhlCj4gcmVtYWluaW5nIGNs
b2NrcyBydW5uaW5nLiBUaGUgYnVnIGlzIHRoZXJlZm9yZSBsYXRlbnQgdG9kYXksIGJ1dCBpdAo+
IG1lYW5zIHRoZSBkcml2ZXIgaG9sZHMgbm8gcmVmZXJlbmNlIHRvIHRoZSBjbG9jayB0aGF0IGFj
dHVhbGx5IGZlZWRzIHRoZQo+IE5QVSwgd2hpY2ggc3RhbmRzIGluIHRoZSB3YXkgb2YgYW55IGZ1
dHVyZSBmcmVxdWVuY3kgc2NhbGluZwo+IChPUFAvZGV2ZnJlcSkgd29yay4KPiAKPiBGb3VuZCBv
biBhbiBPcmFuZ2UgUGkgNSBQbHVzIChSSzM1ODgpIGJ5IHJlYWRpbmcgdGhlIGxpdmUgY2xvY2sg
dHJlZToKPiAvc3lzL2tlcm5lbC9kZWJ1Zy9jbGsvY2xrX3N1bW1hcnkgc2hvd3MgZm91ciAiZmRh
YjAwMDAubnB1IiBjb25zdW1lcgo+IGhhbmRsZXMgb24gYWNsa19ucHUwIChhbmQgbGlrZXdpc2Ug
b24gYWNsa19ucHUxL2FjbGtfbnB1MiBmb3IgdGhlIG90aGVyCj4gdHdvIGNvcmVzKSwgd2hpbGUg
aGNsa19ucHUwLCBwY2xrX25wdV9yb290IGFuZCBzY21pX2Nsa19ucHUgaGF2ZSBubwo+ICJmZGFi
MDAwMC5ucHUiIGNvbnN1bWVyIGF0IGFsbCAtIHRoZWlyIG9ubHkgY29uc3VtZXJzIGFyZSB0aGUK
PiAibnB1QGZkYWIwMDAwIiBoYW5kbGVzIGNyZWF0ZWQgYnkgdGhlIHBvd2VyLWRvbWFpbiBkcml2
ZXIgdmlhCj4gb2ZfY2xrX2dldCgpLgo+IAo+IFNldCB0aGUgaWRzIGV4cGxpY2l0bHksIGluIHRo
ZSBvcmRlciBtYW5kYXRlZCBieSB0aGUgYmluZGluZwo+IChEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbnB1L3JvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUueWFtbCk6Cj4gYWNsaywg
aGNsaywgbnB1LCBwY2xrLiBBZnRlciB0aGUgY2hhbmdlIHRoZSBkcml2ZXIgaG9sZHMgb25lIGhh
bmRsZSBwZXIKPiBkaXN0aW5jdCBjbG9jayBhbmQgY2xrX2J1bGtfcHJlcGFyZV9lbmFibGUoKSBj
b3ZlcnMgYWxsIGZvdXIuCj4gCj4gTm90ZSB0aGF0IHRoaXMgaXMgYSB1c2VyLXZpc2libGUgdGln
aHRlbmluZyBmb3Igb3V0LW9mLXRyZWUgRFRzOiB0aGUKPiBvbGQgTlVMTC1pZCByZXF1ZXN0cyBy
ZXNvbHZlZCBieSBpbmRleCBhbmQgc3VjY2VlZGVkIG5vIG1hdHRlciB3aGF0Cj4gImNsb2NrLW5h
bWVzIiBjb250YWluZWQsIHdoaWxlIHRoZSBuYW1lZCByZXF1ZXN0cyBmYWlsIHByb2JlIHdpdGgK
PiAtRU5PRU5UIHdoZW4gb25lIG9mIHRoZSBmb3VyIG5hbWVzIGlzIG1pc3NpbmcuIFRoYXQgaXMg
dGhlIHJpZ2h0Cj4gb3V0Y29tZSBmb3IgaW4tdHJlZSB1c2VycyAtIHRoZSBiaW5kaW5nIHJlcXVp
cmVzIGV4YWN0bHkgdGhlc2UgZm91cgo+IGNsb2NrLW5hbWVzIGFuZCByazM1ODgtYmFzZS5kdHNp
IGNhcnJpZXMgdGhlbSBvbiBhbGwgdGhyZWUgY29yZXMgLSBidXQKPiBhIERUIHRoYXQgcmVsaWVk
IG9uIHRoZSBwZXJtaXNzaXZlIGxvb2t1cCBnb2VzIGZyb20gc2lsZW50bHkgcnVubmluZyBvbgo+
IHRoZSB3cm9uZyBjbG9jayBoYW5kbGVzIHRvIG5vdCBwcm9iaW5nIGF0IGFsbCwgc28gcmVjb3Jk
IHRoZSBjaGFuZ2UKPiBoZXJlIHdoZXJlIGdpdCBsb2cgd2lsbCBmaW5kIGl0LgoKc2FtZSBjb21t
ZW50IGFzIGluIHRoZSBSSzM1NzYgc2VyaWVzLCBwbGVhc2UgdHJpbSB0aGlzIGRvd24gYSBsb3Qu
ClRoZSBjaGFuZ2UgaXMgbm90IHRoYXQgYmlnIDotKSAuCgoKSGVpa28KCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
