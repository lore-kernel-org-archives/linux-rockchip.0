Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B736C35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 18:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ygJ/IYPp56vc4U5uvoiCWn+6kal7rWBx97MI2d86MLQ=; b=UE7fAgJoJbx0Cq
	ZnUPeh8GJfCAyLqgSwmNQUyWBLhEBQUuCtV5c/MwCkaAsZ1uQeXr/J8seRKW10Lc3VJ680WfN/HPN
	jWMxJkCJ1K/gYgIRYoyNnY1J/6ZyzSYH3h02syPwP/4G9DlEoxCliWgCt5gxuIKfTnOmk+9hN9/bD
	8X/teScISx8/WMMJBURt8Pj/CYtMHfHTRzu9Jq1S2sOEc2uhY8VpNn/aMOIDd5UZnPgkEfo2hFXNy
	tRNZpO8E8+wJ3qlz1agR2mQqlBQla2CUTlqI3qnwHia05rwhr58nKH3LGau8j2Sa+WadQidsMwFYB
	Ftuz2mBtvDDAO/cIBh6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFIkp-00BocS-2n;
	Mon, 18 Dec 2023 18:54:15 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFIkm-00BobT-1N
	for linux-rockchip@lists.infradead.org;
	Mon, 18 Dec 2023 18:54:14 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-5e7415df4d6so4968267b3.0
        for <linux-rockchip@lists.infradead.org>; Mon, 18 Dec 2023 10:54:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1702925650; x=1703530450; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H5h4mc2WG/t/UgKDI4gCpvl7fJ97pxJIPlX66cpdNHw=;
        b=h0hzSob2a+mdZ40qxBTD/yIOiMn4l9Gtk0cb8hgTt74O1usjjQuv8o9gu8tsqNBAZ9
         RQoYygVsaV3Re36DVYUMT23MVv93QS7nEz7zKArHI1aNnRC1vuLo4Xf+9HRjLQZERK8y
         kgv4vUPo1UE/DLh6U21onqdh7mZQ+QIBeUk8Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702925650; x=1703530450;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H5h4mc2WG/t/UgKDI4gCpvl7fJ97pxJIPlX66cpdNHw=;
        b=n34S6m8Gy44248XSqfP7FlI+O2Ub+GEgl6Oco5RYox0vuCDSlmsWGO3Ex2c1/LLI5n
         qg095JUeg7CrAGUbfNdcQFy1eb8m+WkDLAl5vs7JYikHGgVcqcmN1pvIvcFs/H55MW+a
         rYxJx3AERJuTWC6TlvjaVO1tjYmkuFfJ0i5mAqyAGwGxX8iKMCG3iXiRkg0oIll61LGw
         mvbzgSRswIr+wdEkDo63+D+wCZItQjF9Gya5vw1LiKty+H0uQFNnv5Q/4D/TQJSZB/kv
         xusaKAc6cqn+7epgLNR0Ax7zE/R9MguODj3w8M2ActhMTIPt+bguGkOs+iaCE3UuFTBN
         g+EA==
X-Gm-Message-State: AOJu0YwyhptS+9ZNqzXdz6XasTLJlKVtG7kHSSGcGLZGRQhAJ4EhcUke
	lygdbti+MCjt78mofFin9hz2ycPXtkVgGd1MlEOboQ==
X-Google-Smtp-Source: AGHT+IHShL8Bih0XKLhwi28+/FHQNSL2OZ0HWjawlEP+/Lthvk4OoFI5WMBU660lEm/QVCEREz5hmClZ44pRr3JhlVA=
X-Received: by 2002:a05:690c:82c:b0:5e6:20cf:961e with SMTP id
 by12-20020a05690c082c00b005e620cf961emr1511775ywb.15.1702925649857; Mon, 18
 Dec 2023 10:54:09 -0800 (PST)
MIME-Version: 1.0
References: <20231211085939.5478-1-jagan@amarulasolutions.com>
 <CAMty3ZBNC7Fpi-S4uOwfJ3ULWQ27PiVAKTqbnQKB3nB5vXHrhg@mail.gmail.com>
 <f04a716f-1383-493c-87b5-e39edacee857@rock-chips.com> <75c3b7e3-5184-4ec6-88b5-ec11ff269dd5@arm.com>
In-Reply-To: <75c3b7e3-5184-4ec6-88b5-ec11ff269dd5@arm.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 19 Dec 2023 00:23:58 +0530
Message-ID: <CAMty3ZC7j5MtzsuJD_-HQt5pCgqCrhkU=Y1WWOqjreyvmFe0yA@mail.gmail.com>
Subject: Re: [PATCH 00/17] video: dw_hdmi: Support Vendor PHY
To: Robin Murphy <robin.murphy@arm.com>
Cc: Kever Yang <kever.yang@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, 
	Anatolij Gustschin <agust@denx.de>, u-boot@lists.denx.de, Da Xue <da.xue@libretech.co>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Andre Przywara <andre.przywara@arm.com>, 
	Simon Glass <sjg@chromium.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, =?UTF-8?B?6Jab5bCP5piO?= <xxm@rock-chips.com>, 
	=?UTF-8?B?5pON55Ge5p2w?= <algea.cao@rock-chips.com>, 
	=?UTF-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_105412_492348_D8A1650A 
X-CRM114-Status: GOOD (  35.89  )
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

T24gTW9uLCBEZWMgMTgsIDIwMjMgYXQgNzoyM+KAr1BNIFJvYmluIE11cnBoeSA8cm9iaW4ubXVy
cGh5QGFybS5jb20+IHdyb3RlOgo+Cj4gT24gMjAyMy0xMi0xNSA3OjEzIGFtLCBLZXZlciBZYW5n
IHdyb3RlOgo+ID4gSGkgSmFnYW4sCj4gPgo+ID4gT24gMjAyMy8xMi8xNSAxNDozNiwgSmFnYW4g
VGVraSB3cm90ZToKPiA+PiBIaSBIZWlrby9LZXJ2ZXIvQW5hdG9sb2osCj4gPj4KPiA+PiBPbiBN
b24sIERlYyAxMSwgMjAyMyBhdCAyOjMw4oCvUE0gSmFnYW4gVGVraQo+ID4+IDxqYWdhbkBhbWFy
dWxhc29sdXRpb25zLmNvbT4gd3JvdGU6Cj4gPj4+IFVubGlrZSBSSzMzOTksIFN1bnhpL01lc29u
IERXIEhETUkgdGhlIG5ldyBSb2NrY2hpcCBTb0MgUmszMzI4IHdvdWxkCj4gPj4+IHN1cHBvcnQg
ZXh0ZXJuYWwgdmVuZG9yIFBIWSB3aXRoIERXIEhETUkgY2hpcC4KPiA+Pj4KPiA+Pj4gU3VwcG9y
dCB0aGlzIHZlbmRvciBQSFkgYnkgYWRkaW5nIG5ldyBwbGF0Zm9ybSBQSFkgb3BzIHZpYSBEVyBI
RE1JCj4gPj4+IGRyaXZlciBhbmQgY2FsbCB0aGUgcmVzcGVjdGl2ZSBnZW5lcmljIHBoeSBmcm9t
IHBsYXRmb3JtIGRyaXZlciBjb2RlLgo+ID4+Pgo+ID4+PiBUaGlzIHNlcmllcyB0ZXN0ZWQgaW4g
UkszMzI4IHdpdGggMTA4MHAgKDE5MjB4MTA4MCkgcmVzb2x1dGlvbi4KPiA+Pj4KPiA+Pj4gUGF0
Y2ggMDAwMS8wMDA1OiBTdXBwb3J0IFZlbmRvciBQSFkKPiA+Pj4gUGF0Y2ggMDAwNi8wMDA4OiBW
T1AgZXh0ZW5zaW9uIGZvciB3aW4sIGRzcCBvZmZzZXRzCj4gPj4+IFBhdGNoIDAwMDkvMDAxMDog
UkszMzI4IFZPUCwgSERNSSBjbG9ja3MKPiA+Pj4gUGF0Y2ggMDAxMTogICAgICBSb2NrY2hpcCBJ
bm5vIEhETUkgUEhZCj4gPj4+IFBhdGNoIDAwMTI6ICAgICAgUkszMzI4IEhETUkgZHJpdmVyCj4g
Pj4+IFBhdGNoIDAwMTM6ICAgICAgUkszMzI4IFZPUCBkcml2ZXIKPiA+Pj4gUGF0Y2ggMDAxNC8w
MDE3OiBFbmFibGUgSERNSSBPdXQgZm9yIFJLMzMyOAo+ID4+Pgo+ID4+PiBJbXBvcnRlbnQ6Cj4g
Pj4+IE9uZSBwb250ZW50aWFsIGlzc3VlcyBpcyB0aGF0IExpbnV4IEhETUkgb3V0IG9uIFJLMzMy
OCBoYXMgZWZmZWN0ZWQgYnkKPiA+Pj4gdGhpcyBwYXRjaHNldCBhcyBJIHdvdWxkbid0IGZpbmQg
YW55IHJlbGF0aW9uIG9yIGNsdWUuCj4gPj4+Cj4gPj4+IFsgICAgMC43NTIwMTZdIExvYWRpbmcg
Y29tcGlsZWQtaW4gWC41MDkgY2VydGlmaWNhdGVzCj4gPj4+IFsgICAgMC43ODc3OTZdIGlubm9f
aGRtaV9waHlfcmszMzI4X2Nsa19yZWNhbGNfcmF0ZTogcGFyZW50IDI0MDAwMDAwCj4gPj4+IFsg
ICAgMC43ODgzOTFdIGlubm8taGRtaS1waHkgZmY0MzAwMDAucGh5Ogo+ID4+PiBpbm5vX2hkbWlf
cGh5X3JrMzMyOF9jbGtfcmVjYWxjX3JhdGUgcmF0ZSAxNDg1MDAwMDAgdmNvIDE0ODUwMDAwMAo+
ID4+PiBbICAgIDAuNzk4MzUzXSByb2NrY2hpcC1kcm0gZGlzcGxheS1zdWJzeXN0ZW06IGJvdW5k
IGZmMzcwMDAwLnZvcAo+ID4+PiAob3BzIHZvcF9jb21wb25lbnRfb3BzKQo+ID4+PiBbICAgIDAu
Nzk5NDAzXSBkd2hkbWktcm9ja2NoaXAgZmYzYzAwMDAuaGRtaTogc3VwcGx5IGF2ZGQtMHY5IG5v
dAo+ID4+PiBmb3VuZCwgdXNpbmcgZHVtbXkgcmVndWxhdG9yCj4gPj4+IFsgICAgMC44MDAyODhd
IHJrX2lvbW11IGZmMzczZjAwLmlvbW11OiBFbmFibGUgc3RhbGwgcmVxdWVzdCB0aW1lZAo+ID4+
PiBvdXQsIHN0YXR1czogMHgwMDAwNGIKPiA+Pj4gWyAgICAwLjgwMTEzMV0gZHdoZG1pLXJvY2tj
aGlwIGZmM2MwMDAwLmhkbWk6IHN1cHBseSBhdmRkLTF2OCBub3QKPiA+Pj4gZm91bmQsIHVzaW5n
IGR1bW15IHJlZ3VsYXRvcgo+ID4+PiBbICAgIDAuODAyMDU2XSBya19pb21tdSBmZjM3M2YwMC5p
b21tdTogRGlzYWJsZSBwYWdpbmcgcmVxdWVzdCB0aW1lZAo+ID4+PiBvdXQsIHN0YXR1czogMHgw
MDAwNGIKPiA+Pj4gWyAgICAwLjgwMzIzM10gZHdoZG1pLXJvY2tjaGlwIGZmM2MwMDAwLmhkbWk6
IERldGVjdGVkIEhETUkgVFgKPiA+Pj4gY29udHJvbGxlciB2Mi4xMWEgd2l0aCBIRENQIChpbm5v
X2R3X2hkbWlfcGh5MikKPiA+Pj4gWyAgICAwLjgwNTM1NV0gZHdoZG1pLXJvY2tjaGlwIGZmM2Mw
MDAwLmhkbWk6IHJlZ2lzdGVyZWQgRGVzaWduV2FyZQo+ID4+PiBIRE1JIEkyQyBidXMgZHJpdmVy
Cj4gPj4+IFsgICAgMC44MDg3NjldIHJvY2tjaGlwLWRybSBkaXNwbGF5LXN1YnN5c3RlbTogYm91
bmQgZmYzYzAwMDAuaGRtaQo+ID4+PiAob3BzIGR3X2hkbWlfcm9ja2NoaXBfb3BzKQo+ID4+PiBb
ICAgIDAuODEwODY5XSBbZHJtXSBJbml0aWFsaXplZCByb2NrY2hpcCAxLjAuMCAyMDE0MDgxOCBm
b3IKPiA+Pj4gZGlzcGxheS1zdWJzeXN0ZW0gb24gbWlub3IgMAo+ID4+Pgo+ID4+PiBUaGUgb25s
eSB3YXkgSSBjYW4gdXNlIExpbnV4IEhETUkgYnkgZGlzYWJsaW5nIElPTU1VIG9yIHN1cHBvcnQK
PiA+Pj4gZGlzYWJsZS1pb21tdSBsaW5rIGZvciBSSzMzMjggdmlhIERUIFsxXS4KPiA+Pj4KPiA+
Pj4gWzFdIGh0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2RldmljZXRyZWUvbXNnNjA1MTI0
Lmh0bWwKPiA+PiBJcyBhbnlvbmUgYXdhcmUgb2YgdGhpcyBpc3N1ZT8gSSBkaWQgcG9zdCB0aGUg
cGF0Y2hlcyBmb3IgTGludXggSU9NTVUKPiA+PiBidXQgc2VlbXMgbm90IGEgcHJvcGVyIHNvbHV0
aW9uLiBBbnkgc3VnZ2VzdGlvbnM/Cj4gPgo+ID4gSSdtIG5vdCBleHBlcnQgaW4gSERNSS9WT1As
IHNvIEkgY2FuJ3QgcHJvdmlkZSBhIHN1aXRhYmxlIHNvbHV0aW9uIGluCj4gPiB0aGUga2VybmVs
LAo+ID4KPiA+IGJ1dCBoZXJlIGlzIHRoZSByZWFzb24gd2h5IHdlIG5lZWQgcGF0Y2ggdG8gd29y
a2Fyb3VuZCB0aGUgaXNzdWUgaW4gdGhlCj4gPiBrZXJuZWw6Cj4gPgo+ID4gLSBUaGUgVk9QIGRy
aXZlciB3b3JraW5nIGluIFUtQm9vdCBpcyBub24tSU9NTVUgbW9kZSwgYW5kIHRoZSBWT1AgYWNj
ZXNzCj4gPiBERFIgYnkgcGh5c2ljYWwgYWRkcmVzczsKPiA+Cj4gPiAtIFRoZSBWT1AgZHJpdmVy
IHdvcmtpbmcgaW4ga2VybmVsIHdpdGggSU9NTVUgZW5hYmxlZChieSBkZWZhdWx0KSwgdGhlCj4g
PiBWT1AgYWNjZXNzIEREUiB3aXRoIHZpcnR1YWwgYWRkcmVzcyhieSBJT01NVSk7Cj4gPgo+ID4g
LSBUaGUgVk9QIGlzIGtlZXAgd29ya2luZyBpbiBrZXJuZWwgYmVmb3JlIGtlcm5lbCBWT1AgZHJp
dmVyIGlzIGVuYWJsZWQsCj4gPiBhbmQgdGhlIElPTU1VIGRyaXZlciB3aWxsIGJlIGVuYWJsZWQg
YnkKPiA+Cj4gPiAgICAgdGhlIExpbnV4IFBNIGZyYW1ld29yaywgc2luY2UgdGhlIElPTU1VIGlz
IG5vdCBjb3JyZWN0bHkgY29uZmlndXJlZAo+ID4gYXQgdGhpcyBwb2ludCwgdGhlIFZPUCB3aWxs
IGFjY2VzcyB1bmtub3duCj4gPgo+ID4gICAgICBzcGFjZSh0aGUgb3JpZ2luYWwgcGh5c2ljYWwg
YWRkcmVzcyBpbiBVLUJvb3QpIGNvbnZlcnQgYnkgSU9NTVU7Cj4gPgo+ID4gU28gd2UgbmVlZCB0
byBkaXNhYmxlIHRoZSBJT01NVSB0ZW1wb3JhcnkgaW4ga2VybmVsIHN0YXJ0dXAgYmVmb3JlIFZP
UAo+ID4gZHJpdmVyIGlzIGVuYWJsZWQuCj4KPiBJZiBVLUJvb3QgaXNuJ3QgaGFuZGluZyBvZmYg
YW4gYWN0aXZlIGZyYW1lYnVmZmVyLCB0aGVuIGl0IHNob3VsZCBiZQo+IFUtQm9vdCdzIHJlc3Bv
bnNpYmlsaXR5IHRvIHN0b3AgdGhlIFZPUCBiZWZvcmUgaXQgZXhpdHM7IGlmIG9uIHRoZSBvdGhl
cgo+IGhhbmQgaXQgaXMsIHRoZW4gaXQgY2FuIG5vdyB1c2UgdGhlICJpb21tdS1hZGRyZXNzZXMi
IERUIHByb3BlcnR5IChzZWUKPiB0aGUgcmVzZXJ2ZWQtbWVtb3J5IHNjaGVtYSkgb24gdGhlIGZy
YW1lYnVmZmVyIHJlZ2lvbiwgYW5kIHdlIHNob3VsZAo+IGp1c3QgbmVlZCBhIGJpdCBvZiB3b3Jr
IGluIHRoZSBJT01NVSBkcml2ZXIgdG8gZW5zdXJlIHRoYXQgaXMgcmVzcGVjdGVkCj4gZHVyaW5n
IHRoZSBwZXJpb2QgYmV0d2VlbiB0aGUgSU9NTVUgaW5pdGlhbGlzaW5nIGFuZCB0aGUgTGludXgg
Vk9QCj4gZHJpdmVyIHN1YnNlcXVlbnRseSB0YWtpbmcgb3ZlciAoaS5lLiBzbyBpdCB3b24ndCBn
ZXQgc3R1Y2sgb24gYW4KPiB1bmV4cGVjdGVkIHBhZ2UgZmF1bHQgYXMgc2VlbXMgdG8gYmUgaGFw
cGVuaW5nIGFib3ZlKS4gVGhlIElPTU1VIGFzcGVjdAo+IG9mIHRoYXQgb3VnaHQgdG8gYmUgZmFp
cmx5IHN0cmFpZ2h0Zm9yd2FyZDsgdGhlIHRyaWNraWVyIHBhcnQgbWlnaHQgYmUKPiB0aGUgcnVu
dGltZSBQTSBhc3BlY3QgdG8gZW5zdXJlIHRoZSBJT01NVSBkb2Vzbid0IGxldCBpdHNlbGYgZ28g
aWRsZSBhbmQKPiBhY3R1YWxseSB0dXJuIGFueXRoaW5nIG9mZiBkdXJpbmcgdGhhdCBwZXJpb2Qu
IEkgYWxzbyBzdGlsbCB0aGluayB0aGF0Cj4gZG9pbmcgdGhlIGZ1bGwgcmtfaW9tbXVfZGlzYWJs
ZSgpIHVwb24gcnVudGltZSBzdXNwZW5kIGlzIHdyb25nLCBidXQKPiB0aGF0J3MgbW9yZSBvZiBh
IHRoaW5nIHdoaWNoIGNvbmZvdW5kcyB0aGUgdW5kZXJseWluZyBpc3N1ZSBoZXJlLCByYXRoZXIK
PiB0aGFuIGJlaW5nIHRoZSBwcm9ibGVtIGluIGl0c2VsZi4KClRoYW5rcyBmb3IgeW91ciBjb21t
ZW50cy4gT2theSwga2VlcGluZyB0aGUgTGludXggSU9NTVUgaXNzdWUgYXNpZGUgSQp0aGluayB3
aGF0ZXZlciBjaGFuZ2UgdGhhdCB1LWJvb3QgbWFrZXMgb24gVk9QIGhhcyB0byBjbGVhciBpdCBi
ZWZvcmUKaGFuZG9mZiB0byBMaW51eCAtIHNvIGNsZWFyaW5nIHRoZSBWT1AgcmVnaXN0ZXJzIGR1
cmluZyBoYW5kb2ZmIHNlZW1zCndvcmtpbmcuIEkgb25seSB3b25kZXIgd2h5IGl0IGhhcHBlbnMg
b25seSBvbiBSSzMzMjggKFJLMzM5OSBhbmQKUkszMjg4IHNlZW0gZmluZSkuCgpJIHdpbGwgcG9z
dCB0aGUgbmV4dCB2ZXJzaW9uIHdpdGggVk9QIGNsZWFyIGR1cmluZyBoYW5kb2ZmLgoKVGhhbmtz
LApKYWdhbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
