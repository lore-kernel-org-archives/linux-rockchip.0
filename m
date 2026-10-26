Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C8E606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2026 19:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=E5oaRGd6;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=ihzOWlko
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7qiGR4ftR70Q0t1pgffljiJlvhCFA+kFwSPWgRuSYGs=; b=E5oaRGd63EQyq8YM0YRGPhBuzE
	D7y8pZvTRw90HlH+dD8yEfQhC4TNYyK+g9NkuFmB2ipHKCF75cGSKAbRtUvW+swOfAR2XXt6ub66Y
	JRNZc6W9ha8il2P8Kyiyhx6VHHUX8wlKORfqFQTBh7C1xyeDMv5W3t5E2GDnkzkLPq82UJUtsQV/3
	2uSNoFrIbFhZ8ftjPv1e7aNno7ei4eGNJPDAEeLXBLCeJtckse/CF2LdFU/x18HUa73GV8nVajQEO
	KmKoilpBCLcNF5cQiDDUWtBLfpxjixULjTTwtx82reqNlELBXuqYXn8wgSJ7Kdr4bZyr6qbxxKxCz
	8QddKVyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLQIN-00000003AQF-0rnX;
	Mon, 26 Oct 2026 19:23:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLQIL-00000003APs-1Mbs
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Oct 2026 19:23:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=AqmwLYHoY3N3Jn3DcpK5O8ALTetD0GAKAIXiKMQdJkc=; b=ihzOWlkoMuN55i67fxYnH70IAf
	1Dc7JL6ULToy5fPHNtBAS/64psDpQEAe8ggH9ISaZjAgFkHCLKWShulpdK256xKeDdUvQ2u06jj0/
	KspCrAv42gs+pjoMqdUWXXhUsqu0ZlzneX4daVJOJL6bjU4iSflOAZehJ9whPgmfg0+ZaErEFnIYr
	6Q2bee53ETm0trex+Xeq8JwATmWJxRY8uP5NaUfyKk9Jf1Q/4UL5xuLaQBWUY7eHb1XeuT540jDvb
	P5CStcm65dlbdj04Jt3BtadMyua8Uv4fhz1Q7Gj2U6kdnh4x0Yjp1R0NPcW5t19Qfundl9zdXwzfd
	uO5se/3A==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: linux-pm@vger.kernel.org, Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 maccraft123mc@gmail.com, zhangqing@rock-chips.com, zyw@rock-chips.com,
 sre@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 lee@kernel.org, Chris Morgan <macromorgan@hotmail.com>,
 Zetarancio <zetarancio@users.noreply.github.com>
Subject: Re: [PATCH 4/5] dt-bindings: power: supply: rk817-charger: Add
 rockchip,gate-function-disable
Date: Mon, 26 Oct 2026 20:23:40 +0100
Message-ID: <15875856.JCcGWNJJiE@diego>
In-Reply-To: <20261026174834.1652309-5-macroalpha82@gmail.com>
References: <20261026174834.1652309-1-macroalpha82@gmail.com>
 <20261026174834.1652309-5-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_122345_464730_742E1BB3 
X-CRM114-Status: GOOD (  17.26  )
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
X-Spam-Status: No, score=-19.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgQ2hyaXMsCgpBbSBNb250YWcsIDI2LiBPa3RvYmVyIDIwMjYsIDE4OjQ4OjMzIE1pdHRlbGV1
cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgQ2hyaXMgTW9yZ2FuOgo+IEZyb206IENocmlz
IE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90bWFpbC5jb20+Cj4gCj4gQWRkIGEgYm9vbGVhbiBhdHRy
aWJ1dGUgZm9yIHRoZSByazgxNy1jaGFyZ2VyIHRvIGNvbnRyb2wgd2hldGhlciBvciBub3QKPiB0
aGUgc3lzdGVtIHBvd2VyIGlzIHNodXRkb3duIGluIGJhdHRlcnkgb2ZmIG1vZGUuIFRoZSBCU1Ag
a2VybmVsIHNldHMKPiB0aGlzIHZhbHVlIHVubGVzcyBhIGRldmljZS10cmVlIGF0dHJpYnV0ZSBp
cyBwcmVzZW50LCBhbmQgdGhpcyBhdHRyaWJ1dGUKPiBpcyB0byByZXBsaWNhdGUgdGhhdCBiZWhh
dmlvci4KCkRldmljZXRyZWUgaXMgc3VwcG9zZWQgdG8gZGVzY3JpYmUgdGhlIGhhcmR3YXJlLCBz
byB5b3VyIGRlc2NyaXB0aW9uIG5lZWRzCnRvIGRlc2NyaWJlIHRoZSBwZXItYm9hcmQgcHJvcGVy
dHkgdGhpcyByZXByZXNlbnRzLgoKSnVzdCBiZWNhdXNlIGl0J3MgaW4gYSB2ZW5kb3ItQlNQIGlz
IGdlbmVyYWxseSBub3QgZW5vdWdoIGp1c3RpZmljYXRpb24gOi0pIC4KClRoaXMgaXMgZXNwZWNp
YWxseSB0cnVlIGFzIHlvdSB3cm90ZSBpbiB0aGUgY292ZXItbGV0dGVyIHRoYXQgbm8ga25vd24K
Ym9hcmQgYWN0dWFsbHkgbmVlZHMgdGhpcyByaWdodCBub3cuCgoKSGVpa28KCj4gRml4ZXM6IGE1
OTJhYTNhMmE4YyAoImR0LWJpbmRpbmdzOiBtZmQ6IEFkZCBSb2NrY2hpcCByazgxNyBiYXR0ZXJ5
IGNoYXJnZXIgc3VwcG9ydCIpCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgTW9yZ2FuIDxtYWNyb21v
cmdhbkBob3RtYWlsLmNvbT4KPiBTdWdnZXN0ZWQtYnk6IFpldGFyYW5jaW8gPHpldGFyYW5jaW9A
dXNlcnMubm9yZXBseS5naXRodWIuY29tPgo+IC0tLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbWZkL3JvY2tjaGlwLHJrODE3LnlhbWwgfCA3ICsrKysrKysKPiAgMSBmaWxl
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3JvY2tjaGlwLHJrODE3LnlhbWwgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3JvY2tjaGlwLHJrODE3LnlhbWwKPiBpbmRleCAy
Y2I2ZDE3NmE4NGMuLjRjZjk4N2ZlNzYzYiAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvbWZkL3JvY2tjaGlwLHJrODE3LnlhbWwKPiArKysgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3JvY2tjaGlwLHJrODE3LnlhbWwKPiBAQCAt
MTQ4LDYgKzE0OCwxMiBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgICAgICAgVmFsdWUgaW4gbWljcm9h
bXBzIG9mIHRoZSBzbGVlcCBmaWx0ZXIgY3VycmVudCBmb3IgdGhlIGNoYXJnZXIuCj4gICAgICAg
ICAgICBWYWx1ZSBpcyB1c2VkIGJ5IHRoZSBkcml2ZXIgdG8gZGVyaXZlIHRoZSBzbGVlcCBzYW1w
bGUgY3VycmVudC4KPiAgCj4gKyAgICAgIHJvY2tjaGlwLGdhdGUtZnVuY3Rpb24tZGlzYWJsZToK
PiArICAgICAgICB0eXBlOiBib29sZWFuCj4gKyAgICAgICAgZGVzY3JpcHRpb246Cj4gKyAgICAg
ICAgICBCb29sZWFuIHZhbHVlIHRvIHByZXZlbnQgUE1JQyBmcm9tIHR1cm5pbmcgb2ZmIHN5c3Rl
bSB2b2x0YWdlIHdoZW4KPiArICAgICAgICAgIGJhdHRlcnkgdm9sdGFnZSBpcyBzaHV0IGRvd24u
Cj4gKwo+ICAgICAgcmVxdWlyZWQ6Cj4gICAgICAgIC0gbW9uaXRvcmVkLWJhdHRlcnkKPiAgICAg
ICAgLSByb2NrY2hpcCxyZXNpc3Rvci1zZW5zZS1taWNyby1vaG1zCj4gQEAgLTM4MSw2ICszODcs
NyBAQCBleGFtcGxlczoKPiAgCj4gICAgICAgICAgICAgIHJrODE3X2NoYXJnZXI6IGNoYXJnZXIg
ewo+ICAgICAgICAgICAgICAgICAgbW9uaXRvcmVkLWJhdHRlcnkgPSA8JmJhdHRlcnk+Owo+ICsg
ICAgICAgICAgICAgICAgcm9ja2NoaXAsZ2F0ZS1mdW5jdGlvbi1kaXNhYmxlOwo+ICAgICAgICAg
ICAgICAgICAgcm9ja2NoaXAscmVzaXN0b3Itc2Vuc2UtbWljcm8tb2htcyA9IDwxMDAwMD47Cj4g
ICAgICAgICAgICAgICAgICByb2NrY2hpcCxzbGVlcC1lbnRlci1jdXJyZW50LW1pY3JvYW1wID0g
PDMwMDAwMD47Cj4gICAgICAgICAgICAgICAgICByb2NrY2hpcCxzbGVlcC1maWx0ZXItY3VycmVu
dC1taWNyb2FtcCA9IDwxMDAwMDA+Owo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
