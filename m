Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D541DC35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 13:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lQbJCScqEi5AS7xdcTJ8J2pitf6chSwHECYbHUBCRlI=; b=N8/6A4LtZmoB57
	+2Tdl7aLLLoefO9jpgLEpl+g69j0fEJGkxLM7gNbyi3WGAIAgJos4Xfb5uzxc77bNkQlXnEkYAL0f
	JDd6Yd56btsnKDTIcghrEbq0GlVUpFbDHSSvjbY1UJJRoG0FcVeAjEoef6VG7w2rN0XXfVT7hzmya
	u2bfflyVaUouLXHxrhu700XSPsM4DgkJlpF0kai2J4e2JKe8I0jvFhUowI8IhkvS/VWuolyxMLJVh
	M3kcwaqM35WSTnVhWSvjDkL+UFoAyRfYvLEmS/3PDr9S6MquMWAYTNaFXKabBayGNtNfauFMiEESh
	qnjA0KTiI/kjd/Z9r+Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFE49-00Avrn-2n;
	Mon, 18 Dec 2023 13:53:53 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFE46-00Avp7-1w
	for linux-rockchip@lists.infradead.org;
	Mon, 18 Dec 2023 13:53:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD6212F4;
	Mon, 18 Dec 2023 05:54:25 -0800 (PST)
Received: from [10.57.86.174] (unknown [10.57.86.174])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3F2F23F5A1;
	Mon, 18 Dec 2023 05:53:38 -0800 (PST)
Message-ID: <75c3b7e3-5184-4ec6-88b5-ec11ff269dd5@arm.com>
Date: Mon, 18 Dec 2023 13:53:36 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/17] video: dw_hdmi: Support Vendor PHY
Content-Language: en-GB
To: Kever Yang <kever.yang@rock-chips.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Heiko Stuebner <heiko@sntech.de>,
 Anatolij Gustschin <agust@denx.de>
Cc: u-boot@lists.denx.de, Da Xue <da.xue@libretech.co>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Andre Przywara <andre.przywara@arm.com>, Simon Glass <sjg@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 =?UTF-8?B?6Jab5bCP5piO?= <xxm@rock-chips.com>, =?UTF-8?B?5pON55Ge5p2w?=
 <algea.cao@rock-chips.com>, =?UTF-8?B?6Zer5a2d5Yab?=
 <andy.yan@rock-chips.com>
References: <20231211085939.5478-1-jagan@amarulasolutions.com>
 <CAMty3ZBNC7Fpi-S4uOwfJ3ULWQ27PiVAKTqbnQKB3nB5vXHrhg@mail.gmail.com>
 <f04a716f-1383-493c-87b5-e39edacee857@rock-chips.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <f04a716f-1383-493c-87b5-e39edacee857@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_055350_735165_B362BD98 
X-CRM114-Status: GOOD (  25.11  )
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

T24gMjAyMy0xMi0xNSA3OjEzIGFtLCBLZXZlciBZYW5nIHdyb3RlOgo+IEhpIEphZ2FuLAo+IAo+
IE9uIDIwMjMvMTIvMTUgMTQ6MzYsIEphZ2FuIFRla2kgd3JvdGU6Cj4+IEhpIEhlaWtvL0tlcnZl
ci9BbmF0b2xvaiwKPj4KPj4gT24gTW9uLCBEZWMgMTEsIDIwMjMgYXQgMjozMOKAr1BNIEphZ2Fu
IFRla2kgCj4+IDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4gd3JvdGU6Cj4+PiBVbmxpa2Ug
UkszMzk5LCBTdW54aS9NZXNvbiBEVyBIRE1JIHRoZSBuZXcgUm9ja2NoaXAgU29DIFJrMzMyOCB3
b3VsZAo+Pj4gc3VwcG9ydCBleHRlcm5hbCB2ZW5kb3IgUEhZIHdpdGggRFcgSERNSSBjaGlwLgo+
Pj4KPj4+IFN1cHBvcnQgdGhpcyB2ZW5kb3IgUEhZIGJ5IGFkZGluZyBuZXcgcGxhdGZvcm0gUEhZ
IG9wcyB2aWEgRFcgSERNSQo+Pj4gZHJpdmVyIGFuZCBjYWxsIHRoZSByZXNwZWN0aXZlIGdlbmVy
aWMgcGh5IGZyb20gcGxhdGZvcm0gZHJpdmVyIGNvZGUuCj4+Pgo+Pj4gVGhpcyBzZXJpZXMgdGVz
dGVkIGluIFJLMzMyOCB3aXRoIDEwODBwICgxOTIweDEwODApIHJlc29sdXRpb24uCj4+Pgo+Pj4g
UGF0Y2ggMDAwMS8wMDA1OiBTdXBwb3J0IFZlbmRvciBQSFkKPj4+IFBhdGNoIDAwMDYvMDAwODog
Vk9QIGV4dGVuc2lvbiBmb3Igd2luLCBkc3Agb2Zmc2V0cwo+Pj4gUGF0Y2ggMDAwOS8wMDEwOiBS
SzMzMjggVk9QLCBIRE1JIGNsb2Nrcwo+Pj4gUGF0Y2ggMDAxMTrCoMKgwqDCoMKgIFJvY2tjaGlw
IElubm8gSERNSSBQSFkKPj4+IFBhdGNoIDAwMTI6wqDCoMKgwqDCoCBSSzMzMjggSERNSSBkcml2
ZXIKPj4+IFBhdGNoIDAwMTM6wqDCoMKgwqDCoCBSSzMzMjggVk9QIGRyaXZlcgo+Pj4gUGF0Y2gg
MDAxNC8wMDE3OiBFbmFibGUgSERNSSBPdXQgZm9yIFJLMzMyOAo+Pj4KPj4+IEltcG9ydGVudDoK
Pj4+IE9uZSBwb250ZW50aWFsIGlzc3VlcyBpcyB0aGF0IExpbnV4IEhETUkgb3V0IG9uIFJLMzMy
OCBoYXMgZWZmZWN0ZWQgYnkKPj4+IHRoaXMgcGF0Y2hzZXQgYXMgSSB3b3VsZG4ndCBmaW5kIGFu
eSByZWxhdGlvbiBvciBjbHVlLgo+Pj4KPj4+IFvCoMKgwqAgMC43NTIwMTZdIExvYWRpbmcgY29t
cGlsZWQtaW4gWC41MDkgY2VydGlmaWNhdGVzCj4+PiBbwqDCoMKgIDAuNzg3Nzk2XSBpbm5vX2hk
bWlfcGh5X3JrMzMyOF9jbGtfcmVjYWxjX3JhdGU6IHBhcmVudCAyNDAwMDAwMAo+Pj4gW8KgwqDC
oCAwLjc4ODM5MV0gaW5uby1oZG1pLXBoeSBmZjQzMDAwMC5waHk6IAo+Pj4gaW5ub19oZG1pX3Bo
eV9yazMzMjhfY2xrX3JlY2FsY19yYXRlIHJhdGUgMTQ4NTAwMDAwIHZjbyAxNDg1MDAwMDAKPj4+
IFvCoMKgwqAgMC43OTgzNTNdIHJvY2tjaGlwLWRybSBkaXNwbGF5LXN1YnN5c3RlbTogYm91bmQg
ZmYzNzAwMDAudm9wIAo+Pj4gKG9wcyB2b3BfY29tcG9uZW50X29wcykKPj4+IFvCoMKgwqAgMC43
OTk0MDNdIGR3aGRtaS1yb2NrY2hpcCBmZjNjMDAwMC5oZG1pOiBzdXBwbHkgYXZkZC0wdjkgbm90
IAo+Pj4gZm91bmQsIHVzaW5nIGR1bW15IHJlZ3VsYXRvcgo+Pj4gW8KgwqDCoCAwLjgwMDI4OF0g
cmtfaW9tbXUgZmYzNzNmMDAuaW9tbXU6IEVuYWJsZSBzdGFsbCByZXF1ZXN0IHRpbWVkIAo+Pj4g
b3V0LCBzdGF0dXM6IDB4MDAwMDRiCj4+PiBbwqDCoMKgIDAuODAxMTMxXSBkd2hkbWktcm9ja2No
aXAgZmYzYzAwMDAuaGRtaTogc3VwcGx5IGF2ZGQtMXY4IG5vdCAKPj4+IGZvdW5kLCB1c2luZyBk
dW1teSByZWd1bGF0b3IKPj4+IFvCoMKgwqAgMC44MDIwNTZdIHJrX2lvbW11IGZmMzczZjAwLmlv
bW11OiBEaXNhYmxlIHBhZ2luZyByZXF1ZXN0IHRpbWVkIAo+Pj4gb3V0LCBzdGF0dXM6IDB4MDAw
MDRiCj4+PiBbwqDCoMKgIDAuODAzMjMzXSBkd2hkbWktcm9ja2NoaXAgZmYzYzAwMDAuaGRtaTog
RGV0ZWN0ZWQgSERNSSBUWCAKPj4+IGNvbnRyb2xsZXIgdjIuMTFhIHdpdGggSERDUCAoaW5ub19k
d19oZG1pX3BoeTIpCj4+PiBbwqDCoMKgIDAuODA1MzU1XSBkd2hkbWktcm9ja2NoaXAgZmYzYzAw
MDAuaGRtaTogcmVnaXN0ZXJlZCBEZXNpZ25XYXJlIAo+Pj4gSERNSSBJMkMgYnVzIGRyaXZlcgo+
Pj4gW8KgwqDCoCAwLjgwODc2OV0gcm9ja2NoaXAtZHJtIGRpc3BsYXktc3Vic3lzdGVtOiBib3Vu
ZCBmZjNjMDAwMC5oZG1pIAo+Pj4gKG9wcyBkd19oZG1pX3JvY2tjaGlwX29wcykKPj4+IFvCoMKg
wqAgMC44MTA4NjldIFtkcm1dIEluaXRpYWxpemVkIHJvY2tjaGlwIDEuMC4wIDIwMTQwODE4IGZv
ciAKPj4+IGRpc3BsYXktc3Vic3lzdGVtIG9uIG1pbm9yIDAKPj4+Cj4+PiBUaGUgb25seSB3YXkg
SSBjYW4gdXNlIExpbnV4IEhETUkgYnkgZGlzYWJsaW5nIElPTU1VIG9yIHN1cHBvcnQKPj4+IGRp
c2FibGUtaW9tbXUgbGluayBmb3IgUkszMzI4IHZpYSBEVCBbMV0uCj4+Pgo+Pj4gWzFdIGh0dHBz
Oi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2RldmljZXRyZWUvbXNnNjA1MTI0Lmh0bWwKPj4gSXMg
YW55b25lIGF3YXJlIG9mIHRoaXMgaXNzdWU/IEkgZGlkIHBvc3QgdGhlIHBhdGNoZXMgZm9yIExp
bnV4IElPTU1VCj4+IGJ1dCBzZWVtcyBub3QgYSBwcm9wZXIgc29sdXRpb24uIEFueSBzdWdnZXN0
aW9ucz8KPiAKPiBJJ20gbm90IGV4cGVydCBpbiBIRE1JL1ZPUCwgc28gSSBjYW4ndCBwcm92aWRl
IGEgc3VpdGFibGUgc29sdXRpb24gaW4gCj4gdGhlIGtlcm5lbCwKPiAKPiBidXQgaGVyZSBpcyB0
aGUgcmVhc29uIHdoeSB3ZSBuZWVkIHBhdGNoIHRvIHdvcmthcm91bmQgdGhlIGlzc3VlIGluIHRo
ZSAKPiBrZXJuZWw6Cj4gCj4gLSBUaGUgVk9QIGRyaXZlciB3b3JraW5nIGluIFUtQm9vdCBpcyBu
b24tSU9NTVUgbW9kZSwgYW5kIHRoZSBWT1AgYWNjZXNzIAo+IEREUiBieSBwaHlzaWNhbCBhZGRy
ZXNzOwo+IAo+IC0gVGhlIFZPUCBkcml2ZXIgd29ya2luZyBpbiBrZXJuZWwgd2l0aCBJT01NVSBl
bmFibGVkKGJ5IGRlZmF1bHQpLCB0aGUgCj4gVk9QIGFjY2VzcyBERFIgd2l0aCB2aXJ0dWFsIGFk
ZHJlc3MoYnkgSU9NTVUpOwo+IAo+IC0gVGhlIFZPUCBpcyBrZWVwIHdvcmtpbmcgaW4ga2VybmVs
IGJlZm9yZSBrZXJuZWwgVk9QIGRyaXZlciBpcyBlbmFibGVkLCAKPiBhbmQgdGhlIElPTU1VIGRy
aXZlciB3aWxsIGJlIGVuYWJsZWQgYnkKPiAKPiAgwqDCoCB0aGUgTGludXggUE0gZnJhbWV3b3Jr
LCBzaW5jZSB0aGUgSU9NTVUgaXMgbm90IGNvcnJlY3RseSBjb25maWd1cmVkIAo+IGF0IHRoaXMg
cG9pbnQsIHRoZSBWT1Agd2lsbCBhY2Nlc3MgdW5rbm93bgo+IAo+ICDCoMKgwqAgc3BhY2UodGhl
IG9yaWdpbmFsIHBoeXNpY2FsIGFkZHJlc3MgaW4gVS1Cb290KSBjb252ZXJ0IGJ5IElPTU1VOwo+
IAo+IFNvIHdlIG5lZWQgdG8gZGlzYWJsZSB0aGUgSU9NTVUgdGVtcG9yYXJ5IGluIGtlcm5lbCBz
dGFydHVwIGJlZm9yZSBWT1AgCj4gZHJpdmVyIGlzIGVuYWJsZWQuCgpJZiBVLUJvb3QgaXNuJ3Qg
aGFuZGluZyBvZmYgYW4gYWN0aXZlIGZyYW1lYnVmZmVyLCB0aGVuIGl0IHNob3VsZCBiZSAKVS1C
b290J3MgcmVzcG9uc2liaWxpdHkgdG8gc3RvcCB0aGUgVk9QIGJlZm9yZSBpdCBleGl0czsgaWYg
b24gdGhlIG90aGVyIApoYW5kIGl0IGlzLCB0aGVuIGl0IGNhbiBub3cgdXNlIHRoZSAiaW9tbXUt
YWRkcmVzc2VzIiBEVCBwcm9wZXJ0eSAoc2VlIAp0aGUgcmVzZXJ2ZWQtbWVtb3J5IHNjaGVtYSkg
b24gdGhlIGZyYW1lYnVmZmVyIHJlZ2lvbiwgYW5kIHdlIHNob3VsZCAKanVzdCBuZWVkIGEgYml0
IG9mIHdvcmsgaW4gdGhlIElPTU1VIGRyaXZlciB0byBlbnN1cmUgdGhhdCBpcyByZXNwZWN0ZWQg
CmR1cmluZyB0aGUgcGVyaW9kIGJldHdlZW4gdGhlIElPTU1VIGluaXRpYWxpc2luZyBhbmQgdGhl
IExpbnV4IFZPUCAKZHJpdmVyIHN1YnNlcXVlbnRseSB0YWtpbmcgb3ZlciAoaS5lLiBzbyBpdCB3
b24ndCBnZXQgc3R1Y2sgb24gYW4gCnVuZXhwZWN0ZWQgcGFnZSBmYXVsdCBhcyBzZWVtcyB0byBi
ZSBoYXBwZW5pbmcgYWJvdmUpLiBUaGUgSU9NTVUgYXNwZWN0IApvZiB0aGF0IG91Z2h0IHRvIGJl
IGZhaXJseSBzdHJhaWdodGZvcndhcmQ7IHRoZSB0cmlja2llciBwYXJ0IG1pZ2h0IGJlIAp0aGUg
cnVudGltZSBQTSBhc3BlY3QgdG8gZW5zdXJlIHRoZSBJT01NVSBkb2Vzbid0IGxldCBpdHNlbGYg
Z28gaWRsZSBhbmQgCmFjdHVhbGx5IHR1cm4gYW55dGhpbmcgb2ZmIGR1cmluZyB0aGF0IHBlcmlv
ZC4gSSBhbHNvIHN0aWxsIHRoaW5rIHRoYXQgCmRvaW5nIHRoZSBmdWxsIHJrX2lvbW11X2Rpc2Fi
bGUoKSB1cG9uIHJ1bnRpbWUgc3VzcGVuZCBpcyB3cm9uZywgYnV0IAp0aGF0J3MgbW9yZSBvZiBh
IHRoaW5nIHdoaWNoIGNvbmZvdW5kcyB0aGUgdW5kZXJseWluZyBpc3N1ZSBoZXJlLCByYXRoZXIg
CnRoYW4gYmVpbmcgdGhlIHByb2JsZW0gaW4gaXRzZWxmLgoKVGhhbmtzLApSb2Jpbi4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
