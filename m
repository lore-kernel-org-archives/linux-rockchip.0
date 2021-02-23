Return-Path: <SRS0=ad98=HZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CC81C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 14:48:57 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9CB8A64E20
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 14:48:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9CB8A64E20
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RBTqj6H5Q5zMgU/sum5Lbq+icuyE4UjO9WsFBJmLgxo=; b=mRu1dHX+oqj50hgmu95Z+2SWu
	03jhVkepTpSN9Dytvq9s7xv3ZWrpaUeuN8+BfHV9Da7GHCgWDuPHIkHn3Vdy96C2VvEmx6Fn0ugnI
	Xp5E4aUjPw1bbktmwj62d3hDIyRsUSda62LdOFNS1TovPtujOx5gCyzOaBG3U1x234Ib53PN5p0aa
	j91659Q5uuqmRugImo3NTwgJ04yY2atUct8z5bfrFFDI/QDgGRWEIVpk8tE7aHvUwQmuHJCBBf5GJ
	tf+AHN3qFazY3VYnNsfNjtT53m671ls0QqW9TY+suY5d2dBNZ+qJDmEazOtFi+zrA9RXcRSzqiHKK
	aLmB8MaYw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEYza-0005i9-KS; Tue, 23 Feb 2021 14:48:50 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEYzW-0005gW-74; Tue, 23 Feb 2021 14:48:47 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 8AFB91F44D4B
Message-ID: <f024535585fe5b248ca8cf7ca95c14ced746f9da.camel@collabora.com>
Subject: Re: [PATCH v3 8/9] dt-bindings: media: nxp,imx8mq-vpu: Update bindings
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Rob Herring <robh@kernel.org>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>
Date: Tue, 23 Feb 2021 11:48:29 -0300
In-Reply-To: <CAL_JsqJGZK2C8mcDiYa4yfKxf4sKykxSQ-Nfr4bi_u_OcAxW_Q@mail.gmail.com>
References: <20210222122406.41782-1-benjamin.gaignard@collabora.com>
 <20210222122406.41782-9-benjamin.gaignard@collabora.com>
 <20210223003442.GA2516123@robh.at.kernel.org>
 <25f30110-d655-2d77-d3b7-30c1c61f6965@collabora.com>
 <CAL_JsqJGZK2C8mcDiYa4yfKxf4sKykxSQ-Nfr4bi_u_OcAxW_Q@mail.gmail.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210223_094846_370159_7A973216 
X-CRM114-Status: GOOD (  28.55  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Collabora Kernel ML <kernel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Peng Fan <peng.fan@nxp.com>,
 Maxime Ripard <mripard@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgUm9iLAoKT24gVHVlLCAyMDIxLTAyLTIzIGF0IDA4OjMxIC0wNjAwLCBSb2IgSGVycmluZyB3
cm90ZToKPiBPbiBUdWUsIEZlYiAyMywgMjAyMSBhdCAyOjA0IEFNIEJlbmphbWluIEdhaWduYXJk
Cj4gPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+ID4gCj4gPiAKPiA+
IExlIDIzLzAyLzIwMjEgw6AgMDE6MzQsIFJvYiBIZXJyaW5nIGEgw6ljcml0IDoKPiA+ID4gT24g
TW9uLCBGZWIgMjIsIDIwMjEgYXQgMDE6MjQ6MDVQTSArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQg
d3JvdGU6Cj4gPiA+ID4gVGhlIGN1cnJlbnQgYmluZGluZ3Mgc2VlbSB0byBtYWtlIHRoZSBhc3N1
bXB0aW9uIHRoYXQgdGhlCj4gPiA+ID4gdHdvIFZQVXMgaGFyZHdhcmUgYmxvY2tzIChHMSBhbmQg
RzIpIGFyZSBvbmx5IG9uZSBzZXQgb2YKPiA+ID4gPiByZWdpc3RlcnMuCj4gPiA+ID4gQWZ0ZXIg
aW1wbGVtZW50aW5nIHRoZSBWUFUgcmVzZXQgZHJpdmVyIGFuZCBHMiBkZWNvZGVyIGRyaXZlcgo+
ID4gPiA+IGl0IHNob3dzIHRoYXQgYWxsIHRoZSBWUFVzIGFyZSBpbmRlcGVuZGVudCBhbmQgZG9u
J3QgbmVlZCB0bwo+ID4gPiA+IGtub3cgYWJvdXQgdGhlIHJlZ2lzdGVycyBvZiB0aGUgb3RoZXIg
YmxvY2tzLgo+ID4gPiA+IFJlbW92ZSBmcm9tIHRoZSBiaW5kaW5ncyB0aGUgbmVlZCB0byBzZXQg
YWxsIGJsb2NrcyByZWdpc3Rlcgo+ID4gPiA+IGJ1dCBrZWVwIHJlZy1uYW1lcyBwcm9wZXJ0eSBi
ZWNhdXNlIHJlbW92aW5nIGl0IGZyb20gdGhlIGRyaXZlcgo+ID4gPiA+IG1heSBhZmZlY3Qgb3Ro
ZXIgdmFyaWFudHMuCj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2Fp
Z25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4gPiA+ID4gLS0tCj4gPiA+
ID4gdmVyc2lvbiAyOgo+ID4gPiA+IC0gYmUgbW9yZSB2ZXJib3NlIGFib3V0IHdoeSBJIGNoYW5n
ZSB0aGUgYmluZGluZ3MKPiA+ID4gPiBLZWVwIGluIG1pbmQgdGhhdCBzZXJpZXMgY29tZXMgYWZ0
ZXI6IGh0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2FybS1rZXJuZWwvbXNnODc1NzY2Lmh0
bWwKPiA+ID4gPiB3aXRob3V0IHRoYXQgcmV2aWV3IGFuZCBhY2sgaXQgd29uJ3Qgd29yawo+ID4g
PiBCZXR0ZXIsIGJ1dCB5b3UndmUgc3RpbGwgbWVudGlvbmVkIG5vdGhpbmcgYWJvdXQgYnJlYWtp
bmcgY29tcGF0aWJpbGl0eS4KPiA+ID4gV2h5IGlzIHRoYXQgb2theT8KPiA+IAoKSW5kZWVkLCB0
aGUgY29tbWl0IGRlc2NyaXB0aW9uIHNob3VsZCBiZSBjbGVhcmVyIGFib3V0IGJyZWFraW5nIGNv
bXBhdGliaWxpdHkuCgo+ID4gQmVjYXVzZSB0aGlzIHJlZy1uYW1lcyB3YXNuJ3QgdXNlZCBiZWZv
cmUgZm9yIHRoaXMgdmFyaWFudCBzbyByZW1vdmUgaXQgd29uJ3QgY2hhbmdlIGFueXRoaW5nLgo+
IAo+IEl0IGlzIHRoZSByZXNldCBjaGFuZ2VzIGluIHRoZSBkcml2ZXIgdGhhdCBicmVhay4gVGhl
IGRyaXZlcgo+IHByZXZpb3VzbHkgZ290IHRoZSAnY3RybCcgcmVnaXN0ZXJzIHdoZXRoZXIgaXQg
d2VudCBieSBuYW1lIG9yIGluZGV4LAo+IHJpZ2h0PyBXaXRoIGFuIG9sZCBEVEIgYW5kIGEga2Vy
bmVsIHdpdGggdGhlIGNoYW5nZXMgKGFuZCB2aWNlLXZlcnNhKSwKPiB5b3UnbGwgaGF2ZSBub3Ro
aW5nIHRvIGhhbmRsZSB0aGUgVlBVIHJlc2V0cyBiZWNhdXNlIHRoZSBWUFUgcmVzZXQKPiBub2Rl
IGRvZXNuJ3QgZXhpc3QuIEl0IGNvdWxkIHdvcmsgaWYgdGhlIGRlZmF1bHQgc3RhdGUgaXMgbm90
IGhlbGQgaW4KPiByZXNldC4KPiAKPiBBdCBsZWFzdCB0aGUgcmVtb3ZhbCBvZiAnY3RybCcgcmVn
aXN0ZXJzIGJlbG9uZ3MgaW4gdGhlIHJlc2V0IGNoYW5nZXMgc2VyaWVzLgo+IAo+IAoKQ29uc2lk
ZXJpbmcgdGhhdCBGRk1QRUcgcGF0Y2hlcyB0aGF0IGFyZSByZXF1aXJlZCB0byBzdXBwb3J0IHRo
aXMgZHJpdmVyCmFyZSBzdGlsbCBmbG9hdGluZyBhcm91bmQsIGFuZCBHU3RyZWFtZXIncyBpbXBs
ZW1lbnRhdGlvbiBpcyBhbHNvIHN0aWxsCmEgYml0IHVuZGVyIGRpc2N1c3Npb24sIHdlIGFyZSBj
ZXJ0YWluIHRoZXJlIGFyZW4ndCBtYW55IHVwc3RyZWFtcyB1c2VycwoobGVhdmluZyBDaHJvbWl1
bU9TIGFzaWRlIHdoaWNoIG1vc3RseSBjYXJlIGZvciBSb2NrY2hpcCB2YXJpYW50cykuCgpTbywg
Z2l2ZW4gdGhlIGRyaXZlciBpcyBpbiBzdGFnaW5nLCBhbmQgdGhhdCB0aGVyZSBhcmVuJ3QgdXNl
cnMgb2YgdGhlCmkuTVg4TVEgRzEgdmFyaWFudCBqdXN0IHlldCwgSSB0aGluayB3ZSBhcmUgc2Fm
ZSBicmVha2luZyB0aGUgY29tcGF0aWJpbGl0eQooYW5kIEknbSBub3QgdGFraW5nIGl0IGxpZ2h0
bHkpLgoKSXQgd291bGQgYmUgaW1wb3J0YW50IHRvIGRldGVjdCBhbiBvbGQgZGV2aWNldHJlZSBh
bmQgZG8gc29tZSBwcl93YXJuIGFib3V0CnRoZSBkcml2ZXIgbm90IHN1cHBvcnRpbmcgaXQuCgpU
aGFua3MsCkV6ZXF1aWVsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
