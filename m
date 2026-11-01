Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5801B606A32E
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 22:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hf352Tzo;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=Im3G/s89
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=YFAX1CPseBgs98SdVAOJMqWJbbVqm4leZ3CpsEOwIS8=; b=hf352TzoR6jhtGPJspRK02ZoBS
	3j6JA7sis26rLc9UpgYYL/0EyGAinoLT4gDdnjIKYr7w/fQRLS+K2g4dlpyCdZr++qBX9+vYcKSdh
	xzgnMl8mh064dcphA3wmXXDH2Kl1lBvRUD+4UxNZEjuImrsVHYTVlpbJZrrV65t+XfvOeAxUGml9Z
	qMLnOfx7tGvJgvYVEEc9BJbaj9f5wI5z7ZzekAiquIFB+k9lFxATk+BPJnWczsvsaiLlbj2IP/oDW
	0he7o//NAk4fJYS72qHm3+JuxkvS5lnwVhdRz2gM8MRGa2XeIOEfIkjyp9Q8OHZAGzlStDrTGWF9l
	zYqyeSPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNduE-0000000F7fn-1ux8;
	Sun, 01 Nov 2026 22:20:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdu5-0000000F7ah-3cJ2;
	Sun, 01 Nov 2026 22:20:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=RlMmBJaoFVmxxA9FM3cQTpEG1wm1O3AcY8dpRqM2fYI=; b=Im3G/s89G/FO2EZ5tMahT52ktm
	iOfGJMjkmb4qCWjJ/iIbvyijS1l5gGkKgcGml7frVALCyYLTuJX9BKVgbqhRcrhmSSr+1xE1CtfSN
	2vK1HwKYYgbeyT9EPNEFGJaRVJ9+HZix+vpIfeqfjofs3bcqNlV8V0jeYMtH0L3RqFey4Jd5cGECw
	zx2O9aUmmSYdGZOke4G633my6buU5BYfuN9cyOpDLbVJXsjhDamQ9MFaUL58VndidhbuZ8jL2AY5r
	6R4DSx6Fa+0VvWKSmheX/8kNIxIy8sgI9g/D5aGlJLyj8mJlGm7JVK/kCtZ8LihwFU5lwDz0r1S4h
	nzPvjJLg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, joachim.eastwood@gmail.com
Cc: Shawn Lin <Shawn.lin@rock-chips.com>,
 Diederik de Haas <diederik@cknow-tech.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Joachim Eastwood <joachim.eastwood@gmail.com>
Subject: Re: [PATCH v2 0/9] arm64: dts: rockchip: NanoPi 6 series fixes and
 improvements
Date: Sun, 01 Nov 2026 23:19:46 +0100
Message-ID: <17766357.Ash8RoxBsO@diego>
In-Reply-To: <20261101-nanopi-m6-improvements-v2-0-a24769efda23@gmail.com>
References: <20261101-nanopi-m6-improvements-v2-0-a24769efda23@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_141953_903238_D1626F29 
X-CRM114-Status: GOOD (  16.13  )
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgSm9hY2hpbQoKQW0gU29ubnRhZywgMS4gTm92ZW1iZXIgMjAyNiwgMjI6NTU6MTggTWl0dGVs
ZXVyb3DDpGlzY2hlIE5vcm1hbHplaXQgc2NocmllYiBKb2FjaGltIEVhc3R3b29kIHZpYSBCNCBS
ZWxheToKPiBUaGlzIHBhdGNoIHNlcmllcyBjb250YWlucyBhIGZldyBmaXhlcyBhbmQgbWlzY2Vs
bGFuZW91cyBpbXByb3ZlbWVudHMKPiBmb3IgdGhlIE5hbm9QaSA2IHNlcmllcyBvZiBib2FyZHMu
Cj4gCj4gUGF0Y2ggMSBmaXhlcyB0aGUgdm9sdGFnZSByYW5nZSBvbiB0aGUgU0RNTUMgcmVndWxh
dG9yLgo+IFBhdGNoIDIgZW5hYmxlcyBIUzQwMCBtb2RlIG9uIGVNTUMuIFRlc3RlZCBvbiBteSBN
NiBib2FyZC4KPiBQYXRjaCAzIGFkZHMgYW4gSUlPIEhXTU9OIGRldmljZSB0byBtb25pdG9yIHRo
ZSBpbnB1dCB2b2x0YWdlLgo+IFBhdGNoIDQgbW92ZXMgYSByZWd1bGF0b3IgdGhhdCBvbmx5IGV4
aXN0IFI2IGJvYXJkcyB0byB0aGUgY29ycmVjdCBkdHNpLgo+IFBhdGNoIDUtOSByZW5hbWVzIERU
IG5hbWVzIHRvIG1hdGNoIHRoZSBzY2hlbWF0aWNzIHNpZ25hbHMvbmV0cy4KPiAKPiBJZiBwYXRj
aCA1LTkgaXMganVzdCBjb25zaWRlcmVkIGNodXJuIEknbGwgZHJvcCB0aGVtLiBUaGVzZSBhcmUg
bW9yZQo+IG5pY2UgdG8gaGF2ZSBhbmQganVzdCBtYWtlcyBpdCBlYXNpZXIgdG8gY3Jvc3MtcmVm
ZXJlbmNlIERUIGFuZAo+IHNjaGVtYXRpY3MuCj4gCj4gU2NoZW1hdGljcyBmb3IgdGhlIGJvYXJk
cyBjYW4gYmUgZm91bmQgaGVyZToKPiBNNjogaHR0cHM6Ly93aWtpLmZyaWVuZGx5ZWxlYy5jb20v
d2lraS9pbWFnZXMvOC84NS9OYW5vUGlfTTZfMjQwNV9TQ0guUERGCj4gUjZDOiBodHRwczovL3dp
a2kuZnJpZW5kbHllbGVjLmNvbS93aWtpL2ltYWdlcy9mL2Y3L05hbm9QaV9SNkNfMjMwMl9TQ0gu
UERGCj4gUjZTOiBodHRwczovL3dpa2kuZnJpZW5kbHllbGVjLmNvbS93aWtpL2ltYWdlcy8yLzJm
L05hbm9QaV9SNlNfMjIwOF9TQ0guUERGCj4gCj4gU2lnbmVkLW9mZi1ieTogSm9hY2hpbSBFYXN0
d29vZCA8am9hY2hpbS5lYXN0d29vZEBnbWFpbC5jb20+Cj4gLS0tCj4gQ2hhbmdlcyBpbiB2MjoK
PiAtIEFkZCBzY2hlbWF0aWMgbGlua3MgdG8gY292ZXIgbGV0dGVyIHRvIGVhc2UgcmV2aWV3Cj4g
LSBSZW5hbWVkIHJ0bDgyMTFmIG5vZGUgdG8gZ21hYwo+IC0gQWRkIFItYiB0YWdzIGZyb20gU2hh
d24gTGluCj4gLSBSZWJhc2VkIG9uIHY3LjQtcmMxCj4gLSBMaW5rIHRvIHYxOiBodHRwczovL3Bh
dGNoLm1zZ2lkLmxpbmsvMjAyNjEwMTQtbmFub3BpLW02LWltcHJvdmVtZW50cy12MS0wLWU3MTNm
NzFlYjRkM0BnbWFpbC5jb20KCmxvb2tzIGxpa2Ugd2Ugd29ya2VkIGF0IHRoZSBzYW1lIHRpbWUg
Oi0pIC4KCkFzIHlvdSB3aWxsIGhhdmUgc2VlbiBqdXN0IG5vdywgSSBhcHBsaWVkIHlvdXIgdjEs
IHNvIHBsZWFzZSBzZW5kIGFueQpuZWVkZWQgY2hhbmdlcyBhcyBmb2xsb3cgdXAgcGF0Y2hlcy4K
CgpUaGFua3MKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
