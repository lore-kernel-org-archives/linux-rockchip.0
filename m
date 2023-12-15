Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0531EC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Dec 2023 07:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BZB7wUppI8K0oZfXrfZOreerZqm9YuBbgKDvTJT+QAc=; b=GLPcUNlaQm2PuF
	vhlVyn6OlPQFydulpFxVRtaPJ1gkFKuIFh/OgbwaZolWLtVTHkMlfSE4Za/wpRMTW2G5DjGAhfoXd
	tVuR0f4pVJJ7o83UKrQuanCoMZQ1CerauXZiyWXX2oamQYrXRwPsFMC+kpPSNTyMw6RmvYopcoyjf
	cp3u/24BtYp/8/rQkswbqVOgzOphQR71js441ucDupw3vdOq7xNeDAdN0EazzCvHtyzOAXNeQ32Dl
	0mwU1XmGtHjuSmKJGdnENw0Cxcq6DyJECCXAy0HEaAhhs0Ufjm6TFkPT3RY+59oRJ9tmgMjCHwff3
	8JjFLuYG5fIjpVWFi3xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE2Ob-002GUT-3C;
	Fri, 15 Dec 2023 07:14:05 +0000
Received: from mail-m17214.xmail.ntesmail.com ([45.195.17.214])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE2OY-002GTV-0x
	for linux-rockchip@lists.infradead.org;
	Fri, 15 Dec 2023 07:14:04 +0000
DKIM-Signature: a=rsa-sha256;
	b=BjqbK9IUB6PQM5oYbbIP/MBbgb74OoOOftVj1d8fIG6/2mv/MmWdtk7wE7jfD0O8F8pbOVcpIZ51UK7u0LWlSgGgrtB7bOzrwRBcJ2r3XYsyFZY7F+Z+im883aVcHT5TocHMibRcgfphVI8onSJscF67YDXYwJksZKQQvzqe4x4=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=fGCZXGVSQoh76nf2JIo1gu35cFnTGgnh2YI92PtRwho=;
	h=date:mime-version:subject:message-id:from;
Received: from [192.168.60.65] (unknown [103.29.142.67])
	by mail-m11877.qiye.163.com (Hmail) with ESMTPA id 83AB5400497;
	Fri, 15 Dec 2023 15:13:38 +0800 (CST)
Message-ID: <f04a716f-1383-493c-87b5-e39edacee857@rock-chips.com>
Date: Fri, 15 Dec 2023 15:13:36 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/17] video: dw_hdmi: Support Vendor PHY
Content-Language: en-US
To: Jagan Teki <jagan@amarulasolutions.com>, Heiko Stuebner
 <heiko@sntech.de>, Anatolij Gustschin <agust@denx.de>
Cc: u-boot@lists.denx.de, Da Xue <da.xue@libretech.co>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Andre Przywara <andre.przywara@arm.com>, Simon Glass <sjg@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 =?UTF-8?B?6Jab5bCP5piO?= <xxm@rock-chips.com>, =?UTF-8?B?5pON55Ge5p2w?=
 <algea.cao@rock-chips.com>, =?UTF-8?B?6Zer5a2d5Yab?=
 <andy.yan@rock-chips.com>
References: <20231211085939.5478-1-jagan@amarulasolutions.com>
 <CAMty3ZBNC7Fpi-S4uOwfJ3ULWQ27PiVAKTqbnQKB3nB5vXHrhg@mail.gmail.com>
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <CAMty3ZBNC7Fpi-S4uOwfJ3ULWQ27PiVAKTqbnQKB3nB5vXHrhg@mail.gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDGBofVh0fQkhMHk5KTk5ITFUTARMWGhIXJBQOD1
	lXWRgSC1lBWUpLSFVJQlVKT0lVTUxZV1kWGg8SFR0UWUFZT0tIVUpNT0lOSVVKS0tVSkJZBg++
X-HM-Tid: 0a8c6c52de3c2eb3kusn83ab5400497
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NBQ6Mhw6ITw0DTdLViMpDgE5
	L08aFA1VSlVKTEtJTUlPT0lLS0NJVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlKS0hVSUJVSk9JVU1MWVdZCAFZQU5ISE03Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_231402_532297_30FDC9FB 
X-CRM114-Status: GOOD (  16.54  )
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

SGkgSmFnYW4sCgpPbiAyMDIzLzEyLzE1IDE0OjM2LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEhpIEhl
aWtvL0tlcnZlci9BbmF0b2xvaiwKPgo+IE9uIE1vbiwgRGVjIDExLCAyMDIzIGF0IDI6MzDigK9Q
TSBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4gd3JvdGU6Cj4+IFVubGlr
ZSBSSzMzOTksIFN1bnhpL01lc29uIERXIEhETUkgdGhlIG5ldyBSb2NrY2hpcCBTb0MgUmszMzI4
IHdvdWxkCj4+IHN1cHBvcnQgZXh0ZXJuYWwgdmVuZG9yIFBIWSB3aXRoIERXIEhETUkgY2hpcC4K
Pj4KPj4gU3VwcG9ydCB0aGlzIHZlbmRvciBQSFkgYnkgYWRkaW5nIG5ldyBwbGF0Zm9ybSBQSFkg
b3BzIHZpYSBEVyBIRE1JCj4+IGRyaXZlciBhbmQgY2FsbCB0aGUgcmVzcGVjdGl2ZSBnZW5lcmlj
IHBoeSBmcm9tIHBsYXRmb3JtIGRyaXZlciBjb2RlLgo+Pgo+PiBUaGlzIHNlcmllcyB0ZXN0ZWQg
aW4gUkszMzI4IHdpdGggMTA4MHAgKDE5MjB4MTA4MCkgcmVzb2x1dGlvbi4KPj4KPj4gUGF0Y2gg
MDAwMS8wMDA1OiBTdXBwb3J0IFZlbmRvciBQSFkKPj4gUGF0Y2ggMDAwNi8wMDA4OiBWT1AgZXh0
ZW5zaW9uIGZvciB3aW4sIGRzcCBvZmZzZXRzCj4+IFBhdGNoIDAwMDkvMDAxMDogUkszMzI4IFZP
UCwgSERNSSBjbG9ja3MKPj4gUGF0Y2ggMDAxMTogICAgICBSb2NrY2hpcCBJbm5vIEhETUkgUEhZ
Cj4+IFBhdGNoIDAwMTI6ICAgICAgUkszMzI4IEhETUkgZHJpdmVyCj4+IFBhdGNoIDAwMTM6ICAg
ICAgUkszMzI4IFZPUCBkcml2ZXIKPj4gUGF0Y2ggMDAxNC8wMDE3OiBFbmFibGUgSERNSSBPdXQg
Zm9yIFJLMzMyOAo+Pgo+PiBJbXBvcnRlbnQ6Cj4+IE9uZSBwb250ZW50aWFsIGlzc3VlcyBpcyB0
aGF0IExpbnV4IEhETUkgb3V0IG9uIFJLMzMyOCBoYXMgZWZmZWN0ZWQgYnkKPj4gdGhpcyBwYXRj
aHNldCBhcyBJIHdvdWxkbid0IGZpbmQgYW55IHJlbGF0aW9uIG9yIGNsdWUuCj4+Cj4+IFsgICAg
MC43NTIwMTZdIExvYWRpbmcgY29tcGlsZWQtaW4gWC41MDkgY2VydGlmaWNhdGVzCj4+IFsgICAg
MC43ODc3OTZdIGlubm9faGRtaV9waHlfcmszMzI4X2Nsa19yZWNhbGNfcmF0ZTogcGFyZW50IDI0
MDAwMDAwCj4+IFsgICAgMC43ODgzOTFdIGlubm8taGRtaS1waHkgZmY0MzAwMDAucGh5OiBpbm5v
X2hkbWlfcGh5X3JrMzMyOF9jbGtfcmVjYWxjX3JhdGUgcmF0ZSAxNDg1MDAwMDAgdmNvIDE0ODUw
MDAwMAo+PiBbICAgIDAuNzk4MzUzXSByb2NrY2hpcC1kcm0gZGlzcGxheS1zdWJzeXN0ZW06IGJv
dW5kIGZmMzcwMDAwLnZvcCAob3BzIHZvcF9jb21wb25lbnRfb3BzKQo+PiBbICAgIDAuNzk5NDAz
XSBkd2hkbWktcm9ja2NoaXAgZmYzYzAwMDAuaGRtaTogc3VwcGx5IGF2ZGQtMHY5IG5vdCBmb3Vu
ZCwgdXNpbmcgZHVtbXkgcmVndWxhdG9yCj4+IFsgICAgMC44MDAyODhdIHJrX2lvbW11IGZmMzcz
ZjAwLmlvbW11OiBFbmFibGUgc3RhbGwgcmVxdWVzdCB0aW1lZCBvdXQsIHN0YXR1czogMHgwMDAw
NGIKPj4gWyAgICAwLjgwMTEzMV0gZHdoZG1pLXJvY2tjaGlwIGZmM2MwMDAwLmhkbWk6IHN1cHBs
eSBhdmRkLTF2OCBub3QgZm91bmQsIHVzaW5nIGR1bW15IHJlZ3VsYXRvcgo+PiBbICAgIDAuODAy
MDU2XSBya19pb21tdSBmZjM3M2YwMC5pb21tdTogRGlzYWJsZSBwYWdpbmcgcmVxdWVzdCB0aW1l
ZCBvdXQsIHN0YXR1czogMHgwMDAwNGIKPj4gWyAgICAwLjgwMzIzM10gZHdoZG1pLXJvY2tjaGlw
IGZmM2MwMDAwLmhkbWk6IERldGVjdGVkIEhETUkgVFggY29udHJvbGxlciB2Mi4xMWEgd2l0aCBI
RENQIChpbm5vX2R3X2hkbWlfcGh5MikKPj4gWyAgICAwLjgwNTM1NV0gZHdoZG1pLXJvY2tjaGlw
IGZmM2MwMDAwLmhkbWk6IHJlZ2lzdGVyZWQgRGVzaWduV2FyZSBIRE1JIEkyQyBidXMgZHJpdmVy
Cj4+IFsgICAgMC44MDg3NjldIHJvY2tjaGlwLWRybSBkaXNwbGF5LXN1YnN5c3RlbTogYm91bmQg
ZmYzYzAwMDAuaGRtaSAob3BzIGR3X2hkbWlfcm9ja2NoaXBfb3BzKQo+PiBbICAgIDAuODEwODY5
XSBbZHJtXSBJbml0aWFsaXplZCByb2NrY2hpcCAxLjAuMCAyMDE0MDgxOCBmb3IgZGlzcGxheS1z
dWJzeXN0ZW0gb24gbWlub3IgMAo+Pgo+PiBUaGUgb25seSB3YXkgSSBjYW4gdXNlIExpbnV4IEhE
TUkgYnkgZGlzYWJsaW5nIElPTU1VIG9yIHN1cHBvcnQKPj4gZGlzYWJsZS1pb21tdSBsaW5rIGZv
ciBSSzMzMjggdmlhIERUIFsxXS4KPj4KPj4gWzFdIGh0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xp
c3RzL2RldmljZXRyZWUvbXNnNjA1MTI0Lmh0bWwKPiBJcyBhbnlvbmUgYXdhcmUgb2YgdGhpcyBp
c3N1ZT8gSSBkaWQgcG9zdCB0aGUgcGF0Y2hlcyBmb3IgTGludXggSU9NTVUKPiBidXQgc2VlbXMg
bm90IGEgcHJvcGVyIHNvbHV0aW9uLiBBbnkgc3VnZ2VzdGlvbnM/CgpJJ20gbm90IGV4cGVydCBp
biBIRE1JL1ZPUCwgc28gSSBjYW4ndCBwcm92aWRlIGEgc3VpdGFibGUgc29sdXRpb24gaW4gCnRo
ZSBrZXJuZWwsCgpidXQgaGVyZSBpcyB0aGUgcmVhc29uIHdoeSB3ZSBuZWVkIHBhdGNoIHRvIHdv
cmthcm91bmQgdGhlIGlzc3VlIGluIHRoZSAKa2VybmVsOgoKLSBUaGUgVk9QIGRyaXZlciB3b3Jr
aW5nIGluIFUtQm9vdCBpcyBub24tSU9NTVUgbW9kZSwgYW5kIHRoZSBWT1AgYWNjZXNzIApERFIg
YnkgcGh5c2ljYWwgYWRkcmVzczsKCi0gVGhlIFZPUCBkcml2ZXIgd29ya2luZyBpbiBrZXJuZWwg
d2l0aCBJT01NVSBlbmFibGVkKGJ5IGRlZmF1bHQpLCB0aGUgClZPUCBhY2Nlc3MgRERSIHdpdGgg
dmlydHVhbCBhZGRyZXNzKGJ5IElPTU1VKTsKCi0gVGhlIFZPUCBpcyBrZWVwIHdvcmtpbmcgaW4g
a2VybmVsIGJlZm9yZSBrZXJuZWwgVk9QIGRyaXZlciBpcyBlbmFibGVkLCAKYW5kIHRoZSBJT01N
VSBkcml2ZXIgd2lsbCBiZSBlbmFibGVkIGJ5CgogwqDCoCB0aGUgTGludXggUE0gZnJhbWV3b3Jr
LCBzaW5jZSB0aGUgSU9NTVUgaXMgbm90IGNvcnJlY3RseSBjb25maWd1cmVkIAphdCB0aGlzIHBv
aW50LCB0aGUgVk9QIHdpbGwgYWNjZXNzIHVua25vd24KCiDCoMKgwqAgc3BhY2UodGhlIG9yaWdp
bmFsIHBoeXNpY2FsIGFkZHJlc3MgaW4gVS1Cb290KSBjb252ZXJ0IGJ5IElPTU1VOwoKU28gd2Ug
bmVlZCB0byBkaXNhYmxlIHRoZSBJT01NVSB0ZW1wb3JhcnkgaW4ga2VybmVsIHN0YXJ0dXAgYmVm
b3JlIFZPUCAKZHJpdmVyIGlzIGVuYWJsZWQuCgoKVGhhbmtzLAoKLSBLZXZlcgoKPgo+IFRoYW5r
cywKPiBKYWdhbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
