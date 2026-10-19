Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36D4606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2026 22:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3R0/Jvky;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=collabora.com header.i=michael.riesch@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=f04JsVaO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3xwVBAA2D5A2mltb6fgF9o1OesSk1Hyp2H1a6U7YKKI=; b=3R0/Jvky/3DDjw
	h6Ut55QtYo4Vx0D9U5sMb0SntLU3oYtvEbSheWzfLIXDK/qPoIxmW8D6+fgrtcFG0lQ/zSAtYLXk6
	tbWql03ga99vvQlIZZPk/IVtJtHqbW0sZDnO4LGCl1niDlbq9xBjezC27TQ6dUQRKYI2WGol08g8f
	gL/C2c3dHyvQcQbcwqGKCgWRnSyWLS/iiNIEJ29gXXr63Gfej4FH7DV0dYjTd/sdqoqz7BrCWAjVQ
	097J52EDlIGvam1uK5akcnIXSJqp7Z18nDn38yj88RkLdHknurTyXWFF8egGDzVdSVfYPE2bFfTMh
	MetKwpxEXJEyQt6ZPzFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIvjB-00000008TdH-0wjB;
	Mon, 19 Oct 2026 22:21:09 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIvj8-00000008TcZ-2yP7;
	Mon, 19 Oct 2026 22:21:07 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1792448456; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=WrrXJ1YWBO5A0kDwu9XrscKsAznjiY++dqm22cz5TXcJnQBDaTlCmJm5rqnjRXoFsbkPZzL8Kp6vpowXk5RkwsJNvZIlS5PI47Gu+0ilGlvm5jJ9Ff6P3Ssr2mmEYcntRjhpEPwGspb4JjK5Xi2Blfx8Y4aYGiys/aL4XpGd/IY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1792448456; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=s51N6XNe2djMI4gMavRjcuP3fUqvxRFw7XI3t+UeSdg=; 
	b=nDtccBpIf+SsKGYYGImeYiugxqa/fA7XlI7Pdn9SNfqGz0e9UJ4Y+BBfaPDwRIP832btLtYcUpDFO2FCvm9nkX0uHgxFBed2ZrqemvY8fgGuhTkY83qcVl3usntWPRJNF6kIlRR3JxBot7McAG32BOiIj7u8kUVVREQsa30PlIc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=michael.riesch@collabora.com;
	dmarc=pass header.from=<michael.riesch@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1792448456;
	s=zohomail; d=collabora.com; i=michael.riesch@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=s51N6XNe2djMI4gMavRjcuP3fUqvxRFw7XI3t+UeSdg=;
	b=f04JsVaO23ITcR3e/y7REbigorpmjJrcP71oHq1fSWOlg8BuYCdLXWIbydPOzQ4e
	kxEXdx7SMniTwzyHtibN6IVwMhrHgpn/sc1Cuh0CgcLaVHTTv6QNypaAv7z1PRbJlfP
	F4Cdgpt/FqSEiiTrTwUQ386cQ+Soyd5XNs8/LPuo=
Received: by smtp.zohomail.com with SMTPS id 1792448452872579.0876982000046;
	Mon, 19 Oct 2026 15:20:52 -0700 (PDT)
Message-ID: <73ef0d06-75c5-4c10-b4c3-c7b3c07a1e18@collabora.com>
Date: Tue, 20 Oct 2026 00:20:47 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/8] dt-bindings: phy: rockchip,rk3588-mipi-dcphy: Add
 a cell to select TX or RX
To: Rob Herring <robh@kernel.org>, =?UTF-8?B?5qWK5pm65oiQ?=
 <jason98166@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Guochun Huang <hero.huang@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
 <20261016-dcphy-rx-v1-v5-2-e63b49eabe2d@gmail.com>
 <20261016140115.GA1798470-robh@kernel.org>
 <20261017-gainful-goldfish-of-climate-bef863@quoll>
 <CAPwA33+bR1BF9KeA9my07Yz7gXW7TXq8EPhwQ4GvHMSFDk+uWw@mail.gmail.com>
 <20261019150631.GA265407-robh@kernel.org>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <20261019150631.GA265407-robh@kernel.org>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_152106_844605_AE631624 
X-CRM114-Status: GOOD (  28.46  )
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
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgYWxsLAoKT24gMTAvMTkvMjYgMTc6MDYsIFJvYiBIZXJyaW5nIHdyb3RlOgo+IE9uIE1vbiwg
T2N0IDE5LCAyMDI2IGF0IDA0OjE1OjAzUE0gKzA4MDAsIOaliuaZuuaIkCB3cm90ZToKPj4gSGkg
S3J6eXN6dG9mLCBSb2IsCj4+Cj4+PiBFeGlzdGluZyBPUyBzaG91bGQgaWdub3JlIHN1cnBsdXMg
Y2VsbCBpZiB0aGUgZHJpdmVyIGlzIGNvZGVkIHByb3Blcmx5Lgo+Pj4gU2FtZSBhcyBhZGRpbmcg
bmV3IHByb3BlcnRpZXMgb3IgbmV3IGZyb250LWNvbXBhdGlibGUuICBUaGUgcXVlc3Rpb24gaXMK
Pj4+IGhvdyB0aGUgZXhpc3RpbmcgZHJpdmVyIGJlaGF2ZXM/Cj4+Cj4+IEFzIHlvdSBwb2ludGVk
IG91dCBvbiA1LzgsIHRoZSB4bGF0ZSBjaGVja3MgYXJnc19jb3VudCAhPSAxLiBUaGUgREMtUEhZ
Cj4+IGRyaXZlciB3YXMgbWVyZ2VkIGluIHY2LjE1LCBzbyBldmVyeSBrZXJuZWwgc2luY2UgNi4x
NSBmYWlscyBvbiBhIHNlY29uZCBjZWxsLgo+Pgo+PiAxLiBLZWVwIHRoZSBzZWNvbmQgY2VsbC4g
QWRkIHRoZSBwYXRjaCBhcyBmb2xsb3dzOgo+Pgo+PiAtIGlmIChhcmdzLT5hcmdzX2NvdW50ICE9
IDEpIHsKPj4gKyBpZiAoYXJncy0+YXJnc19jb3VudCA8IDEpIHsKPj4gICAgIGRldl9lcnIoZGV2
LCAiaW52YWxpZCBudW1iZXIgb2YgYXJndW1lbnRzXG4iKTsKPj4gICAgIHJldHVybiBFUlJfUFRS
KC1FSU5WQUwpOwo+PiAgIH0KPj4KPj4gKyBpZiAoYXJncy0+YXJnc19jb3VudCA+IDEgJiYgYXJn
cy0+YXJnc1sxXSkgewo+PiArICAgZGV2X2VycihkZXYsICJvbmx5IHRoZSB0cmFuc21pdHRlciBp
cyBzdXBwb3J0ZWRcbiIpOwo+PiArICAgcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7Cj4+ICsgfQo+
Pgo+PiAgIFdpdGggRml4ZXM6IGFuZCBDYzogc3RhYmxlLCB0aGUgc3RhYmxlIGtlcm5lbHMgbWFp
bnRhaW5lZCBhdCB0aGF0Cj4+ICAgdGltZSAoY3VycmVudGx5IDYuMTgueSBhbmQgNy4yLnkpIGtl
ZXAgRFNJIHdvcmtpbmcgd2l0aCB0aGUgbmV3Cj4+ICAgZHRzLCBhbmQgdGhlIHJlY2VpdmVyIGZh
aWxzIGNsZWFubHkgaW5zdGVhZCBvZiBnZXR0aW5nIHRoZSB0cmFuc21pdHRlci4KPj4gICBCdXQg
RU9MIGtlcm5lbHMgKDYuMTUsIDYuMTYsIDYuMTcsIDYuMTksIDcuMCwgNy4xKSBzdGF5IGFmZmVj
dGVkLgo+PiAgIEl0IGdvZXMgaW4gd2l0aCB0aGUgc2VyaWVzLCBzaW5jZSB0d28tY2VsbCBkdHMg
b25seSBleGlzdCBhZnRlciBpdC4KPj4KPj4gMi4gVXNlIGEgZmxhZyBpbiB0aGUgdXBwZXIgYml0
cyBvZiB0aGUgZXhpc3RpbmcgY2VsbCwgYXMgUm9iCj4+ICAgICBzdWdnZXN0ZWQuIEV4aXN0aW5n
IGtlcm5lbHMgYXJlIG5vdCBhZmZlY3RlZCwgdW5sZXNzIGEgYm9hcmQgZW5hYmxlcwo+PiAgICAg
dGhlIERDLVBIWSBDU0ktMiByZWNlaXZlciBvbiA3LjAgb3IgbGF0ZXIgd2l0aG91dCB0aGlzIHNl
cmllcy4KPj4KPj4gSSB3aWxsIHdyaXRlIHRoZSBpbXBhY3QgY2xlYXJseSB3aGljaGV2ZXIgIGFw
cHJvYWNoIGlzIHNlbGVjdGVkIGluCj4+IHRoZSByZWxhdGVkIGNvbW1pdCBtZXNzYWdlcyBhbmQg
dGhlIGNvdmVyIGxldHRlci4KPj4KPj4gSSB0aGluayB0aGUgY2VsbCBhcHByb2FjaCBpcyBlYXNp
ZXIgdG8gcmVhZCBhbmQgbW9yZSBzeW1tZXRyaWMgaW4gdGhlCj4+IGxvbmcgdGVybSwKPj4gYnV0
IGl0IGJyZWFrcyBtb3JlLiBXaGljaCBvbmUgZG8geW91IHRoaW5rIGlzIGJldHRlcj8gVGhhbmtz
Lgo+IAo+IEknbSBub3QgYSB1c2VyIG9mIHRoaXMgcGxhdGZvcm0sIHNvIEkgZG9uJ3QgY2FyZS4g
VXAgdG8gdGhlIHBsYXRmb3JtIAo+IG1haW50YWluZXJzIHRvIGRlY2lkZSBpZiBicmVha2FnZSBp
cyBhY2NlcHRpYmxlLiBZb3UganVzdCBuZWVkIHRvIAo+IGRvY3VtZW50IHRoZSBpc3N1ZSBpbiB0
aGUgY29tbWl0IG1lc3NhZ2UuCj4gCj4gUm9iCgpJdCdzIGEgYml0IG9mIGEgcGlja2xlLCBhbGwg
dGhpcy4KCkkgZ2F2ZSBpdCBzb21lIG1vcmUgdGhvdWdodC4gSW4gdGhlIGVuZCB0aGlzIGlzIGFu
IElQIGJsb2NrIHdpdGggdHdvClBIWXMuIE5vIG1vcmUsIG5vIGxlc3MuIE9uZSBjZWxsIGlzIHN1
ZmZpY2llbnQgdG8gYWRkcmVzcyB0aG9zZSwgYW5kIGl0CmNvdWxkIGJlIDAgZm9yIHRoZSB0cmFu
c21pdHRpbmcgUEhZIChEU0ksIGRpc3BsYXkpIGFuZCAxIGZvciB0aGUKcmVjZWl2aW5nIFBIWSAo
Q1NJLCBjYW1lcmEpLgoKT2YgY291cnNlIHRoZSB0d28gUEhZcyBjYW4gb3BlcmF0ZSBpbiBlaXRo
ZXIgRFBIWSBvciBDUEhZIG1vZGUuIFRoZQpwaHktY2VsbHMgaGF2ZSBiZWVuIChtaXM/KXVzZWQg
dG8gc2VsZWN0IHRoZSBwcm9wZXIgbW9kZSBvZiBjb21ibyBQSFlzLAphbmQgdGhpcyBwcmluY2lw
bGUgaGFzIGJlZW4gYXBwbGllZCBoZXJlIHRvby4KCkhvd2V2ZXIsIHdlIGhhdmUgdGhlIHNwZWNp
YWwgc2l0dWF0aW9uIGhlcmUgdGhhdCB0aGUgbW9kZSBjYW4gb25seSBiZQpjaGFuZ2VkIGZvciB0
aGUgY29tcGxldGUgSVAgYmxvY2sgKGFuZCB0aHVzIGZvciBib3RoIFBIWXMgYXQgdGhlIHNhbWUK
dGltZSkuIEFzIEJyeWFuIHBvaW50cyBvdXQsIHdlIG5lZWQgdG8gY2hlY2sgYW5kIGNvbXBsYWlu
IGlmIHRoZSBQSFkKbW9kZSBpcyBub3Qgc2V0IHRvIHRoZSBzYW1lIHZhbHVlIGZvciBib3RoIFBI
WXMuCgpJIHN1Z2dlc3QgdXNpbmcgYSBwcm9wZXJ0eQogICAgc2Ftc3VuZyxjcGh5LW1vZGU7Cihu
YW1lIHRvIGJlIGJpa2VzaGVkZGVkKSB0aGF0IHNldHMgdGhlIGNvbXBsZXRlIElQIGJsb2NrIGlu
dG8gQ1BIWSBtb2RlCihEUEhZIGJlaW5nIHRoZSBkZWZhdWx0KSB0byBkaXN0aW5ndWlzaCBiZXR3
ZWVuIHRoZSBtb2Rlcy4gU2luY2UgYm90aAptb2RlcyB1c2UgYSBkaWZmZXJlbnQgZWxlY3RyaWNh
bCBpbnRlcmZhY2UsIHRoaXMgaXMgY2xlYXJseSBhIGhhcmR3YXJlCnRoaW5nIGFuZCB0aHVzIHN1
aXRhYmxlIGZvciBkZXZpY2UgdHJlZS4KClRoZW4sIHdlIGNhbiBhZGRyZXNzIHRoZSB0d28gUEhZ
cyB3aXRoIHRoZSBoZWxwIG9mIHRoZSBhbHJlYWR5IGV4aXN0aW5nCnBoeSBjZWxsICh3aXRob3V0
IGFueSBiaXRmbGFnIHR3ZWFrcyB0byB0aGUgdmFsdWUpLgoKVGhlIHNvbGUgZHJhd2JhY2sgaXMg
dGhhdCB3ZSBuZWVkIHRvIGFjY2VwdCB0aGUgUEhZX1RZUEVfRFBIWSBhbmQKUEhZX1RZUEVfQ1BI
WSB2YWx1ZXMgdGhhdCBzb21lIE9TIGluIHRoZSBmaWVsZCBtaWdodCBwYXNzLiAoRm9yIExpbnV4
LAppdCBzaG91bGQgb25seSBiZSB0aGUgZm9ybWVyLikgQW5kIHdlIG5lZWQgdG8gaGFuZGxlIHRo
b3NlIHZhbHVlcwpjb3JyZWN0bHkuIEJ1dCBJIHRoaW5rIHRoaXMgaXMgbm90IG1vcmUgcGFpbmZ1
bCB0aGFuIHRoZSBvdGhlcgphcHByb2FjaGVzLiBBdCB0aGUgc2FtZSB0aW1lLCB0aGlzIGRlc2ln
biBzZWVtcyB0byBiZSB0aGUgbW9zdCBjb3JyZWN0Cm9uZSBJTUhPLgoKV2hhdCBkbyB5b3UgdGhp
bms/CgpCZXN0IHJlZ2FyZHMsCk1pY2hhZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
