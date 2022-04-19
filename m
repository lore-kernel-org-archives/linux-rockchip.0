Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63EABC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Apr 2022 20:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rVECVg60Dn5rWaPkgbENPoE0PuFHWsEFlIwx7tsHMXk=; b=p0rPrg1/TqHKJg
	T8YVoOt1kLKnNQDwDQ1b8QMGkHJEZbvQZaVq2bRXx8ZABsK16AHl32zFb4cWUhE6/oDtas8R0KPmE
	Xlk4flXYV7gKYf2xpLiv99Jgqhu6mz5E6BWmMVNlVCRZwOtUS369zdQ7edLVde/lXyB3FfeN1Jc29
	9TTD6dWNNB2vVHErJ8+ZDmW2Zy8zonNyXjH2F3Oja0XUsN6xbb06Oo+2II6MLVqoNC33Mh97v3c0Q
	JKUaN7Y5FvCr9INMFl4f39g1D6V8kHoFQUR3ibX8nThU49+Oc9n9nbRopT/F79NKNHmNV7k4DenmK
	X9QGoONZIB4Q7n2L7A+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngubE-0068Ab-2u; Tue, 19 Apr 2022 20:37:24 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngubB-00689t-7A; Tue, 19 Apr 2022 20:37:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1650400612;
 bh=nM0QsTSHImhNtVCVh89StLB1opnXuQrH2wxHbxs6XBA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=jlyq4cgfBSJ4vunKDweFSvyh6F+sz/1pWDI8nWlS2T5qoPZ/gQtIC6+Ye+o/sScRf
 g//fgUsnJiPBhtDydIvFTqhFGWbXFR/+aDIGbMMXSTHIqidt2gtI9xPgWN6SsxzpCN
 cZD9et57ilv4zaI0FBOMIok+7FiBnQ0Uya/fT9LY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.157.75] ([217.61.157.75]) by web-mail.gmx.net
 (3c-app-gmx-bap70.server.lan [172.19.172.170]) (via HTTP); Tue, 19 Apr 2022
 22:36:52 +0200
MIME-Version: 1.0
Message-ID: <trinity-a5ae4007-e6e3-4869-80ad-3783109b6d4c-1650400612809@3c-app-gmx-bap70>
From: Frank Wunderlich <frank-w@public-files.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>, Peter Geis
 <pgwipeout@gmail.com>, Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
Subject: Aw: Re:  Re: [RFC/RFT 1/6] dt-bindings: phy: rockchip: add pcie3 phy
Date: Tue, 19 Apr 2022 22:36:52 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <fce0337a-0c71-a040-0a01-f20b55eb568b@linaro.org>
References: <20220416135458.104048-1-linux@fw-web.de>
 <20220416135458.104048-2-linux@fw-web.de>
 <38e60bb2-123b-09cf-d6ef-3a07c6984108@linaro.org>
 <trinity-597cf8a3-2ad4-41e6-b3c9-b949f8610533-1650390552136@3c-app-gmx-bap70>
 <fce0337a-0c71-a040-0a01-f20b55eb568b@linaro.org>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:d+JalmBOvkG+YH4MOQOkbx3eTQ2qApoH5tRGPenjf/+CeM71isw7OUzKyPe4EElMEu30I
 n1hHGWuB1hCWR+uDaSdbMODVWktm3iz2jGAJGr5mn7zJLMz0mzQvMXCHDgzU4xFk4dZ9ylxWzU20
 DyKz0CEbS9RbL/l9Yb43oH4oXZAZL9hdoeUOAyffh/soksKY64KrMqXpmQEy0934hkbo//AEb62N
 Jd62VcWdi4rt5KCeZ36p4THT6foA93C8Ir6FnjdcK+ZWFUHuqUngydOhL8Q90mGPkpgDI4/2gleH
 S4=
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZubA9Isagu8=:g1UKhN7ZZOPpy3NgvxOKYG
 TaIs/BuV7xBn/Uwcas94HfhBFosJo964g2O8GgtMrlTfVs+q+/FCqMzuVkEtcMIkonaHl0R6T
 FPnbM6RFIVNG3MQHhTt8KWC5xCU0nTCVIhnLqQuQXpJ9Y6vx/PleEFxPjyQm1DOeKS0tARhFW
 zZDMzrLH1MyJ3a2B3dNdfUZ/B5vaTH5z7hSjw+GwQcjy5Ss1sijCmcsGHkSC0UDj5Ps218d44
 G3IOU6Zmj75XY9Nwixg0v+LuFU8Yxj6jYmv5KxDtvrwfAhkOJxZnx8SmrUIPPSOXjB1XtZ2MR
 IlgVmjUqmrahKIDqGVVwY8BmsFckQ5mHcZIu0peU25XccWCha45KFCE6lwaDQNec/rft3iQzH
 R1S99JaVjnlzXHpGCIobf8h9omxA/dFP3BaNEwT4BDol7bXSguDsmyn1P53PmpO6Ag+zXio/7
 VCj/LpaPCMPln/uLr57TJ6PzlLsbf4u1mQAQoDYV55jFYQXou/UwE/Y9gTsQf8Yvc0VAn7yJh
 YjOEJZPD2m1jWz8Sx0HXJeds0urOmP7tNlEgDBk9vzmEwP1xJygu1YP5QV3hutrZ5MZiQ/P02
 xuZZsBMp7JaPhWZbuBdlMMRaF+1IJOzUg4rXnYGhM+p03SDaUPkNbhU81bGmyjXN7J3wy9JgK
 orhyw61hDebw77Jn0D6E+yJBstjbXs1hHOubfGdT+4AnqJPfJjtymlpWCmon0CQXE4WcGRjUd
 UFanqQGFulfOyG+e2GZPj2COnvRICnVGcRlmuSaXpH0CZF9G6jpscQcn/iQ8U8cTxqUHwikOp
 IMbQN0W
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_133721_764215_D094B8CF 
X-CRM114-Status: GOOD (  24.77  )
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

PiBHZXNlbmRldDogRGllbnN0YWcsIDE5LiBBcHJpbCAyMDIyIHVtIDIxOjQzIFVocgo+IFZvbjog
IktyenlzenRvZiBLb3psb3dza2kiIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+Cj4g
QW46ICJGcmFuayBXdW5kZXJsaWNoIiA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+Cj4gQ2M6ICJG
cmFuayBXdW5kZXJsaWNoIiA8bGludXhAZnctd2ViLmRlPiwgbGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZywgIktpc2hvbiBWaWpheSBBYnJhaGFtIEkiIDxraXNob25AdGkuY29tPiwg
IlZpbm9kIEtvdWwiIDx2a291bEBrZXJuZWwub3JnPiwgIlJvYiBIZXJyaW5nIiA8cm9iaCtkdEBr
ZXJuZWwub3JnPiwgIktyenlzenRvZiBLb3psb3dza2kiIDxrcnprK2R0QGtlcm5lbC5vcmc+LCAi
SGVpa28gU3R1ZWJuZXIiIDxoZWlrb0BzbnRlY2guZGU+LCAiTG9yZW56byBQaWVyYWxpc2kiIDxs
b3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tPiwgIktyenlzenRvZiBXaWxjennFhHNraSIgPGt3QGxp
bnV4LmNvbT4sICJCam9ybiBIZWxnYWFzIiA8YmhlbGdhYXNAZ29vZ2xlLmNvbT4sICJQaGlsaXBw
IFphYmVsIiA8cC56YWJlbEBwZW5ndXRyb25peC5kZT4sICJKb2hhbiBKb25rZXIiIDxqYng2MjQ0
QGdtYWlsLmNvbT4sICJQZXRlciBHZWlzIiA8cGd3aXBlb3V0QGdtYWlsLmNvbT4sICJNaWNoYWVs
IFJpZXNjaCIgPG1pY2hhZWwucmllc2NoQHdvbGZ2aXNpb24ubmV0PiwgbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcsIGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnLCBsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcsIGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcsIGxp
bnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmcKPiBCZXRyZWZmOiBSZTogQXc6IFJlOiBbUkZDL1JGVCAx
LzZdIGR0LWJpbmRpbmdzOiBwaHk6IHJvY2tjaGlwOiBhZGQgcGNpZTMgcGh5Cj4KPiBPbiAxOS8w
NC8yMDIyIDE5OjQ5LCBGcmFuayBXdW5kZXJsaWNoIHdyb3RlOgo+ID4+IFRoZSBsaXN0IHNob3Vs
ZCBiZSBzdHJpY3RseSBvcmRlcmVkIChkZWZpbmVkKSwgc286Cj4gPj4gICBpdGVtczoKPiA+PiAg
ICAgLSBjb25zdDogLi4uCj4gPj4gICAgIC0gY29uc3Q6IC4uLgo+ID4+ICAgICAtIGNvbnN0OiAu
Li4KPiA+PiAgIG1pbkl0ZW1zOiAxCj4gPj4KPiA+PiBIb3dldmVyIHRoZSBxdWVzdGlvbiBpcyAt
IHdoeSB0aGUgY2xvY2tzIGhhdmUgZGlmZmVyZW50IGFtb3VudD8gSXMgaXQKPiA+PiBwZXIgZGlm
ZmVyZW50IFNvQyBpbXBsZW1lbnRhdGlvbj8KPiA+IAo+ID4gaSBvbmx5IGtub3cgdGhlIHJrMzU2
OCwgd2hpY2ggbmVlZHMgdGhlIGNsb2NrcyBkZWZpbmVkIGhlcmUsIGRvbid0IGtub3cgYWJvdXQg
cmszNTg4IHlldC4KPiA+IGluIHJrMzU2OCBUUE0gaSBoYXZlIHRoZSBwY2llLXBhcnQgc2VlbXMg
bWlzc2luZyAoYXQgbGVhc3QgdGhlIHNwZWNpZmljIHJlZ2lzdGVyIGRlZmluaXRpb24pLCBzbyBp
IGhhZCB1c2VkIHRoZSBkcml2ZXIgYXMgaSBnb3QgaXQgZnJvbSB0aGUgZG93bnN0cmVhbSBrZXJu
ZWwuCj4gPiAKPiA+IG5vdCB5ZXQgbG9va2VkIGlmIGkgZmluZCBhIHJrMzU4OCBUUE0gYW5kIGlm
IHRoaXMgcGFydCBpcyB0aGVyZSBhcyBpIGNhbm5vdCB0ZXN0IGl0IChvbmUgb2YgdGhlIHJlYXNv
bnMgdGhpcyBpcyBhIHJmYy9yZnQpLgo+IAo+IFlvdSBjYW4gc2tpcCBSSzM1ODggY29tcGF0aWJs
ZSBvciBkZWZpbmUgaXQgdGhpcyBzdHJpY3RseSBhbHNvIGZvciB0aGF0Cj4gY2hpcC4KCmN1cnJl
bnRseSBkcml2ZXIgZG9lcyBjbGtfYnVsayBpbml0aWFsaXphdGlvbiBzbyBpIHdvdWxkIGRlZmlu
ZSBpdCBsaWtlIHlvdSBzdWdnZXN0ZWQgKHdpdGhvdXQgYW55IFNvQyBzcGVjaWZpYyBzd2l0Y2gp
OgoKICBjbG9ja3M6CiAgICBtaW5JdGVtczogMQogICAgbWF4SXRlbXM6IDMKCiAgY2xvY2stbmFt
ZXM6CiAgICBpdGVtczoKICAgICAgLSBjb25zdDogInJlZmNsa19tIgogICAgICAtIGNvbnN0OiAi
cmVmY2xrX24iCiAgICAgIC0gY29uc3Q6ICJwY2xrIgoKICAgIG1pbkl0ZW1zOiAxCgo+ID4+PiAr
Cj4gPj4+ICsgICIjcGh5LWNlbGxzIjoKPiA+Pj4gKyAgICBjb25zdDogMAo+ID4+PiArCj4gPj4+
ICsgIHJlc2V0czoKPiA+Pj4gKyAgICBtYXhJdGVtczogMQo+ID4+PiArCj4gPj4+ICsgIHJlc2V0
LW5hbWVzOgo+ID4+PiArICAgIGNvbnN0OiBwaHkKPiA+Pj4gKwo+ID4+PiArICByb2NrY2hpcCxw
aHktZ3JmOgo+ID4+PiArICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25z
L3BoYW5kbGUKPiA+Pj4gKyAgICBkZXNjcmlwdGlvbjogcGhhbmRsZSB0byB0aGUgc3lzY29uIG1h
bmFnaW5nIHRoZSBwaHkgImdlbmVyYWwgcmVnaXN0ZXIgZmlsZXMiCj4gPj4+ICsKPiA+Pj4gKyAg
cm9ja2NoaXAscGlwZS1ncmY6Cj4gPj4+ICsgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMv
ZGVmaW5pdGlvbnMvcGhhbmRsZQo+ID4+PiArICAgIGRlc2NyaXB0aW9uOiBwaGFuZGxlIHRvIHRo
ZSBzeXNjb24gbWFuYWdpbmcgdGhlIHBpcGUgImdlbmVyYWwgcmVnaXN0ZXIgZmlsZXMiCj4gPj4+
ICsKPiA+Pj4gKyAgcm9ja2NoaXAscGNpZTMwLXBoeW1vZGU6Cj4gPj4+ICsgICAgJHJlZjogJy9z
Y2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQzMicKPiA+Pj4gKyAgICBkZXNjcmlw
dGlvbjogfAo+ID4+PiArICAgICAgdXNlIFBIWV9NT0RFX1BDSUVfQUdHUkVHQVRJT04gaWYgbm90
IGRlZmluZWQKPiA+Pgo+ID4+IEkgZG9uJ3QgdW5kZXJzdGFuZCB0aGUgZGVzY3JpcHRpb24uIERv
IHlvdSBtZWFuIGhlcmUgYSBjYXNlIHdoZW4gdGhlCj4gPj4gdmFyaWFibGUgaXMgbWlzc2luZz8K
PiA+IAo+ID4geWVzLCBpZiB0aGUgcHJvcGVydHkgaXMgbm90IHNldCwgdGhlbiB2YWx1ZSBpcyBQ
SFlfTU9ERV9QQ0lFX0FHR1JFR0FUSU9OID0gNAo+IAo+IFRoZW4ganVzdCB1c2UgImRlZmF1bHQ6
IDQiCj4gCj4gPiAKPiA+Pj4gKyAgICBtaW5pbXVtOiAweDAKPiA+Pj4gKyAgICBtYXhpbXVtOiAw
eDQKPiA+Pgo+ID4+IFBsZWFzZSBleHBsYWluIHRoZXNlIHZhbHVlcy4gUmVnaXN0ZXIgdmFsdWVz
IHNob3VsZCBub3QgYmUgcGFydCBvZgo+ID4+IGJpbmRpbmdzLCBidXQgaW5zdGVhZCBzb21lIGxv
Z2ljYWwgYmVoYXZpb3Igb2YgaGFyZHdhcmUgb3IgaXRzIGxvZ2ljLgo+ID4gCj4gPiBpdCdzIGEg
Yml0bWFzaywgc28gbWF5YmUKPiA+IAo+ID4gICAgIGRlc2NyaXB0aW9uOiB8Cj4gPiAgICAgICBi
aXQwOiBiaWZ1cmNhdGlvbiBmb3IgcG9ydCAwCj4gPiAgICAgICBiaXQxOiBiaWZ1cmNhdGlvbiBm
b3IgcG9ydCAxCj4gPiAgICAgICBiaXQyOiBhZ2dyZWdhdGlvbgo+IAo+IFRoYXQncyBnb29kLiBJ
IGdvdCBpbXByZXNzaW9uIHlvdSBoYXZlIGEgaGVhZGVyIHdpdGggdGhlc2UgdmFsdWVzLiBJZgo+
IHllcyAtIG1lbnRpb24gaXQgaGVyZS4KPiAKPiA+ICAgICAgIHVzZSBQSFlfTU9ERV9QQ0lFX0FH
R1JFR0FUSU9OICg0KSBhcyBkZWZhdWx0Cj4gCj4gSnVzdCB1c2UgZGVmYXVsdCBhcyBJIHdyb3Rl
IGFib3ZlLgoKc28gbGlrZSB0aGlzPwoKICByb2NrY2hpcCxwY2llMzAtcGh5bW9kZToKICAgICRy
ZWY6ICcvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzInCiAgICBkZXNjcmlw
dGlvbjogfAogICAgICBzZXQgdGhlIHBoeS1tb2RlIGZvciBlbmFibGluZyBiaWZ1cmNhdGlvbgog
ICAgICBiaXQwOiBiaWZ1cmNhdGlvbiBmb3IgcG9ydCAwCiAgICAgIGJpdDE6IGJpZnVyY2F0aW9u
IGZvciBwb3J0IDEKICAgICAgYml0MjogYWdncmVnYXRpb24KICAgICAgY29uc3RhbnRzIGFyZSBk
ZWZpbmVkIGluIHRoZSBkdC1iaW5kaW5ncy9waHkvcGh5LXJvY2tjaGlwLXBjaWUzLmgKICAgIG1p
bmltdW06IDB4MAogICAgbWF4aW11bTogMHg0CiAgICBkZWZhdWx0OiAweDQKCnJlZ2FyZHMgRnJh
bmsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
