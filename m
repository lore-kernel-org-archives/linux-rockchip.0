Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1E55C9EC7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 12:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tCxcvySYqAiHqthJvwnJ/G3ZYE8zpCr2TYylznpb5RI=; b=fURzlRHaBVTxKD
	bxbR0z99DUxx86HMWdNuk11eg0jgDggsPoblrNxaf8Gc6HVQmMjM+txVVQlW227S/HSxEXOfPJ75o
	icPCCtfhaJuxlu2fAX6h2V3QNlrmXzfeupr7ZwORa9ZAub/QkJZTkRXabKflQI2YT6C7QFnaaxJrI
	+Zt1/0CqzbZRyDYcNuNXMwZjH7R52Ty5B0i4F2dorhUkKpIpEFbz/FWGrnBNbs4ioBkjXxvV1qcuY
	v+JAw8iIn+iYSDEyNuNVr5rm8fbMLKMZsG05/9M3dzuMpHfxyK45c4gt+d/gczZ+S5JUl3LDLdSqV
	v/XpCwpYWmGRGZ78lwmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfH2r-00000005KVI-0AUA;
	Mon, 12 Jan 2026 12:29:17 +0000
Received: from mail-m1973172.qiye.163.com ([220.197.31.72])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfH2o-00000005KUk-0yZD;
	Mon, 12 Jan 2026 12:29:16 +0000
Received: from [172.16.12.163] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3056e6249;
	Mon, 12 Jan 2026 20:29:08 +0800 (GMT+08:00)
Message-ID: <1242f7d2-e68c-42ca-a6cc-c56c9e6a496f@rock-chips.com>
Date: Mon, 12 Jan 2026 20:29:04 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] mfd: rk8xx: Add RK801 support
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20260112102849.1479-1-chenjh@rock-chips.com>
 <20260112102849.1479-3-chenjh@rock-chips.com> <1980810.GKX7oQKdZx@diego>
From: Joseph Chen <chenjh@rock-chips.com>
In-Reply-To: <1980810.GKX7oQKdZx@diego>
X-HM-Tid: 0a9bb22e76c809d2kunm32fd54ab8197
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh5LTlYeTklNSx0eS00YH0xWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=VMJnJOxi5ZK4YIQf0Wessd6Nw6/dgGbl5DWcy01gmN7UhPbFw3DOb9Jl5ySJQb+cgIicXAIIzNQKyxC3sawz8pXBuqvYmkkgJbxBq4yvimsNj+L16B03Mg+R76CvOxeSQeJvuFnxmEBd2qTz4VAFXX7w8rTO7lAkL9/D5xwGMYY=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=g6uH84HDnFSrdVdJ26m+FtXVNrVdhC0apU6MQYr/8k0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_042914_897337_3C056389 
X-CRM114-Status: GOOD (  18.80  )
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

CuWcqCAyMDI2LzEvMTIgMTk6MDIsIEhlaWtvIFN0w7xibmVyIOWGmemBkzoKPiBIaSBKb3NlcGgs
Cj4KPiBBbSBNb250YWcsIDEyLiBKYW51YXIgMjAyNiwgMTE6Mjg6NDggTWl0dGVsZXVyb3DDpGlz
Y2hlIE5vcm1hbHplaXQgc2NocmllYiBKb3NlcGggQ2hlbjoKPj4gVGhlIFJLODAxIGlzIGEgUG93
ZXIgTWFuYWdlbWVudCBJQyAoUE1JQykgZm9yIG11bHRpbWVkaWEKPj4gYW5kIGhhbmRoZWxkIGRl
dmljZXMuIEl0IGNvbnRhaW5zIHRoZSBmb2xsb3dpbmcgY29tcG9uZW50czoKPj4KPj4gLSA0IEJV
Q0sKPj4gLSAyIExETwo+PiAtIDEgU1dJVENICj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEpvc2VwaCBD
aGVuIDxjaGVuamhAcm9jay1jaGlwcy5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvbWZkL0tjb25m
aWcgICAgICAgICAgICAgICAgIHwgICAgNiArLQo+PiAgIGRyaXZlcnMvbWZkL3JrOHh4LWNvcmUu
YyAgICAgICAgICAgIHwgICA4MSArKwo+PiAgIGRyaXZlcnMvbWZkL3JrOHh4LWkyYy5jICAgICAg
ICAgICAgIHwgICAzMyArLQo+PiAgIGRyaXZlcnMvcmVndWxhdG9yL3JrODA4LXJlZ3VsYXRvci5j
IHwgMTk2MyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4gICBpbmNsdWRlL2xpbnV4L21m
ZC9yazgwOC5oICAgICAgICAgICB8ICAxMTggKysKPj4gICA1IGZpbGVzIGNoYW5nZWQsIDIzNCBp
bnNlcnRpb25zKCspLCAxOTY3IGRlbGV0aW9ucygtKQo+PiAgIGRlbGV0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL3JlZ3VsYXRvci9yazgwOC1yZWd1bGF0b3IuYwo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9tZmQvS2NvbmZpZyBiL2RyaXZlcnMvbWZkL0tjb25maWcKPj4gaW5kZXggNmNlYzE4NTg5
NDcuLjU0MDVlODYzM2FhIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL21mZC9LY29uZmlnCj4+ICsr
KyBiL2RyaXZlcnMvbWZkL0tjb25maWcKPj4gQEAgLTEzNTUsMTUgKzEzNTUsMTUgQEAgY29uZmln
IE1GRF9SSzhYWAo+PiAgIAlzZWxlY3QgTUZEX0NPUkUKPj4gICAKPj4gICBjb25maWcgTUZEX1JL
OFhYX0kyQwo+PiAtCXRyaXN0YXRlICJSb2NrY2hpcCBSSzgwNS9SSzgwOC9SSzgwOS9SSzgxNi9S
SzgxNy9SSzgxOCBQb3dlciBNYW5hZ2VtZW50IENoaXAiCj4+ICsJdHJpc3RhdGUgIlJvY2tjaGlw
IFJLODAxL1JLODA1L1JLODA4L1JLODA5L1JLODE2L1JLODE3L1JLODE4IFBvd2VyIE1hbmFnZW1l
bnQgQ2hpcCIKPiBuaXQ6IEkgdGhpbmsgYXQgc29tZSBwb2ludCBpdCdkIGJlIHRpbWUgdG8gbWFr
ZSB0aGF0Cj4gCSJSb2NrY2hpcCBSWDh4eCBQb3dlciBNYW5hZ2VtZW50IENoaXBzIgo+IFRoZSBj
b25maWcgZW50cnkgaXMgYWxyZWFkeSBuYW1lZCB0aGF0IHdheSwgYW5kIHRoYXQgbGlzdCBvZiBp
bmRpdmlkdWFsCj4gc3VwcG9ydGVkIGNoaXBzIGdldHMgd2F5IHRvbyBsb25nLgo+Cj4gQWxzbyB0
aGUgaW5kaXZpZHVhbCBzdXBwb3J0ZWQgY2hpcHMgX2FyZV8gbGlzdGVkIGJlbG93LCBzbyB0aGUg
dW53aWVsZHkKPiBlbnRyeSBoZWFkbGluZSBjYW4gYmUgc2hvcnRlbmVkLgoKVGhhbmtzLCBhZ3Jl
ZWQuIFdpbGwgZml4IGluIHYzLgoKPj4gICAJZGVwZW5kcyBvbiBJMkMgJiYgT0YKPj4gICAJc2Vs
ZWN0IE1GRF9DT1JFCj4+ICAgCXNlbGVjdCBSRUdNQVBfSTJDCj4+ICAgCXNlbGVjdCBSRUdNQVBf
SVJRCj4+ICAgCXNlbGVjdCBNRkRfUks4WFgKPj4gICAJaGVscAo+PiAtCSAgSWYgeW91IHNheSB5
ZXMgaGVyZSB5b3UgZ2V0IHN1cHBvcnQgZm9yIHRoZSBSSzgwNSwgUks4MDgsIFJLODA5LAo+PiAt
CSAgUks4MTYsIFJLODE3IGFuZCBSSzgxOCBQb3dlciBNYW5hZ2VtZW50IGNoaXBzLgo+PiArCSAg
SWYgeW91IHNheSB5ZXMgaGVyZSB5b3UgZ2V0IHN1cHBvcnQgZm9yIHRoZSBSSzgwMSwgUks4MDUs
IFJLODA4LAo+PiArCSAgUks4MDksIFJLODE2LCBSSzgxNyBhbmQgUks4MTggUG93ZXIgTWFuYWdl
bWVudCBjaGlwcy4KPj4gICAJICBUaGlzIGRyaXZlciBwcm92aWRlcyBjb21tb24gc3VwcG9ydCBm
b3IgYWNjZXNzaW5nIHRoZSBkZXZpY2UKPj4gICAJICB0aHJvdWdoIEkyQyBpbnRlcmZhY2UuIFRo
ZSBkZXZpY2Ugc3VwcG9ydHMgbXVsdGlwbGUgc3ViLWRldmljZXMKPj4gICAJICBpbmNsdWRpbmcg
aW50ZXJydXB0cywgUlRDLCBMRE8gJiBEQ0RDIHJlZ3VsYXRvcnMsIGFuZCBvbmtleS4KPiBbLi4u
XQo+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3JlZ3VsYXRvci9yazgwOC1yZWd1bGF0b3IuYyBi
L2RyaXZlcnMvcmVndWxhdG9yL3JrODA4LXJlZ3VsYXRvci5jCj4+IGRlbGV0ZWQgZmlsZSBtb2Rl
IDEwMDY0NAo+PiBpbmRleCAxZTgxNDI0Nzk2NS4uMDAwMDAwMDAwMDAKPj4gLS0tIGEvZHJpdmVy
cy9yZWd1bGF0b3Ivcms4MDgtcmVndWxhdG9yLmMKPj4gKysrIC9kZXYvbnVsbAo+IExvb2tzIGxp
a2Ugc29tZXRoaW5nIGRpZCBnbyB3cm9uZyBoZXJlLCBhcyB5b3UncmUgcmVtb3ZpbmcgdGhlIHdo
b2xlCj4gZHJpdmVycy9yZWd1bGF0b3Ivcms4MDgtcmVndWxhdG9yLmMgZmlsZSBmcm9tIHRoZSBN
RkQgcGF0Y2guCj4KPgo+IFRoYW5rcwo+IEhlaWtvCj4KPgo+ClRoYW5rcyBmb3IgY2F0Y2hpbmcg
dGhpcy4gSXQgd2FzIGEgc2lsbHkgbWlzdGFrZSBvbiBteSBlbmQgZHVyaW5nIGxvY2FsCnBhdGNo
IHByZXBhcmF0aW9uLgpJJ2xsIHNlbmQgYSB2MyBzaG9ydGx5IHRvIGZpeCB0aGlzIGlzc3VlIHRv
IGF2b2lkIHdhc3RpbmcgcmV2aWV3ZXJzJyB0aW1lLgoKLS0gCkJlc3QgcmVnYXJkcywKSm9zZXBo
IENoZW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
