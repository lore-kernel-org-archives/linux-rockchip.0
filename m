Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 867A9FF885D
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hemrwoj3FTvqY4og3C1L3MZnHBdsZfjscKJYvrRhURE=; b=LHF2Wl+86C4bIV
	zdieBeXL08FM1K7LAGlkbo93qr3YjGUqfKzg1PDptu7cYvOdPWKWX/j3MUvmdG1la+hzpHcP0yo2Z
	TsSYXdgcQnrDbdx2mIPpqFiceNTqbIzbERke7Z3Y2vXw18r8UTaA4aOPnlctIasj3IYhwUGY6L4Lq
	oOJTKT8NyTPOYyeYo3xI9+s24JuVOJPAXd6HCVHHGZv+dp7se51XcsoW7gGFxlOR6666y1P/mJFfy
	PYKHQPip0Q0bJkPi4k92klIeednDq3yCGmRaU/S9ewWllaAMdZ253fHqav9xnhZgM7flktWt+1iFR
	KDLigMgbBHXMJ91Ox0wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHdt6-00000000tXa-0X4q;
	Tue, 28 Apr 2026 08:33:48 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHdt2-00000000tWv-0plE;
	Tue, 28 Apr 2026 08:33:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 16220448BD;
	Tue, 28 Apr 2026 08:33:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5745C2BCB8;
	Tue, 28 Apr 2026 08:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777365221;
	bh=2nPWt8y0UuftwYQCEIiW1OXFPIwhT16kB5elrqeR8CA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=neludCdPyVuqwrZ3HkOG4iu+5k3xY8RLS92f/EliAvjRzWpnops+TtpkywG5JVHsL
	 t+GlCsSuQcDxfAtinXOOLf9Ld7GLVJYrMQBa8HLEelbjzSKEzyBpFgRy1pOtnHVLCU
	 Sf1o6bb1jIkVRu2SNym1PjP/fhu4GxMvY7e1LzNe+3h8MUc8JYBttKWYS8oSOARgbT
	 VfR8BC38J5gxIjyBf4JCmOK9kuaLEUSOO2tQ0gdKPjz3k0H2Tvd316H3Q+3IFfrDx2
	 LBtLGPomk0xokGpU4MifF4rICybi4m909rrvMY6xS6PopzvMZn75XoDp9dreo5hwbA
	 +AZdCMsA2+zrw==
Message-ID: <ce219aa2-0bb1-4a74-b40d-bd753f1a22dd@kernel.org>
Date: Tue, 28 Apr 2026 10:33:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] ASoC: dt-bindings: drop redundant wakeup-source
 definitions
To: Bui Duc Phuc <phucduc.bui@gmail.com>
Cc: Lee Jones <lee@kernel.org>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Joseph Chen <chenjh@rock-chips.com>, Chris Zhong <zyw@rock-chips.com>,
 Zhang Qing <zhangqing@rock-chips.com>,
 David Rau <David.Rau.opensource@dm.renesas.com>,
 Animesh Agarwal <animeshagarwal28@gmail.com>, devicetree@vger.kernel.org,
 linux-sound@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260423042831.21114-1-phucduc.bui@gmail.com>
 <20260423042831.21114-2-phucduc.bui@gmail.com>
 <20260423-ingenious-psychedelic-jaybird-40bb4d@quoll>
 <CAABR9nGH4yZcgyzm=wNYVHB2vLhojZJSHKOC6dSeQPm0rbh4KQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <CAABR9nGH4yZcgyzm=wNYVHB2vLhojZJSHKOC6dSeQPm0rbh4KQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_013346_125948_97ADC5F9 
X-CRM114-Status: GOOD (  23.42  )
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

T24gMjcvMDQvMjAyNiAwMTo0MCwgQnVpIER1YyBQaHVjIHdyb3RlOgo+IEhpLAo+IAo+Pj4gVGhl
ICd3YWtldXAtc291cmNlJyBwcm9wZXJ0eSBhbHJlYWR5IGhhcyBpdHMgdHlwZSBkZWZpbmVkIGlu
IHRoZSBjb3JlCj4gCj4gCj4+IFRZUEVTLiBJdCBpcyBwbHVyYWwuCj4gCj4gCj4gVGhhbmsgeW91
IGZvciBwb2ludGluZyB0aGF0IG91dC4gVGhhdCB3YXMgYSBtaXN0YWtlIGluIG15IHdvcmRpbmcu
Cj4gUmVnYXJkaW5nIHRoZSB0d28gZGF0YSB0eXBlcywgSeKAmW0gYWxyZWFkeSBhd2FyZSBvZiB0
aGlzIGFuZCBoYXZlCj4gZGlzY3Vzc2VkIGl0IGluIGEgcHJldmlvdXMgcGF0Y2guCj4gCj4gaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL0NBQUJSOW5IM2hyK1k1a3NEMGNuM0dkOVhVdm1iMDdY
N3pKdzBiNGtfeVZibkF1ejk9d0BtYWlsLmdtYWlsLmNvbS8KPiAKPj4+IC0gIHdha2V1cC1zb3Vy
Y2U6Cj4gCj4+PiAtICAgIHR5cGU6IGJvb2xlYW4KPiAKPj4+IC0gICAgZGVzY3JpcHRpb246Cj4g
Cj4+PiAtICAgICAgRmxhZyB0byBpbmRpY2F0ZSB0aGlzIGRldmljZSBjYW4gd2FrZSBzeXN0ZW0g
KHN1c3BlbmQvcmVzdW1lKS4KPiAKPj4+ICsgIHdha2V1cC1zb3VyY2U6IHRydWUKPiAKPj4KPiAK
Pj4gVGhhdCdzIHdyb25nLiBDb21taXQgbXNnIGlzIG1ha2luZyBoZXJlIGZhbHNlIHN0YXRlbWVu
dHMgdGhhdCBpdCBpcwo+IAo+PiByZWR1bmRhbnQuIEkgY2hlY2tlZCAoYW5kIHlvdSBzaG91bGQg
dG9vISkgYW5kIGRyaXZlciBkb2VzIGNsZWFybHkKPiAKPj4gZGV2aWNlX3Byb3BlcnR5X3JlYWRf
Ym9vbCgpIHRodXMgdGhlIHByb3BlcnR5IENBTk5PVCBiZSB0aGUgc2Vjb25kIHR5cGUuCj4gCj4g
SSB0aGluayBEZXZpY2UgVHJlZSBiaW5kaW5ncyBzaG91bGQgZGVzY3JpYmUgdGhlIGhhcmR3YXJl
IGNhcGFiaWxpdHkuCgpZZXMuIEFuZCB0aGUgQUJJLiBZb3UgY2Fubm90IGhhdmUgQUJJIHdoaWNo
IGhhcyBhbiBpbmNvbXBhdGlibGUKaW1wbGVtZW50YXRpb24uIElPVywgd2hlbiBpbXBsZW1lbnRh
dGlvbiBjb250cmFkaWN0cyB0aGUgQUJJLCBzb21ldGhpbmcKaXMgd3JvbmcuCgpUaGUgcXVlc3Rp
b24gb2YgY291cnNlIGlmIHJlYWRfYm9vbCgpIGlzIGhlcmUgaW5jb21wYXRpYmxlLiBGcm9tIHRo
ZQphY3R1YWwgY29kZSBwb2ludCBvZiB2aWV3LCBpdCBpcyBjb21wYXRpYmxlLCBidXQgaG93IGl0
IGlzIGRvY3VtZW50ZWQKYW5kIGhvdyBpdCBpcyBpbnRlbmRlZCB0byB1c2U6IGl0IGlzIG5vdCBj
b21wYXRpYmxlLgoKQWxzbyBpZiBmdXR1cmUgc2NoZW1hLWtlcm5lbC1BQkkgY2hlY2tlciBnZXRz
IGltcGxlbWVudGVkLCB0aGUgdG9vbAptaWdodCByZXBvcnQgaGVyZSBhIG1pc3Rha2UgZm9yIHRo
YXQgcmVhc29uLiByZWFkX2Jvb2woKSBtZWFucyBwcm9wZXJ0eQppcyBib29sLgoKCj4gSWYgdGhl
IGhhcmR3YXJlIHN1cHBvcnRzIHdha2V1cCBmdW5jdGlvbmFsaXR5LAo+IHJlZmVyZW5jaW5nIHRo
ZSBjb3JlIHNjaGVtYSBpcyBzdWZmaWNpZW50LiBIYXJkd2FyZSBkZXNjcmlwdGlvbiBzaG91bGQK
PiBub3QgYmUgY29uc3RyYWluZWQgYnkgdGhlIGN1cnJlbnQgZHJpdmVyIGltcGxlbWVudGF0aW9u
Cj4gKCBlLmcuIHRoZSB1c2Ugb2YgZGV2aWNlX3Byb3BlcnR5X3JlYWRfYm9vbCgpICkuCj4gQmlu
ZGluZ3Mgc2hvdWxkIHJlbWFpbiBzdGFibGUgYW5kIGdlbmVyaWMsIHdoaWxlIGRyaXZlcnMgY2Fu
IGV2b2x2ZSBvdmVyIHRpbWUuCgpTbyB5b3UgY2xhaW0gdGhhdCBiaW5kaW5ncyBjYW4gZGVmaW5l
IHByb3BlcnR5IGFzIGludGVnZXIsIGJ1dCBkcml2ZXJzCmNhbiBldm9sdmUgYW5kIGZvciBleGFt
cGxlIHJlYWQgaXQgYXMgc3RyaW5nPwoKPiAKPiBSZS1kZWZpbmluZyB0aGUgdHlwZSBsb2NhbGx5
IGR1cGxpY2F0ZXMgdGhlIGNvcmUgZGVmaW5pdGlvbi4gSWYgdGhlCj4gY29yZSBzY2hlbWEgZXZv
bHZlcywKClRoZXJlIGlzIG5vIHJlLWRlZmluaXRpb24gaGVyZS4gVGhpcyBpcyBjaG9pY2Ugb2Yg
c3Vic2V0IG9mIHR5cGVzLgoKPiB0aGlzIGFwcHJvYWNoIHdvdWxkIHJlcXVpcmUgdG91Y2hpbmcg
bWFueSBiaW5kaW5ncyBpbnN0ZWFkIG9mIHVwZGF0aW5nCj4gb25lIGNlbnRyYWwgcGxhY2UuCj4g
Cj4gVGhpcyBmb2xsb3dzIHRoZSByZWNlbnQgY2xlYW51cHMgc3VnZ2VzdGVkIGJ5IFJvYgo+IAo+
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8xNzc2Mjg4ODgyNjAuNTkyMTEwLjExNzI3ODEz
ODIwNDk5NjAxNjY5LnJvYmhAa2VybmVsLm9yZy8KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9h
bGwvMTc3Njc5Njg3MjcyLjE0NTgzNjUuMTMyODQ4NTMyNDY3MzkyODQzMy5yb2JoQGtlcm5lbC5v
cmcvCgpXaGVyZSBpcyBSb2IncyBzdWdnZXN0aW9uIHRvIGRvIHN1Y2ggY2xlYW51cHMgZm9yIEVY
SVNUSU5HIGNvZGU/IEkgb25seQpzZWUgdGhhdCBuZXcgY29kZSBzaG91bGQgY29tZSBsaWtlIHRo
YXQuCgpBbnl3YXksIHlvdXIgY29tbWl0IG1zZyBpcyBmb3IgbWUgaW5jb3JyZWN0IGJlY2F1c2Ug
aXQgbWlzc2VzIGFsbCB0aGlzCnBvaW50cyBJIG1hZGUuIFdoZXRoZXIgdGhlIHNjaGVtYSBjb2Rl
IGlzIGNvcnJlY3QsIEknbGwgZGVmZXIgdG8gUm9iLAphbHRob3VnaCBJIHN0aWxsIGNsYWltIHRo
ZSBzYW1lIEkgY2xhaW1lZCBiZWZvcmUgYXQgdjIgb3IgdjMgb2YgeW91cgpwcmV2aW91cyB3b3Jr
IC0gdGhpcyBzaG91bGQgaGF2ZSBkZWZpbmVkIHR5cGUuCgpCZXN0IHJlZ2FyZHMsCktyenlzenRv
ZgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
