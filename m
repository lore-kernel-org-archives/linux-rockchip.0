Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D75A60A6F6B
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 11:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oXG7CSAz;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=b5KNaiTA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3uR0+iHF2q/JgnrKCJyPDUaA4zLWOG4MnB0cSK+murA=; b=oXG7CSAzzUYqaxQ1mhEgCDzZeW
	oQ44i3ailpPyPjZwfLcqDF4/b76PhMbhirb7AzpGn+M/GbWTaNJc7SFxotHP1P9DKGji0MXIWZCOD
	wzb6dUMXgdibJ2EbosC9KvpH91kZwtXtgmFcoDWcn8WQQ4d8Gpv12H5BhD/AGSZRkEEkl0PcSL2/q
	1hagpUrdS1kIw7Jc15yBpUqwnSCqasR2pQKcPUqN34nrNsM5i1n7wSGDSt4bPPthlJlA9iDmX1brL
	DYASP9WNVW0u8pXpBGdmEj7T8WV7zrhdAE0zaMgftGMrgV79JPr2Ppozt1c+8G30j1cFv/yOjeWiU
	cNTC9DPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLf1V-00000004OaL-2HLB;
	Tue, 27 Oct 2026 11:07:21 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLf1T-00000004OZP-3rjq;
	Tue, 27 Oct 2026 11:07:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 015F960A59;
	Tue, 27 Oct 2026 11:07:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0529A1F01280;
	Tue, 27 Oct 2026 11:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793099238;
	bh=8iPZIytj9HMc11Ehp7wcxqisiN/TeLpY6YQqejiCqRc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=b5KNaiTA8pSpdpjjF4ASEo11cbOm0BIu3qUd34KZrKFQZQce+4PdZw09kfucq6sW4
	 HZQKd8b3TWzU0iKVhQUp1f8HpNRc4ZKIvdL20Qudo4LmrTKHTR3qqZ0B2tAFw9P5r0
	 Xi3WOuLHm+iUVGhFXJOrwoUDDXAGqRAdJvn0PHSXY+l14PDnO45nayZT/TfGrOqyyN
	 vuEZlpAiV4r1n/MCh8tXIN9OkhhuMTd/kERLaMMEvt5bC4kAKQnQvdqBkGrJQ4Ma8l
	 4SoH/4Z5wm9+t18XB2gqSCujI6B1yR9jGUEQezx8y8Nuo8bb1DMh7h6gCJp8XWu6vP
	 TGUeAk2Q+miZw==
Message-ID: <c1fc1868-5583-420f-b945-2bf934873713@kernel.org>
Date: Tue, 27 Oct 2026 12:07:12 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: clock: rockchip: Add RK3572 CRU
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Cunhao Lu <1579567540@qq.com>
Cc: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>,
 Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Richard Cochran <richardcochran@gmail.com>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
References: <20261026-add-board-ok3572-c-clk-v3-0-dbabfa39d692@qq.com>
 <20261026-add-board-ok3572-c-clk-v3-1-dbabfa39d692@qq.com>
 <20261027-vagabond-gabby-caracara-4edabe@quoll> <3011736.yaVYbkx8dN@diego>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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
In-Reply-To: <3011736.yaVYbkx8dN@diego>
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
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMjcvMTAvMjAyNiAxMTo0MywgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRGllbnN0YWcs
IDI3LiBPa3RvYmVyIDIwMjYsIDExOjE3OjA4IE1pdHRlbGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0
IHNjaHJpZWIgS3J6eXN6dG9mIEtvemxvd3NraToKPiAKPiBXaXRoIGNvZGUgb3JpZ2luYXRpbmcg
aW4gdGhlIHZlbmRvciBrZXJuZWwsIGl0IGlzIG5pY2UgdG8ga25vdyB3aGF0IGNoYW5nZWQsCj4g
YnV0IEkgZ3Vlc3MgdGhlcmUgaXMgYSB0cmFkZW9mZiBiZXR3ZWVuIGJyZXZpdHkgYW5kIG1vcmUg
ZGV0YWlscy4KCkhvbmVzdGx5IEkgZGlzYWdyZWUgOikuIFZlbmRvciBrZXJuZWwgY29tbWl0cyBh
bmQgdGhlaXIgbWVzc2FnZXMgYXJlCmlycmVsZXZhbnQgcGVyIHNlLiBUaGV5IGFyZSBvbmx5IHVz
ZWZ1bCBhcyBzb3VyY2Ugb2Yga25vd2xlZGdlLCBidXQgd2hhdAp3YXMgZXhhY3RseSB3cml0dGVu
IHRoZXJlIGRvZXMgbm90IG1hdHRlci4gUXVhbGl0eSBpcyBkdWJpb3VzLCBjb2RpbmcKcHJhY3Rp
Y2VzIGFyZSB0ZXJyaWJsZS4gV2Ugd2FudCB0byBleHRyYWN0IHRoZSBrbm93bGVkZ2UsIHRoZSBp
bXBvcnRhbnQKZGV0YWlscywgYnV0IG5vdCB0aGUgZXhhY3QgY29tbWl0LiBXZSBkbyBub3QgY2Fy
ZSB3aGF0IGNoYW5nZWQgZnJvbQpkb3duc3RyZWFtIHRvIHVwc3RyZWFtLCBiZWNhdXNlIHdlIGtu
b3cgdGhhdCBkb3duc3RyZWFtIHN1Y2tzIHNvIG11Y2gKdGhhdCB3ZSBkb24ndCBldmVuIHdhbnQg
dG8gdG91Y2ggaXQuCgo+IAo+IEkgZ3Vlc3MgdGhpcyBjb3VsZCBiZSBzaG9ydGVkIHRvIHNvbWV0
aGluZyBsZXNzIHZlcmJvc2UsIGxpa2UKPiAKPiArKysrKysrKysrKysrCj4gU2lnbmVkLW9mZi1i
eTogRWxhaW5lIFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlwcy5jb20+Cj4gW2FkYXB0ZWQgdG8g
bWFpbmxpbmUgcm9ja2NoaXAgY2xvY2sgYW5kIHJlc2V0IGhhbmRsaW5nICh4aW4yNG0gaW5wdXQs
Cj4gICBkb24ndCBpbnRyb2R1Y2UgQ0xLX05SX0NMS1MsIGV0YyBdCj4gU2lnbmVkLW9mZi1ieTog
Q3VuaGFvIEx1IDwxNTc5NTY3NTQwQHFxLmNvbT4KPiArKysrKysrKysrKysrCgpZZXMsIGlmIHRo
aXMgYnJpbmdzIGFueXRoaW5nIHVzZWZ1bC4gRm9yIGV4YW1wbGUgcmVtb3ZhbCBvZiBDTEtfTlJf
Q0xLUwppcyBjb21wbGV0ZWx5IHBvaW50bGVzcyB0byBtZW50aW9uLiBIb3cgZG9lcyBpdCBleHBs
YWluIHRoZSBoYXJkd2FyZSBvcgpkZXNpZ24gY2hvaWNlcz8gSG93IGRvZXMgaXQgZXhwbGFpbiB3
aHkgdGhpcyBkcml2ZXIgd2FzIHdyaXR0ZW4gdGhhdCBvcgpvdGhlciB3YXk/CgpKdXN0IHRha2Ug
dGhlIGF1dGhvcnNoaXAgb2YgZG93bnN0cmVhbSBjb21taXRzIGFuZCBzZW5kIHRoZW0gYXMgeW91
cgpvd24uIEJvdGggR1BMIGFuZCBEQ08gYWxsb3cgdGhpcyBhbmQgaWYgZG93bnN0cmVhbSBkaWQg
bm90IGJvdGhlciB0bwp1cHN0cmVhbSB0aGF0IHN0dWZmLCB0aGV5IGRvIG5vdCBkZXNlcnZlIGNy
ZWRpdHMuCgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
