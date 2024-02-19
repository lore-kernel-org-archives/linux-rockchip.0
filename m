Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33908C48BC4
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Feb 2024 03:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/jgd2G5VJcUM047oFOMH2wcbh2SIrVRx3muLtEHJgWk=; b=aCSbWWm5b75Nb8UdlbxMM1j04v
	sxwkFtFAyzyLKpesb/QNXV2U4M1ga7NfPZAAZFylLEDeqZDG4wmyxq6rttTse1mWNuybD07LGdtaa
	ggh/Xf98/xxONBQ1YYQCbMq/WwmdnRNzxKrlf75XHxAQ3o+JunzC8tCn+jqfxbGzhCSHz2TmDKJO/
	9veZ4PeMN1uEbK7zGUFme0c1LCB7t26O4jSXrbh+X5d2HFeCZFCmBWlSH9EWhS7nApEfCEd45f08+
	cDhoH2fXeHK5kltv1N+ICkpH6pJLck2ONtxUGqMRRva0jxWv2cpYHlmVWrswztZLtkCGD4dqdWZbD
	DQ9xopYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbtvW-00000008vDZ-2DND;
	Mon, 19 Feb 2024 03:02:42 +0000
Received: from mail-m127227.xmail.ntesmail.com ([115.236.127.227])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbtvS-00000008vCu-2BhR;
	Mon, 19 Feb 2024 03:02:41 +0000
DKIM-Signature: a=rsa-sha256;
	b=jNsKtCE73R/JZ9xhOG+WMX8R9JBxmqVyOifq7RiuPhu2NPICr2dzFx/p2RIQKR+TGD6uHU6Ey6eiN4JrcRCisQ64HatnSxTXrIKPnuVTMn+hyNbXsTqIMOkNdIGkH2tvcMDB5FwRsXJP3WeN8xSOsYDmEnGRIa3yLTBDYtt02FY=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=ItVOHciXZ967WGvoKRiUzWpTZmpIIqBqMDAT5mMGgL0=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 874CC8401EC;
	Mon, 19 Feb 2024 11:02:01 +0800 (CST)
Message-ID: <7044f324-5a45-4a4c-a15e-86614e53acf0@rock-chips.com>
Date: Mon, 19 Feb 2024 11:02:01 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm: rockchip: Don't require MIPI DSI device when it's
 used for ISP
Content-Language: en-US
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>,
 linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 "open list:DRM DRIVERS FOR ROCKCHIP" <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
References: <20240217183941.1752463-1-megi@xff.cz>
 <4c66c084-5af6-43fb-a256-4746b2e00192@rock-chips.com>
 <bsc3lpdxvhy3ss2uja4do3jwvj43zbs7zhx4bzs2tryrakn7be@pt2qsyvryk73>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <bsc3lpdxvhy3ss2uja4do3jwvj43zbs7zhx4bzs2tryrakn7be@pt2qsyvryk73>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0ofGlZKH0hPQkpOT0MYSUxVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk5MSUpJVUpLS1VKQl
	kG
X-HM-Tid: 0a8dbf5038be03a4kunm874cc8401ec
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Kww6ISo6AzMNAy0SSzFDSC9K
	OC0aCxNVSlVKTEtDSEpKTElJQ01MVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBTUJOSTcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240218_190239_125740_40CF4831 
X-CRM114-Status: GOOD (  28.46  )
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

SGkgT25kcmVqOgoKT24gMi8xOC8yNCAyMzoxNywgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gSGkg
QW5keSwKPiAKPiBPbiBTdW4sIEZlYiAxOCwgMjAyNCBhdCAwNzoxNDo1NlBNICswODAwLCBBbmR5
IFlhbiB3cm90ZToKPj4gSGksCj4+Cj4+IE9uIDIvMTgvMjQgMDI6MzksIE9uZMWZZWogSmlybWFu
IHdyb3RlOgo+Pj4gRnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4+Pgo+Pj4gT24g
UkszMzk5IG9uZSBNSVBJIERTSSBkZXZpY2UgY2FuIGJlIGFsdGVybmF0aXZlbHkgdXNlZCB3aXRo
IHRoZSBJU1AxLAo+Pj4gdG8gcHJvdmlkZSBSWCBEUEhZLiBXaGVuIHRoaXMgaXMgdGhlIGNhc2Ug
KElTUDEgaXMgZW5hYmxlZCBpbiBkZXZpY2UKPj4+IHRyZWUpLCBwcm9iZSBzdWNjZXNzIG9mIERS
TSBpcyB0aWVkIHRvIHByb2JlIHN1Y2Nlc3Mgb2YgSVNQMSBjb25uZWN0ZWQKPj4+IGNhbWVyYSBz
ZW5zb3IuIFRoaXMgY2FuIGZhaWwgaWYgdGhlIHVzZXIgaXMgYWJsZSB0byBraWxsc3dpdGNoIHRo
ZSBjYW1lcmEKPj4+IHBvd2VyLCBsaWtlIG9uIFBpbmVwaG9uZSBQcm8uCj4+Pgo+Pj4gRGV0ZWN0
IHVzZSBvZiBNSVBJIERTSSBjb250cm9sbGVyIGJ5IElTUCwgYW5kIGRvbid0IGluY2x1ZGUgaXQg
aW4KPj4+IGNvbXBvbmVudCBtYXRjaCBsaXN0IGluIHRoYXQgY2FzZS4KPj4+Cj4+Cj4+IElzbid0
IHRoaXMgc3VwcG9zZWQgdG8gYmUgdGFrZW4gY2FyZSBvZiB3aXRoaW4gdGhlIGR0cz8KPj4gU2lu
Y2UgRFBIWTEgc2hvdWxkIGV4Y2x1c2l2ZWx5IHVzZWQgYnkgTUlQSSBEU0kxIGFuZCBJU1AxLCB0
aGVuIGlmCj4+IGEgZGV2aWNlIHdhbnQgdG8gdXNlIElTUDEsIHRoZSBEU0kxIHNob3VsZCBiZSBk
aXNhYmxlZCBpbiBkdHMuCj4gCj4gRFNJMSBjYW4ndCBiZSBkaXNhYmxlZCwgYmVjYXVzZSBpdCBw
cm92aWRlcyBQSFkgZGV2aWNlIGZvciBJU1AxIGluIHRoaXMKPiBzY2VuYXJpby4KPiAKPiBUaGUg
cHJvYmxlbSBpcyB0aGF0IGluIHRoaXMgc2NlbmFyaW8gRFJNIGtlZXBzIHdhaXRpbmcgZm9yIERT
STEgZGV2aWNlLAo+IGRlc3BpdGUgaXQganVzdCBiZWluZyB1c2VkIGZvciBQSFkgZm9yIElTUDEg
YW5kIG5vdCBhcyBhIGNvbXBvbmVudCBmb3IKPiByb2NrY2hpcCBEUk0gZHJpdmVyLgoKCk9oLCBn
ZXQgaXQuCldpdGggYSBxdWljayBsb29rLCBzZWVtcyB0aGF0IEhlaWtvIGhhcyBhbHJlYWR5IHRh
a2UgdGhpcyBzY2VuYXJpbyBpbnRvIGNvbnNpZGVyYXRpb24Kd2hlbiBhZGQgUEhZIGZ1bmN0aW9u
IGluIHRoZSBkc2kgZHJpdmVyc1swXQpEb2VzIHRoaXMgbWVhbiB0aGUgY3VycmVudCBkcml2ZXJz
IGRvZXMgbm90IHdvcmsgYXMgZXhwZWN0ZWQ/CgpbMF1odHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvcGF0Y2gvNDIwMzg2Lwo+IAo+IFNlZToKPiAKPiAgICAgICAgICBpc3AxOiBpc3Ax
QGZmOTIwMDAwIHsKPiAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicm9ja2NoaXAscmsz
Mzk5LWNpZi1pc3AiOwo+ICAgICAgICAgICAgICAgICAgcmVnID0gPDB4MCAweGZmOTIwMDAwIDB4
MCAweDQwMDA+Owo+ICAgICAgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDQ0IElS
UV9UWVBFX0xFVkVMX0hJR0ggMD47Cj4gICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNydSBT
Q0xLX0lTUDE+LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjcnUgQUNMS19JU1AxX1dS
QVBQRVI+LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjcnUgSENMS19JU1AxX1dSQVBQ
RVI+Owo+ICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiaXNwIiwgImFjbGsiLCAiaGNs
ayI7Cj4gICAgICAgICAgICAgICAgICBpb21tdXMgPSA8JmlzcDFfbW11PjsKPiAgICAgICAgICAg
ICAgICAgIHBoeXMgPSA8Jm1pcGlfZHNpMT47ICA8LS0tLS0tLS0tCj4gICAgICAgICAgICAgICAg
ICBwaHktbmFtZXMgPSAiZHBoeSI7Cj4gICAgICAgICAgICAgICAgICBwb3dlci1kb21haW5zID0g
PCZwb3dlciBSSzMzOTlfUERfSVNQMT47Cj4gICAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlz
YWJsZWQiOwo+IAo+IElmIG1pcGlfZHNpMSBpcyBkaXNhYmxlZCwgaXNwMSB3aWxsIG5ldmVyIHBy
b2JlLgo+IAo+IEl0J3MgYSBjb25zZXF1ZW5jZSBvZiB0aGlzIHNwZWNpYWwgZHVhbCB1c2Ugb2Yg
bWlwaV9kc2kxLgo+IAo+IGtpbmQgcmVnYXJkcywKPiAJby4KPiAKPj4+IFNpZ25lZC1vZmYtYnk6
IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+Pj4gLS0tCj4+PiAgICBkcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jIHwgNDcgKysrKysrKysrKysrKysrKysrKysr
Cj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jIGIvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYwo+Pj4gaW5kZXggYWI1NWQ3MTMy
NTUwLi5mNDdkZTk0YWQ1NzYgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX2Rydi5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfZHJtX2Rydi5jCj4+PiBAQCAtMzU0LDYgKzM1NCw0MyBAQCBzdGF0aWMgdm9pZCBy
b2NrY2hpcF9kcm1fbWF0Y2hfcmVtb3ZlKHN0cnVjdCBkZXZpY2UgKmRldikKPj4+ICAgIAkJZGV2
aWNlX2xpbmtfZGVsKGxpbmspOwo+Pj4gICAgfQo+Pj4gKy8qCj4+PiArICogQ2hlY2sgaWYgSVNQ
IGJsb2NrIGxpbmtlZCB0byBhIG1pcGktZHNpIGRldmljZSB2aWEgcGh5cyBwaGFuZGxlIGlzCj4+
PiArICogZW5hYmxlZCBpbiBkZXZpY2UgdHJlZS4KPj4+ICsgKi8KPj4+ICtzdGF0aWMgYm9vbCBy
b2NrY2hpcF9kcm1faXNfbWlwaTFfYW5kX3VzZWRfYnlfaXNwKHN0cnVjdCBkZXZpY2UgKmRldikK
Pj4+ICt7Cj4+PiArCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgPSBOVUxMLCAqcGh5X25wOwo+Pj4g
Kwo+Pj4gKwlpZiAoIW9mX2RldmljZV9pc19jb21wYXRpYmxlKGRldi0+b2Zfbm9kZSwgInJvY2tj
aGlwLHJrMzM5OS1taXBpLWRzaSIpKQo+Pj4gKwkJcmV0dXJuIGZhbHNlOwo+Pj4gKwo+Pj4gKwl3
aGlsZSAodHJ1ZSkgewo+Pj4gKwkJbnAgPSBvZl9maW5kX2NvbXBhdGlibGVfbm9kZShucCwgTlVM
TCwgInJvY2tjaGlwLHJrMzM5OS1jaWYtaXNwIik7Cj4+PiArCQlpZiAoIW5wKQo+Pj4gKwkJCWJy
ZWFrOwo+Pj4gKwo+Pj4gKwkJaWYgKCFvZl9kZXZpY2VfaXNfYXZhaWxhYmxlKG5wKSkgewo+Pj4g
KwkJCW9mX25vZGVfcHV0KG5wKTsKPj4+ICsJCQljb250aW51ZTsKPj4+ICsJCX0KPj4+ICsKPj4+
ICsJCXBoeV9ucCA9IG9mX3BhcnNlX3BoYW5kbGUobnAsICJwaHlzIiwgMCk7Cj4+PiArCQlpZiAo
IXBoeV9ucCkgewo+Pj4gKwkJCW9mX25vZGVfcHV0KG5wKTsKPj4+ICsJCQljb250aW51ZTsKPj4+
ICsJCX0KPj4+ICsKPj4+ICsJCW9mX25vZGVfcHV0KHBoeV9ucCk7Cj4+PiArCQlvZl9ub2RlX3B1
dChucCk7Cj4+PiArCj4+PiArCQlpZiAocGh5X25wID09IGRldi0+b2Zfbm9kZSkKPj4+ICsJCQly
ZXR1cm4gdHJ1ZTsKPj4+ICsJfQo+Pj4gKwo+Pj4gKwlyZXR1cm4gZmFsc2U7Cj4+PiArfQo+Pj4g
Kwo+Pj4gICAgc3RhdGljIHN0cnVjdCBjb21wb25lbnRfbWF0Y2ggKnJvY2tjaGlwX2RybV9tYXRj
aF9hZGQoc3RydWN0IGRldmljZSAqZGV2KQo+Pj4gICAgewo+Pj4gICAgCXN0cnVjdCBjb21wb25l
bnRfbWF0Y2ggKm1hdGNoID0gTlVMTDsKPj4+IEBAIC0zNzEsNiArNDA4LDE2IEBAIHN0YXRpYyBz
dHJ1Y3QgY29tcG9uZW50X21hdGNoICpyb2NrY2hpcF9kcm1fbWF0Y2hfYWRkKHN0cnVjdCBkZXZp
Y2UgKmRldikKPj4+ICAgIAkJCWlmICghZCkKPj4+ICAgIAkJCQlicmVhazsKPj4+ICsJCQkvKgo+
Pj4gKwkJCSAqIElmIG1pcGkxIGlzIGNvbm5lY3RlZCB0byBJU1AsIHdlIGRvbid0IHdhbnQgdG8g
d2FpdCBmb3IgbWlwaTEgY29tcG9uZW50LAo+Pj4gKwkJCSAqIGJlY2F1c2UgaXQgd2lsbCBub3Qg
YmUgdXNlZCBieSBEUk0gYW55d2F5LCB0byBub3QgdGllIHN1Y2Nlc3Mgb2YgY2FtZXJhCj4+PiAr
CQkJICogZHJpdmVyIHByb2JlIHRvIGRpc3BsYXkgcGlwZWxpbmUgaW5pdGlhbGl6YXRpb24uCj4+
PiArCQkJICovCj4+PiArCQkJaWYgKHJvY2tjaGlwX2RybV9pc19taXBpMV9hbmRfdXNlZF9ieV9p
c3AoZCkpIHsKPj4+ICsJCQkJZGV2X2luZm8oZCwgInVzZWQgYnkgSVNQMSwgc2tpcHBpbmcgZnJv
bSBEUk1cbiIpOwo+Pj4gKwkJCQljb250aW51ZTsKPj4+ICsJCQl9Cj4+PiArCj4+PiAgICAJCQlk
ZXZpY2VfbGlua19hZGQoZGV2LCBkLCBETF9GTEFHX1NUQVRFTEVTUyk7Cj4+PiAgICAJCQljb21w
b25lbnRfbWF0Y2hfYWRkKGRldiwgJm1hdGNoLCBjb21wb25lbnRfY29tcGFyZV9kZXYsIGQpOwo+
Pj4gICAgCQl9IHdoaWxlICh0cnVlKTsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
