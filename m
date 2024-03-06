Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00AC0C54E41
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Mar 2024 19:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vh4YfyooEBmBwF9rTrE8byL2xjRXDP1/gEGicr1CmEc=; b=1q/lHzlz8mDZk8
	6+f6+HSsTUJRUsLESEVYjNY5T/Soaqoee0kmc2mnnZLw9L+ANv8VaAZ6n4vxExSd+qsXed1bUFkVo
	YSE99tQKO7Avk/B2aW75Oiux99gHnteAifc7lNoZqzk/LP6X6YIrOwCKh7it3xLxvQiNO/ESKDkz8
	TzitQGl9rhvl9Bm0hYGnum6zuwdWym2W50bbyVLDp4C1oypsFcwIze+0fF6rrpr6nm6f5Q3xdneQS
	HDg/bkDdU0bknF5o3/KZ3NJQx6CHZL5MVgMDrrgNFkzE7FQcW8BudtSifkGAVCZg93ybyEyHktMXq
	yN44NZSNmq/ePV4WpqmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhwwN-00000001cxy-1J0v;
	Wed, 06 Mar 2024 19:28:35 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhwwI-00000001cwV-3fTm;
	Wed, 06 Mar 2024 19:28:32 +0000
Received: from harlem.collaboradmins.com (harlem.collaboradmins.com [IPv6:2a01:4f8:1c0c:5936::1])
	by madrid.collaboradmins.com (Postfix) with ESMTP id 4A61337820DA;
	Wed,  6 Mar 2024 19:28:25 +0000 (UTC)
From: "Shreeya Patel" <shreeya.patel@collabora.com>
In-Reply-To: <6040170.44csPzL39Z@diego>
X-Forward: 127.0.0.1
References: <20240305123648.8847-1-shreeya.patel@collabora.com>
 <7657358.31r3eYUQgx@diego> <45138-65e76d00-9-580ee380@232156106> <6040170.44csPzL39Z@diego>
Date: Wed, 06 Mar 2024 19:28:24 +0000
Cc: mchehab@kernel.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de, jose.abreu@synopsys.com, nelson.costa@synopsys.com, dmitry.osipenko@collabora.com, sebastian.reichel@collabora.com, shawn.wen@rock-chips.com, nicolas.dufresne@collabora.com, hverkuil@xs4all.nl, hverkuil-cisco@xs4all.nl, kernel@collabora.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm@lists.infradead.org
To: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
MIME-Version: 1.0
Message-ID: <ca099-65e8c400-33-2b230d40@237921438>
Subject: =?utf-8?q?Re=3A?= [PATCH v2 4/6] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Add device tree support for HDMI RX Controller
User-Agent: SOGoMail 5.10.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240306_112831_174331_0ECC9D76 
X-CRM114-Status: GOOD (  32.54  )
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

T24gV2VkbmVzZGF5LCBNYXJjaCAwNiwgMjAyNCAwMTo1MCBJU1QsIEhlaWtvIFN0w7xibmVyIDxo
ZWlrb0BzbnRlY2guZGU+IHdyb3RlOgoKPiBIaSBhZ2FpbiA6LSkKPiAKPiBBbSBEaWVuc3RhZywg
NS4gTcOkcnogMjAyNCwgMjA6MDU6MDIgQ0VUIHNjaHJpZWIgU2hyZWV5YSBQYXRlbDoKPiA+IE9u
IFR1ZXNkYXksIE1hcmNoIDA1LCAyMDI0IDE5OjQxIElTVCwgSGVpa28gU3TDvGJuZXIgPGhlaWtv
QHNudGVjaC5kZT4gd3JvdGU6Cj4gPiA+IEFtIERpZW5zdGFnLCA1LiBNw6RyeiAyMDI0LCAxMzoz
Njo0NiBDRVQgc2NocmllYiBTaHJlZXlhIFBhdGVsOgo+ID4gPiA+IEFkZCBkZXZpY2UgdHJlZSBz
dXBwb3J0IGZvciBTeW5vcHN5cyBEZXNpZ25XYXJlIEhETUkgUlgKPiA+ID4gPiBDb250cm9sbGVy
Lgo+ID4gPiA+IAo+ID4gPiA+IFJldmlld2VkLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRtaXRyeS5v
c2lwZW5rb0Bjb2xsYWJvcmEuY29tPgo+ID4gPiA+IFRlc3RlZC1ieTogRG1pdHJ5IE9zaXBlbmtv
IDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4KPiA+ID4gPiBDby1kZXZlbG9wZWQtYnk6
IERpbmd4aWFuIFdlbiA8c2hhd24ud2VuQHJvY2stY2hpcHMuY29tPgo+ID4gPiA+IFNpZ25lZC1v
ZmYtYnk6IERpbmd4aWFuIFdlbiA8c2hhd24ud2VuQHJvY2stY2hpcHMuY29tPgo+ID4gPiA+IFNp
Z25lZC1vZmYtYnk6IFNocmVleWEgUGF0ZWwgPHNocmVleWEucGF0ZWxAY29sbGFib3JhLmNvbT4K
PiA+ID4gPiAtLS0KPiA+ID4gPiBDaGFuZ2VzIGluIHYyIDotCj4gPiA+ID4gICAtIEZpeCBzb21l
IG9mIHRoZSBjaGVja3BhdGNoIGVycm9ycyBhbmQgd2FybmluZ3MKPiA+ID4gPiAgIC0gUmVuYW1l
IHJlc2V0cywgdm8xLWdyZiBhbmQgSFBECj4gPiA+ID4gICAtIE1vdmUgaGRtaXJ4X2NtYSBub2Rl
IHRvIHRoZSByazM1ODguZHRzaSBmaWxlCj4gPiA+ID4gCj4gPiA+ID4gIC4uLi9ib290L2R0cy9y
b2NrY2hpcC9yazM1ODgtcGluY3RybC5kdHNpICAgICB8IDQxICsrKysrKysrKysrKysrCj4gPiA+
ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LmR0c2kgICAgICB8IDU1ICsr
KysrKysrKysrKysrKysrKysKPiA+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA5NiBpbnNlcnRpb25z
KCspCj4gPiA+IAo+ID4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODguZHRz
aQo+ID4gPiA+IGluZGV4IDU1MTljMTQzMGNiNy4uOGFkYjk4Yjk5NzAxIDEwMDY0NAo+ID4gPiA+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LmR0c2kKPiA+ID4gPiAr
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC5kdHNpCj4gPiA+ID4gQEAg
LTcsNiArNywyNCBAQAo+ID4gPiA+ICAjaW5jbHVkZSAicmszNTg4LXBpbmN0cmwuZHRzaSIKPiA+
ID4gPiAgCj4gPiA+ID4gIC8gewo+ID4gPiA+ICsJcmVzZXJ2ZWQtbWVtb3J5IHsKPiA+ID4gPiAr
CQkjYWRkcmVzcy1jZWxscyA9IDwyPjsKPiA+ID4gPiArCQkjc2l6ZS1jZWxscyA9IDwyPjsKPiA+
ID4gPiArCQlyYW5nZXM7Cj4gPiA+IAo+ID4gPiBhZGQgYmxhbmsgbGluZSBoZXJlCj4gPiA+IAo+
ID4gPiA+ICsJCS8qCj4gPiA+ID4gKwkJICogVGhlIDRrIEhETUkgY2FwdHVyZSBjb250cm9sbGVy
IHdvcmtzIG9ubHkgd2l0aCAzMmJpdAo+ID4gPiA+ICsJCSAqIHBoeXMgYWRkcmVzc2VzIGFuZCBk
b2Vzbid0IHN1cHBvcnQgSU9NTVUuIEhETUkgUlggQ01BCj4gPiA+ID4gKwkJICogbXVzdCBiZSBy
ZXNlcnZlZCBiZWxvdyA0R0IuCj4gPiA+ID4gKwkJICovCj4gPiA+ID4gKwkJaGRtaXJ4X2NtYTog
aGRtaXJ4X2NtYSB7Cj4gPiA+IAo+ID4gPiBwaGFuZGxlcyB1c2UgIl8iLCBidXQgbm9kZS1uYW1l
cyAiLSIKPiA+ID4gCj4gPiA+ID4gKwkJCWNvbXBhdGlibGUgPSAic2hhcmVkLWRtYS1wb29sIjsK
PiA+ID4gPiArCQkJYWxsb2MtcmFuZ2VzID0gPDB4MCAweDAgMHgwIDB4ZmZmZmZmZmY+Owo+ID4g
PiA+ICsJCQlzaXplID0gPDB4MCAoMTYwICogMHgxMDAwMDApPjsgLyogMTYwTWlCICovCj4gPiA+
IAo+ID4gPiBUaGUgY29tbWVudCBhYm92ZSB0aGF0IG5vZGUsIGNvdWxkIGVsYWJvcmF0ZSB3aGVy
ZSB0aGUgdmFsdWUgb2YgMTYwTUIKPiA+ID4gb3JpZ2luYXRlcyBmcm9tLiBJIGFzc3VtZSBpdCBp
cyB0byBob2xkIG4tdGltZXMgb2YgNEsgZnJhbWVzIG9yIHdoYXRldmVyLAo+ID4gPiBidXQgaXQg
d291bGQgYmUgaGVscGZ1bCBmb3IgcGVvcGxlIHRvIGJlIGFibGUgdG8gcmVhZCB0aGF0Lgo+ID4g
PiAKPiA+IAo+ID4gcmlnaHQsIHdlIGRpZCB0aGUgZm9sbG93aW5nIGNhbGN1bGF0aW9uIHRvIGNv
bWUgdXAgd2l0aCB0aGlzIHZhbHVlIDotCj4gPiAzODQwICogMjE2MCAqIDQgKGJ5dGVzL3BpeCkg
KiAyIChmcmFtZXMvYnVmZmVyKSAvIDEwMDAgLyAxMDAwID0gNjZNCj4gPiBhbmQgdGhlbiB3ZSBk
byB0aGUgMnggdGltZXMgb2YgdGhpcyB2YWx1ZSB0byBiZSBvbiB0aGUgc2FmZXIgc2lkZQo+ID4g
YW5kIHN1cHBvcnQgYWxsIHByYWN0aWNhbCB1c2UtY2FzZXMuCj4gPiAKPiA+IEknbGwgYWRkIHNv
bWUgbW9yZSBkZXRhaWxzIHRvIHRoZSBjb21tZW50IGluIHYzLgo+IAo+IHRoYW5rcywgdGhhdCB3
aWxsIGJlIGhlbHBmdWwgZm9yIG1lIGFuZCBldmVyeWJvZHkgcmVhZGluZyB0aGUgZHRzIGxhdGVy
IG9uCj4gCj4gPiAKPiA+ID4gCj4gPiA+ID4gKwkJCW5vLW1hcDsKPiA+ID4gPiArCQkJc3RhdHVz
ID0gImRpc2FibGVkIjsKPiA+ID4gPiArCQl9Owo+ID4gPiA+ICsJfTsKPiA+ID4gPiArCj4gPiA+
ID4gIAlwY2llMzBfcGh5X2dyZjogc3lzY29uQGZkNWI4MDAwIHsKPiA+ID4gPiAgCQljb21wYXRp
YmxlID0gInJvY2tjaGlwLHJrMzU4OC1wY2llMy1waHktZ3JmIiwgInN5c2NvbiI7Cj4gPiA+ID4g
IAkJcmVnID0gPDB4MCAweGZkNWI4MDAwIDB4MCAweDEwMDAwPjsKPiA+ID4gPiBAQCAtODUsNiAr
MTAzLDM4IEBAIGkyczEwXzhjaDogaTJzQGZkZTAwMDAwIHsKPiA+ID4gPiAgCQlzdGF0dXMgPSAi
ZGlzYWJsZWQiOwo+ID4gPiA+ICAJfTsKPiA+ID4gPiAgCj4gPiA+ID4gKwloZG1pX3JlY2VpdmVy
OiBoZG1pLXJlY2VpdmVyQGZkZWUwMDAwIHsKPiA+ID4gCj4gPiA+IE1heWJlIHJlbmFtZSB0aGUg
bGFiZWwgdG8gImhkbWlyeDoiIC4uLiB0aGF0IHdheSBpbiBhIGJvYXJkIGVuYWJsaW5nIHRoZQo+
ID4gPiBjbWEgcmVnaW9uLCBib3RoIG5vZGVzIHdvdWxkIHN0YXkgY2xvc2UgdG8gZWFjaCBvdGhl
cj8KPiA+ID4gCj4gPiAKPiA+IFVtbSB3ZSBhbHJlYWR5IGhhdmUgcmVjZWl2ZXIgaW4gdGhlIG5h
bWUgc28gSSBhbSBub3Qgc3VyZSBpZiBhZGRpbmcgcnggd2lsbCBiZQo+ID4gYSBnb29kIGlkZWEu
IEkgd2FzIHRyeWluZyB0byBrZWVwIGl0IGNvbnNpc3RlbnQgd2l0aCB0aGUgbmFtZXMgdXNlZCBp
biBvdGhlciBkZXZpY2UgdHJlZSBmaWxlcy4KPiA+IEluIGNhc2UgeW91IHN0aWxsIGZlZWwgb3Ro
ZXJ3aXNlIHRoZW4gZG8gbGV0IG1lIGtub3csIEknbGwgbWFrZSB0aGUgY2hhbmdlLgo+IAo+IEkn
bSBzb21ld2hhdCBwYXJ0aWFsIHRvIHRoZSBhY3R1YWwgbmFtZSwgSSB3YXMgbW9yZSBnZXR0aW5n
IGF0IHNpbWlsYXIKPiBuYW1lcyB0byBrZWVwIHRoaW5ncyB0b2dldGhlci4KPiAKPiBHZW5lcmFs
IHNvcnRpbmcgcnVsZXMgYXJlIHRoYXQgJmZvbyBwaGFuZGxlcyBhcmUgc29ydGVkIGFscGhhYmV0
aWNhbGx5Cj4gaW4gYm9hcmQgZGV2aWNldHJlZXMuCj4gCj4gU28gaGF2aW5nCj4gCj4gJmhkbWly
eCB7Cj4gCXN0YXR1cyA9ICJva2F5IjsKPiB9Owo+IAo+ICZoZG1pcnhfY21hIHsKPiAJc3RhdHVz
ID0gIm9rYXkiOwo+IH07Cj4gCj4gaW4gdGhlIGJvYXJkIGR0LCBtYWtlcyB0aGVtIHN0YXkgdG9n
ZXRoZXIgYXV0b21hdGljYWxseSA7LSkKPiAKPiBTbyBpZiBpdCdzIGhkbWlyeCArIGhkbWlyeF9j
bWEgb3IgaGRtaV9yZWNlaXZlciArIGhkbWlfcmVjZWl2ZXJfY21hCj4gZG9lc24ndCBtYXR0ZXIg
dGhhdCBtdWNoLCBqdXN0IHRoYXQgdGhleSBzaGFyZSBhIGNvbW1vbiBiYXNlbmFtZS4KPiAKPiAK
PiBJIHJlYWxseSB3YW50IHRvIHN0YXkgYXdheSBmcm9tIGFsbG93aW5nIHNwZWNpYWwgcnVsZXMg
Zm9yIHRoaW5ncyBhcyBtdWNoCj4gYXMgcG9zc2libGUsIGJlY2F1c2UgdGhhdCBiZWNvbWVzIGEg
bmV2ZXJlbmRpbmcgc3RvcnksIHNvIGl0J3MKPiBhbHBoYWJldGljYWwgc29ydGluZy4KPiAKPiBC
dXQgbm90aGluZyBwcmV2ZW50cyB1cyBmcm9tIG5hbWluZyBwaGFuZGxlcyBpbiBhbiBpbnRlbGxp
Z2VudCB3YXkgOy0pIC4KPiAKCk1ha2VzIHNlbnNlIHRvIG1lLCBJJ2xsIHVzZSBoZG1pX3JlY2Vp
dmVyICsgaGRtaV9yZWNlaXZlcl9jbWEgY29tYmluYXRpb24KdG8ga2VlcCBpdCBjb25zaXN0ZW50
LgoKVGhhbmtzLApTaHJlZXlhIFBhdGVsCgo+IAo+IFRoYW5rcwo+IEhlaWtvCj4KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
