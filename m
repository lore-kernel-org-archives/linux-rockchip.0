Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC4FFC47DDB
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jan 2024 09:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aU15YHKsPREvvTXcIUXVbJPZtSIaluMNVne51OUaKjU=; b=Yxf5CenojyKUPz
	cx101h8QoA4DzvaKHQrtGdYK2XZHFzpjH3ikzgbebA6D9PqPQPOqp0jzx1k07s0bp2mZX9alI9cJ4
	3AgNC4WZVD2FLMZjhcWh5CyONBT4HGlx5xzLpVhPBiNib+3yjcD9aLACZEcpjwfSYvZViNf2+k29R
	lufBjCDtvccOYt0nnO+GhMZr6EikeMAYBuSp/tNhAEMWqVp+i+E/2R4MdEFBnhWK/9iKIZz6OrEh7
	xxAfW8ijhsFCPOAnDp5Hg+C33DkWNDO7FVzovfd8VFMxuMza7D1qvvum5TSxOaklGF2plWHIllHix
	ubWAXCsE96YppYkZT8cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTf22-00000007FcL-4A4a;
	Sat, 27 Jan 2024 09:31:22 +0000
Received: from mecka.net ([159.69.159.214])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTf1t-00000007FRr-0yka;
	Sat, 27 Jan 2024 09:31:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mecka.net; s=2016.11;
	t=1706347870; bh=ZKfXwd9FW0rWdUEIALu0OP8KvDADbdtz+p95WviJSc4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E5zqKQbgtz/Vq1FfeGeVWFW44FAQes1TM4fjycxZbs1PXj/kVBhPZtt8C/MCLa5XM
	 dai1JImK0gvTG3CT70igLp2rBfb57qbRrPLdvZba717th93qWGahfDoSPH4YxzXy3o
	 KFLVR2c/ArebjwwBnqxAOeAtAR7PvYD0LYY6uiOcH8I94rBblNT04Edw8a4onAr+Ui
	 fYBHN55OgbOXxjVOCIvNjCAajRO1CrZrvjnBCMu+xHqEC4DExZ/uHvnMUiudhwP5m+
	 S/9hkxTVl5vu66m9D3t65iwe/mRLoQov1gFs/bJPNdYvl2v6JKRQOKRP4DWuu9e4WG
	 z4X7wSbggV/gw==
Received: from mecka.net (unknown [185.147.11.134])
	by mecka.net (Postfix) with ESMTPSA id A981E3BF3AE;
	Sat, 27 Jan 2024 10:31:09 +0100 (CET)
Date: Sat, 27 Jan 2024 10:31:08 +0100
From: Manuel Traut <manut@mecka.net>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
	Mark Yao <markyao0591@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Segfault <awarnecke002@hotmail.com>,
	Arnaud Ferraris <aferraris@debian.org>,
	Danct12 <danct12@riseup.net>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 4/4] arm64: dts: rockchip: Add devicetree for Pine64
 PineTab2
Message-ID: <ZbTNXL6s_wQugVC5@mecka.net>
References: <20240102-pinetab2-v3-0-cb1aa69f8c30@mecka.net>
 <20240102-pinetab2-v3-4-cb1aa69f8c30@mecka.net>
 <775vjfucu2g2s6zzeutj7f7tapx3q2geccpxvv4ppcms4hxbq7@cbrdmlu2ryzp>
 <903e9d0c-a00c-4214-9f0e-dd676b13b428@kwiboo.se>
 <ZZVjzwgANJMdHnuo@mecka.net>
 <6efe305c-4ab4-43c1-ab6d-64bdf1d81a2f@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6efe305c-4ab4-43c1-ab6d-64bdf1d81a2f@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240127_013113_911870_7CC010D9 
X-CRM114-Status: GOOD (  27.68  )
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

SGkgSm9uYXMsCgpPbiBXZWQsIEphbiAwMywgMjAyNCBhdCAwMzoxOToyNVBNICswMTAwLCBKb25h
cyBLYXJsbWFuIHdyb3RlOgo+IEhpIE1hbnVlbCwKPiAKPiBPbiAyMDI0LTAxLTAzIDE0OjQwLCBN
YW51ZWwgVHJhdXQgd3JvdGU6Cj4gPiBIaSBKb25hcyBhbmQgT25kxZllaiwKPiA+IAo+ID4+Pj4g
KyZzZmMgewo+ID4+Pj4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4+Pj4gKwlwaW5j
dHJsLTAgPSA8JmZzcGlfZHVhbF9pb19waW5zPjsKPiA+Pj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+
ID4+Pj4gKwkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiA+Pj4+ICsJI3NpemUtY2VsbHMgPSA8MD47
Cj4gPj4+PiArCj4gPj4+PiArCWZsYXNoQDAgewo+ID4+Pj4gKwkJY29tcGF0aWJsZSA9ICJqZWRl
YyxzcGktbm9yIjsKPiA+Pj4+ICsJCXJlZyA9IDwwPjsKPiA+Pj4+ICsJCXNwaS1tYXgtZnJlcXVl
bmN5ID0gPDI0MDAwMDAwPjsKPiA+Pj4KPiA+Pj4gVGhhdCdzIGEgYml0IG9uIHRoZSBsb3cgc2lk
ZS4gVGhlIGZsYXNoIGNoaXAgc2hvdWxkIHdvcmsgZm9yIGFsbCBjb21tYW5kcyB1cCB0bwo+ID4+
PiA4ME1IeiBodHRwczovL21lZ291cy5jb20vZGwvdG1wL2I0MjhhZDliODVhYzQ2MzMucG5nIGFu
ZCBTR00zMTU3WUM2IHN3aXRjaAo+ID4+PiBmb3IgdGhlIEZTUEktQ0xLIHNob3VsZCBoYXZlIGhp
Z2ggZW5vdWdoIGJhbmR3aWR0aCwgdG9vLgo+ID4+Cj4gPj4gSSBhZ3JlZSB0aGF0IHRoaXMgaXMg
YSBsaXR0bGUgYml0IG9uIHRoZSBsb3cgc2lkZSwgaXQgd2FzIGEgc2FmZSByYXRlCj4gPj4gdGhh
dCBJIHVzZWQgZm9yIFUtQm9vdC4gVS1Cb290IHJlcXVpcmVkIGFuIGV4YWN0IHJhdGUgb2YgdGhl
IHN1cHBvcnRlZAo+ID4+IHNmYyBjbGsgcmF0ZXM6IDI0LCA1MCwgNzUsIDEwMCwgMTI1IG9yIDE1
MCBNSHouCj4gPj4KPiA+PiBQbGVhc2UgYWxzbyBub3RlIHRoYXQgdGhlIFNQSSBOT1IgZmxhc2gg
Y2hpcCB1c2VkIGluIFBpbmVUYWIyIGlzIG5vdCBhCj4gPj4gR2lnYURldmljZSBHRDI1TFExMjhF
LCBpdCBzaG91bGQgYmUgYSBTaWxpY29uS2Fpc2VyIFNLMjVMUDEyOCwgc2FtZSBhcwo+ID4+IGZv
dW5kIGluIHRoZSBQaW5lNjQgUGluZVBob25lIFByby4KPiA+IAo+ID4gVGhlIHNjaGVtYXRpY3Mg
Zm9yIHYyLjAgcmVmZXJlbmNlIGEgR0QyNUxRMTI4RVdJR1IuIEkgbmV2ZXIgY2hlY2tlZCB0aGUg
amVkZWMKPiA+IGlkLiBIb3cgZGlkIHlvdSByZXRyaWV2ZSB0aGlzIGluZm9ybWF0aW9uLCBvciBp
cyBpdCBtYXliZSBhIGRpZmZlcmVuY2UgaW4gdjAuMQo+ID4gYW5kIDIuMD8KPiAKPiBUaGlzIHdh
cyB3aGVuIHdvcmtpbmcgb24gbWFpbmxpbmUgVS1Cb290IGZvciB0aGUgUGluZVRhYjIgKGFuZCBv
dGhlcgo+IHJrMzU2eCBkZXZpY2VzKS4gU2VlIFsxXSBmb3IgYSBwZW5kaW5nIFUtQm9vdCBwYXRj
aCB0aGF0IGlzIHdhaXRpbmcgb24gYQo+IHByb3BlciBtYWlubGluZSBsaW51eCBkZXZpY2V0cmVl
IGZvciB0aGUgUFQyLgo+IAo+IFRoZSBKRURFQyBJRCBpcyByZXBvcnRlZCBhcyAweDI1NzAxOCBv
biBteSB2Mi4wIHByb2R1Y3Rpb24gdW5pdCwgYW5kCj4gZG9lcyBub3QgbWF0Y2ggdGhlIEpFREVD
IElEIGZvciBHRDI1TFExMjhFICgweGM4NjAxOCkgcmVmZXJlbmNlZCBpbgo+IHRoZSBzY2hlbWF0
aWNzLgo+IAo+IEkgZm91bmQgdGhhdCB0aGUgSkVERUMgSUQgMHgyNTcwMTggd2FzIHJlZmVyZW5j
ZWQgaW4gcHJpb3IgcGF0Y2hlcwo+IHJlbGF0ZWQgdG8gdGhlIFNLMjVMUDEyOCBTUEkgTk9SIGZs
YXNoIGNoaXAgdXNlZCBpbiBQaW5lNjQgUGluZVBob25lIFByby4KPiAKPiBJIGhhdmUgb25seSBl
dmVyIHRlc3RlZCB0aGUgMjQgTUh6IHJhdGUsIGJ1dCBJIGFtIGV4cGVjdGluZyB0aGF0IGUuZy4K
PiAxMDAgTUh6IGFsc28gc2hvdWxkIHdvcmsuIFdpbGwgbm90IGJlIGFibGUgdG8gdGVzdCBvbiBt
eSBQVDIgdW50aWwgYXQKPiBlYXJsaWVzdCBuZXh0IHdlZWsuCj4gCj4gWzFdIGh0dHBzOi8vZ2l0
aHViLmNvbS9Ld2lib28vdS1ib290LXJvY2tjaGlwL2NvbW1pdC82NjU2MmQ2ZWFmMmMxMWE5Zjk3
ZmNkYmEzNzlkM2NlZGE4YWE3MGVmCgpJIGZvdW5kIHRoZSB0aW1lIHRvIHZlcmlmeSB0aGF0IDEw
MCBNSHogaXMgYWxzbyB3b3JraW5nLgpXaWxsIGluY2x1ZGUgdGhpcyBpbiB2NAoKVGhhbmtzIGZv
ciB5b3VyIGhlbHAKTWFudWVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
