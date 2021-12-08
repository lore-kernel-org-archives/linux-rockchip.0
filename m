Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21656C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 10:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lXVtScow+6fQyE/x6LMHxYAEduYTruCHd2NKHnaJQZ0=; b=wJHUsXbxn1afxB
	f0rIKt4ZOWIu7GEMp8zd4/XaRyXrDrVbpwHt7xi5XQTNPte0HlOCLwTN96JEC1slivuPdbSS+Fv/0
	BFX05kZ1Hkf7qKNSmbayZLwTAmcRE2nAEGHO5VFMV2Nr547E7Iw2xu9YYjhGOmCOhFhB197Hmp4Ul
	ZgCiiiLYFcn3CdIC1k67RomFMW3JsrA7Sn3oXiSUe47zN2+0bpVvPZ548LUNMS7qxNoOU43cL9rmN
	qJ6YjVyYcj7qpcVvcS4BAGIlaAqgnI3yjjiV2s9COLtVEktGjDRJn0QXg+5WVOJ4avJBgmFfmBNlC
	dJ2n5/b58ScpZpJDOKKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muuFv-00C7Io-DP; Wed, 08 Dec 2021 10:32:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muuFs-00C7H7-FE
 for linux-rockchip@lists.infradead.org; Wed, 08 Dec 2021 10:32:58 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1muuFc-0003cK-1S; Wed, 08 Dec 2021 11:32:40 +0100
Message-ID: <5a8b84e91bd8e7670a0d0108e4affe9b964202cb.camel@pengutronix.de>
Subject: Re: [RFC V2 0/6] media: Hantro: Split iMX8MQ VPU into G1 and G2
 with blk-ctrl support
From: Lucas Stach <l.stach@pengutronix.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Adam Ford
 <aford173@gmail.com>, linux-media@vger.kernel.org
Cc: cphealy@gmail.com, hverkuil@xs4all.nl, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-staging@lists.linux.dev
Date: Wed, 08 Dec 2021 11:32:36 +0100
In-Reply-To: <f85da774-ccb3-85de-edd6-5333ed8d0503@collabora.com>
References: <20211207015446.1250854-1-aford173@gmail.com>
 <f85da774-ccb3-85de-edd6-5333ed8d0503@collabora.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_023256_519706_45800E11 
X-CRM114-Status: GOOD (  34.79  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

QW0gTWl0dHdvY2gsIGRlbSAwOC4xMi4yMDIxIHVtIDEwOjMyICswMTAwIHNjaHJpZWIgQmVuamFt
aW4gR2FpZ25hcmQ6Cj4gTGUgMDcvMTIvMjAyMSDDoCAwMjo1NCwgQWRhbSBGb3JkIGEgw6ljcml0
wqA6Cj4gCj4gPiBDdXJyZW50bHksIHRoZSBWUFUgaW4gdGhlIGkuTVE4TVEgaXMgYXBwZWFyaW5n
IGFzIG9uZSBjb2RlYywgYnV0IGluCj4gPiByZWFsaXR5LCBpdCdzIHR3byBJUCBibG9ja3MgY2Fs
bGVkIEcxIGFuZCBHMi4gIFRoZXJlIGlzIGluaXRpYWxpemF0aW9uCj4gPiBjb2RlIGluIFZQVSBj
b2RlIHRvIHB1bGwgc29tZSBjbG9ja3MsIHJlc2V0cyBhbmQgb3RoZXIgZmVhdHVyZXMgd2hpY2gK
PiA+IGhhcyBiZWVuIGludGVncmF0ZWQgaW50byB0aGUgdnB1LWJsay1jdHJsIGZvciB0aGUgaS5N
WDhNIE1pbmkgYW5kIGEKPiA+IHNpbWlsYXIgbWV0aG9kIGNhbiBiZSB1c2VkIHRvIG1ha2UgdGhl
IFZQVSBjb2RlYydzIG9wZXJhdGUgYXMKPiA+IHN0YW5kLWFsb25lIGNvcmVzIHdpdGhvdXQgaGF2
aW5nIHRvIGtub3cgdGhlIGRldGFpbHMgb2YgZWFjaCBvdGhlcgo+ID4gb3IgdGhlIHF1aXJrcyB1
bmlxdWUgdG8gdGhlIGkuTVg4TVEsIHNvIHRoZSByZW1haW5pbmcgY29kZSBjYW4gYmUKPiA+IGxl
ZnQgbW9yZSBnZW5lcmljLgo+ID4gCj4gPiBUaGlzIHNlcmllcyB3YXMgc3RhcnRlZCBieSBMdWNh
cyBTdGFjaCB3aXRoIG9uZSBieSBCZW5qYW1pbiBHYWlnbmFyZC4KPiA+IE1vc3QgcGF0Y2hlcyBo
YXZlIGJlZW4gbW9kaWZpZWQgc2xpZ2h0bHkgYnkgbWUuICBJdCdzIGluIGFuIFJGQyBzdGF0ZQo+
ID4gYmVjYXVzZSBJIHdhc24ndCBzdXJlIGhvdyB0byBiZXN0IGhhbmRsZSB0aGUgc2lnbmF0dXJl
cyBhbmQgd2Fzbid0IHN1cmUKPiA+IGlmIEkgY291bGQgYmFzZSBpdCBvZmYgdGhlIGJyYW5jaCBJ
IGRpZC4KPiA+IAo+ID4gU2luY2UgdGhlIGctc3RyZWFtZXIgYW5kIG1lZGlhIHRyZWVzIGFyZSBp
biBhIGNvbnN0YW50IHN0YXRlIG9mCj4gPiBjaGFuZ2UsIHRoaXMgc2VyaWVzIGlzIGJhc2VkIG9u
Cj4gPiAKPiA+IGdpdDovL2xpbnV4dHYub3JnL2h2ZXJrdWlsL21lZGlhX3RyZWUuZ2l0IGZvci12
NS4xN2UKPiA+IAo+ID4gVGhlIGRvd25zdHJlYW0gY29kZSBmcm9tIE5YUCBzaG93cyB0aGUgRzEg
YW5kIEcyIGNsb2NrcyBydW5uaW5nCj4gPiBhdCA2MDBNSHosIGJ1dCBiZXR3ZWVuIHRoZSBUUk0g
YW5kIHRoZSBkYXRhc2hlZXQsIHRoZXJlIGlzIHNvbWUKPiA+IGRpc2NyZXBhbmN5LiAgQmVjYXVz
ZSB0aGUgTlhQIHJlZmVyZW5jZSBjb2RlIHVzZWQgNjAwTUh6LCB0aGF0IGlzCj4gPiB3aGF0IHdh
cyBjaG9zZW4gaGVyZS4gIFVzZXJzIHdobyBuZWVkIHRvIGFkanVzdCB0aGVpciBHMSBhbmQgRzIK
PiA+IGNsb2NrcyBjYW4gZG8gc28gaW4gdGhlaXIgYm9hcmQgZmlsZXMuCj4gCj4gSGkgQWRhbSwK
PiAKPiBUaGFua3MgZm9yIHlvdXIgcGF0Y2hlcywgSSBoYXZlIGJlZW4gYWJsZSB0byByZXByb2R1
Y2UgVlA5IHJlc3VsdHMgb24gbXkgc2lkZSAoRmx1c3RlciAxNDcvMzAzKS4KPiBJbiBwYXN0IEkg
aGF2ZSBub3RpY2Ugc3B1cmlvdXMgZXJyb3JzIHdoZW4gdXNpbmcgNjAwTUh6IGNsb2NrIG9uIEhF
VkMgZGVjb2RlIGJ1dCBub3Qgd2l0aCAzMDBNSHouCgpUaGUgbWF4IHN1cHBvcnRlZCBHMiBjbG9j
ayBmcmVxdWVuY3kgaXMgNjYwTUh6IGJ1dCBuZWVkcyBhIGhpZ2hlcgp2b2x0YWdlLiBUaGUgbWF4
aW11bSBzdXBwb3J0ZWQgIGZyZXF1ZW5jeSBhdCB0aGUgZGVmYXVsdCAwLjlWIGlzCjU1ME1Iei4g
V2Ugc2hvdWxkIG5vdCBjb25maWd1cmUgdGhlIGNsb2NrcyBmb3IgdGhlIGhpZ2hlciB0aGFuIHRo
YXQsIGFzCmxvbmcgYXMgdGhlcmUgaXMgbm8gc3VwcG9ydCBpbiB0aGUgVlBVIGRyaXZlciB0byBz
Y2FsZSB0aGUgdm9sdGFnZQphbG9uZyB3aXRoIHRoZSBmcmVxdWVuY3kuIFNhbWUgYXMgd2l0aCB0
aGUgR1BVIHdlIHNob3VsZCBzdGljayB0byBiYXNlCmZyZXF1ZW5jeSBsZXZlbHMgZm9yIHRoZSBu
b21pbmFsIG9wZXJhdGluZyBtb2RlLgoKUmVnYXJkcywKTHVjYXMKCj4gCj4gUmVnYXJkcywKPiBC
ZW5qYW1pbgo+IAo+ID4gCj4gPiBGbHVzdGVyIFJlc3VsdHM6Cj4gPiAKPiA+IC4vZmx1c3Rlci5w
eSBydW4gLWRHU3RyZWFtZXItSC4yNjQtVjRMMlNMLUdzdDEuMAo+ID4gUmFuIDkwLzEzNSB0ZXN0
cyBzdWNjZXNzZnVsbHkgICAgICAgICAgICAgICBpbiA2MS45NjYgc2Vjcwo+ID4gCj4gPiAuL2Zs
dXN0ZXIucHkgcnVuIC1kIEdTdHJlYW1lci1WUDgtVjRMMlNMLUdzdDEuMAo+ID4gUmFuIDU1LzYx
IHRlc3RzIHN1Y2Nlc3NmdWxseSAgICAgICAgICAgICAgIGluIDcuNjYwIHNlY3MKPiA+IAo+ID4g
Cj4gPiAuL2ZsdXN0ZXIucHkgcnVuIC1kIEdTdHJlYW1lci1WUDktVjRMMlNMLUdzdDEuMAo+ID4g
UmFuIDE0NC8zMDMgdGVzdHMgc3VjY2Vzc2Z1bGx5ICAgICAgICAgICAgICAgaW4gMTYyLjY2NSBz
ZWNzCj4gPiAKPiA+IENoYW5nZXMgbG9nOgo+ID4gCj4gPiBWMjogIE1ha2UgdnB1LWJsay1jdHJs
IGVuYWJsZSBHMiBjbG9jayB3aGVuIGVuYWJsaW5nIGZ1c2VzLgo+ID4gICAgICAgUmVtb3ZlIHN5
c2NvbiBmcm9tIGRldmljZSB0cmVlIGFuZCBiaW5kaW5nIGV4YW1wbGUKPiA+ICAgICAgIEFkZGVk
IG1vZGlmaWVkIG54cCxpbXg4bXEtdnB1LnlhbWwgZnJvbSBCZW5qYW1pbiBHYWlnbmFyZAo+ID4g
Cj4gPiBBZGFtIEZvcmQgKDIpOgo+ID4gICAgbWVkaWE6IGhhbnRybzogc3BsaXQgaS5NWDhNUSBH
MSBhbmQgRzIgY29kZQo+ID4gICAgYXJtNjQ6IGR0czogaW14OG1xOiBTcGxpdCBpLk1YOE1RIEcx
IGFuZCBHMiB3aXRoIHZwdS1ibGstY3RybAo+ID4gCj4gPiBCZW5qYW1pbiBHYWlnbmFyZCAoMSk6
Cj4gPiAgICBkdC1iaW5kaW5nczogbWVkaWE6IG54cCxpbXg4bXEtdnB1OiBVcGRhdGUgdGhlIGJp
bmRpbmdzIGZvciBHMiBzdXBwb3J0Cj4gPiAKPiA+IEx1Y2FzIFN0YWNoICgzKToKPiA+ICAgIGR0
LWJpbmRpbmdzOiBwb3dlcjogaW14OG1xOiBhZGQgZGVmaW5lcyBmb3IgVlBVIGJsay1jdHJsIGRv
bWFpbnMKPiA+ICAgIGR0LWJpbmRpbmdzOiBzb2M6IGFkZCBiaW5kaW5nIGZvciBpLk1YOE1RIFZQ
VSBibGstY3RybAo+ID4gICAgc29jOiBpbXg6IGlteDhtLWJsay1jdHJsOiBhZGQgaS5NWDhNUSBW
UFUgYmxrLWN0cmwKPiA+IAo+ID4gICAuLi4vYmluZGluZ3MvbWVkaWEvbnhwLGlteDhtcS12cHUu
eWFtbCAgICAgICAgfCAgNTggKysrKystLS0tCj4gPiAgIC4uLi9zb2MvaW14L2ZzbCxpbXg4bXEt
dnB1LWJsay1jdHJsLnlhbWwgICAgICB8ICA3MSArKysrKysrKysrKwo+ID4gICBhcmNoL2FybTY0
L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEuZHRzaSAgICAgfCAgNjkgKysrKysrLS0tLQo+ID4g
ICBkcml2ZXJzL3NvYy9pbXgvaW14OG0tYmxrLWN0cmwuYyAgICAgICAgICAgICAgfCAgNjggKysr
KysrKysrLQo+ID4gICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYyAg
ICAgfCAgIDQgKy0KPiA+ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9faHcu
aCAgICAgIHwgICAyICstCj4gPiAgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaW14OG1f
dnB1X2h3LmMgICB8IDExOSArKystLS0tLS0tLS0tLS0tLS0KPiA+ICAgaW5jbHVkZS9kdC1iaW5k
aW5ncy9wb3dlci9pbXg4bXEtcG93ZXIuaCAgICAgIHwgICAzICsKPiA+ICAgOCBmaWxlcyBjaGFu
Z2VkLCAyMzcgaW5zZXJ0aW9ucygrKSwgMTU3IGRlbGV0aW9ucygtKQo+ID4gICBjcmVhdGUgbW9k
ZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9pbXgvZnNsLGlt
eDhtcS12cHUtYmxrLWN0cmwueWFtbAo+ID4gCj4gPiAKPiA+IGJhc2UtY29tbWl0OiBkMTg4OGIw
YmZkMmRkZWYyZThhODE1MDVmZmEyMDBiOTJjYzMyZTBjCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
