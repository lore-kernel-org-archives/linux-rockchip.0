Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3AD7606A32F
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2026 17:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=j+RAZO06;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=EuQoFvcT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=y1vFw8rWZjriKlgKhjVVx/jBLKmTmeo0AHQk5nixZ9g=; b=j+RAZO065EJfDyCFbo1BnTOcwc
	trf8Iylz7GdRWnC8sg0Ks9euXDFjZ3bU38hMDAZBdaI6F4W7bjj6whJ8kNfFpO/+4H2t4Os8lvmiv
	DyLh2qCOpBcjWwWL3IlGOhB0KOHhrwzX5X1iyFXX0uw3J2/CwYYyJ58wdW3folaLmCXIoXniINrUM
	3CXWaEFjYol2jiJJ8Q1h4ofGdRrL1wLwG++NWObB2CX7aBXbfzjZDd0fq1DSZStC1Tq0ky9pulelW
	JZi2s5owpYxywyQBPZi1jLjy2SUwDz2ZbjyCsL/MgdJwvO/bb9dw8eiEWkk6vyqV2jX5zuMWWQlpN
	+0vVc2NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLOS3-00000002yuH-0dx3;
	Mon, 26 Oct 2026 17:25:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLORz-00000002ys1-3J3z;
	Mon, 26 Oct 2026 17:25:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=buxG7wzvUrhysQ03B60L3jHsDzOHP1rRWLo5WHGJFa8=; b=EuQoFvcTmdF1MqhFINMp9kW4jn
	j4134NOWSe6VQzg3ql4+9o6rRcYSKwYYS+jPZIJDAJcUNXEAG79n6U7S60Ewwx/eKpabnRmMsKd95
	Uox2Wg7cZpNtvz1ZLGryqszWJ55+zPphKeoxIpSvElwfFvPlct1yjlrQzZ00VsB5jIMbYhnPtvbvW
	rbuGFvT9yBMLmTOYzxWtlcFUXZIes9qbDoSYCgPoenq9R+Mw7mNLwWuJ1Aspw1qme0grL2SmA8VJR
	Slv8bT7AHy09dEp/4zcbR7u5Qak62kGVUiFeySL1koTWdBHd5D7RuoxGxLecrCkU8+2z2nceTcPDw
	xB03/g7w==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: =?UTF-8?B?5byg5pm0?= <zhangqing@rock-chips.com>,
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>,
 Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Richard Cochran <richardcochran@gmail.com>, Cunhao Lu <1579567540@qq.com>
Cc: linux-clk <linux-clk@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, netdev <netdev@vger.kernel.org>
Subject: Re: [PATCH v3 3/3] clk: rockchip: Add RK3572 clock and reset support
Date: Mon, 26 Oct 2026 18:25:14 +0100
Message-ID: <3062797.SvYEEZNnvj@diego>
In-Reply-To: <tencent_6876096D2306016F88487E0E4D78345B3208@qq.com>
References: <20261026-add-board-ok3572-c-clk-v3-0-dbabfa39d692@qq.com>
 <0d5de6fd-3150-4898-a652-7f5b64dcaf07@rock-chips.com>
 <tencent_6876096D2306016F88487E0E4D78345B3208@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_102535_875294_EF2837E6 
X-CRM114-Status: GOOD (  22.01  )
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
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gTW9udGFnLCAyNi4gT2t0b2JlciAyMDI2LCAxNTo1NjowNiBNaXR0ZWxldXJvcMOkaXNjaGUg
Tm9ybWFsemVpdCBzY2hyaWViIEN1bmhhbyBMdToKPiBIaSB6aGFuZ3FpbmcsCj4gCj4gPiBUaGlz
IGlzIGluIGNsay5oLCBwbGVhc2Ugc3VibWl0IGl0IHNlcGFyYXRlbHkuCj4gCj4gVGhhbmtzIGZv
ciB0aGUgcmV2aWV3LiBJIHdpbGwgbW92ZSBDT01QT1NJVEVfTVVYVEJMIHRvIGNsay5oIGFuZCBh
ZGQgaXQKPiBpbiBhIHNlcGFyYXRlIHByZXBhcmF0b3J5IHBhdGNoLgo+IAo+ID4gVGhpcyBpcyBp
bmNvcnJlY3QgaGVyZTsgdGhlcmUgc2hvdWxkIGJlIG5vIG5lZ2F0aXZlIHZhbHVlcy4gVHdvJ3MK
PiA+IGNvbXBsZW1lbnQgaXMgdXNlZCBoZXJlLCBzbyBhIGNvbnZlcnNpb24gaXMgbmVlZGVkLiBG
b3IgZXhhbXBsZSwKPiA+IC0xMjk1NSBzaG91bGQgYmUgNTI1ODEuCj4gPgo+ID4gSW4gY2xrLXBs
bC5jLCBjdXIuayAmIEJJVCgxNSkgaXMgdXNlZCB0byBkZXRlcm1pbmUgdGhlIHR3bydzIGNvbXBs
ZW1lbnQKPiA+IGNvbnZlcnNpb24uCj4gCj4gSSBhZ3JlZSB0aGF0IHRoZSBoYXJkd2FyZSBleHBl
Y3RzIGEgMTYtYml0IHR3bydzIGNvbXBsZW1lbnQgZW5jb2Rpbmc6Cj4gLTEyOTU1IGlzIGVuY29k
ZWQgYXMgMHhjZDY1LCB3aGljaCBpcyA1MjU4MSB3aGVuIHJlYWQgYXMgdW5zaWduZWQuIFRoZQo+
IGRpZmZlcmVuY2UgaGVyZSBpcyBob3cgdGhhdCBjb2VmZmljaWVudCBpcyByZXByZXNlbnRlZCBp
biB0aGUgcmF0ZQo+IHRhYmxlIG9uIHRoZSBrZXJuZWwgdmVyc2lvbiB0aGlzIHNlcmllcyB0YXJn
ZXRzLgo+IAo+IEkgZm91bmQgdGhlIGN1ci5rICYgQklUKDE1KSBicmFuY2ggaW4gUm9ja2NoaXAn
cyBkb3duc3RyZWFtIGRldmVsb3AtNi4xMgo+IHRyZWUuIFRoZXJlLCBrIGlzIHVuc2lnbmVkIGlu
dCwgc28gdGhlIGRyaXZlciBleHBsaWNpdGx5IGNoZWNrcyBiaXQgMTUKPiBhbmQgc3VidHJhY3Rz
IHRoZSBtYWduaXR1ZGUgb2YgYSBuZWdhdGl2ZSBmcmFjdGlvbmFsIGNvZWZmaWNpZW50Lgo+IAo+
IFRoaXMgc2VyaWVzIHVzZXMgdGhlIHVwc3RyZWFtIGltcGxlbWVudGF0aW9uLiBCb3RoIHYyIGFu
ZCB2MyBhcmUgYmFzZWQKPiBvbiBhODA0YzU3NDJiZmYsIHdoaWNoIGFscmVhZHkgY29udGFpbnMg
Y29tbWl0Cj4gNTgxNDc4ODgzNDc3ICgiY2xrOiByb2NrY2hpcDogRnJhY3Rpb25hbCBQTEwgY29l
ZmZpY2llbnQgb24gUkszNTg4L1JLMzU3Ngo+IGlzIHR3bydzIGNvbXBsZW1lbnQiKS4gVGhhdCBj
b21taXQgY2hhbmdlZCB0aGUgayBtZW1iZXIgb2YKPiBzdHJ1Y3Qgcm9ja2NoaXBfcGxsX3JhdGVf
dGFibGUgdG86Cj4gCj4gICAgICAgICBzMTYgazsgLyogZnJhY3Rpb25hbCBwYXJ0LCAxNiBiaXQg
dHdvJ3MgY29tcGxlbWVudCAqLwo+IAo+IE9uIHRoaXMgYmFzZSwgcm9ja2NoaXBfcmszNTg4X3Bs
bF9yZWNhbGNfcmF0ZSgpIHVzZXMgc2lnbmVkIGFyaXRobWV0aWM6Cj4gCj4gICAgICAgICBzNjQg
ZnJhY19yYXRlNjQgPSAoczY0KXByYXRlICogY3VyLms7Cj4gICAgICAgICBwb3N0ZGl2ID0gY3Vy
LnAgKiA2NTUzNjsKPiAgICAgICAgIHJhdGU2NCArPSBkaXZfczY0KGZyYWNfcmF0ZTY0LCBwb3N0
ZGl2KTsKPiAKPiBUaGUgc2lnbmVkIHR5cGUgcmVwcmVzZW50cyB0aGUgbmVnYXRpdmUgY29lZmZp
Y2llbnQgZGlyZWN0bHksIHNvIHRoaXMKPiBpbXBsZW1lbnRhdGlvbiBkb2VzIG5vdCBuZWVkIGEg
c2VwYXJhdGUgY3VyLmsgJiBCSVQoMTUpIGJyYW5jaC4gRm9yCj4gZXhhbXBsZSwgdGhlIG1haW5s
aW5lIFJLMzU3NiByYXRlIHRhYmxlIGFscmVhZHkgY29udGFpbnM6Cj4gCj4gICAgICAgICBSSzM1
ODhfUExMX1JBVEUoOTU1NTIwMDAwLCAzLCA0NzgsIDIsIC0xNTczMCksCj4gICAgICAgICBSSzM1
ODhfUExMX1JBVEUoNzg1NTYwMDAwLCAzLCAzOTMsIDIsIC0xNDQxOSksCj4gCj4gVGhlc2UgYXJl
IGV4YWN0bHkgdGhlIHNhbWUgZW50cmllcyBhcyBpbiB0aGlzIFJLMzU3MiBwYXRjaCwgaW5jbHVk
aW5nCj4gcCwgbSBhbmQgcy4gTWFpbmxpbmUgUkszNTg4IHVzZXMgdGhlIHNhbWUgZW50cmllcyBh
cyB3ZWxsLiBTaW5jZSBSSzM1NzIKPiB1c2VzIHRoaXMgc2hhcmVkIHVwc3RyZWFtIFBMTCBpbXBs
ZW1lbnRhdGlvbiwgSSB3aWxsIGZvbGxvdyB0aGUKPiBtYWlubGluZSBSSzM1NzYgY29udmVudGlv
biBmb3IgaXRzIHJhdGUgdGFibGUuCj4gCj4gV3JpdGluZyA1MjU4MSBkaXJlY3RseSBpbnRvIGFu
IHMxNiBpbml0aWFsaXplciB3b3VsZCByZXF1aXJlIGFuCj4gb3V0LW9mLXJhbmdlIGltcGxpY2l0
IGNvbnZlcnNpb247IGEgcmVkdWNlZCBjb21waWxlciB0ZXN0IHJlcHJvZHVjZXMKPiBDbGFuZydz
IGNvbnN0YW50LWNvbnZlcnNpb24gZGlhZ25vc3RpYy4gQW4gZXhwbGljaXQgY2FzdCBzdWNoIGFz
Cj4gKHMxNik1MjU4MSB3b3VsZCBwcm9kdWNlIHRoZSBzYW1lIHNpZ25lZCBjb2VmZmljaWVudCwg
YnV0IHdvdWxkIGFkZCBhCj4gY29udmVyc2lvbiB0aGF0IHRoZSBleGlzdGluZyBtYWlubGluZSB0
YWJsZXMgYXZvaWQuIFVzaW5nIC0xMjk1NQo+IGRpcmVjdGx5IG1ha2VzIHRoZSB2YWx1ZSB1c2Vk
IGluIHRoZSByYXRlIGNhbGN1bGF0aW9uIGNsZWFyIGFuZCBzdGF5cwo+IGNvbnNpc3RlbnQgd2l0
aCBSSzM1NzYuCj4gCj4gVGhlIHJlZ2lzdGVyIGVuY29kaW5nIGlzIHByZXNlcnZlZDogdGhlIHdy
aXRlIHBhdGggcGFzc2VzIGsgdGhyb3VnaAo+IEhJV09SRF9VUERBVEUoKSB3aXRoIGEgMHhmZmZm
IG1hc2ssIHNvIC0xMjk1NSBzdGlsbCB3cml0ZXMgMHhjZDY1IGludG8KPiB0aGUgY29lZmZpY2ll
bnQgZmllbGQuIFRoZSBmaXZlIGluaXRpYWxpemVyIGNoYW5nZXMgZnJvbSB2MiB0byB2MyBvbmx5
Cj4gbWFrZSB0aGUgc2lnbmVkIHZhbHVlcyBleHBsaWNpdDsgdGhleSBkbyBub3QgY2hhbmdlIHAs
IG0sIHMgb3IgdGhlCj4gMTYtYml0IGNvZWZmaWNpZW50IGVuY29kaW5ncy4gSW4gcGFydGljdWxh
ciwgbm8gZnVydGhlciBhZGp1c3RtZW50IG9mCj4gbSBpcyBuZWVkZWQgZm9yIHRoZXNlIHJlcHJl
c2VudGF0aW9uIGNoYW5nZXMuCj4gCj4gSSB3aWxsIHRoZXJlZm9yZSByZXRhaW4gdGhlIHNpZ25l
ZCBjb2VmZmljaWVudHMsIGZvbGxvd2luZyBtYWlubGluZQo+IFJLMzU3Ni4KCkkgZGVmaW5pdGx5
IGFncmVlLiBGb3IgcmVmZXJlbmNlIHRoZSBjb21taXQgZml4aW5nIHJrMzU4OC9yazM1NzYgYW5k
CmNvbnRhaW5pbmcgYWxsIHRoZSBkZXRhaWxzIGlzCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHVi
L3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9jb21taXQvP2lkPTU4MTQ3
ODg4MzQ3NzRlZDZhZDFhMjdhZTkxYjQ0ZWVjYTgwY2QyN2YKCkhlaWtvCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
