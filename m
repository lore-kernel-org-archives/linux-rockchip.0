Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD0E0C3ABD8
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 May 2025 10:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNaTExrYG8OGVsfx6DNAo4fBAufkzIw44ROCZFQg/uo=; b=eY+niNDFrnMRut
	OJ0DiUol4xD9fNmX8j1C+dkdU2ABzgTLIuiZV8fHpRETeOouysbgzjL7rkAzWPMAvr1k786bWv2ZN
	ITEYOzHpWK1aWnjM93shuSC5EeRRUf1LdeGf07w2M6jP+7y89RgQmdH2eMmg+YTiqERYfa8BoEV6/
	8LoNKOYfcGyeblTL2Ibh0XL4aU8OVN3mTSlhAHUkmytbDO+F9AocCYw0XoiLf+UlEYDl9u+hhzLFN
	N7WhlMvL7KfYJVfqpwU11U5RshRCgglbZw0KUihJYgML+/bFi4WrnVRaNTyvDvqNHIj51tLM5SA1/
	1S9shz9EjPToKkYHP67A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGbO5-000000070Tp-2rgL;
	Sun, 18 May 2025 10:36:57 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGbO4-000000070Ti-0tEJ
	for linux-rockchip@lists.infradead.org;
	Sun, 18 May 2025 10:36:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5756861135;
	Sun, 18 May 2025 10:36:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7900FC4CEE9;
	Sun, 18 May 2025 10:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747564615;
	bh=Zy91Pq1yFlAMUc+CSyEs08eCZGIpNcLhNJdnhr+kNxI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=WT9WbHNB42CEZzSZSSwHBjom1YxXVWrXPpPH08kVWYXj3gUXdogRFNSEqwSN9XdLg
	 lce2oN53iwe0R1Zu6BTVN2RfaAyU/wrnRrnY+7li+HMalQNgG8rej83RRPpeTCxa6u
	 wuzvEoTS/ufTF/rsEYKWku5TxdS579IatEVebAPLEXs0RYnYgNxpGpLzAYUcRm4M88
	 eXNRBInbx/uT6YI6Cx6EHGCiK9sVrNbMtZLHQvmdKnl97LXqu1kNeQFhTOXIJ/oH5H
	 4Sj+VIX/1qb96JrB3vXe+PE/iizb6t4flG4HYtJED7x0K95xlk15Z6fFwxbQjIrLaC
	 2zPWgC2h3DZTQ==
Message-ID: <3c3d0020-1dce-4364-a0a1-7c35b21e93de@kernel.org>
Date: Sun, 18 May 2025 12:36:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [linux-next:master 9473/11093]
 arch/arm64/boot/dts/rockchip/rk3562.dtsi:624.26-675.5: Warning
 (simple_bus_reg): /soc/pcie@ff500000: simple-bus unit address format error,
 expected "fe000000"
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Finley Xiao <finley.xiao@rock-chips.com>, kernel test robot <lkp@intel.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: oe-kbuild-all@lists.linux.dev, Kever Yang <kever.yang@rock-chips.com>
References: <202505150745.PQT9TLYX-lkp@intel.com> <3983362.fW5hKsROvD@diego>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <3983362.fW5hKsROvD@diego>
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

T24gMTYvMDUvMjAyNSAyMjoxMCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRG9ubmVyc3Rh
ZywgMTUuIE1haSAyMDI1LCAxNjowNDoyMCBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBz
Y2hyaWViIGtlcm5lbCB0ZXN0IHJvYm90Ogo+PiB0cmVlOiAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5v
cmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25leHQvbGludXgtbmV4dC5naXQgbWFzdGVyCj4+
IGhlYWQ6ICAgYmRkNjA5NjU2ZmY1NTczZGI5YmExZDI2NDk2YTUyOGJkZDI5N2NmMgo+PiBjb21t
aXQ6IGNlYjZlZjFlYTkwMDI2NjlhZmMwZTFlZjI1OGU1MzBkM2MwNWQ5MWEgWzk0NzMvMTEwOTNd
IGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgUkszNTYyIGV2YjIgZGV2aWNldHJlZQo+PiBjb25m
aWc6IGFybTY0LXJhbmRjb25maWctMjA1Mi0yMDI1MDUxMyAoaHR0cHM6Ly9kb3dubG9hZC4wMS5v
cmcvMGRheS1jaS9hcmNoaXZlLzIwMjUwNTE1LzIwMjUwNTE1MDc0NS5QUVQ5VExZWC1sa3BAaW50
ZWwuY29tL2NvbmZpZykKPj4gY29tcGlsZXI6IGNsYW5nIHZlcnNpb24gMjEuMC4wZ2l0IChodHRw
czovL2dpdGh1Yi5jb20vbGx2bS9sbHZtLXByb2plY3QgZjgxOWY0NjI4NGYyYTc5NzkwMDM4ZTFm
NjY0OTE3Mjc4OTczNGFlOCkKPj4gZHRzY2hlbWEgdmVyc2lvbjogMjAyNS4zLmRldjI3K2czMjc0
OWIzCj4+IHJlcHJvZHVjZSAodGhpcyBpcyBhIFc9MSBidWlsZCk6IChodHRwczovL2Rvd25sb2Fk
LjAxLm9yZy8wZGF5LWNpL2FyY2hpdmUvMjAyNTA1MTUvMjAyNTA1MTUwNzQ1LlBRVDlUTFlYLWxr
cEBpbnRlbC5jb20vcmVwcm9kdWNlKQo+Pgo+PiBJZiB5b3UgZml4IHRoZSBpc3N1ZSBpbiBhIHNl
cGFyYXRlIHBhdGNoL2NvbW1pdCAoaS5lLiBub3QganVzdCBhIG5ldyB2ZXJzaW9uIG9mCj4+IHRo
ZSBzYW1lIHBhdGNoL2NvbW1pdCksIGtpbmRseSBhZGQgZm9sbG93aW5nIHRhZ3MKPj4gfCBSZXBv
cnRlZC1ieToga2VybmVsIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4+IHwgQ2xvc2VzOiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9vZS1rYnVpbGQtYWxsLzIwMjUwNTE1MDc0NS5QUVQ5VExZ
WC1sa3BAaW50ZWwuY29tLwo+Pgo+PiBkdGNoZWNrIHdhcm5pbmdzOiAobmV3IG9uZXMgcHJlZml4
ZWQgYnkgPj4pCj4+Pj4gYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjIuZHRzaTo2
MjQuMjYtNjc1LjU6IFdhcm5pbmcgKHNpbXBsZV9idXNfcmVnKTogL3NvYy9wY2llQGZmNTAwMDAw
OiBzaW1wbGUtYnVzIHVuaXQgYWRkcmVzcyBmb3JtYXQgZXJyb3IsIGV4cGVjdGVkICJmZTAwMDAw
MCIKPj4+PiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Mi5kdHNpOjExMTUuMjAt
MTE4MS41OiBXYXJuaW5nIChzaW1wbGVfYnVzX3JlZyk6IC9zb2MvcGluY3RybDogbWlzc2luZyBv
ciBlbXB0eSByZWcvcmFuZ2VzIHByb3BlcnR5Cj4gCj4gaG1tLCBJIGRvbid0IHJlYWxseSB1bmRl
cnN0YW5kIHRoaXMgZXJyb3IgbWVzc2FnZS4KPiAKPiBGcm9tIGEgcHJhY3RpY2FsIHBvaW50LCB0
aGUgZHRzY2hlbWEtdmVyc2lvbiBJIGhhdmUgaW5zdGFsbGVkIGlzCj4gMjAyNS4zLmRldjI3K2cz
Mjc0OWIzLCB3aGljaCBpcyB0aGUgdG9wbW9zdCBjb21taXQgZnJvbQo+IG1heS0xM3RoLgo+IAo+
IFJ1bm5pbmcgdGhlIGR0YnNjaGVjayBvbiB0aGUgcmszNTYyLWV2Yi12MTAuZHRiIG9uIHRoZSBm
dWxsCj4gbGludXgtbmV4dCBmcm9tIHRvZGF5LCB5aWVsZHMgbm8gZXJyb3JzLgoKVGhlc2UgYXJl
IHN0YW5kYXJkIGR0YyB3YXJuaW5ncy4KCj4gCj4gQ2hlY2tpbmcgb3V0IHRoZSBzcGVjaWZpYyBj
b21taXQgY2ViNmVmMWVhOTAwMjYgYnJpbmdzIHVwIHRoZQo+IGVycm9ycyBmcm9tIGJlbG93IFsx
XSwgYmVjYXVzZSB0aGV5IGNvbWUgZnJvbSBkaWZmZXJlbnQgdHJlZXMuCj4gCj4gCj4gQnV0IGlu
IG5vIGNhc2VzIGRvZXMgZHRic2NoZWNrIGNvbXBsYWluIGFib3V0IHRoZSBQQ0kgbWVtb3J5IHJl
Z2lvbnMuCj4gCj4gCj4gVGhlIFBDSWUgY29udHJvbGxlciBpbiBxdWVzdGlvbiBvZiBjb3Vyc2Ug
aGFzIDMgbWVtb3J5IHJlZ2lvbnMKPiAJcmVnID0gPDB4MCAweGZlMDAwMDAwIDB4MCAweDQwMDAw
MD4sCj4gCSAgICAgIDwweDAgMHhmZjUwMDAwMCAweDAgMHgxMDAwMD4sCj4gCSAgICAgIDwweDAg
MHhmYzAwMDAwMCAweDAgMHgxMDAwMDA+Owo+IAlyZWctbmFtZXMgPSAiZGJpIiwgImFwYiIsICJj
b25maWciOwo+IAo+IGFuZCBjdXJyZW50bHkgdGhlIG5vZGUtbmFtZSBtaW1pY3MgdGhlICJhcGIi
IG1lbW9yeSByZWdpb24uCj4gU2hvdWxkIGl0IGFsd2F5cyB1c2UgdGhlIGZpcnN0IG9uZT8KCkkg
ZG9uJ3QgdW5kZXJzdGFuZCB3aGVyZSBpcyB0aGUgcHJvYmxlbS4gVGhlIHdhcm5pbmcgdGVsbHMg
eW91OiB1bml0CmFkZHJlc3MgaXMgbm90IGNvcnJlY3QuIEZpeCB0aGUgdW5pdCBhZGRyZXNzIHRv
IG1hdGNoIHJlZy4KCgpBYm91dCBzZWNvbmQgd2FybmluZzogdGhhdCdzIGFsc28ga2luZCBvZiBh
bHJlYWR5IGV4aXN0aW5nIGlzc3VlIGFuZApmaXhlZCBpbiBtdWx0aXBsZSBwbGFjZXMuIERvbid0
IHB1dCBub24tTU1JTyBub2RlcyBpbiBzaW1wbGUtYnVzLCBsaWtlCnNvYywgYmVjYXVzZSBpdCBp
cyBub3QgY29ycmVjdC4gc2ltcGxlLWJ1cyBpcyBmb3IgTU1JTyBub2Rlcy4KCkJlc3QgcmVnYXJk
cywKS3J6eXN6dG9mCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
