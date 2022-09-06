Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BED3ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 13:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W2oCTvxbxdPKUx6JZfuj7t6ejicNF3f7hQN/28LQszY=; b=X/Rd1C305Qi4U4
	X43X/vdAXrOiE8xcqGJLmvy+ab3uaeKTEPhKiCA+xBJMC8PWDSEnuJhE7dxzTCdFSpHfEHKW4/Som
	I2NZbOOgpIhzOBz+JySlfwcsiPaM3L3lLLLxQvZryIhNavngtcJrqXaJ6Lq/KYEICwAnnD/QnNzYh
	iZARO5lEIpb7yIy9JDM8QWq3Ubs8zB+BiEJ0GW00dyYFWUCeUdNlxkCh9pMkyqNbCUUj45NGFzSbq
	OZZ4YggprXFpFQExgZQW3C7hHnt1vviYU5ksnW35p0UZRLoptuL/rUJz5hiXtezmLB+OzApC1sOfK
	P8LSF93BWOOPHHtQk4gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVYkS-00DrcY-U0; Tue, 06 Sep 2022 13:36:16 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVYjz-00DrDj-Vy; Tue, 06 Sep 2022 13:35:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1662471339; bh=CGyEzQ7Ohr5A/cWCuHJ4L2zyjQiyb+aYxH/EYO9OTGU=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=PvaKeuuyqsDS6jTFvvDc+oQyBZ900VRvVuiY9zEzWgmQT2bghS1tGDnZtAfNrqt7m
	 4RmcEsomUuSZM/1n/E7qULITo1PFJMgVP95voEjg4QO00/noepJqEaKyKXghW8eI2O
	 K2NtwwAVGZ8J/TnTs+7PaCHZGbTUqfeR2mGac+CI=
Date: Tue, 6 Sep 2022 15:35:39 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	phone-devel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: add BT/wifi nodes to Pinephone Pro
Message-ID: <20220906133539.6ghjlzbs2ozgsa7v@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	phone-devel@vger.kernel.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20220906124713.1683587-1-tom@tom-fitzhenry.me.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220906124713.1683587-1-tom@tom-fitzhenry.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_063548_900060_B71CC823 
X-CRM114-Status: GOOD (  18.27  )
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

SGVsbG8gVG9tLAoKT24gVHVlLCBTZXAgMDYsIDIwMjIgYXQgMTA6NDc6MTNQTSArMTAwMCwgVG9t
IEZpdHpoZW5yeSB3cm90ZToKPiBQaW5lcGhvbmUgUHJvIGluY2x1ZGVzIGEgQXp1cmVXYXZlIEFX
LUNNMjU2U00gd2lmaSAoc2RpbzApIGFuZAo+IGJ0ICh1YXJ0MCkgY29tYm8gbW9kdWxlLCB3aGlj
aCBpcyBiYXNlZCBvbiBDeXByZXNzCj4gQ1lQNDM0NTUgKEJDTTQzNDU1KS4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBUb20gRml0emhlbnJ5IDx0b21AdG9tLWZpdHpoZW5yeS5tZS51az4KPiAtLS0KPiAg
Li4uL2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMgICAgIHwgNjkgKysrKysr
KysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNjkgaW5zZXJ0aW9ucygrKQo+IAo+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUt
cHJvLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1w
cm8uZHRzCj4gaW5kZXggMmUwNThjMzE1MDI1Ni4uMDk2MjM4MTI2ZTRjMSAxMDA2NDQKPiAtLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cwo+
ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8u
ZHRzCj4gQEAgLTQzLDYgKzQzLDIwIEBAIGtleS1wb3dlciB7Cj4gIAkJfTsKPiAgCX07Cj4gIAo+
ICsJLyogUG93ZXIgc2VxdWVuY2UgZm9yIFNESU8gV2lGaSBtb2R1bGUgKi8KPiArCXNkaW9fcHdy
c2VxOiBzZGlvLXB3cnNlcSB7Cj4gKwkJY29tcGF0aWJsZSA9ICJtbWMtcHdyc2VxLXNpbXBsZSI7
Cj4gKwkJY2xvY2tzID0gPCZyazgxOCAxPjsKPiArCQljbG9jay1uYW1lcyA9ICJleHRfY2xvY2si
Owo+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwkJcGluY3RybC0wID0gPCZ3aWZp
X2VuYWJsZV9oX3Bpbj47Cj4gKwkJcG9zdC1wb3dlci1vbi1kZWxheS1tcyA9IDwxMDA+Owo+ICsJ
CXBvd2VyLW9mZi1kZWxheS11cyA9IDw1MDAwMDA+OwoKRG8gd2UgcmVhbGx5IG5lZWQgc3VjaCBs
b25nIGRlbGF5cz8gQWxtb3N0IG5vIGJvYXJkcyBpbiByb2NrY2hpcC8gdXNlIHN1Y2gKZGVsYXlz
IGF0IGFsbCwgYW5kIGlmIHRoZXkgZG8gdGhleSBkb24ndCB1c3VhbGx5IHVzZSBwb3dlciBvZmYg
ZGVsYXkuCgo+ICsJCS8qIFdMX1JFR19PTiBvbiBtb2R1bGUgKi8KPiArCQlyZXNldC1ncGlvcyA9
IDwmZ3BpbzAgUktfUEIyIEdQSU9fQUNUSVZFX0xPVz47Cj4gKwl9Owo+ICsKPiAgCXZjY19zeXM6
IHZjYy1zeXMtcmVndWxhdG9yIHsKPiAgCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7
Cj4gIAkJcmVndWxhdG9yLW5hbWUgPSAidmNjX3N5cyI7Cj4gQEAgLTM2MCwxMSArMzc0LDMxIEBA
IHZzZWwyX3BpbjogdnNlbDItcGluIHsKPiAgCQl9Owo+ICAJfTsKPiAgCj4gKwlzZGlvLXB3cnNl
cSB7Cj4gKwkJd2lmaV9lbmFibGVfaF9waW46IHdpZmktZW5hYmxlLWgtcGluIHsKPiArCQkJcm9j
a2NoaXAscGlucyA9IDwwIFJLX1BCMiBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPiAr
CQl9Owo+ICsJfTsKPiArCj4gIAlzb3VuZCB7Cj4gIAkJdmNjMXY4X2NvZGVjX2VuOiB2Y2Mxdjgt
Y29kZWMtZW4gewo+ICAJCQlyb2NrY2hpcCxwaW5zID0gPDMgUktfUEE0IFJLX0ZVTkNfR1BJTyAm
cGNmZ19wdWxsX2Rvd24+Owo+ICAJCX07Cj4gIAl9Owo+ICsKPiArCXdpcmVsZXNzLWJsdWV0b290
aCB7Cj4gKwkJYnRfd2FrZV9waW46IGJ0LXdha2UtcGluIHsKPiArCQkJcm9ja2NoaXAscGlucyA9
IDwyIFJLX1BEMiBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPiArCQl9Owo+ICsKPiAr
CQlidF9ob3N0X3dha2VfcGluOiBidC1ob3N0LXdha2UtcGluIHsKPiArCQkJcm9ja2NoaXAscGlu
cyA9IDwwIFJLX1BBNCBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPiArCQl9Owo+ICsK
PiArCQlidF9yZXNldF9waW46IGJ0LXJlc2V0LXBpbiB7Cj4gKwkJCXJvY2tjaGlwLHBpbnMgPSA8
MCBSS19QQjEgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4gKwkJfTsKPiArCX07Cj4g
IH07Cj4gIAo+ICAmc2RtbWMgewoKc2VlIGJlbG93Cgo+IEBAIC0zODAsNiArNDE0LDIwIEBAICZz
ZG1tYyB7Cj4gIAlzdGF0dXMgPSAib2theSI7Cj4gIH07Cj4gIAo+ICsmc2RpbzAgewoKc2QnaSdv
MCBjb21lcyBiZWZvcmUgJ20nIGluIHRoZSBhbHBoYWJldC4KCj4gKwlidXMtd2lkdGggPSA8ND47
Cj4gKwljYXAtc2QtaGlnaHNwZWVkOwo+ICsJY2FwLXNkaW8taXJxOwo+ICsJZGlzYWJsZS13cDsK
PiArCWtlZXAtcG93ZXItaW4tc3VzcGVuZDsKPiArCW1tYy1wd3JzZXEgPSA8JnNkaW9fcHdyc2Vx
PjsKPiArCW5vbi1yZW1vdmFibGU7Cj4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICsJ
cGluY3RybC0wID0gPCZzZGlvMF9idXM0ICZzZGlvMF9jbWQgJnNkaW8wX2Nsaz47Cj4gKwlzZC11
aHMtc2RyMTA0Owo+ICsJc3RhdHVzID0gIm9rYXkiOwoKSXQgbWlnaHQgYWxzbyBiZSBnb29kIHRv
IGFkZCB0aGUgd2lmaSBub2RlLCBhbmQgaG9va3VwIHRoZSBpbnRlcnJ1cHQgbGluZSBhbmQKcGlu
Y3RybHMsIHNvIHRoYXQgV29XIHdvcmtzLCB3aGlsZSB5b3UncmUgYXQgaXQuCgpTZWUgZWcuIGh0
dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjE5Ljcvc291cmNlL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2stcGktNGItcGx1cy5kdHMjTDMwCgpMb29rcyBs
aWtlIFdJRklfSE9TVF9XQUtFX0wgaXMgaG9va2VkIHRvIEdQSU80X0QwL1BDSUVfQ0xLUkVRbkJf
dSBhY2NvcmRpbmcKdG8gdGhlIHNjaGVtYXRpYy4gTGV0J3MgaG9wZSBHUElPNF9EIHdpbGwgY29u
c2lkZXIgMS44ViBhcyBoaWdoLCBiZWNhdXNlIFNvQwpHUElPNF9EIGlzIGluIDMuMFYgZG9tYWlu
IGFuZCBWRERJTyBvZiB3aWZpIGNoaXAgaXMgMS44Vi4KCk90aGVyIHRoYW4gdGhhdCwKClJldmll
d2VkLWJ5OiBPbmTFmWVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+CgpUaGFuayB5b3UgYW5kIGtpbmQg
cmVnYXJkcywKCW8uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
