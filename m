Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AB63CA0EED
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Aug 2025 14:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0rVAV/toizkZ6p/NVq6BITkXNpXeU74hxTcJUFvI9sI=; b=2o/XaCJ+y1Hemv
	QaL5NJYNgOEmBhhYSzJnrPw0s6PVrC5bk9tCsoZO5RfSMUA7EW8rz6z/GOFTQvzUAB9Qknn/XxQJc
	4fJNvG+wsKQVAD3npMVY5U7QwVGy3QVAkcZroq0nuBPMRKYcumB9viv6KkUFV8utG3aXd0VbAfaXx
	WcKYEkcoV8Wbf3tiuYMHj5KADEYYZj9BcjlgHMNbc+jUabEaOcv/VCEa7XX5CX99mevYweiwX1Apk
	yFuR/y7/bxPhda/2cGgGoMWwf0TgVoBA1m9GLO86P3AswRaiVcGFtDABqj5RAAXJ4OwLFQhdAMYGY
	M+FQgRJXbwRZJYI8OPOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upp9s-00000004qLS-033U;
	Sat, 23 Aug 2025 14:23:52 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upp7A-00000004q2i-0iYi;
	Sat, 23 Aug 2025 14:21:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1755958862; bh=JFft/FXSDO4ypbrVZyw9DalUpokF7DX877H6dzJtP5M=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=AMgkdmbqw9szbcTxLUoM0Fk6qJABiZaHCQDOw5kh3AvOHXt8XXdfaHQQvu6K2E8DU
	 r43TrBxW+re8qLO6i4qNvIDOVHOBXGbDx1wVCdHhnACiR/OgVKXImOZu6YKHNPGcOD
	 q3YD51V9w55J9q5XNGJOyK/hvX60iy6V2d3BGjH0=
Date: Sat, 23 Aug 2025 16:21:01 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: maud_spierings@hotmail.com
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Enable the NPU on the orangepi
 5 boards
Message-ID: <7mt62weitabjzhuqnqkfonztxzx4on23nbexw7xygl622r43bj@tfs47k6aohu6>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	maud_spierings@hotmail.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20250823-orangepi5-v1-0-ae77dd0e06d7@hotmail.com>
 <20250823-orangepi5-v1-3-ae77dd0e06d7@hotmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250823-orangepi5-v1-3-ae77dd0e06d7@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250823_072104_506779_F6FDA3A0 
X-CRM114-Status: GOOD (  14.16  )
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

SGVsbG8gTWF1ZCwKCk9uIFNhdCwgQXVnIDIzLCAyMDI1IGF0IDAyOjQzOjUyUE0gKzAyMDAsIE1h
dWQgU3BpZXJpbmdzIHZpYSBCNCBSZWxheSB3cm90ZToKPiBGcm9tOiBNYXVkIFNwaWVyaW5ncyA8
bWF1ZF9zcGllcmluZ3NAaG90bWFpbC5jb20+Cj4gCj4gRW5hYmxlIHRoZSBOUFUgYW5kIHRoZSBQ
TUlDIHRoYXQgcG93ZXJzIGl0LgoKUmV2aWV3ZWQtYnk6IE9uZMWZZWogSmlybWFuIDxtZWdpQHhm
Zi5jej4KCj4gU2lnbmVkLW9mZi1ieTogTWF1ZCBTcGllcmluZ3MgPG1hdWRfc3BpZXJpbmdzQGhv
dG1haWwuY29tPgo+IC0tLQo+ICAuLi4vYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW9y
YW5nZXBpLTUuZHRzaSB8IDU2ICsrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5n
ZWQsIDU2IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODgtb3JhbmdlcGktNS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1ODgtb3JhbmdlcGktNS5kdHNpCj4gaW5kZXggOTFkNTZjMzRhMWU0NTZlMThk
YjMxZTFiYmU3MjUyYjdlNDYzMjU4OC4uYWMxZGYyMjNkNmEyNWYzMDU5Y2UzMzk3MDk1Mzc0NWU0
MDJlZjY5NSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4
OC1vcmFuZ2VwaS01LmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OC1vcmFuZ2VwaS01LmR0c2kKPiBAQCAtMjU4LDYgKzI1OCwyOCBAQCByZWd1bGF0b3Itc3Rh
dGUtbWVtIHsKPiAgCX07Cj4gIH07Cj4gIAo+ICsmaTJjMSB7Cj4gKwlwaW5jdHJsLW5hbWVzID0g
ImRlZmF1bHQiOwo+ICsJcGluY3RybC0wID0gPCZpMmMxbTJfeGZlcj47Cj4gKwlzdGF0dXMgPSAi
b2theSI7Cj4gKwo+ICsJdmRkX25wdV9zMDogcmVndWxhdG9yQDQyIHsKPiArCQljb21wYXRpYmxl
ID0gInJvY2tjaGlwLHJrODYwMiI7Cj4gKwkJcmVnID0gPDB4NDI+Owo+ICsJCWZjcyxzdXNwZW5k
LXZvbHRhZ2Utc2VsZWN0b3IgPSA8MT47Cj4gKwkJcmVndWxhdG9yLW5hbWUgPSAidmRkX25wdV9z
MCI7Cj4gKwkJcmVndWxhdG9yLWJvb3Qtb247Cj4gKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQg
PSA8NTUwMDAwPjsKPiArCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDw5NTAwMDA+Owo+ICsJ
CXJlZ3VsYXRvci1yYW1wLWRlbGF5ID0gPDIzMDA+Owo+ICsJCXZpbi1zdXBwbHkgPSA8JnZjYzV2
MF9zeXM+Owo+ICsJCXJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+ICsJCQlyZWd1bGF0b3Itb2ZmLWlu
LXN1c3BlbmQ7Cj4gKwkJfTsKPiArCX07Cj4gK307Cj4gKwo+ICAmaTJjNiB7Cj4gIAljbG9jay1m
cmVxdWVuY3kgPSA8NDAwMDAwPjsKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiBAQCAtMzUyLDYgKzM3
NCw0MCBAQCAmcGRfZ3B1IHsKPiAgCWRvbWFpbi1zdXBwbHkgPSA8JnZkZF9ncHVfczA+Owo+ICB9
Owo+ICAKPiArJnBkX25wdSB7Cj4gKwlkb21haW4tc3VwcGx5ID0gPCZ2ZGRfbnB1X3MwPjsKPiAr
fTsKPiArCj4gKyZya25uX2NvcmVfMCB7Cj4gKwlucHUtc3VwcGx5ID0gPCZ2ZGRfbnB1X3MwPjsK
PiArCXNyYW0tc3VwcGx5ID0gPCZ2ZGRfbnB1X3MwPjsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiAr
fTsKPiArCj4gKyZya25uX2NvcmVfMSB7Cj4gKwlucHUtc3VwcGx5ID0gPCZ2ZGRfbnB1X3MwPjsK
PiArCXNyYW0tc3VwcGx5ID0gPCZ2ZGRfbnB1X3MwPjsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiAr
fTsKPiArCj4gKyZya25uX2NvcmVfMiB7Cj4gKwlucHUtc3VwcGx5ID0gPCZ2ZGRfbnB1X3MwPjsK
PiArCXNyYW0tc3VwcGx5ID0gPCZ2ZGRfbnB1X3MwPjsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiAr
fTsKPiArCj4gKyZya25uX21tdV8wIHsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsKPiArCj4g
KyZya25uX21tdV8xIHsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsKPiArCj4gKyZya25uX21t
dV8yIHsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsKPiArCj4gICZzYXJhZGMgewo+ICAJdnJl
Zi1zdXBwbHkgPSA8JnZjY18xdjhfczA+Owo+ICAJc3RhdHVzID0gIm9rYXkiOwo+IAo+IC0tIAo+
IDIuNTAuMQo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
