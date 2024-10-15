Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFCBFCFC276
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 08:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVvux0yk2fc4Bw0fcTeDd7QJUwydgv+kK7nH74jAyaE=; b=p6Bz6zS/n4MSEf
	xyD9Z6nS7ST8gIbSCsRWEN3IlN0G/IJmuqXtkWKnKd8XC9SqkVOvPnQqWUIBXDMO6HGjen8Ss8yxK
	9u4tZA4ABLGshabm6Zyniw2QAk4z4FFPBiUHACX9rkUTUS48bZa8jvgQT1vOoKQCtlOGlYBpIdPLl
	HU/5KDcUKjjOYu7y9NjhkJHRGoYd9Sh9ALuI69W2G1OCZWORhON+GZ/1GqsCbL4diu5y3CBWmetD8
	WilI/djX/eDAH5wuVeC5RKyAAy6hGYl6yVfROPtGLo/hia++GI0kEOzXMl4hMpgoFfWKzK9O2l3vn
	6omMUqSTmhtD5ui247/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0dEh-00000007ZIc-0mqb;
	Tue, 15 Oct 2024 08:48:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0dDH-00000007Z3L-2Bhf;
	Tue, 15 Oct 2024 08:47:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=vpyNKncwLHQJiPMjN9dAouFfUchGeFmb6bGSak7LW2g=; b=OAP9RAR6SKFYIB8O4nUEdjkmAo
	X/KuYnRtEKUT8IoebiLtMthdIVBq9ZFt4TR8FwWTEDSsv9xD0yoRSqv+Y8KhdWz+5u6kG5QnyYdyR
	CCdnG1IiRAWMlDZVYN8pk2T1Fw6DVAOlLFNjq7eNuwq2HDqOcoY8Qc4oR8iU3oxA9yI84nlYpgkXu
	4PNQaRigXOo9stQUxFvwhjSq3L5LiwJeXnpX1sFyPfLHBB/50so58CKtDamMppyzl3U/nYoaf6d28
	nqxkmLwOHmIGf4RAQLoblbB8HBKab9eqvafQBADn/XRyRvnKnKBD9UquC+3JTD83QTQ5kXXmkAaI4
	tNNQrFdA==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t0dDA-00084I-8r; Tue, 15 Oct 2024 10:47:24 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, Frank Wang <frawang.cn@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>
Cc: shawn.lin@rock-chips.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 william.wu@rock-chips.com, tim.chen@rock-chips.com,
 Kever Yang <kever.yang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>
Subject: Re: [PATCH 2/2] phy: rockchip-naneng-combo: Support rk3576
Date: Tue, 15 Oct 2024 10:47:23 +0200
Message-ID: <1904911.CQOukoFCf9@diego>
In-Reply-To: <aac59920-db0b-4b3a-af1b-58e8e4d3a08b@rock-chips.com>
References: <20241015013351.4884-1-frawang.cn@gmail.com> <1981070.PYKUYFuaPT@diego>
 <aac59920-db0b-4b3a-af1b-58e8e4d3a08b@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_014731_601730_6AEF7E37 
X-CRM114-Status: GOOD (  21.89  )
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

SGkgU2hhd24sCgpBbSBEaWVuc3RhZywgMTUuIE9rdG9iZXIgMjAyNCwgMTA6Mzk6MjggQ0VTVCBz
Y2hyaWViIFNoYXduIExpbjoKPiDlnKggMjAyNC8xMC8xNSAxNDoxNSwgSGVpa28gU3TDvGJuZXIg
5YaZ6YGTOgo+ID4gQW0gRGllbnN0YWcsIDE1LiBPa3RvYmVyIDIwMjQsIDAzOjMzOjUxIENFU1Qg
c2NocmllYiBGcmFuayBXYW5nOgo+ID4+IEZyb206IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9j
ay1jaGlwcy5jb20+Cj4gPj4KPiAKPiAuLi4KPiAKPiA+PiArCQkJd3JpdGVsKDB4MDIsIHByaXYt
Pm1taW8gKyAoMHhiIDw8IDIpKTsKPiA+PiArCQkJd3JpdGVsKDB4NTcsIHByaXYtPm1taW8gKyAo
MHhkIDw8IDIpKTsKPiA+PiArCj4gPj4gKwkJCXdyaXRlbCgweDVmLCBwcml2LT5tbWlvICsgKDB4
ZiA8PCAyKSk7Cj4gPiAKPiA+IFRoaXMgZG9lcyBpbmNsdWRlcyBib3RoIHRoZSB2YWx1ZSBhcyB3
ZWxsIGFzIHRoZSByZWdpc3RlciBhZGRyZXNzZXMsCj4gPiBiZWNhdXNlIGEgaGV4LXZhbHVlIHdp
dGggYSBiaXQgc2hpZnQgbWFrZXMgdGhhdCBldmVuIGxlc3MgcmVhZGFibGUuCj4gPiAKPiAKPiBB
Y3R1YWxseSwgaXQncyBtb3JlIHJlYWRhYmxlIHdoZW4gd2UgbmVlZCB0byBkZWJ1ZywgSU1PLiBC
ZWNhdXNlIHRoZQo+IFBIWSBkb2N1bWVudCBwcm92aWRlZCBpcyBsaXN0aW5nIHRoZSByZWdpc3Rl
cnMganVzdCBsaWtlIHdoYXQgdGhlIHBhdGNoCj4gZGlkKDB4Yi8weGQvMHhmKS4gU28gZm9yIGV4
YW1wbGUsIHdlIGNvdWxkIGVhc2lseSBmaW5kIDB4YiBpbiB0aGUgCj4gZG9jdW1lbnQsIHdoaWNo
IHJlZmVycyB0byBzdV90cmltWzE1OjhdLgoKRG9jdW1lbnRhdGlvbi13aXNlIHRoZSByazM1NzYg
aGFzIGdvdHRlbiB3b3JzZSwgY29tcGFyZWQgdG8gdGhlCnJrMzU4OCBhbmQgYmVmb3JlLiAgSSBn
dWVzcyB5b3UncmUgcmVmZXJpbmcgdG8gYSBkb2N1bWVudCB0aGF0IGlzIG5vdApwYXJ0IG9mIHRo
ZSB0cm0tcGFydDEgcGRmIEkgZ3Vlc3MuCgpTbyBJIGd1ZXNzIHVzaW5nIHJlZ2lzdGVyIG51bWJl
cnMgc29tZXdoYXQgbWF0Y2hpbmcgdGhlIHNwYXJzZQpkb2N1bWVudCB5b3UgaGF2ZSBjYW4gYmUg
ZmluZSwgYnV0IEkgZ3Vlc3MgdHJ5IHRvIHVzZSBjb25zdGFudHMgd2hlcmUKcG9zc2libGUuCgpU
aGUgYmxvY2sgYWJvdmUgdGhvdWdoIGF0IGxlYXN0IG5lZWRzIGEgY29tbWVudCBhYm91dCB3aGF0
IGlzCmhhcHBlbmluZyB0aGVyZS4KCgpIZWlrbwoKPiA+PiArCQl9Cj4gPj4gKwkJYnJlYWs7Cj4g
Pj4gKwljYXNlIFJFRl9DTE9DS18yNU1IejoKPiA+PiArCQlyb2NrY2hpcF9jb21icGh5X3BhcmFt
X3dyaXRlKHByaXYtPnBoeV9ncmYsICZjZmctPnBpcGVfY2xrXzI1bSwgdHJ1ZSk7Cj4gPj4gKwkJ
YnJlYWs7Cj4gPj4gKwljYXNlIFJFRl9DTE9DS18xMDBNSHo6Cj4gPj4gKwkJcm9ja2NoaXBfY29t
YnBoeV9wYXJhbV93cml0ZShwcml2LT5waHlfZ3JmLCAmY2ZnLT5waXBlX2Nsa18xMDBtLCB0cnVl
KTsKPiA+PiArCQlpZiAocHJpdi0+dHlwZSA9PSBQSFlfVFlQRV9QQ0lFKSB7Cj4gPj4gKwkJCS8q
IGdhdGVfdHhfcGNrX3NlbCBsZW5ndGggc2VsZWN0IHdvcmsgZm9yIEwxU1MgKi8KPiA+PiArCQkJ
d3JpdGVsKDB4YzAsIHByaXYtPm1taW8gKyAweDc0KTsKPiA+PiArCj4gPj4gKwkJCS8qIFBMTCBL
VkNPIHR1bmluZyBmaW5lICovCj4gPj4gKwkJCXJvY2tjaGlwX2NvbWJwaHlfdXBkYXRlbChwcml2
LCBHRU5NQVNLKDQsIDIpLCAweDQgPDwgMiwgMHgyMCA8PCAyKTsKPiA+PiArCj4gPj4gKwkJCS8q
IFNldCB1cCByeF90cmltOiBQTEwgTFBGIEMxIDg1cGYgUjEgMS4yNWtvaG0gKi8KPiA+PiArCQkJ
d3JpdGVsKDB4NGMsIHByaXYtPm1taW8gKyAoMHgxYiA8PCAyKSk7Cj4gPj4gKwo+ID4+ICsJCQkv
KiBTZXQgdXAgc3VfdHJpbTogVDNfUDEgNjUwbXYgKi8KPiA+PiArCQkJd3JpdGVsKDB4OTAsIHBy
aXYtPm1taW8gKyAoMHhhIDw8IDIpKTsKPiA+PiArCQkJd3JpdGVsKDB4NDMsIHByaXYtPm1taW8g
KyAoMHhiIDw8IDIpKTsKPiA+PiArCQkJd3JpdGVsKDB4ODgsIHByaXYtPm1taW8gKyAoMHhjIDw8
IDIpKTsKPiA+PiArCQkJd3JpdGVsKDB4NTYsIHByaXYtPm1taW8gKyAoMHhkIDw8IDIpKTsKPiA+
PiArCQl9IGVsc2UgaWYgKHByaXYtPnR5cGUgPT0gUEhZX1RZUEVfU0FUQSkgewo+ID4+ICsJCQkv
KiBkb3dud2FyZCBzcHJlYWQgc3BlY3RydW0gKzUwMHBwbSAqLwo+ID4+ICsJCQlyb2NrY2hpcF9j
b21icGh5X3VwZGF0ZWwocHJpdiwgR0VOTUFTSyg3LCA0KSwgMHg1MCwgMHgxZiA8PCAyKTsKPiA+
PiArCj4gPj4gKwkJCS8qIHNzYyBwcG0gYWRqdXN0IHRvIDM1MDBwcG0gKi8KPiA+PiArCQkJcm9j
a2NoaXBfY29tYnBoeV91cGRhdGVsKHByaXYsIEdFTk1BU0soMywgMCksIDB4NywgMHg5IDw8IDIp
Owo+ID4+ICsJCX0KPiA+PiArCQlicmVhazsKPiA+PiArCWRlZmF1bHQ6Cj4gPj4gKwkJZGV2X2Vy
cihwcml2LT5kZXYsICJVbnN1cHBvcnRlZCByYXRlOiAlbHVcbiIsIHJhdGUpOwo+ID4+ICsJCXJl
dHVybiAtRUlOVkFMOwo+ID4+ICsJfQo+ID4+ICsKPiA+PiArCWlmIChwcml2LT5leHRfcmVmY2xr
KSB7Cj4gPj4gKwkJcm9ja2NoaXBfY29tYnBoeV9wYXJhbV93cml0ZShwcml2LT5waHlfZ3JmLCAm
Y2ZnLT5waXBlX2Nsa19leHQsIHRydWUpOwo+ID4+ICsJCWlmIChwcml2LT50eXBlID09IFBIWV9U
WVBFX1BDSUUgJiYgcmF0ZSA9PSBSRUZfQ0xPQ0tfMTAwTUh6KSB7Cj4gPj4gKwkJCXdyaXRlbCgw
eDEwLCBwcml2LT5tbWlvICsgKDB4MjAgPDwgMikpOwo+ID4+ICsKPiA+PiArCQkJd3JpdGVsKDB4
MGMsIHByaXYtPm1taW8gKyAoMHgxYiA8PCAyKSk7Cj4gPj4gKwo+ID4+ICsJCQkvKiBTZXQgdXAg
c3VfdHJpbTogVDNfUDEgNjUwbXYgKi8KPiA+PiArCQkJd3JpdGVsKDB4OTAsIHByaXYtPm1taW8g
KyAoMHhhIDw8IDIpKTsKPiA+PiArCQkJd3JpdGVsKDB4NDMsIHByaXYtPm1taW8gKyAoMHhiIDw8
IDIpKTsKPiA+PiArCQkJd3JpdGVsKDB4ODgsIHByaXYtPm1taW8gKyAoMHhjIDw8IDIpKTsKPiA+
PiArCQkJd3JpdGVsKDB4NTYsIHByaXYtPm1taW8gKyAoMHhkIDw8IDIpKTsKPiA+PiArCQl9Cj4g
Pj4gKwl9Cj4gPj4gKwo+ID4+ICsJaWYgKHByaXYtPmVuYWJsZV9zc2MpIHsKPiA+PiArCQlyb2Nr
Y2hpcF9jb21icGh5X3VwZGF0ZWwocHJpdiwgR0VOTUFTSyg0LCA0KSwgQklUKDQpLCAweDcgPDwg
Mik7Cj4gPj4gKwo+ID4+ICsJCWlmIChwcml2LT50eXBlID09IFBIWV9UWVBFX1BDSUUgJiYgcmF0
ZSA9PSBSRUZfQ0xPQ0tfMjRNSHopIHsKPiA+PiArCQkJLyogWGluMjRNIFQwXzEgNjUwbVYgKi8K
PiA+PiArCQkJd3JpdGVsKDB4MDAsIHByaXYtPm1taW8gKyAoMHgxMCA8PCAyKSk7Cj4gPj4gKwkJ
CXdyaXRlbCgweDMyLCBwcml2LT5tbWlvICsgKDB4MTEgPDwgMikpOwo+ID4+ICsJCQl3cml0ZWwo
MHgwMCwgcHJpdi0+bW1pbyArICgweDFiIDw8IDIpKTsKPiA+PiArCQkJd3JpdGVsKDB4OTAsIHBy
aXYtPm1taW8gKyAoMHgwYSA8PCAyKSk7Cj4gPj4gKwkJCXdyaXRlbCgweDAyLCBwcml2LT5tbWlv
ICsgKDB4MGIgPDwgMikpOwo+ID4+ICsJCQl3cml0ZWwoMHgwOCwgcHJpdi0+bW1pbyArICgweDBj
IDw8IDIpKTsKPiA+PiArCQkJd3JpdGVsKDB4NTcsIHByaXYtPm1taW8gKyAoMHgwZCA8PCAyKSk7
Cj4gPj4gKwkJCXdyaXRlbCgweDQwLCBwcml2LT5tbWlvICsgKDB4MGUgPDwgMikpOwo+ID4+ICsJ
CQl3cml0ZWwoMHg1ZiwgcHJpdi0+bW1pbyArICgweDBmIDw8IDIpKTsKPiA+PiArCQkJd3JpdGVs
KDB4MTAsIHByaXYtPm1taW8gKyAoMHgyMCA8PCAyKSk7Cj4gPj4gKwkJfQo+ID4+ICsJfQo+ID4+
ICsKPiA+PiArCXJldHVybiAwOwo+ID4+ICt9Cj4gPiAKPiA+IAo+ID4gCj4gPiAKPiA+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKPiA+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
PiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAKPiAKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
