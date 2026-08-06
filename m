Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBCF4C55ABF
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 14:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BsN4DPhX6u9KXlk1N0Fx585tPimCc8upIeaY67d489Q=; b=iyBeTjNLu9rpQq
	JN6Dr+XeZVy0yF45Z+7WhDyt3sdiEZOOSlKL+YoHzUoLaCAXompjyCDoGlbfGHGG2QHJBAIZCkEZb
	/0S/T5Cf6yZmSjTTbYv6W/gjpIG7s7yuZt5A5Yi+4E8Rd+TPhSQnLWeN164x0F0o8vRk4eIscIpLx
	5ttFYUmSSM4v0EqH1pOYwJfOuqHmpeybHVfENyDR8HyEUjbOim5oGWlNxEziQq5LRxXXjcmCtC1qf
	WsDebHruwOw5vHzwUPmczSUeZqWXAreNvrMtXkzVwU9YvWtd4abI5DkwOiIAj3944FbLr3elCAkIk
	IjB04TkBqS7nYNVqozmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wryw1-00000005yKp-0ZLf;
	Thu, 06 Aug 2026 14:19:01 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wryvy-00000005yKI-0ddc;
	Thu, 06 Aug 2026 14:19:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1786025934; bh=b6tGJgjbWseM7FlphtaARLIwHe4KRXa10wZMxOFBvWo=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=hfvsUE2U2fnm8isZGBZhasv9Exh8AzA5/wdep+DCpOAZUfJlytb89pnFX+BEV5dHo
	 hsJUXMCTeaXxQw0KmF8+jgzbdq9VbYQRYiUgvkEzgLQMx2F+V582cYawsbpKGPXCpj
	 zXYXArluPudj1uElf1TWmKIWdeMegs/rvjZQfplU=
Date: Thu, 6 Aug 2026 16:18:53 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: David Heidelberg <david@ixit.cz>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Olivier Benjamin <olivier.benjamin@bootlin.com>, 
	Manuel Traut <manut@mecka.net>, Alexander Warnecke <awarnecke002@hotmail.com>, 
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Shawn Guo <shawnguo@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, phone-devel@vger.kernel.org, 
	imx@lists.linux.dev, stable@vger.kernel.org
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: rk3399-pinephone-pro: DW9714
 coil requires higher voltage
Message-ID: <cluhol4kfk4mi3ybxfo52hyuepxuwfgrgv54vsvn3e7x43d3la@xfcodg4jlosv>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	David Heidelberg <david@ixit.cz>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Olivier Benjamin <olivier.benjamin@bootlin.com>, 
	Manuel Traut <manut@mecka.net>, Alexander Warnecke <awarnecke002@hotmail.com>, 
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Shawn Guo <shawnguo@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, phone-devel@vger.kernel.org, 
	imx@lists.linux.dev, stable@vger.kernel.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20260801-pp-pro-camera-v1-0-7b4d90788f9f@ixit.cz>
 <20260801-pp-pro-camera-v1-2-7b4d90788f9f@ixit.cz>
 <2j7ogeqj565sftp5wzqvtzi2id76fof623bifbmyu6ckhf6vm6@ya7h4tp5i4qf>
 <7d55eaba-967c-4de6-8021-6b2d17670b1f@ixit.cz>
 <galrq4ug3hhny2ivpylqwuztwv7vnqvm6sdhlu6pucxk6qy2mz@zxw4ckkxj2sh>
 <dd2f19ac-a65e-4e53-aa2f-6f76c949366e@ixit.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dd2f19ac-a65e-4e53-aa2f-6f76c949366e@ixit.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_071858_812175_E4E84B3D 
X-CRM114-Status: GOOD (  34.45  )
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

T24gVGh1LCBBdWcgMDYsIDIwMjYgYXQgMDE6NDk6MDdQTSArMDIwMCwgRGF2aWQgSGVpZGVsYmVy
ZyB3cm90ZToKPiBPbiAwNi8wOC8yMDI2IDEzOjE5LCBPbmTFmWVqIEppcm1hbiB3cm90ZToKPiA+
IEhpLAo+ID4gCj4gPiBPbiBUdWUsIEF1ZyAwNCwgMjAyNiBhdCAxMToxMjoyMUFNICswMjAwLCBE
YXZpZCBIZWlkZWxiZXJnIHdyb3RlOgo+ID4gPiBPbiAwNC8wOC8yMDI2IDA5OjM5LCBPbmTFmWVq
IEppcm1hbiB3cm90ZToKPiA+ID4gPiBIaSwKPiA+ID4gPiAKPiA+ID4gPiBPbiBTYXQsIEF1ZyAw
MSwgMjAyNiBhdCAwMjozNToyMUFNICswMjAwLCBEYXZpZCBIZWlkZWxiZXJnIHZpYSBCNCBSZWxh
eSB3cm90ZToKPiA+ID4gPiA+IEZyb206IERhdmlkIEhlaWRlbGJlcmcgPGRhdmlkQGl4aXQuY3o+
Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IEJ5IGRhdGFzaGVldCB0aGUgVkREIChpbi1rZXJuZWwgbmFt
ZWQgdmNjKSByYW5nZSBpcyBiZXR3ZWVuIDIuMyB0byA0LjMgVi4KPiA+ID4gPiA+IFVzdWFsbHkg
aXQncyBhcm91bmQgMi44IFYuIEhlcmUgaXQgbWF0Y2hlcyB0aGUgYXZkZDJ2OF9kdnAuCj4gPiA+
ID4gPiAKPiA+ID4gPiA+IEZpeGVzOiA5MzM2ZWI4MjlhMTggKCJhcm02NDogZHRzOiByb2NrY2hp
cDogZGVzY3JpYmUgSTJjIEJ1cyAxIGFuZCBJTVgyNTggd29ybGQgY2FtZXJhIG9uIFBpbmVQaG9u
ZSBQcm8iKQo+ID4gPiA+ID4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiA+ID4gPiA+IFNp
Z25lZC1vZmYtYnk6IERhdmlkIEhlaWRlbGJlcmcgPGRhdmlkQGl4aXQuY3o+Cj4gPiA+ID4gPiAt
LS0KPiA+ID4gPiA+ICAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVw
aG9uZS1wcm8uZHRzIHwgMiArLQo+ID4gPiA+ID4gICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+ID4gPiAKPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzCj4gPiA+
ID4gPiBpbmRleCBkNDZjZGZlM2Y3ODQ5Li5iZGUzNWQ5YjIyNjNlIDEwMDY0NAo+ID4gPiA+ID4g
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5k
dHMKPiA+ID4gPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBp
bmVwaG9uZS1wcm8uZHRzCj4gPiA+ID4gPiBAQCAtNDczLDE3ICs0NzMsMTcgQEAgd2NhbV9vdXQ6
IGVuZHBvaW50IHsKPiA+ID4gPiA+ICAgIAkJCX07Cj4gPiA+ID4gPiAgICAJCX07Cj4gPiA+ID4g
PiAgICAJfTsKPiA+ID4gPiA+ICAgIAl3Y2FtX2xlbnM6IGNhbWVyYS1sZW5zQGMgewo+ID4gPiA+
ID4gICAgCQljb21wYXRpYmxlID0gImRvbmd3b29uLGR3OTcxNCI7Cj4gPiA+ID4gPiAgICAJCXJl
ZyA9IDwweDBjPjsKPiA+ID4gPiA+ICAgIAkJLyogU2FtZSBJMmMgYnVzIGFzIGJvdGggY2FtZXJh
cywgZGVwZW5kcyBvbiB2Y2NhMXY4X2NvZGVjIGZvciBwb3dlci4gKi8KPiA+ID4gPiA+IC0JCXZj
Yy1zdXBwbHkgPSA8JnZjYzF2OF9kdnA+Owo+ID4gPiA+ID4gKwkJdmNjLXN1cHBseSA9IDwmYXZk
ZDJ2OF9kdnA+Owo+ID4gPiA+IAo+ID4gPiA+IFRoaXMgZG9lcyBub3QgbWF0Y2ggcmVhbGl0eSwg
c2NoZW1hdGljIHNheXMgaXQncyBWQ0MyVjhfRFZQOgo+ID4gPiA+IAo+ID4gPiA+IAlodHRwczov
L3hmZi5jei9kbC90bXAvNjI1M2EwNDY1MzI5ZGY0MS5wbmcKPiA+ID4gCj4gPiA+IEFob2osCj4g
PiA+IAo+ID4gPiB0aGFua3MgZm9yIHNwb3R0aW5nIHRoaXMsIHNpbmNlIEkga25vdyB5b3UgaGF2
ZSB0aGUgZGV2aWNlLCB3b3VsZCBiZSB0b28KPiA+ID4gbXVjaCB0byBhc2sgeW91IHRvIHNlbmQg
c3RhbmRhbG9uZSBmaXggZm9yIFBQIFBybz8KPiA+ID4gCj4gPiA+IEkgd291bGQgZHJvcCB0aGUg
Y2hhbmdlIGZyb20gdGhlIHNlcmllcy4KPiA+IAo+ID4gT2suIEp1c3QgZm9yIHRoZSByZWZlcmVu
Y2UsIHZjYzF2OF9kdnAgaGVyZSBmZWVkcyBhbiBlbmFibGUgcGluIGZvciBWQ0MyVjhfRFZQCj4g
PiBMRE8gcmVndWxhdG9yICh3aGljaCBpcyBzdXBwbGllZCBmcm9tIFZDQzNWM19TWVMgYW5kIG5v
dCBkZXNjcmliZWQgaW4gRFQsIHlldCkuCj4gPiBTbyBpbiBwcmFjdGljZSBlbmFibGluZyB2Y2Mx
djhfZHZwIGVuYWJsZXMgYm90aCBWQ0MyVjhfRFZQIGFuZCBBVkREMlY4X0RWUCBhbmQKPiA+IHdo
aWxlIERUIGRvZXMgbm90IGRlc2NyaWJlIHRoZSBIVyBpbiBkZXRhaWwsIGl0IGRlc2NyaWJlcyB0
aGUgb25seSByZWd1bGF0b3IKPiA+IHRoYXQgaXMgYWN0dWFsbHkgY29udHJvbGxhYmxlIGFuZCBl
bmFibGVzIGFsbCBuZWVkZWQgcG93ZXIgcmFpbHMgZm9yIHRoZSBjYW1lcmEKPiA+IG1vZHVsZXMg
YWxsIGJ5IGl0c2VsZiBpbiBwcm9wZXIgb3JkZXIvdGltaW5nLgo+ID4gCj4gPiBOb3Qgc3VyZSB3
aGF0J3MgdGhlIERUIG1haW50YWluZXJzIGlkZWEgaGVyZSBhYm91dCB3aGV0aGVyIERUIGhhcyB0
byBkZXNjcmliZQo+ID4gZXZlcnkgZGV0YWlsIG9mIHBvd2VyIHJhaWxzIHJvdXRpbmcsIG9yIGp1
c3Qgd2hhdCdzIHByYWdtYXRpYy4KPiAKPiBNeSBwZXJjZXB0aW9uIGlzIHRoYXQgRFQgc3ludGF4
IHNob3VsZCBkZXNjcmliZSBldmVyeXRoaW5nLCBleGNlcHQgcGFzc2l2ZQo+IGNvbXBvbmVudHMu
Cj4gCj4gTm8gYWRkaXRpb25hbCBHUElPIGlzIG5lZWRlZCB0byBlbmFibGUgVkNDIGFuZCBBVkRE
PwoKWWVzLCBpdCdzIGNvbXBsZXRlbHkgdHJhbnNwYXJlbnQuIHZjYzF2OF9kdnAgaW5kaXJlY3Rs
eSBwb3dlcnMgdXAgYWxsIG90aGVyCmNhbWVyYSBzZW5zb3IgcmVndWxhdG9ycy4KClJlZ2FyZHMs
CglvLmouCgo+IEhlcmUsIGl0IHNlZW1zIHRvIG1lIHRoYXQgZXhwbGFuYXRpb24gbGlrZSB0aGlz
IGluIERUIGNvdWxkIGNvdmVyIGl0LiBCdXQKPiBJJ20gbm8gYXV0aG9yaXR5IGhlcmUgOikKPiAK
PiBEYXZpZAo+IAo+ID4gCj4gPiBCZXN0IHJlZ2FyZHMsCj4gPiAJby5qLgo+ID4gCj4gPiA+IERh
dmlkCj4gPiA+IAo+ID4gPiBQLlMuIEkgbm90aWNlZCBJIGRpZG4ndCBtYXJrIHRoaXMgc2VyaWVz
IFJGQy4gVG9vIGxhdGUuCj4gPiA+IAo+ID4gPiA+IAo+ID4gPiA+IHJlZ2FyZHMsCj4gPiA+ID4g
CW8uCj4gPiA+ID4gCj4gPiA+ID4gPiAgICAJfTsKPiA+ID4gPiA+ICAgIAl1Y2FtOiBjYW1lcmFA
MzYgewo+ID4gPiA+ID4gICAgCQljb21wYXRpYmxlID0gIm92dGksb3Y4ODU4IjsKPiA+ID4gPiA+
ICAgIAkJcmVnID0gPDB4MzY+Owo+ID4gPiA+ID4gICAgCQljbG9ja3MgPSA8JmNydSBTQ0xLX0NJ
Rl9PVVQ+OyAvKiBNSVBJX01DTEsxLCBkZXJpdmVkIGZyb20gQ0lGX0NMSzAgKi8KPiA+ID4gPiA+
ICAgIAkJY2xvY2stbmFtZXMgPSAieHZjbGsiOwo+ID4gPiA+ID4gICAgCQlkb3ZkZC1zdXBwbHkg
PSA8JnZjYzF2OF9kdnA+Owo+ID4gPiA+ID4gCj4gPiA+ID4gPiAtLSAKPiA+ID4gPiA+IDIuNTMu
MAo+ID4gPiA+ID4gCj4gPiA+ID4gPiAKPiA+ID4gCj4gPiA+IC0tIAo+ID4gPiBEYXZpZCBIZWlk
ZWxiZXJnCj4gPiA+IAo+IAo+IC0tIAo+IERhdmlkIEhlaWRlbGJlcmcKPiAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
