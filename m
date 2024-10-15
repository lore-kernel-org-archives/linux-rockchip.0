Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 623BACFC278
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 08:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rj6WaR+Fa1IpR94CDHiDEW21277jSLET2VEcF6+vF94=; b=f94meAeXbDMkRc
	bKgrKcBZBZCcYZ4eRVwJdRsc3mQRRIhJwBAWaOKtvufoYPG6pHAWSwLoNQRLgXM1xjVkElJIc5che
	Cwu+oN+BMh2rM3wryXht5vDF3U6xKDWWtLOA6RiMsox9ehnjJrUKuau0+103gQemGtUVGkUEhWAGU
	v8rK0aWVTfipsoGwYKHagaKKhZOlKvzinineuDcWA287EQoQhKkEJDSXAVL/T1cHoVEx0UXOEQ9RW
	e3DKIE35+v+Umkrq5+Lac+FEwmDyzd5WqQGMUu47VWPiWICd+HTtMWfh0ezwc4YWwX3oVYiG9L4+X
	WKwzP4O45aB0uCbNLMrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0dEh-00000007ZJ0-3WyR;
	Tue, 15 Oct 2024 08:48:59 +0000
Received: from ec2-44-216-146-165.compute-1.amazonaws.com ([44.216.146.165])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0dDa-00000007Z6d-1q3C;
	Tue, 15 Oct 2024 08:47:52 +0000
DKIM-Signature: a=rsa-sha256;
	b=Q7mut/AoFB+4koJV5m5vFcFs+gamYGzocj7nh8ADF2pJBvRZyumzHpx4y97Er8Qxd08Rj+p5mW+Su+7qxEGuFowqA6NlZ8aCSbSANHXm3g3e84fVlpV+sNsGYXxG8VOBS786mSAhCCuEx6NsKUWIZFB1mlOk50TQKWpxWtW+13w=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=76/210GfRewspIJkZPJUOiOwy/U5JmWh7TGx4OJlOAE=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.45] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 7138F1A08AC;
	Tue, 15 Oct 2024 16:39:29 +0800 (CST)
Message-ID: <aac59920-db0b-4b3a-af1b-58e8e4d3a08b@rock-chips.com>
Date: Tue, 15 Oct 2024 16:39:28 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 william.wu@rock-chips.com, tim.chen@rock-chips.com,
 Kever Yang <kever.yang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>
Subject: Re: [PATCH 2/2] phy: rockchip-naneng-combo: Support rk3576
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 Frank Wang <frawang.cn@gmail.com>
References: <20241015013351.4884-1-frawang.cn@gmail.com>
 <20241015013351.4884-2-frawang.cn@gmail.com> <1981070.PYKUYFuaPT@diego>
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <1981070.PYKUYFuaPT@diego>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh1CQ1YZQ0tOSBoaTBkZQkNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a928f55138503abkunm7138f1a08ac
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NBw6SAw5LDIuEzo1QhQKHj45
	NQoKFDhVSlVKTElDQkNKTkxKSkJCVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU5OSk83Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_014751_060593_71184AF4 
X-CRM114-Status: GOOD (  15.05  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28KCuWcqCAyMDI0LzEwLzE1IDE0OjE1LCBIZWlrbyBTdMO8Ym5lciDlhpnpgZM6Cj4g
SGkgRnJhbmssCj4gCj4gQW0gRGllbnN0YWcsIDE1LiBPa3RvYmVyIDIwMjQsIDAzOjMzOjUxIENF
U1Qgc2NocmllYiBGcmFuayBXYW5nOgo+PiBGcm9tOiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJv
Y2stY2hpcHMuY29tPgo+PgoKLi4uCgo+PiArCQkJd3JpdGVsKDB4MDIsIHByaXYtPm1taW8gKyAo
MHhiIDw8IDIpKTsKPj4gKwkJCXdyaXRlbCgweDU3LCBwcml2LT5tbWlvICsgKDB4ZCA8PCAyKSk7
Cj4+ICsKPj4gKwkJCXdyaXRlbCgweDVmLCBwcml2LT5tbWlvICsgKDB4ZiA8PCAyKSk7Cj4gCj4g
VGhpcyBkb2VzIGluY2x1ZGVzIGJvdGggdGhlIHZhbHVlIGFzIHdlbGwgYXMgdGhlIHJlZ2lzdGVy
IGFkZHJlc3NlcywKPiBiZWNhdXNlIGEgaGV4LXZhbHVlIHdpdGggYSBiaXQgc2hpZnQgbWFrZXMg
dGhhdCBldmVuIGxlc3MgcmVhZGFibGUuCj4gCgpBY3R1YWxseSwgaXQncyBtb3JlIHJlYWRhYmxl
IHdoZW4gd2UgbmVlZCB0byBkZWJ1ZywgSU1PLiBCZWNhdXNlIHRoZQpQSFkgZG9jdW1lbnQgcHJv
dmlkZWQgaXMgbGlzdGluZyB0aGUgcmVnaXN0ZXJzIGp1c3QgbGlrZSB3aGF0IHRoZSBwYXRjaApk
aWQoMHhiLzB4ZC8weGYpLiBTbyBmb3IgZXhhbXBsZSwgd2UgY291bGQgZWFzaWx5IGZpbmQgMHhi
IGluIHRoZSAKZG9jdW1lbnQsIHdoaWNoIHJlZmVycyB0byBzdV90cmltWzE1OjhdLgoKPiBUaGFu
a3MgYSBsb3QKPiBIZWlrbwo+IAo+IAo+PiArCQl9Cj4+ICsJCWJyZWFrOwo+PiArCWNhc2UgUkVG
X0NMT0NLXzI1TUh6Ogo+PiArCQlyb2NrY2hpcF9jb21icGh5X3BhcmFtX3dyaXRlKHByaXYtPnBo
eV9ncmYsICZjZmctPnBpcGVfY2xrXzI1bSwgdHJ1ZSk7Cj4+ICsJCWJyZWFrOwo+PiArCWNhc2Ug
UkVGX0NMT0NLXzEwME1IejoKPj4gKwkJcm9ja2NoaXBfY29tYnBoeV9wYXJhbV93cml0ZShwcml2
LT5waHlfZ3JmLCAmY2ZnLT5waXBlX2Nsa18xMDBtLCB0cnVlKTsKPj4gKwkJaWYgKHByaXYtPnR5
cGUgPT0gUEhZX1RZUEVfUENJRSkgewo+PiArCQkJLyogZ2F0ZV90eF9wY2tfc2VsIGxlbmd0aCBz
ZWxlY3Qgd29yayBmb3IgTDFTUyAqLwo+PiArCQkJd3JpdGVsKDB4YzAsIHByaXYtPm1taW8gKyAw
eDc0KTsKPj4gKwo+PiArCQkJLyogUExMIEtWQ08gdHVuaW5nIGZpbmUgKi8KPj4gKwkJCXJvY2tj
aGlwX2NvbWJwaHlfdXBkYXRlbChwcml2LCBHRU5NQVNLKDQsIDIpLCAweDQgPDwgMiwgMHgyMCA8
PCAyKTsKPj4gKwo+PiArCQkJLyogU2V0IHVwIHJ4X3RyaW06IFBMTCBMUEYgQzEgODVwZiBSMSAx
LjI1a29obSAqLwo+PiArCQkJd3JpdGVsKDB4NGMsIHByaXYtPm1taW8gKyAoMHgxYiA8PCAyKSk7
Cj4+ICsKPj4gKwkJCS8qIFNldCB1cCBzdV90cmltOiBUM19QMSA2NTBtdiAqLwo+PiArCQkJd3Jp
dGVsKDB4OTAsIHByaXYtPm1taW8gKyAoMHhhIDw8IDIpKTsKPj4gKwkJCXdyaXRlbCgweDQzLCBw
cml2LT5tbWlvICsgKDB4YiA8PCAyKSk7Cj4+ICsJCQl3cml0ZWwoMHg4OCwgcHJpdi0+bW1pbyAr
ICgweGMgPDwgMikpOwo+PiArCQkJd3JpdGVsKDB4NTYsIHByaXYtPm1taW8gKyAoMHhkIDw8IDIp
KTsKPj4gKwkJfSBlbHNlIGlmIChwcml2LT50eXBlID09IFBIWV9UWVBFX1NBVEEpIHsKPj4gKwkJ
CS8qIGRvd253YXJkIHNwcmVhZCBzcGVjdHJ1bSArNTAwcHBtICovCj4+ICsJCQlyb2NrY2hpcF9j
b21icGh5X3VwZGF0ZWwocHJpdiwgR0VOTUFTSyg3LCA0KSwgMHg1MCwgMHgxZiA8PCAyKTsKPj4g
Kwo+PiArCQkJLyogc3NjIHBwbSBhZGp1c3QgdG8gMzUwMHBwbSAqLwo+PiArCQkJcm9ja2NoaXBf
Y29tYnBoeV91cGRhdGVsKHByaXYsIEdFTk1BU0soMywgMCksIDB4NywgMHg5IDw8IDIpOwo+PiAr
CQl9Cj4+ICsJCWJyZWFrOwo+PiArCWRlZmF1bHQ6Cj4+ICsJCWRldl9lcnIocHJpdi0+ZGV2LCAi
VW5zdXBwb3J0ZWQgcmF0ZTogJWx1XG4iLCByYXRlKTsKPj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4+
ICsJfQo+PiArCj4+ICsJaWYgKHByaXYtPmV4dF9yZWZjbGspIHsKPj4gKwkJcm9ja2NoaXBfY29t
YnBoeV9wYXJhbV93cml0ZShwcml2LT5waHlfZ3JmLCAmY2ZnLT5waXBlX2Nsa19leHQsIHRydWUp
Owo+PiArCQlpZiAocHJpdi0+dHlwZSA9PSBQSFlfVFlQRV9QQ0lFICYmIHJhdGUgPT0gUkVGX0NM
T0NLXzEwME1Ieikgewo+PiArCQkJd3JpdGVsKDB4MTAsIHByaXYtPm1taW8gKyAoMHgyMCA8PCAy
KSk7Cj4+ICsKPj4gKwkJCXdyaXRlbCgweDBjLCBwcml2LT5tbWlvICsgKDB4MWIgPDwgMikpOwo+
PiArCj4+ICsJCQkvKiBTZXQgdXAgc3VfdHJpbTogVDNfUDEgNjUwbXYgKi8KPj4gKwkJCXdyaXRl
bCgweDkwLCBwcml2LT5tbWlvICsgKDB4YSA8PCAyKSk7Cj4+ICsJCQl3cml0ZWwoMHg0MywgcHJp
di0+bW1pbyArICgweGIgPDwgMikpOwo+PiArCQkJd3JpdGVsKDB4ODgsIHByaXYtPm1taW8gKyAo
MHhjIDw8IDIpKTsKPj4gKwkJCXdyaXRlbCgweDU2LCBwcml2LT5tbWlvICsgKDB4ZCA8PCAyKSk7
Cj4+ICsJCX0KPj4gKwl9Cj4+ICsKPj4gKwlpZiAocHJpdi0+ZW5hYmxlX3NzYykgewo+PiArCQly
b2NrY2hpcF9jb21icGh5X3VwZGF0ZWwocHJpdiwgR0VOTUFTSyg0LCA0KSwgQklUKDQpLCAweDcg
PDwgMik7Cj4+ICsKPj4gKwkJaWYgKHByaXYtPnR5cGUgPT0gUEhZX1RZUEVfUENJRSAmJiByYXRl
ID09IFJFRl9DTE9DS18yNE1Ieikgewo+PiArCQkJLyogWGluMjRNIFQwXzEgNjUwbVYgKi8KPj4g
KwkJCXdyaXRlbCgweDAwLCBwcml2LT5tbWlvICsgKDB4MTAgPDwgMikpOwo+PiArCQkJd3JpdGVs
KDB4MzIsIHByaXYtPm1taW8gKyAoMHgxMSA8PCAyKSk7Cj4+ICsJCQl3cml0ZWwoMHgwMCwgcHJp
di0+bW1pbyArICgweDFiIDw8IDIpKTsKPj4gKwkJCXdyaXRlbCgweDkwLCBwcml2LT5tbWlvICsg
KDB4MGEgPDwgMikpOwo+PiArCQkJd3JpdGVsKDB4MDIsIHByaXYtPm1taW8gKyAoMHgwYiA8PCAy
KSk7Cj4+ICsJCQl3cml0ZWwoMHgwOCwgcHJpdi0+bW1pbyArICgweDBjIDw8IDIpKTsKPj4gKwkJ
CXdyaXRlbCgweDU3LCBwcml2LT5tbWlvICsgKDB4MGQgPDwgMikpOwo+PiArCQkJd3JpdGVsKDB4
NDAsIHByaXYtPm1taW8gKyAoMHgwZSA8PCAyKSk7Cj4+ICsJCQl3cml0ZWwoMHg1ZiwgcHJpdi0+
bW1pbyArICgweDBmIDw8IDIpKTsKPj4gKwkJCXdyaXRlbCgweDEwLCBwcml2LT5tbWlvICsgKDB4
MjAgPDwgMikpOwo+PiArCQl9Cj4+ICsJfQo+PiArCj4+ICsJcmV0dXJuIDA7Cj4+ICt9Cj4gCj4g
Cj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
