Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1502AC3600C
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Apr 2025 10:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NJrc6SxmNAo2oC5PxdICrGIH4Vti034PbPSB1A5uaBw=; b=05wQXmfi+c+psk
	NzgvC+btnOE+/LUJQjyhcdTjUs94ODJyOd+4OWn5TEBqs40dKcWeLkvan7pUAn/Uq34gSrFFymSAb
	bdR0omzMsWPPvnbMpzgBfvBxAiuoLEalXYxvkGfQry4j3qvGx2lXiwXnQt1jsHzeo4Tvk58tcfqxu
	3REZxOMD9iC7maZEFoouyXHOcyotXmXe5nKjxI5HCYyuWNvmINt9+Ch1BbDxyzeQThtOrFXhj561D
	cfAO6wpBddIhjzh+pMWBGYTsxIzFgpDJC0Ce+2A119O3cYFL6LnIJlAvdDkzWZ7usvs49zDRMFMOS
	fYDJeda/Z3qxsbPGURTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0HZO-00000008WG4-0mYx;
	Thu, 03 Apr 2025 10:13:10 +0000
Received: from fr2000.dnsiaas.com ([151.106.4.82])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0H4e-00000008Qzc-3KSO;
	Thu, 03 Apr 2025 09:41:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=superkali.me; s=default; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:References:In-Reply-To:Reply-To:Subject:Cc:To:From:Date:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=CZ8+R8XT4dcdN/GHerXPS2K4xGlT84hC1felE/LCgYs=; b=B0wBVPV+hgcSEQc4WDIGgIvPB9
	RBtxye5wu4EsB7p+rWJZgMWtXVa3VYBLb8vW1fE8ApS7/A3hWVAhPVRBvcxFWUJ47Q4SLRwU/fO1V
	V3bFz4rUJJuio0BjsF2q0+f53CRKA4md5KYLKjkxrDRdxpx+irvTxUt/dVxJ+Lw2jq8sZcjn+2pe0
	6mEB2G8SaUmJJu/XycKh/PEKUtACf8eZPzpBjDTGMS/dJWGK1b8mwu8v8QzE4t/FBIrB7Ip/pyz3o
	sVjHWV8vZmYFU353pcU/eAvtof169bhxPva5Cb791sqSI633xv81Miz3GMqQzQG4g2DQskQC/pUnx
	00OwYYjA==;
Received: from [127.0.0.1] (port=56532 helo=fr2000.dnsiaas.com)
	by fr2000.dnsiaas.com with esmtpa (Exim 4.98.1)
	(envelope-from <hello@superkali.me>)
	id 1u0H4a-00000000drV-3EUC;
	Thu, 03 Apr 2025 11:41:19 +0200
MIME-Version: 1.0
Date: Thu, 03 Apr 2025 11:41:14 +0200
From: Daniele Briguglio <hello@superkali.me>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, alchark@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Daniele Briguglio
 <daniele.briguglio@icloud.com>
Subject: Re: [PATCH] rockchip: dts: rk3588: add missing OPP nodes for lower
 frequencies
Mail-Reply-To: hello@superkali.me
In-Reply-To: <2652016.Lt9SDvczpP@diego>
References: <20250403091840.3349637-1-hello@superkali.me>
 <2652016.Lt9SDvczpP@diego>
User-Agent: Roundcube Webmail/1.6.9
Message-ID: <a5bc7892ec9f84793db560b81cdb21bc@superkali.me>
X-Sender: hello@superkali.me
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - fr2000.dnsiaas.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - superkali.me
X-Get-Message-Sender-Via: fr2000.dnsiaas.com: authenticated_id: hello@superkali.me
X-Authenticated-Sender: fr2000.dnsiaas.com: hello@superkali.me
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250403_024124_984321_DAE86D09 
X-CRM114-Status: GOOD (  16.67  )
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
Reply-To: hello@superkali.me
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sCgpUaGFuayB5b3UgZm9yIHlvdXIgZmVlZGJhY2suIEkgbWlzdW5kZXJzdG9vZCBo
b3cgcG93ZXIgc2F2aW5ncyB3b3JrIGluIApDUFVzIC0gSSBpbmNvcnJlY3RseSBhc3N1bWVkIHRo
YXQgc2ltcGx5IHJlZHVjaW5nIHRoZSBmcmVxdWVuY3kgd291bGQgCnNhdmUgc2lnbmlmaWNhbnQg
ZW5lcmd5LCBldmVuIHdpdGhvdXQgcmVkdWNpbmcgdm9sdGFnZS4gSSBub3cgdW5kZXJzdGFuZCAK
d2h5IHRoYXQncyBub3QgdGhlIGNhc2UuCgpNeSBtYWluIHB1cnBvc2UgaW4gYWRkaW5nIHRoZXNl
IE9QUCBub2RlcyB3YXMgdG8gYWxsb3cgdGhlIHN5c3RlbSB0byAKb3BlcmF0ZSBhdCBsb3dlciBm
cmVxdWVuY2llcyBsaWtlIDQwOE1IeiwgNjAwTUh6LCBhbmQgODE2TUh6LCB3aGljaCBhcmUgCmN1
cnJlbnRseSB1bmF2YWlsYWJsZS4gSSB0aG91Z2h0IHRoaXMgd291bGQgaW1wcm92ZSBlbmVyZ3kg
ZWZmaWNpZW5jeSwgCmJ1dCBJIHNlZSBub3cgdGhhdCBrZWVwaW5nIHRoZSBzYW1lIHZvbHRhZ2Ug
KDY3NW1WKSB3aGlsZSBvbmx5IGxvd2VyaW5nIApmcmVxdWVuY3kgd29uJ3QgYWNoaWV2ZSBtZWFu
aW5nZnVsIHBvd2VyIHNhdmluZ3MuCgpEbyB5b3UgaGF2ZSBhbnkgZ3VpZGFuY2Ugb24gbG93ZXIg
dm9sdGFnZSB2YWx1ZXMgdGhhdCBtaWdodCBiZSBzYWZlIGFuZCAKc3RhYmxlIGZvciB0aGVzZSBs
b3dlciBmcmVxdWVuY2llcyBvbiB0aGUgUkszNTg4PyBJJ3ZlIHNlZW4gc29tZSAKb3ZlcmxheXMg
dGhhdCBtYWludGFpbiA2NzVtViBhcyB0aGUgbWluaW11bSBldmVuIGZvciBsb3dlciBmcmVxdWVu
Y2llcywgCmJ1dCBpZiB0aGVyZSBhcmUgdGVzdGVkIGxvd2VyIHZvbHRhZ2VzIGF2YWlsYWJsZSwg
SSdkIGJlIGhhcHB5IHRvIAppbmNsdWRlIHRob3NlIGluIGFuIHVwZGF0ZWQgdmVyc2lvbiBvZiB0
aGUgcGF0Y2guCgpUaGFua3MsCkRhbmllbGUKCk9uIDAzLzA0LzIwMjUgMTE6MjQsIEhlaWtvIFN0
w7xibmVyIHdyb3RlOgo+IEhpLAo+IAo+IEFtIERvbm5lcnN0YWcsIDMuIEFwcmlsIDIwMjUsIDEx
OjE4OjQwIE1FU1ogc2NocmllYiBEYW5pZWxlIEJyaWd1Z2xpbzoKPj4gRnJvbTogRGFuaWVsZSBC
cmlndWdsaW8gPGRhbmllbGUuYnJpZ3VnbGlvQGljbG91ZC5jb20+Cj4+IAo+PiBUaGlzIFBhdGNo
IGFkZHMgbWlzc2luZyBPcGVyYXRpbmcgUGVyZm9ybWFuY2UgUG9pbnQgKE9QUCkgbm9kZXMgZm9y
IAo+PiBsb3dlcgo+PiBmcmVxdWVuY2llcyB0byB0aGUgUkszNTg4IGRldmljZSB0cmVlLiBUaGVz
ZSBhZGRpdGlvbnMgaW1wcm92ZSBwb3dlcgo+PiBtYW5hZ2VtZW50IGJ5IGVuYWJsaW5nIHRoZSBD
UFUgY2x1c3RlcnMgdG8gc2NhbGUgZG93biB0byBsb3dlcgo+PiBmcmVxdWVuY2llcyB3aGVuIHVu
ZGVyIGxpZ2h0IGxvYWRzLCB3aGljaCBzaG91bGQgaW1wcm92ZSBlbmVyZ3kKPj4gZWZmaWNpZW5j
eSBhbmQgcmVkdWNlIHBvd2VyIGNvbnN1bXB0aW9uLgo+PiAKPj4gVGhlIGNoYW5nZXMgYWRkIE9Q
UCBub2RlcyBmb3IgNDA4TUh6LCA2MDBNSHosIDgxNk1IeiwgYW5kIDEwMDhNSHoKPj4gKGZvciBj
bHVzdGVyMSBhbmQgY2x1c3RlcjIgb25seSwgYXMgY2x1c3RlcjAgYWxyZWFkeSBoYWQgMTAwOE1I
eikKPj4gd2l0aCBhcHByb3ByaWF0ZSB2b2x0YWdlIHNldHRpbmdzIGFjcm9zcyBhbGwgdGhyZWUg
Q1BVIGNsdXN0ZXJzIGluCj4+IHRoZSBSSzM1ODggU29DLgo+IAo+IHRoZSBnZW5lcmFsIGNvbnNl
bnN1cyBpcyB0aGF0IHlvdSBkb24ndCBzYXZlIGVuZXJneSB3aGVuIHlvdSdyZSBub3QKPiByZWR1
Y2luZyB0aGUgdm9sdGFnZSB0b2dldGhlciB3aXRoIHRoZSBmcmVxdWVuY3kuCj4gCj4gRm9yIGV4
YW1wbGUgY2x1c3RlcjAgQDFHSHogcnVucyBhdCA2NzVtViBhbHJlYWR5LCBzbyByZWR1Y2luZyBq
dXN0IHRoZQo+IGZyZXF1ZW5jeSwgd2hlbiB5b3UncmUgbm90IGFsbG93ZWQgdG8gcmVkdWNlIHRo
ZSB2b2x0YWdlIHdpdGggaXQgd29uJ3QKPiBzYXZlIGVuZXJneSwganVzdCBtYWtlIHRoaW5ncyBz
bG93Lgo+IAo+IAo+IEhlaWtvCj4gCj4+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQnJpZ3VnbGlv
IDxoZWxsb0BzdXBlcmthbGkubWU+Cj4+IC0tLQo+PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1ODgtb3BwLmR0c2kgfCA1OCAKPj4gKysrKysrKysrKysrKysrKysrKysKPj4gIDEg
ZmlsZSBjaGFuZ2VkLCA1OCBpbnNlcnRpb25zKCspCj4+IAo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtb3BwLmR0c2kgCj4+IGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1ODgtb3BwLmR0c2kKPj4gaW5kZXggMGYxYTc3Njk3MzUxLi4x
YjAxODgyM2Q1ZDMgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4LW9wcC5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4LW9wcC5kdHNpCj4+IEBAIC01LDYgKzUsMjIgQEAgY2x1c3RlcjBfb3BwX3RhYmxlOiBvcHAt
dGFibGUtY2x1c3RlcjAgewo+PiAgCQljb21wYXRpYmxlID0gIm9wZXJhdGluZy1wb2ludHMtdjIi
Owo+PiAgCQlvcHAtc2hhcmVkOwo+PiAKPj4gKwkJb3BwLTQwODAwMDAwMCB7Cj4+ICsJCQlvcHAt
aHogPSAvYml0cy8gNjQgPDQwODAwMDAwMD47Cj4+ICsJCQlvcHAtbWljcm92b2x0ID0gPDY3NTAw
MCA2NzUwMDAgOTUwMDAwPjsKPj4gKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8NDAwMDA+Owo+PiAr
CQkJb3BwLXN1c3BlbmQ7Cj4+ICsJCX07Cj4+ICsJCW9wcC02MDAwMDAwMDAgewo+PiArCQkJb3Bw
LWh6ID0gL2JpdHMvIDY0IDw2MDAwMDAwMDA+Owo+PiArCQkJb3BwLW1pY3Jvdm9sdCA9IDw2NzUw
MDAgNjc1MDAwIDk1MDAwMD47Cj4+ICsJCQljbG9jay1sYXRlbmN5LW5zID0gPDQwMDAwPjsKPj4g
KwkJfTsKPj4gKwkJb3BwLTgxNjAwMDAwMCB7Cj4+ICsJCQlvcHAtaHogPSAvYml0cy8gNjQgPDgx
NjAwMDAwMD47Cj4+ICsJCQlvcHAtbWljcm92b2x0ID0gPDY3NTAwMCA2NzUwMDAgOTUwMDAwPjsK
Pj4gKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8NDAwMDA+Owo+PiArCQl9Owo+PiAgCQlvcHAtMTAw
ODAwMDAwMCB7Cj4+ICAJCQlvcHAtaHogPSAvYml0cy8gNjQgPDEwMDgwMDAwMDA+Owo+PiAgCQkJ
b3BwLW1pY3Jvdm9sdCA9IDw2NzUwMDAgNjc1MDAwIDk1MDAwMD47Cj4+IEBAIC0zNyw2ICs1Mywy
NyBAQCBjbHVzdGVyMV9vcHBfdGFibGU6IG9wcC10YWJsZS1jbHVzdGVyMSB7Cj4+ICAJCWNvbXBh
dGlibGUgPSAib3BlcmF0aW5nLXBvaW50cy12MiI7Cj4+ICAJCW9wcC1zaGFyZWQ7Cj4+IAo+PiAr
CQlvcHAtNDA4MDAwMDAwIHsKPj4gKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8NDA4MDAwMDAwPjsK
Pj4gKwkJCW9wcC1taWNyb3ZvbHQgPSA8Njc1MDAwIDY3NTAwMCAxMDAwMDAwPjsKPj4gKwkJCWNs
b2NrLWxhdGVuY3ktbnMgPSA8NDAwMDA+Owo+PiArCQkJb3BwLXN1c3BlbmQ7Cj4+ICsJCX07Cj4+
ICsJCW9wcC02MDAwMDAwMDAgewo+PiArCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDw2MDAwMDAwMDA+
Owo+PiArCQkJb3BwLW1pY3Jvdm9sdCA9IDw2NzUwMDAgNjc1MDAwIDEwMDAwMDA+Owo+PiArCQkJ
Y2xvY2stbGF0ZW5jeS1ucyA9IDw0MDAwMD47Cj4+ICsJCX07Cj4+ICsJCW9wcC04MTYwMDAwMDAg
ewo+PiArCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDw4MTYwMDAwMDA+Owo+PiArCQkJb3BwLW1pY3Jv
dm9sdCA9IDw2NzUwMDAgNjc1MDAwIDEwMDAwMDA+Owo+PiArCQkJY2xvY2stbGF0ZW5jeS1ucyA9
IDw0MDAwMD47Cj4+ICsJCX07Cj4+ICsJCW9wcC0xMDA4MDAwMDAwIHsKPj4gKwkJCW9wcC1oeiA9
IC9iaXRzLyA2NCA8MTAwODAwMDAwMD47Cj4+ICsJCQlvcHAtbWljcm92b2x0ID0gPDY3NTAwMCA2
NzUwMDAgMTAwMDAwMD47Cj4+ICsJCQljbG9jay1sYXRlbmN5LW5zID0gPDQwMDAwPjsKPj4gKwkJ
fTsKPj4gIAkJb3BwLTEyMDAwMDAwMDAgewo+PiAgCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDwxMjAw
MDAwMDAwPjsKPj4gIAkJCW9wcC1taWNyb3ZvbHQgPSA8Njc1MDAwIDY3NTAwMCAxMDAwMDAwPjsK
Pj4gQEAgLTc4LDYgKzExNSwyNyBAQCBjbHVzdGVyMl9vcHBfdGFibGU6IG9wcC10YWJsZS1jbHVz
dGVyMiB7Cj4+ICAJCWNvbXBhdGlibGUgPSAib3BlcmF0aW5nLXBvaW50cy12MiI7Cj4+ICAJCW9w
cC1zaGFyZWQ7Cj4+IAo+PiArCQlvcHAtNDA4MDAwMDAwIHsKPj4gKwkJCW9wcC1oeiA9IC9iaXRz
LyA2NCA8NDA4MDAwMDAwPjsKPj4gKwkJCW9wcC1taWNyb3ZvbHQgPSA8Njc1MDAwIDY3NTAwMCAx
MDAwMDAwPjsKPj4gKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8NDAwMDA+Owo+PiArCQkJb3BwLXN1
c3BlbmQ7Cj4+ICsJCX07Cj4+ICsJCW9wcC02MDAwMDAwMDAgewo+PiArCQkJb3BwLWh6ID0gL2Jp
dHMvIDY0IDw2MDAwMDAwMDA+Owo+PiArCQkJb3BwLW1pY3Jvdm9sdCA9IDw2NzUwMDAgNjc1MDAw
IDEwMDAwMDA+Owo+PiArCQkJY2xvY2stbGF0ZW5jeS1ucyA9IDw0MDAwMD47Cj4+ICsJCX07Cj4+
ICsJCW9wcC04MTYwMDAwMDAgewo+PiArCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDw4MTYwMDAwMDA+
Owo+PiArCQkJb3BwLW1pY3Jvdm9sdCA9IDw2NzUwMDAgNjc1MDAwIDEwMDAwMDA+Owo+PiArCQkJ
Y2xvY2stbGF0ZW5jeS1ucyA9IDw0MDAwMD47Cj4+ICsJCX07Cj4+ICsJCW9wcC0xMDA4MDAwMDAw
IHsKPj4gKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8MTAwODAwMDAwMD47Cj4+ICsJCQlvcHAtbWlj
cm92b2x0ID0gPDY3NTAwMCA2NzUwMDAgMTAwMDAwMD47Cj4+ICsJCQljbG9jay1sYXRlbmN5LW5z
ID0gPDQwMDAwPjsKPj4gKwkJfTsKPj4gIAkJb3BwLTEyMDAwMDAwMDAgewo+PiAgCQkJb3BwLWh6
ID0gL2JpdHMvIDY0IDwxMjAwMDAwMDAwPjsKPj4gIAkJCW9wcC1taWNyb3ZvbHQgPSA8Njc1MDAw
IDY3NTAwMCAxMDAwMDAwPjsKPj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
