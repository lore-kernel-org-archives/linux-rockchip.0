Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A84B8C47074
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jan 2024 20:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ggbuamSogbiLubQj1a+U6+0bpEZ1erd10Cv+EgTWFA=; b=dx4ZzywEqMry2J
	hlBmKsN9zQPIugLjCEQXyK67GXK9oCVqjYRA+KZk3x8Y+dIVnNCSY0Fr3xPZBv1lO7zkOIFCoeEJn
	J3UuZIpMYNC3OoY/6hP2Stw/AnLzqAXoz3GiUR4qh3/9odn3iWL37sueR69KiH3LV+egA8cnChqcU
	US5M+NNvSmD96L4XMTntIwReh4KhIuWBtSfwzouyN8/azwr7g7NYEOAuzZiWCS0R+2oWVAVc6v0Yl
	dgi16vmXhMACDImKE2H/O3dzEDgbl7YsJE/08cBJb5LkpvBXPUvoYrz45uiZyj5v6l9g4uudtwdU8
	pqylVSDebGfed7yKjaxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKlpG-008yHO-1d;
	Tue, 02 Jan 2024 20:57:26 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKlpB-008yCy-24
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jan 2024 20:57:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 To: Subject: MIME-Version: Date: Message-ID; q=dns/txt; s=fe-e1b5cab7be;
 t=1704228988; bh=ccZgqPCrJ4T9GeS8WnNP4L0gon1xZyOTx7zhUGDzNNc=;
 b=DaH0KB+5QYKAOAnRy5h6rDe5fjTgNdsmF4lFOcqxdsv3vpukMlnHOv9ESNFhq+KfIwTeEKjXk
 2e0KzMSn/FK6IZOrohCBq/jCd4TuUYAG9537LgfPP+JlRDIicnd0BEfneaXY3FbPeGGH5G3uPT3
 PWqOEyLrX/S5lF8VUuLcQRWjen8bSmSxMlTH/cBvzOGFx+lXlK5Y8DkoIRrCyyNhD744o4kIY/K
 56xbC4S1K5Ay/0LwhOpghd94srR0A79K/xSildlCid/akMIkCE1rD3e+MpoiaJL94eRnmWvq4aL
 0vADC7dkPJOL8y3mshEqBZdKpAphrV424solT5lwvJlQ==
Message-ID: <903e9d0c-a00c-4214-9f0e-dd676b13b428@kwiboo.se>
Date: Tue, 2 Jan 2024 21:56:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: rockchip: Add devicetree for Pine64
 PineTab2
Content-Language: en-US
To: "=?UTF-8?Q?Ond=C5=99ej_Jirman?=" <megi@xff.cz>, Manuel Traut
 <manut@mecka.net>, Neil Armstrong <neil.armstrong@linaro.org>, Jessica
 Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David
 Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, Mark
 Yao <markyao0591@gmail.com>, Diederik de Haas <didi.debian@cknow.org>,
 Segfault <awarnecke002@hotmail.com>, Arnaud Ferraris
 <aferraris@debian.org>, Danct12 <danct12@riseup.net>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20240102-pinetab2-v3-0-cb1aa69f8c30@mecka.net>
 <20240102-pinetab2-v3-4-cb1aa69f8c30@mecka.net>
 <775vjfucu2g2s6zzeutj7f7tapx3q2geccpxvv4ppcms4hxbq7@cbrdmlu2ryzp>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <775vjfucu2g2s6zzeutj7f7tapx3q2geccpxvv4ppcms4hxbq7@cbrdmlu2ryzp>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 6594787c1cdb56bea851e248
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_125721_748115_34963F4E 
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

SGkgTWFudWVsIGFuZCBPbmTFmWVqLAoKT24gMjAyNC0wMS0wMiAxOTowNywgT25kxZllaiBKaXJt
YW4gd3JvdGU6Cj4gSGVsbG8gTWFudWVsLAoKWy4uLl0KCj4+ICsKPj4gKyZzZmMgewo+PiArCXBp
bmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+ICsJcGluY3RybC0wID0gPCZmc3BpX2R1YWxfaW9f
cGlucz47Cj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+PiArCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+
PiArCSNzaXplLWNlbGxzID0gPDA+Owo+PiArCj4+ICsJZmxhc2hAMCB7Cj4+ICsJCWNvbXBhdGli
bGUgPSAiamVkZWMsc3BpLW5vciI7Cj4+ICsJCXJlZyA9IDwwPjsKPj4gKwkJc3BpLW1heC1mcmVx
dWVuY3kgPSA8MjQwMDAwMDA+Owo+IAo+IFRoYXQncyBhIGJpdCBvbiB0aGUgbG93IHNpZGUuIFRo
ZSBmbGFzaCBjaGlwIHNob3VsZCB3b3JrIGZvciBhbGwgY29tbWFuZHMgdXAgdG8KPiA4ME1IeiBo
dHRwczovL21lZ291cy5jb20vZGwvdG1wL2I0MjhhZDliODVhYzQ2MzMucG5nIGFuZCBTR00zMTU3
WUM2IHN3aXRjaAo+IGZvciB0aGUgRlNQSS1DTEsgc2hvdWxkIGhhdmUgaGlnaCBlbm91Z2ggYmFu
ZHdpZHRoLCB0b28uCgpJIGFncmVlIHRoYXQgdGhpcyBpcyBhIGxpdHRsZSBiaXQgb24gdGhlIGxv
dyBzaWRlLCBpdCB3YXMgYSBzYWZlIHJhdGUKdGhhdCBJIHVzZWQgZm9yIFUtQm9vdC4gVS1Cb290
IHJlcXVpcmVkIGFuIGV4YWN0IHJhdGUgb2YgdGhlIHN1cHBvcnRlZApzZmMgY2xrIHJhdGVzOiAy
NCwgNTAsIDc1LCAxMDAsIDEyNSBvciAxNTAgTUh6LgoKUGxlYXNlIGFsc28gbm90ZSB0aGF0IHRo
ZSBTUEkgTk9SIGZsYXNoIGNoaXAgdXNlZCBpbiBQaW5lVGFiMiBpcyBub3QgYQpHaWdhRGV2aWNl
IEdEMjVMUTEyOEUsIGl0IHNob3VsZCBiZSBhIFNpbGljb25LYWlzZXIgU0syNUxQMTI4LCBzYW1l
IGFzCmZvdW5kIGluIHRoZSBQaW5lNjQgUGluZVBob25lIFByby4KCj4gCj4+ICsJCXNwaS1yeC1i
dXMtd2lkdGggPSA8Mj47Cj4gCj4gR0QyNUxRMTI4RSBzdXBwb3J0cyBxdWFkIEkvTy4gTWF5YmUg
dHJ5IDQgaWYgaXQgd2lsbCB3b3JrLgoKVGhlIHNjaGVtYXRpYyBvbmx5IHNob3dzIGZzcGkgRDAg
YW5kIEQxIGNvbm5lY3RlZCwgYW5kIHVzZSB0aGUgRDIgbGluZQpmb3IgZU1NQ19SU1RuLCBzbyBz
cGktcngtYnVzLXdpZHRoID0gPDI+IHNob3VsZCBiZSBjb3JyZWN0LgoKPiAKPj4gKwkJc3BpLXR4
LWJ1cy13aWR0aCA9IDwxPjsKPj4gKwl9Owo+PiArfTsKPj4gKwoKUmVnYXJkcywKSm9uYXMKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
