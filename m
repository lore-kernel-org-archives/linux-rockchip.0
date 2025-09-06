Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68C6ACA1002
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Sep 2025 12:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1KVw8SfSq+Pi9XJ9MnmIE+z7hRA6rSwwv48kx2obsmE=; b=LRnDEB2rc0c6tu
	OYEboIRE8oK3/uIcXZdMvFFtlzNYMoOyNgc1Ig87JN2UuGFxNEFQxIDMrRMHA+qaUJT/NgnQcOh5v
	yIWjR6dKUaulWc7k4xXn0Dj01e5dxcI7bHWQFNVQnyvWEwMXd8+zhLE30ark05Nl1KjUmYeb+b4NK
	Tsz1r8LmcC/cNqOiEwa3z5oTaNo2/250RHkxfJlHJyc1qLS6E0znYlqC/nKUmjZmCn0Q6dEEqVq0q
	6uqhrPABz/SXHYEZWvJshvU6S8IcB1zCuHCTQBfVbNoDM9UOwBReS4JpM1fk8A6g2DW/Z2LK7tJo3
	2AuHmmYYncTpEfmpnHfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuryt-00000007l02-3eJK;
	Sat, 06 Sep 2025 12:25:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uurvD-00000007kfB-1KuM;
	Sat, 06 Sep 2025 12:21:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=jJISYZ9NEMqNgtPEeFx7VvEBRUrxQUx5HJSJjwIbpD8=; b=uAs8j8qBmeMmHKpU2fur/lfZTw
	5dLMqNxoV0/nLhdEyknYecWk6JBTU11HWm2PDAG22lfqo1jd6m7/frS5cK1tGutag+KLre0/8LsQL
	k91poOxdUHuXKKTH7DyMe/nh13MAv7fcq+g5FYg0z3Mn5vbRu+wJM3nqyNEQz7aezJJ3R09Q6cYem
	4a3Yu1v7gWGSnEgp1Y+SDnJZ5EVlwq9BHon7frWW46mnuZTwO5GWtEyq1TbXRzFVi1qJffdNNACx7
	CcWCnuy+OezLU4jzfIKUAst+x9eL19STiuIdY+QETs6AqtumRTgquV/exgUIY+9LKBoANidK67Px9
	rZINaC6w==;
Received: from i53875a53.versanet.de ([83.135.90.83] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uurv1-0005FU-Ag; Sat, 06 Sep 2025 14:21:23 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Diederik de Haas <didi.debian@cknow.org>,
 Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Make RK3588 GPU OPP table naming uniform
Date: Sat, 06 Sep 2025 14:21:21 +0200
Message-ID: <3169011.CbtlEUcBR6@diego>
In-Reply-To: <47cf50f2f497108a923815c12b1f8c9b@manjaro.org>
References: <355c16ab070688fc6285e0d4419eb54a3f699eee.1757152740.git.dsimic@manjaro.org>
 <DCLOTR9Y380M.22GZYL11XXZM2@cknow.org>
 <47cf50f2f497108a923815c12b1f8c9b@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250906_052135_381226_0BA404D2 
X-CRM114-Status: GOOD (  22.40  )
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

QW0gU2Ftc3RhZywgNi4gU2VwdGVtYmVyIDIwMjUsIDE0OjEwOjIyIE1pdHRlbGV1cm9ww6Rpc2No
ZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRHJhZ2FuIFNpbWljOgo+IEhlbGxvIERpZWRlcmlrLAo+IAo+
IE9uIDIwMjUtMDktMDYgMTM6NDAsIERpZWRlcmlrIGRlIEhhYXMgd3JvdGU6Cj4gPiBPbiBTYXQg
U2VwIDYsIDIwMjUgYXQgMTI6MDEgUE0gQ0VTVCwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+ID4+IFVu
aWZ5IHRoZSBuYW1pbmcgb2YgdGhlIGV4aXN0aW5nIEdQVSBPUFAgdGFibGUgbm9kZXMgZm91bmQg
aW4gdGhlIAo+ID4+IFJLMzU4OAo+ID4+IGFuZCBSSzM1ODhKIFNvQyBkdHNpIGZpbGVzIHdpdGgg
dGhlIG90aGVyIFNvQydzIEdQVSBPUFAgbm9kZXMsIAo+ID4+IGZvbGxvd2luZwo+ID4+IHRoZSBt
b3JlICJtb2Rlcm4iIG5vZGUgbmFtaW5nIHNjaGVtZS4KPiA+IAo+ID4gTGlrZSB3ZSBkaXNjdXNz
ZWQgaW4gcHJpdmF0ZSAod2l0aG91dCBhbiBhZ3JlZW1lbnQpLCBJIHRoaW5rIGl0IHdvdWxkIAo+
ID4gYmUKPiA+IGJlbmVmaWNpYWwgaWYgdGhlIChncHUpIG9wcCBuYW1pbmcgd291bGQgYmUgbWFk
ZSBjb25zaXN0ZW50IGFjcm9zcyBTb0MKPiA+IHNlcmllcyBhcyByaWdodCBub3cgdGhlcmUgYXJl
IHNldmVyYWwgZGlmZmVyZW50IG5hbWluZyBzY2hlbWVzIGFwcGxpZWQuCj4gPiBUaGV5J3JlIGFs
bCB2YWxpZCwgYnV0IGluY29uc2lzdGVudC4gQW5kIGlmIGNvbnNpc3RlbmN5IGlzIGltcHJvdmVk
LAo+ID4gd2hpY2ggSSBsaWtlLCB0aGVuIGxldCdzIGdvICdhbGwgdGhlIHdheSc/Cj4gCj4gQXMg
d2UgZGlzY3Vzc2VkIGl0IGFscmVhZHkgaW4gcHJpdmF0ZSwgSSBmdWxseSBhZ3JlZSBhYm91dCBw
ZXJmb3JtaW5nCj4gdGhlICJvcHAtdGFibGUtWCA9PiBvcHAtdGFibGUte2NsdXN0ZXJYLGdwdX0i
IG5hbWluZyBjbGVhbnVwIAo+IGNvbnNpc3RlbnRseQo+IGZvciBhbGwgUm9ja2NoaXAgU29Dcywg
YnV0IEknbSBhZnJhaWQgaXQgd291bGQgYmUgc2VlbiBhcyBhbiB1bm5lY2Vzc2FyeQo+ICJjb2Rl
IGNodXJuIiBhdCB0aGlzIHBvaW50LCBlc3BlY2lhbGx5IGJlY2F1c2UgbXkgdXBjb21pbmcgUm9j
a2NoaXAgU29DCj4gYmlubmluZyBwYXRjaCBzZXJpZXMgaXMgYSBnb29kIGNhbmRpZGF0ZSBmb3Ig
c3VjaCBhIGNsZWFudXAuCj4gCj4gT24gdG9wIG9mIHRoYXQsIEknZCBiZSBhIGJpdCB3ZWFyeSBh
Ym91dCBwZXJmb3JtaW5nIGF0IGxlYXN0IHNvbWUgb2YgdGhlCj4gdGVzdGluZyBhc3NvY2lhdGVk
IHdpdGggc3VjaCBhIHBsYXRmb3JtLXdpZGUgY2xlYW51cCwgZGVzcGl0ZSBhY3R1YWxseQo+IHBl
cmZvcm1pbmcgbm8gZnVuY3Rpb25hbCBjaGFuZ2VzIGFuZCBiZWluZyBhIHNhZmUgY2hhbmdlLiAg
T24gdGhlIG90aGVyCj4gaGFuZCwgImJ1bmRsaW5nIiBzdWNoIGEgY2xlYW51cCB3aXRoIHRoZSBS
b2NrY2hpcCBTb0MgYmlubmluZyBwYXRjaGVzCj4gd291bGQgZ2V0IHVzIGRldGFpbGVkIHRlc3Rp
bmcgZm9yIGZyZWUsIHNvIHRvIHNwZWFrLgo+IAo+IE9mIGNvdXJzZSwgaWYgdGhlIG1haW50YWlu
ZXJzIHNlZSB0aGlzIGFzIGEgZ29vZCBvcHBvcnR1bml0eSB0byBwZXJmb3JtCj4gYSBwbGF0Zm9y
bS13aWRlIGNsZWFudXAgYXQgdGhpcyBwb2ludCwgaW5zdGVhZCBvZiBzZWVpbmcgaXQgYXMgYSAi
Y29kZQo+IGNodXJuIiwgSSdsbCBzdGlsbCBiZSBoYXBweSB0byBleHRlbmQgdGhpcyBzbWFsbCBw
YXRjaCBpbnRvIGEgcGxhdGZvcm0tCj4gd2lkZSBuYW1pbmcgY2xlYW51cCBvZiB0aGUgIm9wcC10
YWJsZS1YIiBub2Rlcy4gIE9uIHRoZSBvdGhlciBoYW5kLCBpZgo+IHRoaXMgcGF0Y2ggcmVtYWlu
cyBhcy1pcywgaXQgbWF5IGhpdCBhIGdvb2QgYmFsYW5jZSBiZXR3ZWVuIHJlc29sdmluZwo+IHRo
ZSBjdXJyZW50bHkgcHJlc2VudCBuYW1pbmcgYW1iaWd1aXR5IGFuZCB0aGUgYW1vdW50IG9mIGlu
dHJvZHVjZWQKPiBjaGFuZ2VzLgoKUGVyc29uYWxseSBJJ20gYWx3YXlzIGZvciB0aGUgIndlIHN0
cml2ZSB0byBnZXQgdGhlcmUgZXZlbnR1YWxseSIgdGhpbmcuCklmIHRoZXJlIGlzIGFuIGVzdGFi
bGlzaGVkIGdvYWwgdG8gcmVhY2gsIHN0ZXBzIGNhbiBiZSBpbmNyZW1lbnRhbCA6LSkgLgoKQW5k
IGFsc28gc2hvcnQgYW5kIHNjb3BlLWxpbWl0ZWQgcGF0Y2hlcyBhcmUgZWFzaWVyIHRvIHJldmll
dyBhbnl3YXkuCgpIZWlrbwoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
