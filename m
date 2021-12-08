Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DCA5C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 09:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QaAPF6LHLt1A3TRBA4JyfiizXEWdGyJpnKtGpaDWNVI=; b=xRdHIFGp3OJlHovYUHnhs2ADmv
	8VGRqVneCQfDxPoxhveA4q1CL2Kq2kT9wGk9/Zvq6PEtZDlMRMglKQm7vmHx0+eKEpq8EV5WaBvHJ
	fbkc1t8rbNxVuxAMsSdLXG8lXxo3nVFM8yB3rVhcnUvSTGTiWJpTrFYfge8mRPJ3lzVU7lZ/dmDHy
	XnFMgxPu6kiLDru17CSG+S/fRRG+rdyYkJY4HY/+NDcA8PaH9fqs5CSuMMZJb7+9UpgTP7yg8F10F
	UzNzL10+Rt6JYz1p9NF2Qr+xPJir56JPe7EBaLDn52AkQwekIh3VDyaHesHyFill7h0QDzldOVM4Y
	bdbV2dzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mutKB-00BvGr-BB; Wed, 08 Dec 2021 09:33:19 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mutJv-00BvBI-56; Wed, 08 Dec 2021 09:33:04 +0000
Received: from [IPv6:2a01:e0a:120:3210:9928:73b0:79a4:e623] (unknown
 [IPv6:2a01:e0a:120:3210:9928:73b0:79a4:e623])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 39CCF1F45A1D;
 Wed,  8 Dec 2021 09:32:58 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=collabora.com; s=mail;
 t=1638955978; bh=qdoGNUS0B38g/vQl8OYWvSbXd37jJA7vB7+2VrQDEBo=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=nJ8VNPLOSjOYZBedj0grLrp18tc5OnjuKMsPV07CFaOr4tQuywGpklRmMhlMXjMJe
 kpthjLYUO6CMUJGV5jxCi1qX9YhRPVDNIs2zAL0QmV2eh8j7imKbYNpQFLRSFa1VuS
 G+8lxXDTfyUi1KlHQh9LQkMCg1DlXLkZP/ngthXFt2cC6QStIBGAIEBrSEm6J4zIL0
 EXorkYrmiitvE9lQLwyTxnHXSMk2PrUsdEimtUT46tb0ualBFzLQmGcYCz5GGO5tBL
 t1wIc1nA2WdnH1QCeaaXG/9IyrMeIaXf5B4KzrRehwz20bE4HRzXh3dRZ7cLvCin3Y
 /+txpI5hwgjvQ==
Subject: Re: [RFC V2 0/6] media: Hantro: Split iMX8MQ VPU into G1 and G2 with
 blk-ctrl support
To: Adam Ford <aford173@gmail.com>, linux-media@vger.kernel.org
Cc: cphealy@gmail.com, hverkuil@xs4all.nl,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
References: <20211207015446.1250854-1-aford173@gmail.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <f85da774-ccb3-85de-edd6-5333ed8d0503@collabora.com>
Date: Wed, 8 Dec 2021 10:32:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211207015446.1250854-1-aford173@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_013303_355171_EFB607CF 
X-CRM114-Status: GOOD (  30.13  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDA3LzEyLzIwMjEgw6AgMDI6NTQsIEFkYW0gRm9yZCBhIMOpY3JpdMKgOgoKPiBDdXJyZW50
bHksIHRoZSBWUFUgaW4gdGhlIGkuTVE4TVEgaXMgYXBwZWFyaW5nIGFzIG9uZSBjb2RlYywgYnV0
IGluCj4gcmVhbGl0eSwgaXQncyB0d28gSVAgYmxvY2tzIGNhbGxlZCBHMSBhbmQgRzIuICBUaGVy
ZSBpcyBpbml0aWFsaXphdGlvbgo+IGNvZGUgaW4gVlBVIGNvZGUgdG8gcHVsbCBzb21lIGNsb2Nr
cywgcmVzZXRzIGFuZCBvdGhlciBmZWF0dXJlcyB3aGljaAo+IGhhcyBiZWVuIGludGVncmF0ZWQg
aW50byB0aGUgdnB1LWJsay1jdHJsIGZvciB0aGUgaS5NWDhNIE1pbmkgYW5kIGEKPiBzaW1pbGFy
IG1ldGhvZCBjYW4gYmUgdXNlZCB0byBtYWtlIHRoZSBWUFUgY29kZWMncyBvcGVyYXRlIGFzCj4g
c3RhbmQtYWxvbmUgY29yZXMgd2l0aG91dCBoYXZpbmcgdG8ga25vdyB0aGUgZGV0YWlscyBvZiBl
YWNoIG90aGVyCj4gb3IgdGhlIHF1aXJrcyB1bmlxdWUgdG8gdGhlIGkuTVg4TVEsIHNvIHRoZSBy
ZW1haW5pbmcgY29kZSBjYW4gYmUKPiBsZWZ0IG1vcmUgZ2VuZXJpYy4KPgo+IFRoaXMgc2VyaWVz
IHdhcyBzdGFydGVkIGJ5IEx1Y2FzIFN0YWNoIHdpdGggb25lIGJ5IEJlbmphbWluIEdhaWduYXJk
Lgo+IE1vc3QgcGF0Y2hlcyBoYXZlIGJlZW4gbW9kaWZpZWQgc2xpZ2h0bHkgYnkgbWUuICBJdCdz
IGluIGFuIFJGQyBzdGF0ZQo+IGJlY2F1c2UgSSB3YXNuJ3Qgc3VyZSBob3cgdG8gYmVzdCBoYW5k
bGUgdGhlIHNpZ25hdHVyZXMgYW5kIHdhc24ndCBzdXJlCj4gaWYgSSBjb3VsZCBiYXNlIGl0IG9m
ZiB0aGUgYnJhbmNoIEkgZGlkLgo+Cj4gU2luY2UgdGhlIGctc3RyZWFtZXIgYW5kIG1lZGlhIHRy
ZWVzIGFyZSBpbiBhIGNvbnN0YW50IHN0YXRlIG9mCj4gY2hhbmdlLCB0aGlzIHNlcmllcyBpcyBi
YXNlZCBvbgo+Cj4gZ2l0Oi8vbGludXh0di5vcmcvaHZlcmt1aWwvbWVkaWFfdHJlZS5naXQgZm9y
LXY1LjE3ZQo+Cj4gVGhlIGRvd25zdHJlYW0gY29kZSBmcm9tIE5YUCBzaG93cyB0aGUgRzEgYW5k
IEcyIGNsb2NrcyBydW5uaW5nCj4gYXQgNjAwTUh6LCBidXQgYmV0d2VlbiB0aGUgVFJNIGFuZCB0
aGUgZGF0YXNoZWV0LCB0aGVyZSBpcyBzb21lCj4gZGlzY3JlcGFuY3kuICBCZWNhdXNlIHRoZSBO
WFAgcmVmZXJlbmNlIGNvZGUgdXNlZCA2MDBNSHosIHRoYXQgaXMKPiB3aGF0IHdhcyBjaG9zZW4g
aGVyZS4gIFVzZXJzIHdobyBuZWVkIHRvIGFkanVzdCB0aGVpciBHMSBhbmQgRzIKPiBjbG9ja3Mg
Y2FuIGRvIHNvIGluIHRoZWlyIGJvYXJkIGZpbGVzLgoKSGkgQWRhbSwKClRoYW5rcyBmb3IgeW91
ciBwYXRjaGVzLCBJIGhhdmUgYmVlbiBhYmxlIHRvIHJlcHJvZHVjZSBWUDkgcmVzdWx0cyBvbiBt
eSBzaWRlIChGbHVzdGVyIDE0Ny8zMDMpLgpJbiBwYXN0IEkgaGF2ZSBub3RpY2Ugc3B1cmlvdXMg
ZXJyb3JzIHdoZW4gdXNpbmcgNjAwTUh6IGNsb2NrIG9uIEhFVkMgZGVjb2RlIGJ1dCBub3Qgd2l0
aCAzMDBNSHouCgpSZWdhcmRzLApCZW5qYW1pbgoKPgo+IEZsdXN0ZXIgUmVzdWx0czoKPgo+IC4v
Zmx1c3Rlci5weSBydW4gLWRHU3RyZWFtZXItSC4yNjQtVjRMMlNMLUdzdDEuMAo+IFJhbiA5MC8x
MzUgdGVzdHMgc3VjY2Vzc2Z1bGx5ICAgICAgICAgICAgICAgaW4gNjEuOTY2IHNlY3MKPgo+IC4v
Zmx1c3Rlci5weSBydW4gLWQgR1N0cmVhbWVyLVZQOC1WNEwyU0wtR3N0MS4wCj4gUmFuIDU1LzYx
IHRlc3RzIHN1Y2Nlc3NmdWxseSAgICAgICAgICAgICAgIGluIDcuNjYwIHNlY3MKPgo+Cj4gLi9m
bHVzdGVyLnB5IHJ1biAtZCBHU3RyZWFtZXItVlA5LVY0TDJTTC1Hc3QxLjAKPiBSYW4gMTQ0LzMw
MyB0ZXN0cyBzdWNjZXNzZnVsbHkgICAgICAgICAgICAgICBpbiAxNjIuNjY1IHNlY3MKPgo+IENo
YW5nZXMgbG9nOgo+Cj4gVjI6ICBNYWtlIHZwdS1ibGstY3RybCBlbmFibGUgRzIgY2xvY2sgd2hl
biBlbmFibGluZyBmdXNlcy4KPiAgICAgICBSZW1vdmUgc3lzY29uIGZyb20gZGV2aWNlIHRyZWUg
YW5kIGJpbmRpbmcgZXhhbXBsZQo+ICAgICAgIEFkZGVkIG1vZGlmaWVkIG54cCxpbXg4bXEtdnB1
LnlhbWwgZnJvbSBCZW5qYW1pbiBHYWlnbmFyZAo+Cj4gQWRhbSBGb3JkICgyKToKPiAgICBtZWRp
YTogaGFudHJvOiBzcGxpdCBpLk1YOE1RIEcxIGFuZCBHMiBjb2RlCj4gICAgYXJtNjQ6IGR0czog
aW14OG1xOiBTcGxpdCBpLk1YOE1RIEcxIGFuZCBHMiB3aXRoIHZwdS1ibGstY3RybAo+Cj4gQmVu
amFtaW4gR2FpZ25hcmQgKDEpOgo+ICAgIGR0LWJpbmRpbmdzOiBtZWRpYTogbnhwLGlteDhtcS12
cHU6IFVwZGF0ZSB0aGUgYmluZGluZ3MgZm9yIEcyIHN1cHBvcnQKPgo+IEx1Y2FzIFN0YWNoICgz
KToKPiAgICBkdC1iaW5kaW5nczogcG93ZXI6IGlteDhtcTogYWRkIGRlZmluZXMgZm9yIFZQVSBi
bGstY3RybCBkb21haW5zCj4gICAgZHQtYmluZGluZ3M6IHNvYzogYWRkIGJpbmRpbmcgZm9yIGku
TVg4TVEgVlBVIGJsay1jdHJsCj4gICAgc29jOiBpbXg6IGlteDhtLWJsay1jdHJsOiBhZGQgaS5N
WDhNUSBWUFUgYmxrLWN0cmwKPgo+ICAgLi4uL2JpbmRpbmdzL21lZGlhL254cCxpbXg4bXEtdnB1
LnlhbWwgICAgICAgIHwgIDU4ICsrKysrLS0tLQo+ICAgLi4uL3NvYy9pbXgvZnNsLGlteDhtcS12
cHUtYmxrLWN0cmwueWFtbCAgICAgIHwgIDcxICsrKysrKysrKysrCj4gICBhcmNoL2FybTY0L2Jv
b3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEuZHRzaSAgICAgfCAgNjkgKysrKysrLS0tLQo+ICAgZHJp
dmVycy9zb2MvaW14L2lteDhtLWJsay1jdHJsLmMgICAgICAgICAgICAgIHwgIDY4ICsrKysrKysr
Ky0KPiAgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jICAgICB8ICAg
NCArLQo+ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9faHcuaCAgICAgIHwg
ICAyICstCj4gICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2lteDhtX3ZwdV9ody5jICAg
fCAxMTkgKysrLS0tLS0tLS0tLS0tLS0tCj4gICBpbmNsdWRlL2R0LWJpbmRpbmdzL3Bvd2VyL2lt
eDhtcS1wb3dlci5oICAgICAgfCAgIDMgKwo+ICAgOCBmaWxlcyBjaGFuZ2VkLCAyMzcgaW5zZXJ0
aW9ucygrKSwgMTU3IGRlbGV0aW9ucygtKQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvaW14L2ZzbCxpbXg4bXEtdnB1LWJsay1jdHJs
LnlhbWwKPgo+Cj4gYmFzZS1jb21taXQ6IGQxODg4YjBiZmQyZGRlZjJlOGE4MTUwNWZmYTIwMGI5
MmNjMzJlMGMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
