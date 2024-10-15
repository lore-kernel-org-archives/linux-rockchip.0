Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5782ACFC276
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 09:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lzGlPBgPzDKppfyDyO83+Tb1iE5AcNm+128V+N9Geng=; b=hkW7JkheTQk5DP
	wMPaNZK7wMU5RlllyYgK7ca+TOuxGnyX4iKVFaMS0aYTKYmWEhzhjOGbtS5igi0DqfrarnwjudNN7
	124KzBHcH+VmwxYk7D7k/u7ltQ3fA9r+qPyJKgSZlKIWW1G532T8JUVp95LAmJilkItcHMVnPN2fm
	s9xC/RyArQJjh7nhhK52B72KJhLmR54SuAmxrVL2GiOeVHzEsK6mZp4IjZ5cHXi/TRpF/c8ObXN8m
	bMlC1BTNaMZ6En4aOguOh18636pTsXYNUNgaWC/1035NdtlxR4GNZgmF82tJZ7hU3/CZq8DtM1xu/
	RzmAitEfbmWC3vOHH+sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0ddn-00000007fEh-1ujQ;
	Tue, 15 Oct 2024 09:14:55 +0000
Received: from mail-m25498.xmail.ntesmail.com ([103.129.254.98])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0dTo-00000007cT4-0OUv;
	Tue, 15 Oct 2024 09:04:39 +0000
DKIM-Signature: a=rsa-sha256;
	b=knccfbRcKIpu89qKHPL5CFuSvykUuGEWWgeLpMiZSbJtWMwmtfrPecR//r3xn6jxrnwbiuqUbNEQ6R7cAvG/IOSjaDkS1ayHswMI/5XRO+jlclPTgRbAGXVM1wGyAnBVSFiJmSfQR2Qmi3miTUMs9E+lLY06vrqprOwXjsVED1s=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=T2Wxjy0oJHkVPilzsaXFppoNJXT+6D28TDcgYaL/Njg=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.45] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 8B86D1A0945;
	Tue, 15 Oct 2024 17:04:12 +0800 (CST)
Message-ID: <48e1db42-1993-45a5-969d-421f4248af8f@rock-chips.com>
Date: Tue, 15 Oct 2024 17:04:12 +0800
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
 <1981070.PYKUYFuaPT@diego>
 <aac59920-db0b-4b3a-af1b-58e8e4d3a08b@rock-chips.com>
 <1904911.CQOukoFCf9@diego>
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <1904911.CQOukoFCf9@diego>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR5IS1YdQ0kfGEgaH0oeT0tWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a928f6bb4de03abkunm8b86d1a0945
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MRw6STo*SDIeCzkVODM6DBJD
	EhUKCTdVSlVKTElDQkNIS05PSUlIVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU1PS0M3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_020436_886671_ADCDF085 
X-CRM114-Status: GOOD (  16.59  )
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

SGkgSGVpa28sCgrlnKggMjAyNC8xMC8xNSAxNjo0NywgSGVpa28gU3TDvGJuZXIg5YaZ6YGTOgo+
IEhpIFNoYXduLAo+IAo+IEFtIERpZW5zdGFnLCAxNS4gT2t0b2JlciAyMDI0LCAxMDozOToyOCBD
RVNUIHNjaHJpZWIgU2hhd24gTGluOgo+PiDlnKggMjAyNC8xMC8xNSAxNDoxNSwgSGVpa28gU3TD
vGJuZXIg5YaZ6YGTOgo+Pj4gQW0gRGllbnN0YWcsIDE1LiBPa3RvYmVyIDIwMjQsIDAzOjMzOjUx
IENFU1Qgc2NocmllYiBGcmFuayBXYW5nOgo+Pj4+IEZyb206IEtldmVyIFlhbmcgPGtldmVyLnlh
bmdAcm9jay1jaGlwcy5jb20+Cj4+Pj4KPj4KPj4gLi4uCj4+Cj4+Pj4gKwkJCXdyaXRlbCgweDAy
LCBwcml2LT5tbWlvICsgKDB4YiA8PCAyKSk7Cj4+Pj4gKwkJCXdyaXRlbCgweDU3LCBwcml2LT5t
bWlvICsgKDB4ZCA8PCAyKSk7Cj4+Pj4gKwo+Pj4+ICsJCQl3cml0ZWwoMHg1ZiwgcHJpdi0+bW1p
byArICgweGYgPDwgMikpOwo+Pj4KPj4+IFRoaXMgZG9lcyBpbmNsdWRlcyBib3RoIHRoZSB2YWx1
ZSBhcyB3ZWxsIGFzIHRoZSByZWdpc3RlciBhZGRyZXNzZXMsCj4+PiBiZWNhdXNlIGEgaGV4LXZh
bHVlIHdpdGggYSBiaXQgc2hpZnQgbWFrZXMgdGhhdCBldmVuIGxlc3MgcmVhZGFibGUuCj4+Pgo+
Pgo+PiBBY3R1YWxseSwgaXQncyBtb3JlIHJlYWRhYmxlIHdoZW4gd2UgbmVlZCB0byBkZWJ1Zywg
SU1PLiBCZWNhdXNlIHRoZQo+PiBQSFkgZG9jdW1lbnQgcHJvdmlkZWQgaXMgbGlzdGluZyB0aGUg
cmVnaXN0ZXJzIGp1c3QgbGlrZSB3aGF0IHRoZSBwYXRjaAo+PiBkaWQoMHhiLzB4ZC8weGYpLiBT
byBmb3IgZXhhbXBsZSwgd2UgY291bGQgZWFzaWx5IGZpbmQgMHhiIGluIHRoZQo+PiBkb2N1bWVu
dCwgd2hpY2ggcmVmZXJzIHRvIHN1X3RyaW1bMTU6OF0uCj4gCj4gRG9jdW1lbnRhdGlvbi13aXNl
IHRoZSByazM1NzYgaGFzIGdvdHRlbiB3b3JzZSwgY29tcGFyZWQgdG8gdGhlCj4gcmszNTg4IGFu
ZCBiZWZvcmUuICBJIGd1ZXNzIHlvdSdyZSByZWZlcmluZyB0byBhIGRvY3VtZW50IHRoYXQgaXMg
bm90Cj4gcGFydCBvZiB0aGUgdHJtLXBhcnQxIHBkZiBJIGd1ZXNzLgoKRXhhY3RseS4gSXQncyBj
b25maWRlbnRpYWwsIHdoaWNoIGlzIG5vdCBwYXJ0IG9mIFRSTS4KCj4gCj4gU28gSSBndWVzcyB1
c2luZyByZWdpc3RlciBudW1iZXJzIHNvbWV3aGF0IG1hdGNoaW5nIHRoZSBzcGFyc2UKPiBkb2N1
bWVudCB5b3UgaGF2ZSBjYW4gYmUgZmluZSwgYnV0IEkgZ3Vlc3MgdHJ5IHRvIHVzZSBjb25zdGFu
dHMgd2hlcmUKPiBwb3NzaWJsZS4KPiAKPiBUaGUgYmxvY2sgYWJvdmUgdGhvdWdoIGF0IGxlYXN0
IG5lZWRzIGEgY29tbWVudCBhYm91dCB3aGF0IGlzCj4gaGFwcGVuaW5nIHRoZXJlLgoKR290IGl0
LgoKPiAKPiAKPiBIZWlrbwo+IAo+Pj4+ICsJCX0KPj4+PiArCQlicmVhazsKPj4+PiArCWNhc2Ug
UkVGX0NMT0NLXzI1TUh6Ogo+Pj4+ICsJCXJvY2tjaGlwX2NvbWJwaHlfcGFyYW1fd3JpdGUocHJp
di0+cGh5X2dyZiwgJmNmZy0+cGlwZV9jbGtfMjVtLCB0cnVlKTsKPj4+PiArCQlicmVhazsKPj4+
PiArCWNhc2UgUkVGX0NMT0NLXzEwME1IejoKPj4+PiArCQlyb2NrY2hpcF9jb21icGh5X3BhcmFt
X3dyaXRlKHByaXYtPnBoeV9ncmYsICZjZmctPnBpcGVfY2xrXzEwMG0sIHRydWUpOwo+Pj4+ICsJ
CWlmIChwcml2LT50eXBlID09IFBIWV9UWVBFX1BDSUUpIHsKPj4+PiArCQkJLyogZ2F0ZV90eF9w
Y2tfc2VsIGxlbmd0aCBzZWxlY3Qgd29yayBmb3IgTDFTUyAqLwo+Pj4+ICsJCQl3cml0ZWwoMHhj
MCwgcHJpdi0+bW1pbyArIDB4NzQpOwo+Pj4+ICsKPj4+PiArCQkJLyogUExMIEtWQ08gdHVuaW5n
IGZpbmUgKi8KPj4+PiArCQkJcm9ja2NoaXBfY29tYnBoeV91cGRhdGVsKHByaXYsIEdFTk1BU0so
NCwgMiksIDB4NCA8PCAyLCAweDIwIDw8IDIpOwo+Pj4+ICsKPj4+PiArCQkJLyogU2V0IHVwIHJ4
X3RyaW06IFBMTCBMUEYgQzEgODVwZiBSMSAxLjI1a29obSAqLwo+Pj4+ICsJCQl3cml0ZWwoMHg0
YywgcHJpdi0+bW1pbyArICgweDFiIDw8IDIpKTsKPj4+PiArCj4+Pj4gKwkJCS8qIFNldCB1cCBz
dV90cmltOiBUM19QMSA2NTBtdiAqLwo+Pj4+ICsJCQl3cml0ZWwoMHg5MCwgcHJpdi0+bW1pbyAr
ICgweGEgPDwgMikpOwo+Pj4+ICsJCQl3cml0ZWwoMHg0MywgcHJpdi0+bW1pbyArICgweGIgPDwg
MikpOwo+Pj4+ICsJCQl3cml0ZWwoMHg4OCwgcHJpdi0+bW1pbyArICgweGMgPDwgMikpOwo+Pj4+
ICsJCQl3cml0ZWwoMHg1NiwgcHJpdi0+bW1pbyArICgweGQgPDwgMikpOwo+Pj4+ICsJCX0gZWxz
ZSBpZiAocHJpdi0+dHlwZSA9PSBQSFlfVFlQRV9TQVRBKSB7Cj4+Pj4gKwkJCS8qIGRvd253YXJk
IHNwcmVhZCBzcGVjdHJ1bSArNTAwcHBtICovCj4+Pj4gKwkJCXJvY2tjaGlwX2NvbWJwaHlfdXBk
YXRlbChwcml2LCBHRU5NQVNLKDcsIDQpLCAweDUwLCAweDFmIDw8IDIpOwo+Pj4+ICsKPj4+PiAr
CQkJLyogc3NjIHBwbSBhZGp1c3QgdG8gMzUwMHBwbSAqLwo+Pj4+ICsJCQlyb2NrY2hpcF9jb21i
cGh5X3VwZGF0ZWwocHJpdiwgR0VOTUFTSygzLCAwKSwgMHg3LCAweDkgPDwgMik7Cj4+Pj4gKwkJ
fQo+Pj4+ICsJCWJyZWFrOwo+Pj4+ICsJZGVmYXVsdDoKPj4+PiArCQlkZXZfZXJyKHByaXYtPmRl
diwgIlVuc3VwcG9ydGVkIHJhdGU6ICVsdVxuIiwgcmF0ZSk7Cj4+Pj4gKwkJcmV0dXJuIC1FSU5W
QUw7Cj4+Pj4gKwl9Cj4+Pj4gKwo+Pj4+ICsJaWYgKHByaXYtPmV4dF9yZWZjbGspIHsKPj4+PiAr
CQlyb2NrY2hpcF9jb21icGh5X3BhcmFtX3dyaXRlKHByaXYtPnBoeV9ncmYsICZjZmctPnBpcGVf
Y2xrX2V4dCwgdHJ1ZSk7Cj4+Pj4gKwkJaWYgKHByaXYtPnR5cGUgPT0gUEhZX1RZUEVfUENJRSAm
JiByYXRlID09IFJFRl9DTE9DS18xMDBNSHopIHsKPj4+PiArCQkJd3JpdGVsKDB4MTAsIHByaXYt
Pm1taW8gKyAoMHgyMCA8PCAyKSk7Cj4+Pj4gKwo+Pj4+ICsJCQl3cml0ZWwoMHgwYywgcHJpdi0+
bW1pbyArICgweDFiIDw8IDIpKTsKPj4+PiArCj4+Pj4gKwkJCS8qIFNldCB1cCBzdV90cmltOiBU
M19QMSA2NTBtdiAqLwo+Pj4+ICsJCQl3cml0ZWwoMHg5MCwgcHJpdi0+bW1pbyArICgweGEgPDwg
MikpOwo+Pj4+ICsJCQl3cml0ZWwoMHg0MywgcHJpdi0+bW1pbyArICgweGIgPDwgMikpOwo+Pj4+
ICsJCQl3cml0ZWwoMHg4OCwgcHJpdi0+bW1pbyArICgweGMgPDwgMikpOwo+Pj4+ICsJCQl3cml0
ZWwoMHg1NiwgcHJpdi0+bW1pbyArICgweGQgPDwgMikpOwo+Pj4+ICsJCX0KPj4+PiArCX0KPj4+
PiArCj4+Pj4gKwlpZiAocHJpdi0+ZW5hYmxlX3NzYykgewo+Pj4+ICsJCXJvY2tjaGlwX2NvbWJw
aHlfdXBkYXRlbChwcml2LCBHRU5NQVNLKDQsIDQpLCBCSVQoNCksIDB4NyA8PCAyKTsKPj4+PiAr
Cj4+Pj4gKwkJaWYgKHByaXYtPnR5cGUgPT0gUEhZX1RZUEVfUENJRSAmJiByYXRlID09IFJFRl9D
TE9DS18yNE1Ieikgewo+Pj4+ICsJCQkvKiBYaW4yNE0gVDBfMSA2NTBtViAqLwo+Pj4+ICsJCQl3
cml0ZWwoMHgwMCwgcHJpdi0+bW1pbyArICgweDEwIDw8IDIpKTsKPj4+PiArCQkJd3JpdGVsKDB4
MzIsIHByaXYtPm1taW8gKyAoMHgxMSA8PCAyKSk7Cj4+Pj4gKwkJCXdyaXRlbCgweDAwLCBwcml2
LT5tbWlvICsgKDB4MWIgPDwgMikpOwo+Pj4+ICsJCQl3cml0ZWwoMHg5MCwgcHJpdi0+bW1pbyAr
ICgweDBhIDw8IDIpKTsKPj4+PiArCQkJd3JpdGVsKDB4MDIsIHByaXYtPm1taW8gKyAoMHgwYiA8
PCAyKSk7Cj4+Pj4gKwkJCXdyaXRlbCgweDA4LCBwcml2LT5tbWlvICsgKDB4MGMgPDwgMikpOwo+
Pj4+ICsJCQl3cml0ZWwoMHg1NywgcHJpdi0+bW1pbyArICgweDBkIDw8IDIpKTsKPj4+PiArCQkJ
d3JpdGVsKDB4NDAsIHByaXYtPm1taW8gKyAoMHgwZSA8PCAyKSk7Cj4+Pj4gKwkJCXdyaXRlbCgw
eDVmLCBwcml2LT5tbWlvICsgKDB4MGYgPDwgMikpOwo+Pj4+ICsJCQl3cml0ZWwoMHgxMCwgcHJp
di0+bW1pbyArICgweDIwIDw8IDIpKTsKPj4+PiArCQl9Cj4+Pj4gKwl9Cj4+Pj4gKwo+Pj4+ICsJ
cmV0dXJuIDA7Cj4+Pj4gK30KPj4+Cj4+Pgo+Pj4KPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0Cj4+PiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+PiBodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4+Cj4+Cj4g
Cj4gCj4gCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
