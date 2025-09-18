Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CAF0CAC597
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Sep 2025 23:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1Q0CpQ0ozTW5I1AzT3MasYk2Qszmca5I3crN9Ld0tiQ=; b=m3ibrh9o/WAa0crA8C0aTnRjXf
	rLzgiqPU+upppUWW6tfn+EIe4EvLHQAWPd++miE6jGbqpKYl95hhnLTGuY2jeWGb/yQXHF+Z9seDm
	BUL0YGXBB4pnBEzR0JRhW60aeKjdPwzl6QwA942nSShydWHWKXoPna7g+pKUWezAb/ATT9cfqJgLj
	+H33zmBQbLsj3db6ZhfAlhnP7E0Rc5RJw3ifyc4G5VnxOSaPTWAW8fAvoafFce2HjqpybeGrvPoBV
	F+UU66/i5KqOX8ClosVBIXF74BI+mseRCP/P67mQR8WnIY8x4Z8+NxagPKsz5eduxdERGfDzSiGca
	zp45+vnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzOWc-00000001TdC-2wPb;
	Thu, 18 Sep 2025 23:58:54 +0000
Received: from smtpbgau2.qq.com ([54.206.34.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzOWZ-00000001TcL-0GJi;
	Thu, 18 Sep 2025 23:58:52 +0000
X-QQ-mid: zesmtpip3t1758239883t0b647914
X-QQ-Originating-IP: ebRMGzBjijlWXuQsf6iwul141MP9TuMkYCuGXgTq/S0=
Received: from [IPV6:240f:10b:7440:1:ce36:128f ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 19 Sep 2025 07:57:59 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2633226193335492939
Message-ID: <0DB47BC84E90B0E6+694b1274-4826-4ec1-9aa2-ca8aa790f61a@radxa.com>
Date: Fri, 19 Sep 2025 08:57:57 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: correct uart mux for Radxa
 ZERO3
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Ed W <lists@wildgooses.com>
References: <20250917114932.25994-1-lists@wildgooses.com>
 <FBB5B30DE8FEABD7+59ee6f48-2ad1-45dd-8cf1-8b58a03513a9@radxa.com>
 <adbc2396-d5f0-4dd6-a65e-0dd78a58b9a4@wildgooses.com>
 <2325560.3ZeAukHxDK@diego>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <2325560.3ZeAukHxDK@diego>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NZl/JFjf+G/9NnBAWC2/wJeh4AzqbtRYPSMN1AjWaIeQlmOgZHzuswFw
	MFTkVb6usk5d4A1zax0rQ3KC8+hZrFcRh/U9k35MY9eo4Pfd2aWWTKpAz2C209BQBFgW6SM
	1UF5XGW6mWpzfWSliuJZxIqkz8pQw2djRfHGOPpQL8GIIFCg8JfQMPv/unRGVGe9QiLeY8I
	lHxqlm1qNe40z8tEZR52xgt5asps3atmePwjTBSbK7i0tPN+cugr0rVO3Q8VTcGDmfGg1Nk
	8k+pbFudOkdhzj2mgtCgW1GyyVneLngmmMdQwbZJJQnOFso01rXueqDH5n3Ia7YxCF5reUN
	tYOU8PWKVYEwv2rmDmja77gbSXhPfNBrUi77iBhEmg41AoIcKB/HdKN3xaW+s1ttESKhTs4
	jocyKGSJ2guYErBOW2pPBtUK//pfktX/izVrpy4PGngYlpa2tI/FpyULlrqr7TawhxwduzI
	Mt08+PBiwJ/T5JzIG/b5TUDX8aTVnVyRowRc84aIZPAzhoX4Z46ezFPSkpCPu8aj1zof8PL
	QWyW2JJrSdVhPYZPRpDCD9azlMrv5TjK8amv7efR5HpcwC6i0xj2l2sX+kp0TkFga6ZsGn4
	jt0P5Iogf+Ns+rxh4U8dfMPmLPPJI2LwbqF6XJ6OxF9zLE0XqRxRMMXlF7LwR8oyrr0A7AW
	TgMEX9x8HTuKgkqpf/AILxXtk02V9NgOfbW57Zx3cm+QJfvRl/cAfSZ32s5rFiuln1cGQAM
	aCNWbZa+57NKRyQ5fACrTDn4zkL+F6qIKMS1gAxDRZ599ncSZsEFcNihQsJX2wS/nx6CcvG
	HxCL3n37pxUiMpOjzgNTCEDohqLp5ClzMnkYTuT497EAYkNOwFzai+O/LB/Y99lYSxK7HGC
	roL2ZJTARioDXHYNN/27qccS+HTcQOiltvipapkXpdjgUFFvGlIaXeAFODQyXXor+9u6J2E
	1ir41ekPl470t5rADbK8D1GgqyvneD7zV6dMRNxChciMufHbGuHSrAJFY0LTBXFjPQfKs+g
	jvY1RR6Q==
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_165851_525366_B4560377 
X-CRM114-Status: GOOD (  20.22  )
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

SGkgSGVpa28sIEVkLAoKT24gOS8xOS8yNSAwMToxOCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4g
QW0gRG9ubmVyc3RhZywgMTguIFNlcHRlbWJlciAyMDI1LCAxNzoyMzowNCBNaXR0ZWxldXJvcMOk
aXNjaGUgU29tbWVyemVpdCBzY2hyaWViIEVkIFc6Cj4+IE9uIDE4LzA5LzIwMjUgMDU6NTMsIEZV
S0FVTUkgTmFva2kgd3JvdGU6Cj4+PiBIaSBFZCwKPj4+Cj4+PiBUaGFuayB5b3UgdmVyeSBtdWNo
IGZvciB5b3VyIHdvcmsuCj4+Pgo+Pj4gT24gOS8xNy8yNSAyMDo0OSwgRWQgV2lsZGdvb3NlIHdy
b3RlOgo+Pj4+IFRoZSByazM1NjYgaGFzIG11bHRpcGxleGVkIHBpbnMgYW5kIHRoZSB1YXJ0cyBj
YW4gYmUgbW92ZWQgdG8gYSBjaG9pY2UKPj4+PiBvZiAyIHBpbiBncm91cHMuIFRoZSBkZWZhdWx0
IHJrMzU2eC1iYXNlLmR0c2kgYXBwZWFycyB0byBkZWZhdWx0IHRvIG11eDAKPj4+PiBmb3IgYWxs
IHVhcnRzLCBob3dldmVyLCBzcGVjaWZpYyBoYXJkd2FyZSBtaWdodCBjaG9vc2UgdG8gaW1wbGVt
ZW50Cj4+Pj4gYWx0ZXJuYXRpdmVzCj4+Pj4KPj4+PiBUaGUgUmFkeGEgemVybyAzIHNob3dzIHRo
YXQgaXMgdXNlcyBNMSBmb3IgdWFydHM6Cj4+Pj4gLSB1YXJ0NAo+Pj4+IC0gdWFydDUKPj4+PiAt
IHVhcnQ5Cj4+Pj4KPj4+PiBUaGVzZSBhcmVuJ3Qgbm9ybWFsbHkgZW5hYmxlZCwgYnV0IHdlIHNo
b3VsZCBhdCBsZWFzdCBjb3JyZWN0IHRoZQo+Pj4+IGRlZmF1bHQgcGluY3RybCBkZWZpbml0aW9u
cy4gV2l0aG91dCB0aGVzZSBjaGFuZ2VzIHRoZXJlIHdpbGwgYmUKPj4+PiBjb25mbGljdHMgd2l0
aCBtbWMwL21tYzEsIGxlYWRpbmcgdG8gdGhlIFNEIG9yIGVNTUMgZ29pbmcgbWlzc2luZy4KPj4+
Cj4+PiBTb3JyeSwgYnV0IHdoeSBkbyB3ZSBuZWVkIHRoZXNlIGRlZmluaXRpb25zIGZvciBkaXNh
YmxlZCBub2Rlcz8KPj4+Cj4+PiBPciB3aHkgZG9uJ3Qgd2UgZG8gc2ltaWxhciBkZWZpbml0aW9u
cyBmb3Igbm9kZXMgb3RoZXIgdGhhbiB1YXJ0Pwo+Pj4gRm9yIGV4YW1wbGUsIFBXTTEyLCBJMlMz
LCBhbmQgU1BJMyBhbHNvIHVzZSBNMS4gQXJlIHRoZXkgbm90IHJlbGF0ZWQgdG8gU0QvZU1NQyBh
bmQgdGhlcmVmb3JlCj4+PiBkb24ndCBuZWVkIHRvIGJlIGRlZmluZWQ/Cj4+Pgo+Pj4gSWYgdXNl
cnMgd2FudCB0byB1c2UgVUFSVHMgb24gcGluIGhlYWRlcnMsIHRoZXkgd2lsbCByZWZlciB0byB0
aGUgY29ycmVjdCBkb2N1bWVudGF0aW9uWzFdIHRvCj4+PiBkZXRlcm1pbmUgd2hpY2ggcGlucyBh
cmUgVUFSVHMgYW5kIHdpbGwgb2YgY291cnNlIHdyaXRlIHRoZSBjb3JyZWN0IHBpbmN0cmwgZGVm
aW5pdGlvbi4KPj4+Cj4+PiBbMV0gaHR0cHM6Ly9kb2NzLnJhZHhhLmNvbS9lbi96ZXJvL3plcm8z
L2hhcmR3YXJlLWRlc2lnbi9oYXJkd2FyZS1pbnRlcmZhY2UjZ3Bpby1pbnRlcmZhY2UKPj4+Cj4+
PiBCZXN0IHJlZ2FyZHMsCj4+Pgo+Pgo+Pgo+PiBQZXJzb25hbGx5LCBhbmQgSSdtIHNheWluZyB0
aGlzIGFzIGEgdXNlciB3aG8gaXMgdGVjaG5pY2FsIGVub3VnaCB0byBmaXggdGhlIGRlZmluaXRp
b25zLCBpdCB0b29rIG1lCj4+IHF1aXRlIGEgZmV3IGRheXMgdG8gZmlndXJlIG91dCB3aGF0IHdh
cyB3cm9uZyB3aXRoIHRoZSBkZWZpbml0aW9ucyBhbmQgdW5kZXJzdGFuZCB0aGUgaW50cmljYXRl
IHRyZWUKPj4gb2YgZHRzaSBpbmNsdWRlcywgdG8gZmluYWxseSBmaWd1cmUgb3V0IHdoeSBJIGNv
dWxkbid0IGp1c3QgZG8gYSAic3RhdHVzID0gIm9rYXkiOyIgdG8gZW5hYmxlIHRoZQo+PiBVQVJU
cy4uLiAod2hpY2ggaXMgcm91Z2hseSB3aGF0IGlzIHNob3duIGluIHNldmVyYWwgcmFkeGEgc3Vw
cGxpZWQgb3ZlcmxheXMgdG8gZW5hYmxlIHVhcnRzIG9uCj4+IHZhcmlvdXMgYm9hcmRzKQo+Pgo+
PiBTbyBteSB2b3RlIHdvdWxkIGJlIHRvIGNvcnJlY3RseSBkZWZpbmUgYWxsIHRoZSBoYXJkd2Fy
ZSBmb3IgYSBnaXZlbiBib2FyZC4gVGhlbiB1c2VycyBjYW4gc2ltcGx5IGRvCj4+IGEgc3RhdHVz
PSJva2F5IiB0byBlbmFibGUgYW5kIG9mZiB0aGV5IGdvLgo+IAo+IEFuZCBJJ2QgYWdyZWUgd2l0
aCB0aGF0IGFyZ3VtZW50LiBTZXR0aW5nIHVwIHRoZSBuZWVkZWQgcGluY3RybCBzZXR0aW5ncwo+
IGZvciB0aGUgcGVyaXBoZXJhbHMgZGVzY3JpYmVkIGluIHRoZSBkZXZpY2UgZG9jdW1lbnRhdGlv
bgo+ICggaHR0cHM6Ly9kb2NzLnJhZHhhLmNvbS9lbi96ZXJvL3plcm8zL2hhcmR3YXJlLWRlc2ln
bi9oYXJkd2FyZS1pbnRlcmZhY2UjZ3Bpby1pbnRlcmZhY2UgKQo+IAo+IGlzIHRoZSBzZW5zaWJs
ZSB0aGluZyB0byBkby4gV2hpbGUga2VlcGluZyB0aGUgcGVyaXBoZXJhbHMgaXRzZWxmIGRpc2Fi
bGVkCj4gYW5kIGZvciB0aGUgdXNlciB0byBkZWNpZGUgd2hpY2ggcGVyaXBoZXJhbCB0byBlbmFi
bGUuCgpJJ20gbm90IHN0cm9uZ2x5IG9wcG9zZWQgdG8gdGhpcyBwb2xpY3ksIGJ1dCBJIHRob3Vn
aHQgaWYgeW91J3JlIGdvaW5nIAp0byBkbyB0aGlzLCB5b3Ugc2hvdWxkIGRvIGl0IGZvciBldmVy
eXRoaW5nLCBub3QganVzdCBVQVJUcy4KCkJlc3QgcmVnYXJkcywKCi0tCkZVS0FVTUkgTmFva2kK
UmFkeGEgQ29tcHV0ZXIgKFNoZW56aGVuKSBDby4sIEx0ZC4KCj4gSGVpa28KPiAKPiAKPiAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
