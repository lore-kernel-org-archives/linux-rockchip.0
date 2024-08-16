Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6937C531DF
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 06:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GQfk1RiSv9WJS+nkgPaWWOn6A+MlNxaVbVHqKXyK+yw=; b=zh1zs3KOWgzlB4
	QBQLeZ1evYtazjEKm4Ba9hnNu4VHuw2uuN6/SsbD9o5PQxJBZNRXNP5bA5mdjKQtn30QgfUb3F6ob
	zvbQVn2HJgna8BPTJnzZ+7RId3tWGxx7U95g//5QJ5zkz6KydZ7vFNHj+UIqp/oLzsL1/fen/znq3
	KQZzD7OtvKlK9Enb7oeNCYmcU3fsyk3CGhNiuybTyQgkgq+j14wCLbct0pSW+Bq5Sj/knbQO/TzZp
	MxW3c2iWnQN4xr4W8lYLF7E+NmsWK2t5fgjjPX/1XXQGy/y/8QvUmJG36oV2QZlbo1arXAnz72OvL
	u5a5hbUuHcpPFX5Krf0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seqpc-0000000BzWT-3rhg;
	Fri, 16 Aug 2024 06:53:04 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seqon-0000000BzIN-2QDO;
	Fri, 16 Aug 2024 06:52:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CFB9CCE1E4A;
	Fri, 16 Aug 2024 06:52:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4320BC32782;
	Fri, 16 Aug 2024 06:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723791131;
	bh=CNlOXycKiFSceNRzjlQD+0OVZBgpNKaNK14h3Rjries=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Zo7WGocp5h2tHXhxJbSSOBdCnErDQwUlYQsJj+eJ9Qyc4XLN9nNZx42Rlj2Oa7t7a
	 /jn1fwe1qY8NKVTBWc9TGx/beZzfG+nX1E3Tzm9M1pry/AZksiHfiL073OOEXH+y+b
	 dtNAYx2AsmRencneBkgramDvZzzuJcz+xoMkzwODGIP79JgfqMmDK3z9cRYcwGZRAd
	 /sf8hkYecWFqTvBaMhX159umfbFqD1K1b1DV72rbclnI/UeWprEGxHbszGcjoTYQn5
	 zjf6kNSkxwkyiwwCIsMS+cqSrAEE7l8O19adGpQoka6wN9X8/Im9ZoUp2W8MrHPoOc
	 jK2MCrdaooSyg==
Message-ID: <e640cbc4-6870-4607-a91e-0af41dd76df9@kernel.org>
Date: Fri, 16 Aug 2024 08:52:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: mmc: Add support for rk3576 dw-mshc
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Detlev Casanova <detlev.casanova@collabora.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jaehoon Chung <jh80.chung@samsung.com>,
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <20240814223555.3695-1-detlev.casanova@collabora.com>
 <20240814223555.3695-2-detlev.casanova@collabora.com>
 <5057223.82XvGhxQ46@diego>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <5057223.82XvGhxQ46@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_235213_986115_5ADFD828 
X-CRM114-Status: GOOD (  18.31  )
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

T24gMTUvMDgvMjAyNCAxNTo0OSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRG9ubmVyc3Rh
ZywgMTUuIEF1Z3VzdCAyMDI0LCAwMDozNDowMCBDRVNUIHNjaHJpZWIgRGV0bGV2IENhc2Fub3Zh
Ogo+PiBBZGQgdGhlIGNvbXBhdGlibGUgc3RyaW5nIGZvciByb2NrY2hpcCxyazM1NzYtZHctbXNo
YyBhbmQgYWRkIHN1cHBvcnQKPj4gZm9yIHRoZSByb2NrY2hpcCx2Mi10dW5pbmcgZmxhZywgYSBu
ZXcgZmVhdHVyZSBvZiB0aGlzIGNvcmUuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IERldGxldiBDYXNh
bm92YSA8ZGV0bGV2LmNhc2Fub3ZhQGNvbGxhYm9yYS5jb20+Cj4+IC0tLQo+PiAgRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21tYy9yb2NrY2hpcC1kdy1tc2hjLnlhbWwgfCAxICsK
Pj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21tYy9yb2NrY2hpcC1kdy1tc2hjLnlhbWwg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbW1jL3JvY2tjaGlwLWR3LW1zaGMu
eWFtbAo+PiBpbmRleCAyMTFjZDBiMGJjNWYzLi4wNTQzY2RiNTFjNjU3IDEwMDY0NAo+PiAtLS0g
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbW1jL3JvY2tjaGlwLWR3LW1zaGMu
eWFtbAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbW1jL3JvY2tj
aGlwLWR3LW1zaGMueWFtbAo+PiBAQCAtMzksNiArMzksNyBAQCBwcm9wZXJ0aWVzOgo+PiAgICAg
ICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzM2OC1kdy1tc2hjCj4+ICAgICAgICAgICAgICAgIC0g
cm9ja2NoaXAscmszMzk5LWR3LW1zaGMKPj4gICAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazM1
NjgtZHctbXNoYwo+PiArICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzU3Ni1kdy1tc2hjCj4+
ICAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszNTg4LWR3LW1zaGMKPj4gICAgICAgICAgICAg
ICAgLSByb2NrY2hpcCxydjExMDgtZHctbXNoYwo+PiAgICAgICAgICAgICAgICAtIHJvY2tjaGlw
LHJ2MTEyNi1kdy1tc2hjCj4gCj4gdGhpcyB3b3VsZCBtYXJrIHRoZSByazM1NzYtZHctbXNoYyBh
cyBiZWluZyB0aGUgInNhbWUiIGFzIHRoZQoKTm90IHRoZSBzYW1lLCBidXQgY29tcGF0aWJsZS4K
Cj4gY29yZSByazMyODggdmFyaWFudC4gcmszMjg4IHdhcyB0aGUgZmlyc3QgY29udHJvbGxlciBp
bnRyb2R1Y2luZyB0aGUKPiBjbG9jayB0dW5pbmcgZm9yIGhpZ2hlciBzcGVlZHMuIHdpdGggdGhl
IGNsb2NrcyBiZWluZyBwYXJ0IG9mIHRoZSBDUlUuCj4gCj4gQXMgd2UgY2FuIHNlZSBpbiBsYXRl
ciBwYXRjaGVzLCB0aGlzIHJrMzU3NiB0aG91Z2ggY2hhbmdlcyB0aGF0Cj4gc2V0dXAgd2l0aCBt
b3ZpbmcgdGhlIHR1bmFibGUgY2xvY2sgY29uZmlndXJhdGlvbnMgaW50byB0aGUgY29udHJvbGxl
cgo+IGl0c2VsZi4KPiAKPiBTbyBwbGVhc2UgZG9uJ3QgY2xhaW0gdG8gYmUgY29tcGF0aWJsZSB0
byB0aGUgMzI4OCwgYnV0IGluc3RlYWQgc3RhcnQKPiBhIG5ldyBibG9jayBmb3IgdGhpcyBuZXcg
c2V0IG9mIGNvbnRyb2xsZXJzOgoKVGhlIHF1ZXN0aW9uIGlzIGNhbiBuZXcgZGV2aWNlIHdvcmsg
d2l0aCBvbGQgY29tcGF0aWJsZSAod2l0aG91dCBuZXcKZmVhdHVyZXMpPwoKCkJlc3QgcmVnYXJk
cywKS3J6eXN6dG9mCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
