Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A49BCCCF9E5
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Oct 2025 00:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29acFw5PQaJyH+qHUpINh5+n81CYwWaubfUBuL/8iXw=; b=Skfzi/4Qk57Cd3
	B3WAGEphNEXv71u5vja9TzwbxplfY4BXsihY/I7f/hRengAJSIAb9/zjWCYvS/fsHRvNfh/KvtoCi
	3a9PL3acdtI4S1HRXQs+6jmoA3HUaDEqnP8k8EK+mrbQL+GzBqf2ZOA6hhA4EgyS+cEAwgQ4rgQaQ
	NhqXGKPNQu9hdwrIU9sjfws46egClebQsDu5CcU1QSDDMmUitGhpZCj/2UoIeFePYIUGGwbAMgZ3n
	CD365oSrl9yW7yk4VvXT+m66ZJOjMxOT/z6Q3eYXymsLo/iCD0h0MIOB0ijm1/H/NNCldMzMF7m4b
	pQE8A4B60F4shkrhIfzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDXXa-0000000Eysx-263B;
	Tue, 28 Oct 2025 00:26:22 +0000
Received: from mail-m83160.xmail.ntesmail.com ([156.224.83.160])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDXXX-0000000EysK-19RZ;
	Tue, 28 Oct 2025 00:26:21 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 27641a992;
	Tue, 28 Oct 2025 08:26:08 +0800 (GMT+08:00)
Message-ID: <4fe0ccf9-8866-443a-8083-4a2af7035ee6@rock-chips.com>
Date: Tue, 28 Oct 2025 08:26:05 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com
Subject: Re: [PATCH v1 1/2] PCI: dw-rockchip: Add remove callback for resource
 cleanup
To: Anand Moon <linux.amoon@gmail.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Niklas Cassel <cassel@kernel.org>, Hans Zhang <18255117159@163.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20251027145602.199154-1-linux.amoon@gmail.com>
 <20251027145602.199154-2-linux.amoon@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20251027145602.199154-2-linux.amoon@gmail.com>
X-HM-Tid: 0a9a28353b1709cckunm5714e79495b73
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUtDHlZMT0tJSU9CSEsfGhhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=MVjyAjJLoKqFruf/2T8UTkdFxaaY1HLRIzik5UoO+bPgLPabD6cwVDYphWLLcTcg1zKklhAqtFdqx48TtcbK1a9MXPQuuoR0mM0N1HHZSJmd+0x7IsDhaokWGwjR3VlWLoquao1g1pe6uM8UlxJDqOxLD2g9W84vG9UdDLDdHic=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=/01EZ5lMl59YI++li6XSVu0o5BZOK5sa3DWde3cS9iY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_172619_966067_FC1279C9 
X-CRM114-Status: GOOD (  20.68  )
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

5ZyoIDIwMjUvMTAvMjcg5pif5pyf5LiAIDIyOjU1LCBBbmFuZCBNb29uIOWGmemBkzoKPiBJbnRy
b2R1Y2UgYSAucmVtb3ZlKCkgY2FsbGJhY2sgdG8gdGhlIFJvY2tjaGlwIERlc2lnbldhcmUgUENJ
ZQo+IGNvbnRyb2xsZXIgZHJpdmVyIHRvIGVuc3VyZSBwcm9wZXIgcmVzb3VyY2UgZGVpbml0aWFs
aXphdGlvbiBkdXJpbmcKPiBkZXZpY2UgcmVtb3ZhbC4gVGhpcyBpbmNsdWRlcyBkaXNhYmxpbmcg
Y2xvY2tzIGFuZCBkZWluaXRpYWxpemluZyB0aGUKPiBQQ0llIFBIWS4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBBbmFuZCBNb29uIDxsaW51eC5hbW9vbkBnbWFpbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJz
L3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgfCAxMSArKysrKysrKysrKwo+
ICAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kv
Y29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gaW5kZXggODdkZDJkZDE4OGI0Li5i
ODc4YWU4ZTJiM2UgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1kdy1yb2NrY2hpcC5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1k
dy1yb2NrY2hpcC5jCj4gQEAgLTcxNyw2ICs3MTcsMTYgQEAgc3RhdGljIGludCByb2NrY2hpcF9w
Y2llX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAJcmV0dXJuIHJldDsK
PiAgIH0KPiAgIAo+ICtzdGF0aWMgdm9pZCByb2NrY2hpcF9wY2llX3JlbW92ZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQo+ICt7Cj4gKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+
ZGV2Owo+ICsJc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwID0gZGV2X2dldF9kcnZkYXRh
KGRldik7Cj4gKwo+ICsJLyogUGVyZm9ybSBvdGhlciBjbGVhbnVwcyBhcyBuZWNlc3NhcnkgKi8K
PiArCWNsa19idWxrX2Rpc2FibGVfdW5wcmVwYXJlKHJvY2tjaGlwLT5jbGtfY250LCByb2NrY2hp
cC0+Y2xrcyk7Cj4gKwlyb2NrY2hpcF9wY2llX3BoeV9kZWluaXQocm9ja2NoaXApOwo+ICt9CgpU
aGFua3MgZm9yIHRoZSBwYXRjaC4KCkRvdSB5b3UgbmVlZCB0byBjYWxsIGR3X3BjaWVfaG9zdF9k
ZWluaXQoKT8KQW5kIEkgdGhpbmsgeW91IHNob3VsZCBhbHNvIHRyeSB0byBtYXNrIFBDSUVfQ0xJ
RU5UX0lOVFJfTUFTS19NSVNDIGFuZApyZW1vdmUgdGhlIGlycSBkb21haW4gYXMgd2VsbC4KCmlm
IChyb2NrY2hpcC0+aXJxX2RvbWFpbikgewoJaW50IHZpcnEsIGo7Cglmb3IgKGogPSAwOyBqIDwg
UENJX05VTV9JTlRYOyBqKyspIHsKCQl2aXJxID0gaXJxX2ZpbmRfbWFwcGluZyhyb2NrY2hpcC0+
aXJxX2RvbWFpbiwgaik7CgkJaWYgKHZpcnEgPiAwKQoJCQlpcnFfZGlzcG9zZV9tYXBwaW5nKHZp
cnEpOwogICAgICAgICB9CglpcnFfc2V0X2NoYWluZWRfaGFuZGxlcl9hbmRfZGF0YShyb2NrY2hp
cC0+aXJxLCBOVUxMLCBOVUxMKTsKCWlycV9kb21haW5fcmVtb3ZlKHJvY2tjaGlwLT5pcnFfZG9t
YWluKTsKfQoKQW5vdGhlciB0aGluIEkgbm90aWNlZCBpcyBzaG91bGQgd2UgY2FsbCBwbV9ydW50
aW1lXyogaGVyZSBmb3IgaG9wZSB0aGF0CmdlbnBkIGNvdWxkIGJlIHBvd2VyZWQgZG9udyBvbmNl
IHJlbW92ZWQ/CgoKPiArCj4gICBzdGF0aWMgY29uc3Qgc3RydWN0IHJvY2tjaGlwX3BjaWVfb2Zf
ZGF0YSByb2NrY2hpcF9wY2llX3JjX29mX2RhdGFfcmszNTY4ID0gewo+ICAgCS5tb2RlID0gRFdf
UENJRV9SQ19UWVBFLAo+ICAgfTsKPiBAQCAtNzU0LDUgKzc2NCw2IEBAIHN0YXRpYyBzdHJ1Y3Qg
cGxhdGZvcm1fZHJpdmVyIHJvY2tjaGlwX3BjaWVfZHJpdmVyID0gewo+ICAgCQkuc3VwcHJlc3Nf
YmluZF9hdHRycyA9IHRydWUsCj4gICAJfSwKPiAgIAkucHJvYmUgPSByb2NrY2hpcF9wY2llX3By
b2JlLAo+ICsJLnJlbW92ZSA9IHJvY2tjaGlwX3BjaWVfcmVtb3ZlLAo+ICAgfTsKPiAgIGJ1aWx0
aW5fcGxhdGZvcm1fZHJpdmVyKHJvY2tjaGlwX3BjaWVfZHJpdmVyKTsKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
