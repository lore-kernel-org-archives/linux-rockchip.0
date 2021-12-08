Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B98A6C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 15:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aJ7e/DbzR8jIu6UkzyIqyUl4Jwx90fgl4+Tqgwj+Km4=; b=veIhdOvrG7P49T
	ajNs3KPnTxmcFtfglXyjow+EZ046NtduUBBChnS15M7HGcxb1QbTG+5hCCCcW8c6ctyUlPLb902wh
	S+k+9fRZ3D02R9mojIyu6oCEMQzICl0x0IuAth0y4mtH2sbw8RzO0mU9E/rIKQBhQ5WaDkypPSX1s
	0ZTmUbU0LCDO3VAqoedT8d9hcpWkUvsC28wxgLEDuVRzUDZdtrk2jDHEWVSKaDIVtDh3jvpHRwnUN
	PRuBzgkTEmTVmMnpAS2TzeRcQ9ifwKcaB2IGgmyP+1+0G0fk2U3rUmaZ0tTAoicmM0MBeFkeu5LPa
	hpXy7Y8HutIfPcba2ztg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muz2d-00DK4E-C8; Wed, 08 Dec 2021 15:39:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muz2X-00DK1S-AR
 for linux-rockchip@lists.infradead.org; Wed, 08 Dec 2021 15:39:30 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1muz2N-0000ft-SH; Wed, 08 Dec 2021 16:39:19 +0100
Message-ID: <7bbcee7d8d52cab00635037c35c81b43ce34ec76.camel@pengutronix.de>
Subject: Re: [RFC V2 0/6] media: Hantro: Split iMX8MQ VPU into G1 and G2
 with blk-ctrl support
From: Lucas Stach <l.stach@pengutronix.de>
To: Adam Ford <aford173@gmail.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>
Cc: linux-media <linux-media@vger.kernel.org>, Chris Healy
 <cphealy@gmail.com>,  Hans Verkuil <hverkuil@xs4all.nl>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>,  Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "open list:HANTRO VPU
 CODEC DRIVER" <linux-rockchip@lists.infradead.org>, devicetree
 <devicetree@vger.kernel.org>, arm-soc
 <linux-arm-kernel@lists.infradead.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, "open list:STAGING SUBSYSTEM"
 <linux-staging@lists.linux.dev>
Date: Wed, 08 Dec 2021 16:39:16 +0100
In-Reply-To: <CAHCN7xJJfBXdK6B1tHXjmja4Lr=Q-Uony+QWcvVqoQp36RLY=w@mail.gmail.com>
References: <20211207015446.1250854-1-aford173@gmail.com>
 <f85da774-ccb3-85de-edd6-5333ed8d0503@collabora.com>
 <5a8b84e91bd8e7670a0d0108e4affe9b964202cb.camel@pengutronix.de>
 <4cc3404b-7f8a-6c87-8c1c-ace399f9edd3@collabora.com>
 <CAHCN7xJJfBXdK6B1tHXjmja4Lr=Q-Uony+QWcvVqoQp36RLY=w@mail.gmail.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_073929_384251_4D67B0CE 
X-CRM114-Status: GOOD (  43.77  )
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

QW0gTWl0dHdvY2gsIGRlbSAwOC4xMi4yMDIxIHVtIDA5OjEzIC0wNjAwIHNjaHJpZWIgQWRhbSBG
b3JkOgo+IE9uIFdlZCwgRGVjIDgsIDIwMjEgYXQgNzozNiBBTSBCZW5qYW1pbiBHYWlnbmFyZAo+
IDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPiA+IAo+ID4gCj4gPiBM
ZSAwOC8xMi8yMDIxIMOgIDExOjMyLCBMdWNhcyBTdGFjaCBhIMOpY3JpdCA6Cj4gPiA+IEFtIE1p
dHR3b2NoLCBkZW0gMDguMTIuMjAyMSB1bSAxMDozMiArMDEwMCBzY2hyaWViIEJlbmphbWluIEdh
aWduYXJkOgo+ID4gPiA+IExlIDA3LzEyLzIwMjEgw6AgMDI6NTQsIEFkYW0gRm9yZCBhIMOpY3Jp
dCA6Cj4gPiA+ID4gCj4gPiA+ID4gPiBDdXJyZW50bHksIHRoZSBWUFUgaW4gdGhlIGkuTVE4TVEg
aXMgYXBwZWFyaW5nIGFzIG9uZSBjb2RlYywgYnV0IGluCj4gPiA+ID4gPiByZWFsaXR5LCBpdCdz
IHR3byBJUCBibG9ja3MgY2FsbGVkIEcxIGFuZCBHMi4gIFRoZXJlIGlzIGluaXRpYWxpemF0aW9u
Cj4gPiA+ID4gPiBjb2RlIGluIFZQVSBjb2RlIHRvIHB1bGwgc29tZSBjbG9ja3MsIHJlc2V0cyBh
bmQgb3RoZXIgZmVhdHVyZXMgd2hpY2gKPiA+ID4gPiA+IGhhcyBiZWVuIGludGVncmF0ZWQgaW50
byB0aGUgdnB1LWJsay1jdHJsIGZvciB0aGUgaS5NWDhNIE1pbmkgYW5kIGEKPiA+ID4gPiA+IHNp
bWlsYXIgbWV0aG9kIGNhbiBiZSB1c2VkIHRvIG1ha2UgdGhlIFZQVSBjb2RlYydzIG9wZXJhdGUg
YXMKPiA+ID4gPiA+IHN0YW5kLWFsb25lIGNvcmVzIHdpdGhvdXQgaGF2aW5nIHRvIGtub3cgdGhl
IGRldGFpbHMgb2YgZWFjaCBvdGhlcgo+ID4gPiA+ID4gb3IgdGhlIHF1aXJrcyB1bmlxdWUgdG8g
dGhlIGkuTVg4TVEsIHNvIHRoZSByZW1haW5pbmcgY29kZSBjYW4gYmUKPiA+ID4gPiA+IGxlZnQg
bW9yZSBnZW5lcmljLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBUaGlzIHNlcmllcyB3YXMgc3RhcnRl
ZCBieSBMdWNhcyBTdGFjaCB3aXRoIG9uZSBieSBCZW5qYW1pbiBHYWlnbmFyZC4KPiA+ID4gPiA+
IE1vc3QgcGF0Y2hlcyBoYXZlIGJlZW4gbW9kaWZpZWQgc2xpZ2h0bHkgYnkgbWUuICBJdCdzIGlu
IGFuIFJGQyBzdGF0ZQo+ID4gPiA+ID4gYmVjYXVzZSBJIHdhc24ndCBzdXJlIGhvdyB0byBiZXN0
IGhhbmRsZSB0aGUgc2lnbmF0dXJlcyBhbmQgd2Fzbid0IHN1cmUKPiA+ID4gPiA+IGlmIEkgY291
bGQgYmFzZSBpdCBvZmYgdGhlIGJyYW5jaCBJIGRpZC4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gU2lu
Y2UgdGhlIGctc3RyZWFtZXIgYW5kIG1lZGlhIHRyZWVzIGFyZSBpbiBhIGNvbnN0YW50IHN0YXRl
IG9mCj4gPiA+ID4gPiBjaGFuZ2UsIHRoaXMgc2VyaWVzIGlzIGJhc2VkIG9uCj4gPiA+ID4gPiAK
PiA+ID4gPiA+IGdpdDovL2xpbnV4dHYub3JnL2h2ZXJrdWlsL21lZGlhX3RyZWUuZ2l0IGZvci12
NS4xN2UKPiA+ID4gPiA+IAo+ID4gPiA+ID4gVGhlIGRvd25zdHJlYW0gY29kZSBmcm9tIE5YUCBz
aG93cyB0aGUgRzEgYW5kIEcyIGNsb2NrcyBydW5uaW5nCj4gPiA+ID4gPiBhdCA2MDBNSHosIGJ1
dCBiZXR3ZWVuIHRoZSBUUk0gYW5kIHRoZSBkYXRhc2hlZXQsIHRoZXJlIGlzIHNvbWUKPiA+ID4g
PiA+IGRpc2NyZXBhbmN5LiAgQmVjYXVzZSB0aGUgTlhQIHJlZmVyZW5jZSBjb2RlIHVzZWQgNjAw
TUh6LCB0aGF0IGlzCj4gPiA+ID4gPiB3aGF0IHdhcyBjaG9zZW4gaGVyZS4gIFVzZXJzIHdobyBu
ZWVkIHRvIGFkanVzdCB0aGVpciBHMSBhbmQgRzIKPiA+ID4gPiA+IGNsb2NrcyBjYW4gZG8gc28g
aW4gdGhlaXIgYm9hcmQgZmlsZXMuCj4gPiA+ID4gSGkgQWRhbSwKPiA+ID4gPiAKPiA+ID4gPiBU
aGFua3MgZm9yIHlvdXIgcGF0Y2hlcywgSSBoYXZlIGJlZW4gYWJsZSB0byByZXByb2R1Y2UgVlA5
IHJlc3VsdHMgb24gbXkgc2lkZSAoRmx1c3RlciAxNDcvMzAzKS4KPiA+ID4gPiBJbiBwYXN0IEkg
aGF2ZSBub3RpY2Ugc3B1cmlvdXMgZXJyb3JzIHdoZW4gdXNpbmcgNjAwTUh6IGNsb2NrIG9uIEhF
VkMgZGVjb2RlIGJ1dCBub3Qgd2l0aCAzMDBNSHouCj4gPiAKPiA+IFRoZSByZXN1bHRzIGZvciBG
bHVzdGVyIEhFVkMgYXJlIDc3LzE0NyBzbyBubyByZWdyZXNzaW9ucyA6LSkKPiA+IAo+ID4gUmVn
YXJkcywKPiA+IEJlbmphbWluCj4gPiAKPiA+ID4gPiBUaGUgbWF4IHN1cHBvcnRlZCBHMiBjbG9j
ayBmcmVxdWVuY3kgaXMgNjYwTUh6IGJ1dCBuZWVkcyBhIGhpZ2hlcgo+ID4gPiA+IHZvbHRhZ2Uu
IFRoZSBtYXhpbXVtIHN1cHBvcnRlZCAgZnJlcXVlbmN5IGF0IHRoZSBkZWZhdWx0IDAuOVYgaXMK
PiA+ID4gPiA1NTBNSHouIFdlIHNob3VsZCBub3QgY29uZmlndXJlIHRoZSBjbG9ja3MgZm9yIHRo
ZSBoaWdoZXIgdGhhbiB0aGF0LCBhcwo+ID4gPiA+IGxvbmcgYXMgdGhlcmUgaXMgbm8gc3VwcG9y
dCBpbiB0aGUgVlBVIGRyaXZlciB0byBzY2FsZSB0aGUgdm9sdGFnZQo+ID4gPiA+IGFsb25nIHdp
dGggdGhlIGZyZXF1ZW5jeS4gU2FtZSBhcyB3aXRoIHRoZSBHUFUgd2Ugc2hvdWxkIHN0aWNrIHRv
IGJhc2UKPiA+ID4gPiBmcmVxdWVuY3kgbGV2ZWxzIGZvciB0aGUgbm9taW5hbCBvcGVyYXRpbmcg
bW9kZS4KPiAKPiBMdWNhcywKPiAKPiBBZnRlciByZXZpZXdpbmcgdGhlIGNvbW1lbnRzIGZyb20g
QmVuamFtaW4sIEkgcmUtcmFuIHRoZSBWUDkgdGVzdHMKPiB3aXRoIHRoZSBHMiBydW5uaW5nIGF0
IDMwME1IeixhbmQgdGhlIG51bWJlciBvZiBwYXNzaW5nIFZQOSB0ZXN0cwo+IGluY3JlYXNlZCB0
byAxNDggZnJvbSAxNDQgd2l0aCBhbiBpbmNyZWFzZSBvZiB0aW1lIHRvIDI1MC41MDIgc2Vjcwo+
IGZyb20gMTYyLjY2NSBzZWNzLgo+IAo+IFdoaWxlIHRoZSBkYXRhc2hlZXQgcmVhZHMgdGhhdCB0
aGUgRzIgY2FuIHJ1biBmYXN0ZXIsIHRoZSBpLk1YIDhNCj4gRHVhbC84TSBRdWFkTGl0ZS84TSBR
dWFkIEFwcGxpY2F0aW9ucyBQcm9jZXNzb3JzIFJlZmVyZW5jZSBNYW51YWwsCj4gUmV2LiAzLjEs
IDA2LzIwMjEsIHRhYmxlIDUtMSAgc2hvd3MgdGhlIFZQVV9HMl9DTEtfUk9PVCBoYXMgYSBtYXgK
PiBjbG9jayBvZiAzMDBNSHouICBJIG1pZ2h0IGJlIGluY2xpbmVkIHRvIGFncmVlIHdpdGggQmVu
amFtaW4gb24gdGhlCj4gMzAwTUh6IGFuZCBsZXQgcGVvcGxlIHdobyB3YW50IHRvIHB1c2ggdGhl
aXIgaGFyZHdhcmUgb3ZlcndyaXRlIHRoZQo+IGRlZmF1bHQgY2xvY2tzIHNpbmNlIGl0IGluY3Jl
YXNlcyBmdW5jdGlvbmFsaXR5Lgo+IApJJ20gcXVpdGUgc3VycHJpc2VkIHRoYXQgdGhlIEcyIGNv
ZGVjIHNob3VsZCBoYXZlIHN1Y2ggYSBtdWNoIGxvd2VyIG1heApmcmVxdWVuY3kgY29tcGFyZWQg
d2l0aCB0aGUgRzEuIFdoaWxlIHRoZSB0YWJsZSBmcm9tIHRoZSBSTSBoYXNuJ3QgYmVlbgpvYnZp
b3VzbHkgaW5jb3JyZWN0IGZvciBhbnkgb3RoZXIgY2xvY2ssIEknbSBzdGlsbCBpbmNsaW5lZCB0
byBiZWxpZXZlCnRoZSBmcmVxdWVuY2llcyBzdGF0ZWQgaW4gdGhlIGRhdGFzaGVldC4KCj4gSSB3
b25kZXIgaWYgc29tZW9uZSBmcm9tIE5YUCBjYW4gY29tbWVudAo+IApZZWEsIG5vdCBzdXJlIGhv
dyB0byBwcm9jZWVkIGhlcmUuIDMwME1IeiBpcyB0aGUgc2FmZSBiZXQsIGJ1dCB3ZSBhcmUKbGVh
dmluZyBxdWl0ZSBzb21lIHBlcmZvcm1hbmNlIG9uIHRoZSB0YWJsZSBpZiB0aGUgZGF0YXNoZWV0
IGlzCmNvcnJlY3QuIFdpdGhvdXQgc29tZSBoZWxwIGZyb20gTlhQIGl0J3MgcHJvYmFibHkgaGFy
ZCB0byB2YWxpZGF0ZSAKd2hpY2ggbWF4IGZyZXF1ZW5jeSBzdGF0ZW1lbnQgaXMgY29ycmVjdC4g
SXQgZG9lc24ndCByZWFsbHkgaGVscCB0aGF0CnRoZSBOWFAgZG93bnN0cmVhbSBrZXJuZWwgc2Vl
bXMgdG8gZHJpdmUgdGhlIEcyIGF0IDYwME1Ieiwgd2hpY2ggaXMKbmVpdGhlciB0aGUgNTUwTUh6
IG5vbWluYWwgbW9kZSBtYXgsIG5vciB0aGUgNjYwTUh6IG92ZXJkcml2ZSBtb2RlIG1heC4KClJl
Z2FyZHMsCkx1Y2FzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
