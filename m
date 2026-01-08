Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17B88D185E8
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 12:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lldLxF8WEWPpXE/qfzRBdWlsmQqdT9cbU2/H7ZVqzkM=; b=w8UpWhlxNXBGoH
	MBf3HsQXLkmlmglLokibgQ3fukiXdKYvWCFs1LDsCbtCBpi2gcnDetwVe84THFj1n1O9+tnhkIXU5
	bV17NMdtI9Yezn2QM1MM0tkeXpt7Gz00QRcTKOfV4M35zNQ39R7kXYRDtWJQhusYFGMacyb2u/Cwj
	L5AnPvc4JLvnLyGFxTZ6lRV0C/qcOMZYxK6EMg3F8oXCWJSTBu1xTgd7JbXWgOLWGBYwNao2VEuNb
	27HnTrGy8NMCwFg9KeNcTTcNjmh8StIGpsvcn3wsSwqby3gYqqHlSx3fRx+vVX/C5bisEi4qGusRr
	XBoGMg9AYX55jSnKoZng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdou2-0000000GwvR-1hIb;
	Thu, 08 Jan 2026 12:14:10 +0000
Received: from mail-m49224.qiye.163.com ([45.254.49.224])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdotx-0000000GwtP-23mQ;
	Thu, 08 Jan 2026 12:14:08 +0000
Received: from [172.16.12.16] (gy-adaptive-ssl-proxy-4-entmail-virt151.gy.ntes [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2ff5af838;
	Thu, 8 Jan 2026 20:13:52 +0800 (GMT+08:00)
Message-ID: <a2f5c2b3-2168-41b4-917f-183ab72a4499@rock-chips.com>
Date: Thu, 8 Jan 2026 20:13:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/7] dt-bindings: pinctrl: rockchip: Add RMIO
 controller binding
To: Linus Walleij <linusw@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 tao.huang@rock-chips.com
References: <20251216112053.1927852-1-ye.zhang@rock-chips.com>
 <20251216112053.1927852-7-ye.zhang@rock-chips.com>
 <CAD++jLntu4LY=VHOMSXeLKXOBD9MTNziv47B0qkDjxUa1xAsng@mail.gmail.com>
 <85032ae4-4d82-4884-aa7c-b69fee76d509@rock-chips.com>
 <CAD++jLnH2vLNxTLj8Lw8RnOHxfitwi3G_8WCBtu+_=XL3ryH_w@mail.gmail.com>
From: Ye Zhang <ye.zhang@rock-chips.com>
In-Reply-To: <CAD++jLnH2vLNxTLj8Lw8RnOHxfitwi3G_8WCBtu+_=XL3ryH_w@mail.gmail.com>
X-HM-Tid: 0a9b9d870e4309d8kunm04506d9976d9ca
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkoZT1YaHh1MTktNHUgZH0JWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=UV8AvzP1G+MxRLfAXtJtmMOMR0xcdDJUv3mojtqaLqKD+Z5/M3TRVtZjk3TfzxuWQYa3jqB77SY4oVsFjc5DjUX4G2ETFwmBWpscdhdvUh8j3EUCwEdcuzXbkpI2mBU2hvzcc+HqdPGhZ1DrjbsNfaRZRdUdW6NzmEOva4rFhc4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=qKUPfb6RjX38dUPs0zWmKo6fI+2s9bZCTUhRH83gC7Y=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_041406_103747_87573E9A 
X-CRM114-Status: GOOD (  21.85  )
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

CuWcqCAyMDI2LzEvNCAxOTo0NCwgTGludXMgV2FsbGVpaiDlhpnpgZM6Cj4gT24gU2F0LCBEZWMg
MjcsIDIwMjUgYXQgMzo0NuKAr0FNIFllIFpoYW5nIDx5ZS56aGFuZ0Byb2NrLWNoaXBzLmNvbT4g
d3JvdGU6Cj4KPj4gSSB1bmRlcnN0YW5kIHlvdXIgcHJlZmVyZW5jZSBmb3Igc3RhbmRhcmQgYmlu
ZGluZ3MuICBIb3dldmVyLCB0aGVyZSBpcyBhCj4+IHNwZWNpZmljIGNvbnN0cmFpbnQgaGVyZTog
dGhlIFJNSU8gYWN0cyBhcyBhIHNlY29uZGFyeSBsYXllciBvZiBtdXhpbmcsCj4+IHNpdHRpbmcg
YmVoaW5kIHRoZSBwcmltYXJ5IElPTVVYIGNvbnRyb2xsZXIuCj4+Cj4+IFRoZSBleGlzdGluZyBS
b2NrY2hpcCBwaW5jdHJsIGJpbmRpbmcgdXNlcyB0aGUgdmVuZG9yLXNwZWNpZmljCj4+IHJvY2tj
aGlwLHBpbnMgcHJvcGVydHkgZm9yIHRoZSBwcmltYXJ5IElPTVVYIGNvbmZpZ3VyYXRpb24uICBJ
ZiBJIHdlcmUKPj4gdG8gdXNlIHRoZSBzdGFuZGFyZCBwaW5tdXggcHJvcGVydHkgZm9yIFJNSU8s
IHRoZSBub2RlIHdvdWxkIGNvbnRhaW4KPj4gbWl4ZWQgYmluZGluZ3MgbGlrZSB0aGlzOgo+Pgo+
PiBub2RlIHsKPj4gICAgICAgLyogUHJpbWFyeSBJT01VWCAoZXhpc3RpbmcgYmluZGluZykgKi8K
Pj4gICAgICAgcm9ja2NoaXAscGlucyA9IDwxIFJLX1BCMSAxNiAmcGNmZ19wdWxsX25vbmU+Owo+
PiAgICAgICAvKiBTZWNvbmRhcnkgUk1JTyAgKi8KPj4gICAgICAgcGlubXV4ID0gPChSTUlPX0lE
IDw8IDE2KSB8IChSTUlPX1BJTiA8PCA4KSB8IFJNSU9fRlVOQz47Cj4+IH07Cj4+Cj4+IFNpbmNl
IHRoaXMgbm9kZSBkZXNjcmliZXMgYSBzaW5nbGUgaGFyZHdhcmUgcGluIGNvbmZpZ3VyYXRpb24g
dGhhdAo+PiByZXF1aXJlcyB0d28gc2VwYXJhdGUgaGFyZHdhcmUgc2V0dGluZ3MgKFByaW1hcnkg
TXV4ICsgU2Vjb25kYXJ5IFJNSU8pLAo+PiBJIHRob3VnaHQga2VlcGluZyB0aGUgc2Vjb25kYXJ5
IGNvbmZpZyBhcyBhIHZlbmRvci1zcGVjaWZpYyBwcm9wZXJ0eQo+PiAocm9ja2NoaXAscm1pbykg
YWxvbmdzaWRlIHJvY2tjaGlwLHBpbnMgd291bGQgYmUgbW9yZSBjb25zaXN0ZW50IGFuZAo+PiBs
ZXNzIGNvbmZ1c2luZyB0aGFuIG1peGluZyBsZWdhY3kgY3VzdG9tIGJpbmRpbmdzIHdpdGggc3Rh
bmRhcmQgcGlubXV4Lgo+IEkgc2VlIHRoZSBjb25jZXJuIGJ1dCBJIHdvdWxkIHNheSB0d28gd3Jv
bmdzIGRvZXNuJ3QgbWFrZSBvbmUgcmlnaHQuCj4KPiBUaGUgRFQgYmluZGluZyBwZW9wbGUgd2ls
bCBoYXZlIHRvIHNheSB3aGF0IHRvIGRvIGhlcmUsIGJ1dCBpZGVhbGx5Cj4gSSB3b3VsZCBzYXkg
dGhlIHByaW1hcnkgSU9NVVggc2hvdWxkIGJlIG1vZGlmaWVkIHRvICphbHNvKiAqYWRkaXRpb25h
bGx5Kgo+IHN1cHBvcnQgdGhlIHN0YW5kYXJkIGJpbmRpbmdzIGFuZCBkZXByZWNhdGluZyB0aGUg
b2xkIHJvY2tjaGlwLHBpbnMsCj4gYW5kIHRoZW4geW91IGNhbiBjb25zaXN0ZW50bHkgdXNlIHRo
ZSBwaW5tdXg9PD47IGJpbmRpbmcgaW4gbmV3Cj4gdHJlZXMgZm9yIGJvdGggcGlubXV4ZXMuCj4K
PiBJIHVuZGVyc3RhbmQgdGhhdCBtYXliZSB5b3UgYXJlIG9ubHkgd29ya2luZyBvbiB0aGlzIG90
aGVyIGNvbnRyb2xsZXIKPiBhbmQgbWlnaHQgZmVlbCB0aGF0IHRoZSBwcmltYXJ5IElPTVVYIGlz
IG5vbmUgb2YgeW91ciBjb25jZXJuLAo+IGJ1dCBzb21lb25lIGhhcyB0byBzdGFuZCB1cCBhbmQg
dGFrZSB0aGUgcmVzcG9uc2liaWxpdHkgZm9yIHRoZSBzeXN0ZW0KPiBhcyBhIHdob2xlLCBpZiBu
by1vbmUgZWxzZSB0aGVuIHRoZSBSb2NrY2hpcCBTb0MgbWFpbnRhaW5lciwgZWxzZQo+IHdlIGdl
dCB0aHJvdy1vdmVyLXRoZS13YWxsLWVuZ2luZWVyaW5nLgpIaSBMaW51cywKCldlIGhhdmUgZGlz
Y3Vzc2VkIHRoaXMgaW50ZXJuYWxseSwgYW5kIHdlIGZ1bGx5IGFncmVlIHdpdGggeW91ciBzdWdn
ZXN0aW9uOgp0aGUgZHJpdmVyIHNob3VsZCBiZSBtb2RpZmllZCB0byAqYWRkaXRpb25hbGx5KiBz
dXBwb3J0IHRoZSBzdGFuZGFyZApiaW5kaW5ncywgYWxsb3dpbmcgdXMgdG8gZXZlbnR1YWxseSBk
ZXByZWNhdGUgdGhlIG9sZCBgcm9ja2NoaXAscGluc2AuCgoqKlJlZ2FyZGluZyB0aGUgUk1JTyBz
dXBwb3J0IGluIHRoaXMgc2VyaWVzOioqCkkgYW0gd2lsbGluZyB0byBpbXBsZW1lbnQgdGhlIHN0
YW5kYXJkIGBwaW5tdXhgIGJpbmRpbmcgZm9yIHRoZQoqKlJNSU8qKiBwYXJ0IGltbWVkaWF0ZWx5
IGluIHRoaXMgdjUuIFRoaXMgZW5zdXJlcyB0aGF0IHRoZSBuZXcgZmVhdHVyZQpzdGFydHMgd2l0
aCB0aGUgY29ycmVjdCwgc3RhbmRhcmQgYmluZGluZy4KCioqUmVnYXJkaW5nIHRoZSBwcmltYXJ5
IElPTVVYOioqCkhvd2V2ZXIsIHRoZSBSSzM1MDYgcGluY3RybCBzdXBwb3J0IGlzIGJ1aWx0IHVw
b24gdGhlIGV4aXN0aW5nCmBwaW5jdHJsLXJvY2tjaGlwYCBkcml2ZXIgaW5mcmFzdHJ1Y3R1cmUs
IHdoaWNoIHdhcyBvcmlnaW5hbGx5IGRlc2lnbmVkIAphcm91bmQKdGhlIGByb2NrY2hpcCxwaW5z
YCBwcm9wZXJ0eS4gUmVmYWN0b3JpbmcgdGhlIGRyaXZlciB0byBzdXBwb3J0IHRoZSBzdGFuZGFy
ZApgcGlubXV4YCBiaW5kaW5nIChhbmQgdGhlIHN1Z2dlc3RlZCBuZXN0ZWQgbm9kZSBzdHJ1Y3R1
cmUpIGlzIGEgc2lnbmlmaWNhbnQKdW5kZXJ0YWtpbmcgdGhhdCBpbnZvbHZlcyBjb3JlIGxvZ2lj
IGNoYW5nZXMgYW5kIHJlZ3Jlc3Npb24gcmlza3MgZm9yIG9sZGVyClNvQ3MuIE1hbmRhdGluZyB0
aGlzIHJlZmFjdG9yaW5nIGFzIGEgcHJlcmVxdWlzaXRlIGZvciBSSzM1MDYgc3VwcG9ydAp3b3Vs
ZCBlZmZlY3RpdmVseSBibG9jayB0aGlzIFNvQyBmcm9tIGJlaW5nIHN1cHBvcnRlZCB1cHN0cmVh
bSBmb3IgYSAKbG9uZyB0aW1lLgoKQ291bGQgd2UgYWxsb3cgUkszNTA2IHRvIGZvbGxvdyB0aGUg
ZXhpc3RpbmcgZHJpdmVyJ3Mgc3R5bGUgZm9yIG5vdyB0byAKZW5zdXJlCmNvbnNpc3RlbmN5IGFu
ZCB0aW1lbHkgc3VwcG9ydD8gV2UgYWdyZWUgdGhhdCBtaWdyYXRpbmcgdG8gc3RhbmRhcmQgcGlu
bXV4CmJpbmRpbmdzIGlzIHRoZSByaWdodCBkaXJlY3Rpb24sIGJ1dCB3ZSBiZWxpZXZlIGl0IHNo
b3VsZCBiZSBoYW5kbGVkIGFzIGEKc2VwYXJhdGUsIGRlZGljYXRlZCBwcm9qZWN0IGluIHRoZSBm
dXR1cmUgcmF0aGVyIHRoYW4gcGFydCBvZiB0aGlzIAplbmFibGVtZW50IHNlcmllcy4KCkhpIEhl
aWtvLApEbyB5b3UgYWdyZWUgd2l0aCB0aGlzPwoxLsKgIMKgIMKgIMKgIFVzZSBzdGFuZGFyZCBg
cGlubXV4YCBmb3IgUk1JTyBpbiB0aGlzIHNlcmllcy4KMi7CoCDCoCDCoCDCoCBLZWVwIGByb2Nr
Y2hpcCxwaW5zYCBmb3IgdGhlIHByaW1hcnkgSU9NVVggZm9yIG5vdy4KMy7CoCDCoCDCoCDCoCBQ
bGFuIGEgZnV0dXJlIHJlZmFjdG9yaW5nIHRvIG1pZ3JhdGUgdGhlIHByaW1hcnkgSU9NVVggdG8g
CnN0YW5kYXJkIGJpbmRpbmdzLgoKQmVzdCByZWdhcmRzLApZZSBaaGFuZwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
