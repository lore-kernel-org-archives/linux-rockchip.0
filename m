Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18878606A322
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2026 07:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hKBuHoVl;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=ZEyUwzAR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rz6Ky2Vbgs+Besm6xtKlZIXOmbiENMcwP7mOaKmnPvE=; b=hKBuHoVlHpCJNR
	QdylGGcngYrVEGYAEBYCfNwQUIbOwF+t1pWDv8X1d+5S82eAJnC/fH4hkRtcOg2phJJL+zY1rjgye
	sgw9/OkJAa96qPjC8jxllfWmOlBjX75K4dZ9umyYdkzcJNNJ3lmuCTZ2OoX0DL/TjkPAO0i7r/0xJ
	NRmj8soRzAhqWciixkqZhL+kDEUAOMGjTtY47I2e+0C0cWTZLiyaUjk1MdV2LgxTyd1V5tVJoI2My
	cEhMeMfjDNl2XfmoBXQlPTQWpQrkp2vpTJJE3NGJ9mY/P/Zs2SJTtWb4llGVcYDeUWB/Ky4iVBZ5c
	y9h2tcYjCVIYNwglBdAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJnNY-0000000Da2M-0OPQ;
	Thu, 22 Oct 2026 07:38:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJnNV-0000000Da1b-1HKZ;
	Thu, 22 Oct 2026 07:38:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=WnoNYrh8MOVI5Naq9oKQorrqR4sbrLyiz7U4v4AXZCE=; b=ZEyUwzARHz47EcN8uXbOF0XTuA
	GafSTJMtAMhaWxo68Ky2tAuyNcvr5wuHLp8DWusSyEJVmh5AFDovAInOT1dY1KEDOlvC1A+UBRk9w
	c86FDr9qwHhzcU4JXi/b8SLVWkNRJ2YbVw5O+njeSXd/qp1DU3BTOvxsrYgOinZ/lCArbUsoLJ6n2
	Yzliopu+QLaQ9xrLhbOKATH2R+ktrtbbROzUojDub+NX/69SzMzD0z8EdcRxG5hXIarq8FuTcODk9
	uD2WKRfkLekwmmOazjrVXJc3PUNDowJ5qiFv980+1WoJKn+E6fL/lLBl7FHHwea54zuBJuYW388Pz
	ZdsNgirw==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Elaine Zhang <zhangqing@rock-chips.com>, Cunhao Lu <1579567540@qq.com>
Cc: linux-clk <linux-clk@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, mfd <mfd@lists.linux.dev>,
 linux-gpio <linux-gpio@vger.kernel.org>, netdev <netdev@vger.kernel.org>,
 linux-pm <linux-pm@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>,
 linux-serial <linux-serial@vger.kernel.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 linux-stm32 <linux-stm32@st-md-mailman.stormreply.com>,
 linux-phy <linux-phy@lists.infradead.org>,
 linux-usb <linux-usb@vger.kernel.org>
Subject: Re: [PATCH 07/27] clk: rockchip: Add RK3572 clock and reset support
Date: Thu, 22 Oct 2026 09:38:06 +0200
Message-ID: <2117228.PIDvDuAF1L@diego>
In-Reply-To: <tencent_791C8CE4050020CEF9E536C9D3B4CA9C250A@qq.com>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
 <2339330.72vocr9iq0@diego>
 <tencent_791C8CE4050020CEF9E536C9D3B4CA9C250A@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_003821_436989_438F7F7F 
X-CRM114-Status: GOOD (  17.21  )
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGksCgpBbSBEb25uZXJzdGFnLCAyMi4gT2t0b2JlciAyMDI2LCAwODowOTowMiBNaXR0ZWxldXJv
cMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIEN1bmhhbyBMdToKPiBIaSBIZWlrbywKPiAKPiA+
IEFzIHlvdSBkaWRuJ3Qgd3JpdGUgdGhpcyBkcml2ZXIgb24geW91ciBvd24gYW5kIGV2ZW4ga2Vw
dCB0aGUgb3JpZ2luYWwKPiA+IGF1dGhvciwgcGxlYXNlIGFsc28gY3JlZGl0IHRoZSBvcmlnaW5h
bCBhdXRob3IgaW4gdGhlIGNvbW1pdCBpdHNlbGYuCj4gPgo+ID4gVGhpcyBjYW4gYmUgZG9uZSBm
b3IgZXhhbXBsZSB3aXRoIHNvbWV0aGluZyBsaWtlCj4gPiBnaXQgY29tbWl0IC0tYW1lbmQgLS1h
dXRob3I9IkVsYWluZSBaaGFuZyA8emhhbmdxaW5nQHJvY2stY2hpcHMuY29tPiIKPiA+IGFuZCBp
biB0aGUgY29tbWl0IGFsc28gaGF2ZSBib3RoIHNpZ25lZC1vZmZzLWJ5LCBha2EgRWxhaW5lIGZp
cnN0Cj4gPiB0aGVuIHlvdXJzIGJlbG93IGFzIHRoZSBzdWJtaXR0ZXIsIGkuZS4gbGlrZQo+ID4K
PiA+ICsrKysrKysrKysrCj4gPiBTaWduZWQtb2ZmLWJ5OiBFbGFpbmUgWmhhbmcgPHpoYW5ncWlu
Z0Byb2NrLWNoaXBzLmNvbT4KPiA+IFtkb2N1bWVudCB3aGF0IGNoYW5nZXMgeW91IGRpZCBpbnNp
ZGUgdGhlIGJyYWNrZXRzXQo+ID4gU2lnbmVkLW9mZi1ieTogQ3VuaGFvIEx1IDwxNTc5NTY3NTQw
QHFxLmNvbT4KPiA+ICsrKysrKysrKysrCj4gPgo+ID4gVGhlIHNhbWUgYXBwbGllcyB0byBhbGwg
Y29tbWl0cyBjb21pbmcgZnJvbSB0aGUgUm9ja2NoaXAgdmVuZG9yIGtlcm5lbC4KPiAKPiBUaGFu
a3MgZm9yIHBvaW50aW5nIHRoaXMgb3V0LCBhbmQgc29ycnkgZm9yIG1pc3NpbmcgdGhlIGNvbW1p
dCBhdXRob3JzaGlwLgo+IAo+IEknbGwgcmV2aWV3IGFsbCBwYXRjaGVzIGFuZCBhZGQgdGhlIG9y
aWdpbmFsIGF1dGhvcnMnIG5hbWVzIHdoZXJlIG5lY2Vzc2FyeS4KPiBIb3dldmVyLCBiZWNhdXNl
IHRoZSBCU1AgSSByZWNlaXZlZCBkb2VzIG5vdCBpbmNsdWRlIEdpdCBjb21taXQgaGlzdG9yeSwg
SSBjYW4KPiBvbmx5IGlkZW50aWZ5IHRoZW0gZnJvbSB0aGUgbmFtZXMgbm90ZWQgaW4gdGhlIGZp
bGUgaGVhZGVycy4KClJvY2tjaGlwIGhhcyBwdWJsaXNoZWQgYSBkZXZlbG9wbWVudCBicmFuY2gg
YmFzZWQgb24gNi4xMiBvbiBnaXRodWIgWzBdIC4KVGhpcyBpbmNsdWRlcyB0aGlzIGNsb2NrIGRy
aXZlciBbMV0gYW5kIG1vc3QgbGlrZWx5IGFsbCB0aGUgb3RoZXIgcGFydHMgYXMgd2VsbC4KWW91
IGNhbiB1c2UgdGhpcyB0byBjcm9zcy1yZWZlcmVuY2UuCgpJZiB0aGVyZSBhcmUgbXVsdGlwbGUg
YXV0aG9ycyBjaGFuZ2luZyB0aGUgcmszNTcyLXNwZWNpZmljIHBhcnRzIG9mIGEgZmlsZSwKcGxl
YXNlIHVzZSB0aGUgZmlyc3QgcGF0Y2ggYXV0aG9yIGZyb20gdGhhdCBoaXN0b3J5IGZvciB5b3Vy
IHBhdGNoLCBhcyB3ZQpkb24ndCB3YW50IHRvIHJlcGxpY2F0ZSB0aGUgZGV2ZWxvcG1lbnQgaGlz
dG9yeSBmcm9tIHRoYXQgdmVuZG9yIGtlcm5lbAp0cmVlLgoKClRoYW5rcwpIZWlrbwoKWzBdIGh0
dHBzOi8vZ2l0aHViLmNvbS9yb2NrY2hpcC1saW51eC9rZXJuZWwvdHJlZS9kZXZlbG9wLTYuMTIK
WzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9yb2NrY2hpcC1saW51eC9rZXJuZWwvYmxvYi9kZXZlbG9w
LTYuMTIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzU3Mi5jCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
