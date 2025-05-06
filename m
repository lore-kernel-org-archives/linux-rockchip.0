Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D51D1C3ABBC
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 May 2025 22:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NUPjPE/L5yJ2EzFu9eTPKpHZQyljvHinIcUYtkMkTvQ=; b=Qq3ID0R33ET06J
	VdHFIJ5c6m4/sRGsg5plKxmpk+atiaJbc0bFwagj2QNd0bXH9Ig4U1XgyJR0pwXulRJ7ab8IWET6m
	oRrUMf2VrTbEUZwfxxImIXAyEq1n0yQZztbOb2jzZwUiDRdA/HZqRvCQI0yVVPdIA1sKMcyjc43ob
	HftqAX7NERS2e/iQeuW32zsNTOHoXapTy+TRHYGUW4+r4xOIpmL5Ubr5ETDOdUIDeUfPbjltBQML8
	T+yPy02rBNanZCtiSb6r/nlI2jPi1ftI9B9St3uIwfnzIbp87ErJJrKbrXZFJKJr6wSsc14DbD8nz
	CiYi1Aux/oS91CWipglQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCQgh-0000000DWPw-3ziE;
	Tue, 06 May 2025 22:22:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCLJV-0000000ChaI-0pck;
	Tue, 06 May 2025 16:38:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=wYQJgp+YqSaqLX+Gu3RwL9L3fPGOWiBg+qdbYxy4gD4=; b=MkWdMOIuXbNbPdrDqke9a8CvVo
	fwO/8nDlAA/RjKLAZALusRdWlAl9ik7oOTCmbecFwcgrv0oWv83AS8M45iBVGiJr24zpGmhW5fS5o
	CXc38odJNP/lT3uwlSPjgyobgDNHgLax6TUVtQpoAiNwThoVow/8RZSArpbx8QAb5GQ87u+3IEL/n
	coWcj3MWcqc6Jpm6JQoA7BZNNut/P2yxcTZJo68Z/i6SZqAw+HgSLbf8u7JA+t/Wq0aoYNdMTmXgI
	asGjoGOc8QZrq27HuZJBV6i/d6S/a2h24qfaHpOC6SpVZc21uxk8/kTvwqPnadiWVRZE1JChfNiZh
	9qnhjVXg==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uCLJM-00039w-FT; Tue, 06 May 2025 18:38:28 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Conor Dooley <conor@kernel.org>, John Clark <inindev@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh@kernel.org,
 krzysztof.kozlowski@linaro.org, conor+dt@kernel.org, jonas@kwiboo.se,
 frattaroli.nicolas@gmail.com, andrew@lunn.ch
Subject: Re: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add Luckfox Omni3576 and
 Core3576 bindings
Date: Tue, 06 May 2025 18:38:27 +0200
Message-ID: <5007332.31r3eYUQgx@diego>
In-Reply-To: <c8114ff8-f207-4ea8-aaf1-298dcea9f030@gmail.com>
References: <20250506114115.613616-1-inindev@gmail.com>
 <20250506-almighty-uncork-f7a0bc42d763@spud>
 <c8114ff8-f207-4ea8-aaf1-298dcea9f030@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_093837_255364_F415C68C 
X-CRM114-Status: GOOD (  21.77  )
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

SGkgSm9obiwKCkFtIERpZW5zdGFnLCA2LiBNYWkgMjAyNSwgMTc6NTQ6MTAgTWl0dGVsZXVyb3DD
pGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBKb2huIENsYXJrOgo+IE9uIDUvNi8yNSAxMTo0NCBB
TSwgQ29ub3IgRG9vbGV5IHdyb3RlOgo+ID4gT24gVHVlLCBNYXkgMDYsIDIwMjUgYXQgMDc6NDE6
MTRBTSAtMDQwMCwgSm9obiBDbGFyayB3cm90ZToKPiA+PiBBZGQgZGV2aWNlIHRyZWUgYmluZGlu
ZyBmb3IgdGhlIEx1Y2tmb3ggT21uaTM1NzYgQ2FycmllciBCb2FyZCB3aXRoCj4gPj4gQ29yZTM1
NzYgTW9kdWxlLCBiYXNlZCBvbiB0aGUgUm9ja2NoaXAgUkszNTc2IFNvQy4KPiA+Pgo+ID4+IFNp
Z25lZC1vZmYtYnk6IEpvaG4gQ2xhcmsgPGluaW5kZXZAZ21haWwuY29tPgo+ID4+IC0tLQo+ID4+
ICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sIHwg
MTAgKysrKysrKysrKwo+ID4+ICAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKPiA+
Pgo+ID4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJt
L3JvY2tjaGlwLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3Jv
Y2tjaGlwLnlhbWwKPiA+PiBpbmRleCA0NTVmYmIyOTBiNzcuLjgyNmRlZGUzMjE0NSAxMDA2NDQK
PiA+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlw
LnlhbWwKPiA+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3Jv
Y2tjaGlwLnlhbWwKPiA+PiBAQCAtNzE1LDYgKzcxNSwxNiBAQCBwcm9wZXJ0aWVzOgo+ID4+ICAg
ICAgICAgICAgIC0gY29uc3Q6IGxja2ZiLHRzcGktcmszNTY2Cj4gPj4gICAgICAgICAgICAgLSBj
b25zdDogcm9ja2NoaXAscmszNTY2Cj4gPj4gICAKPiA+PiArICAgICAgLSBkZXNjcmlwdGlvbjog
THVja2ZveCBDb3JlMzU3NiBNb2R1bGUKPiA+PiArICAgICAgICBpdGVtczoKPiA+PiArICAgICAg
ICAgIC0gY29uc3Q6IGx1Y2tmb3gsY29yZTM1NzYKPiA+PiArICAgICAgICAgIC0gY29uc3Q6IHJv
Y2tjaGlwLHJrMzU3Ngo+ID4+ICsKPiA+PiArICAgICAgLSBkZXNjcmlwdGlvbjogTHVja2ZveCBP
bW5pMzU3NiBDYXJyaWVyIEJvYXJkCj4gPj4gKyAgICAgICAgaXRlbXM6Cj4gPj4gKyAgICAgICAg
ICAtIGNvbnN0OiBsdWNrZm94LG9tbmkzNTc2Cj4gPj4gKyAgICAgICAgICAtIGNvbnN0OiByb2Nr
Y2hpcCxyazM1NzYKPiA+IAo+ID4gTm90IHN1cmUgdGhpcyBpcyBjb3JyZWN0LCBkb2VzIHRoZSBt
b2R1bGUgbm90IGhhdmUgdG8gYmUgYXR0YWNoZWQgdG8KPiA+IHRoaXMgcGFydGljdWxhciBjYXJy
aWVyIHRvIGJlIHVzZWQ/Cj4gCj4gVGhlIGNvbXB1dGUgbW9kdWxlIGFuZCB0aGUgY2FycmllciBi
b2FyZCB0b2dldGhlciBsaWtlIHRoZSBFMjUuIAo+IFByZXN1bWFibHkgdGhlIGNvbXB1dGUgbW9k
dWxlIHdvdWxkIGJlIHVzZWQgaW4gb3RoZXIgYXBwbGljYXRpb25zCj4gYnV0IHRoZSBjYXJyaWVy
IGJvYXJkIGlzIG5vdCB1c2VmdWwgd2l0aG91dCBpdC4KPiAKPiBJcyB0aGUgRTI1IGRvbmUgY29y
cmVjdGx5IGhlcmU/ICBJIGNhbiBjb3B5IHRoaXMgZm9ybWF0OgoKRm9yIHRoZSBiYXNlYm9hcmQg
KyBtb2R1bGUgeW91IHNob3VsZCBhbHdheXMgaGF2ZSBvbmUgb2YgdGhvc2UKCj4gPj4gKyAgICAg
IC0gZGVzY3JpcHRpb246IEx1Y2tmb3ggQ29yZTM1NzYgTW9kdWxlCj4gPj4gKyAgICAgICAgaXRl
bXM6Cj4gPj4gKyAgICAgICAgICAtIGNvbnN0OiBsdWNrZm94LGNvcmUzNTc2Cj4gPj4gKyAgICAg
ICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazM1NzYKPiA+PiArCgogICAgICAtIGRlc2NyaXB0aW9u
OiBMdWNrZm94IENvcmUzNTc2IGJhc2VkIGJvYXJkcwogICAgICAgIGl0ZW1zOgogICAgICAgICAg
LSBlbnVtOgogICAgICAgICAgICAgIC0gbHVja2ZveCxvbW5pMzU3NgogICAgICAgICAgLSBjb25z
dDogbHVja2ZveCxjb3JlMzU3NgogICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszNTc2CgpJ
J3ZlIGxvb2tlZCBhdCB0aGUgcHJvZHVjdCBwYWdlIFswXSBub3cgYW5kIHRoZSBDb3JlMzU3NiBt
b2R1bGUgaXRzZWxmCmNhbid0IHdvcmsgaW5kZXBlbmRlbnRseSB3aXRob3V0IGEgYmFzZWJvYXJk
IHByZXNlbnQsIHNvIHRoZSBhYm92ZSBzaG91bGQKYmUgZW5vdWdoLCBhbmQgYWxzbyBhbGxvd3Mg
Zm9yIHBvc3NpYmxlIGZ1dHVyZSBvdGhlciBiYXNlYm9hcmRzIHRvIGJlCmludGVncmF0ZWQuCgoK
SGVpa28KCgpbMF0gaHR0cHM6Ly93d3cubHVja2ZveC5jb20vRU4tQ29yZTM1NzYKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
