Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C769E77199
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jan 2025 22:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8j0K3pJzKAvzKTLfJrl6TVg0dZTOYpZ4FPwzi6Q6mzg=; b=aSAUewNwIu1vAW
	hl+/D95b3b0fMk7IXjHXBaycZMOjeq710DniA8T+50GW5e7dRrP7n4lZ8XqLY9XBnEO/JAclf9khR
	iVeDws7krN1X9rVO+cTA5B6l6kpXSEu8aSR3gN1bYeUedPUpvAF+fviEUh8GmCAm6DEQQcQsW+dAW
	a43c1u+d/DjKjOAAUH2c8jB2vBLTCH2yCWn72+wMnPctk+LLXwDtRmA5yzI9cf0nlrLBIya8uUes2
	4wRDIQP0zUrD4tD1lxCdfhPKUViDjShOUc+bD2QRMzyxNCf3aZ31Y8tFv1woeMUvrI+NQ//ZSNSVz
	WwalmHd/uQ6QZTp93K7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVeZb-0000000A1b3-3tgf;
	Wed, 08 Jan 2025 22:30:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVeXe-0000000A1J1-47jx;
	Wed, 08 Jan 2025 22:28:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=oIs+6//9pCaz6EyeOwysIwczhydc369WMFHKaaagOvY=; b=BaedSn+aUIt4dGeN6UFrKv3zq5
	SjvxbM6DzIzuwDFspDx8xT61/huayN6VLFfjpyjKUKm7tH58k0vh0lJIUJ+Gx9fn63+Exga3t6sNR
	6b1WxY3XPQNEV036vJ8hHIICLnXXggqpBJ4qjv0veqgaLEzSWUhZr1vxcp4fpXiW42CdsHZjutpYS
	KB7zXZlisMJaJSMnm0mbnuiQhb6SNNWP2jsFCXvKPnJvPpm6YY49TTfpXVIcwna3bBpl1afHzuvkN
	OCOjsp4IDiCQ94Ch9JjiSKMCZJU9QS086B6rPNzGMJr0G8yXx6J7N1TrwfLpAboj5f4mjRuHm0a2O
	xmC2JPPg==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVeXc-0004BU-TI; Wed, 08 Jan 2025 23:28:44 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: Add SPDIF nodes to RK3588(s) device
 trees
Date: Wed, 08 Jan 2025 23:28:44 +0100
Message-ID: <2731770.KRxA6XjA2N@diego>
In-Reply-To: <CABjd4Yy4Qd1rD43u3B-s=HxVBnaQt7fSgP9NFY2YeY0eKMESvQ@mail.gmail.com>
References: <20250108-rk3588-h96-max-v58-v2-0-522301b905d6@gmail.com>
 <1950286.IobQ9Gjlxr@diego>
 <CABjd4Yy4Qd1rD43u3B-s=HxVBnaQt7fSgP9NFY2YeY0eKMESvQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_142847_021742_C25728DB 
X-CRM114-Status: GOOD (  28.74  )
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

SGkgQWxleGV5LAoKQW0gTWl0dHdvY2gsIDguIEphbnVhciAyMDI1LCAxNjozMDozNSBDRVQgc2No
cmllYiBBbGV4ZXkgQ2hhcmtvdjoKPiBPbiBXZWQsIEphbiA4LCAyMDI1IGF0IDI6MDHigK9QTSBI
ZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPiA+Cj4gPiBIaSBBbGV4ZXks
Cj4gPgo+ID4gQW0gTWl0dHdvY2gsIDguIEphbnVhciAyMDI1LCAxMDowOTowNyBDRVQgc2Nocmll
YiBBbGV4ZXkgQ2hhcmtvdjoKPiA+ID4gUkszNTg4cyBoYXMgZm91ciBTUERJRiB0cmFuc21pdHRl
cnMsIGFuZCB0aGUgZnVsbCBSSzM1ODggaGFzIHNpeC4KPiA+ID4gVGhleSBhcmUgZnVsbHkgY29t
cGF0aWJsZSB0byBSSzM1Njggb25lcy4gQWRkIHJlc3BlY3RpdmUgbm9kZXMKPiA+ID4gdG8gLmR0
c2kgZmlsZXMuCj4gPgo+ID4gV2hpbGUgaXQgbWF5IHNlZW0gdGhhdCB3YXksIHdlIHN0aWxsIHdh
bnQgc29jLXNwZWNpZmljIGNvbXBhdGlibGVzLAo+ID4gdG8gZnV0dXJlLXByb29mIHRoaXMuCj4g
Pgo+ID4gSS5lLiBnb2luZyB0aGUgdGhlCj4gPiAgICAgICAgIGNvbXBhdGlibGUgPSAicm9ja2No
aXAscmszNTg4LXNwZGlmIiwgInJvY2tjaGlwLHJrMzU2OC1zcGRpZiI7Cj4gPiB3YXksIHNvIHRo
YXQgbm93IHRoaW5ncyBjYW4ganVzdCBtYXRjaCBhZ2FpbnN0IHRoZSByazM1NjgsIGJ1dCBpZiBz
b21lCj4gPiBmYXVsdCBlbWVyZ2VzIGxhdGVyIG9uIHRoZSBjb2RlIGNhbiBiZSBmaXhlZCB3aXRo
IHRoZSBEVCBzdGF5aW5nIGp1c3QKPiA+IGNvbXBhdGlibGUuCj4gPgo+ID4gVGhlIHNwZGlmIGFs
c28gaGFzIGFuIGV4YW1wbGUgYWxyZWFkeSBmb3IgYWxsIHRoZSBzcGRpZiB2YXJpYW50cyB0aGF0
IGFyZQo+ID4gY29tcGF0aWJsZSB0byB0aGUgcmszMDY2IFszXSwgc28gaXQnZCBuZWVkIGFub3Ro
ZXIgIml0ZW1zIiBibG9jayBmb3IgdGhpbmdzCj4gPiBiZWluZyBjb21wYXRpYmxlIHdpdGggdGhl
IHJrMzU2OC4KPiAKPiBIbW0sIGlmIHdlIGFyZSB0byBiZWxpZXZlIHRoZSBkcml2ZXIgKFs0XSwg
WzVdKSwgdGhleSBhcmUgYWxsIHRoZSBzYW1lCj4gYXMgdGhlIGdvb2Qgb2xkIFJLMzM2Niwgd2hp
Y2ggaW4gdHVybiBpcyBzb2Z0d2FyZSBjb21wYXRpYmxlIHRvIHRoZQo+IGdvb2Qgb2xkIFJLMzA2
Ni4gU2FtZSBzZWVtcyB0byBhcHBseSB0byBSSzM1NzYsIGdpdmVuIHRoYXQgaXRzIGN1cnJlbnQK
PiAuZHRzaSBqdXN0IHJlZmVyZW5jZXMgdGhlICJyb2NrY2hpcCxyazM1Njgtc3BkaWYiIGNvbXBh
dGlibGUuCgpJIHdhcyBmb3IgYSBzaG9ydCB3aGlsZSBhZnJhaWQgdGhhdCBzb21ldGhpbmcgc2xp
cHBlZCBpbnRvIG1haW5saW5lIDotKQpCdXQgSSBndWVzcyB0aGF0ICJyb2NrY2hpcCxyazM1Njgt
c3BkaWYiIGNvbXBhdGlibGUgb24gdGhlIHJrMzU3NiBpcwpvbmx5IHVzZWQgaW4gdGhlIHZlbmRv
ci1rZXJuZWwuCgoKPiBEb2VzIGl0IG1lYW4gdGhhdCB0aGUgYmluZGluZyBuZWVkcyB0byBiZSBy
ZXN0cnVjdHVyZWQgc28gdGhhdCB0aGUKPiByZXF1aXJlZCBmYWxsYmFjayBjb21wYXRpYmxlICgi
cm9ja2NoaXAscmszMDY2LXNwZGlmIikgYXBwbGllcyB0byBhbGwKPiB2YXJpYW50cz8gT3Igc2hh
bGwgdGhlIGV4aXN0aW5nIG9uZXMgYmUgbGVmdCBhbG9uZSwgYW5kIGp1c3QgUkszNTg4Cj4gYW5k
IFJLMzU3NiBhZGRlZCBpbnNpZGUgdGhhdCAiaXRlbXMiIGJsb2NrPwoKSSBub3RpY2VkIHRoYXQg
dGhlIHNwZGlmIGJpbmRpbmcgaGFzIGhhZCBhbiBpbnRlcmVzdGluZ3MgZ3Jvd3RoIG92ZXIKdGhl
IHllYXJzLCB3aXRoIHNvbWUgc29jcyBiZWluZyBvdXRsaWVycy4KCkkgd291bGRuJ3QgY2hhbmdl
IHRoZSB3aG9sZSBiaW5kaW5nLCBlc3BlY2lhbGx5IGFzIHRoYXQgdGhlbiB0b3VjaGVzCmVzdGFi
bGlzaGVkIHN0dWZmLgoKVGhlIHF1ZXN0aW9uIHdvdWxkIGJlIHdlYXRoZXIgdG8gYWRkIHRoZSBy
azM1ODggKyByazM1NzYgdG8gdGhlCmV4aXN0aW5nIGVudW0gbWFya2luZyB0aGVtIGFzIGNvbXBh
dGlibGUgd2l0aCB0aGUgcmszMDY2LCBvciBjcmVhdGUKYSBzZXBhcmF0ZSBpdGVtcyBibG9jayBh
bmQganVzdCBzYXlpbmcgdGhlIHJrMzU4OC1zcGRpZiBpcyBjb21wYXRpYmxlIHdpdGgKdGhlIHJr
MzU2OCBvbmUsIGxpa2U6CgpbLi4uXQogICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazM1Njgtc3Bk
aWYKICAgICAgLSBpdGVtczoKICAgICAgICAgIC0gZW51bToKICAgICAgICAgICAgICAtIHJvY2tj
aGlwLHJrMzEyOC1zcGRpZgogICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszMTg4LXNwZGlmCiAg
ICAgICAgICAgICAgLSByb2NrY2hpcCxyazMyODgtc3BkaWYKICAgICAgICAgICAgICAtIHJvY2tj
aGlwLHJrMzMwOC1zcGRpZgogICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszMDY2LXNwZGlm
CiAgICAgIC0gaXRlbXM6CiAgICAgICAgICAtIGVudW06CiAgICAgICAgICAgICAgLSByb2NrY2hp
cCxyazM1NzYtc3BkaWYKICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzU4OC1zcGRpZgogICAg
ICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszNTY4LXNwZGlmClsuLi5dCgpXaXRoIHRoZSBSSzMw
NjYgYmVpbmcgcmVsZWFzZWQgaW4gMjAxMiwgcGFydCBvZiBtZSBpcyBhbWF6ZWQgdGhhdCB0aGF0
CmJsb2NrIHN1cnZpdmVkIHRoYXQgbG9uZywgb24gdGhlIG90aGVyIGhhbmQgZ29pbmcgd2l0aCB0
aGUgYWJvdmUgc25pcHBldApzb21laG93IGZlZWxzIHNhdmVyIDstKSAuCgoKSGVpa28KCj4gWzRd
IGh0dHBzOi8vZ2l0aHViLmNvbS9yb2NrY2hpcC1saW51eC9rZXJuZWwvYmxvYi9kZXZlbG9wLTUu
MTAvc291bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX3NwZGlmLmMKPiBbNV0gaHR0cHM6Ly9naXRo
dWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvbWFzdGVyL3NvdW5kL3NvYy9yb2NrY2hpcC9yb2Nr
Y2hpcF9zcGRpZi5jCj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
