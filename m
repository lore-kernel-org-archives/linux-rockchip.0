Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFFF3C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Mar 2023 20:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FRS3UVPd0M7RxjzJi8Ru08ktFDOgox797tbQLcwhE60=; b=kNuL//YsyCe3wq
	UE3iZuOaE8CzK7b+ezX+t44yus+zsXWpxyYDQHGE/p8aDXfKSrWlRNcGR848ILPGCX5IU/vhjgWsU
	tWH0WhheUmMgGl0/qx3ZIu+HdGqMLn2U0QMUBX2UxQcHXkr8VB3UhNvp8H308NHyKbZG5rEtGO/Ng
	vaGWRPz8eqqSTGyUhqyF13w6eeBC/e8aQNQ/sk/ONXYVTdd9lVE+5LDSKk52JHkPoVycuQIXP1nrF
	LxEI0300+KzJ5ceP/pUCdDTU+ODqfhbhk7W7/cwX3OoFrqZ3qJuEDFrpgt/IVrkbq6glMDDk3a9ek
	gVOLuowYXjW72xhGz9pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfnuy-005WnA-2K;
	Fri, 24 Mar 2023 20:21:44 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfnut-005Wkg-31;
	Fri, 24 Mar 2023 20:21:41 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B21B2A58;
	Fri, 24 Mar 2023 21:21:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1679689295;
	bh=k082uSrt6jNQq0wYKw9dlktMyGfVT1a6X+VmeRopIhQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KjQE14OQG/1rdUOuBbJvohFSBegnyZS9jPYY5Lhj5m5xjVQ1OJPx/QPJJxHmEGiXk
	 oxQ6r8iqbugo67bppEFw0YuiMMMT9fwCwGbS8mMgppoOdT1QGXkMOAVYQ8ww48etkK
	 37OWSXgkj0n17Xxk29IxOG2ZMCYZdkbUbUbV7Czo=
Date: Fri, 24 Mar 2023 22:21:42 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	David Laight <David.Laight@ACULAB.COM>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	"tfiga@chromium.org" <tfiga@chromium.org>,
	"m.szyprowski@samsung.com" <m.szyprowski@samsung.com>,
	"mchehab@kernel.org" <mchehab@kernel.org>,
	"ming.qian@nxp.com" <ming.qian@nxp.com>,
	"shijie.qin@nxp.com" <shijie.qin@nxp.com>,
	"eagle.zhou@nxp.com" <eagle.zhou@nxp.com>,
	"bin.liu@mediatek.com" <bin.liu@mediatek.com>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>,
	"tiffany.lin@mediatek.com" <tiffany.lin@mediatek.com>,
	"andrew-ct.chen@mediatek.com" <andrew-ct.chen@mediatek.com>,
	"yunfei.dong@mediatek.com" <yunfei.dong@mediatek.com>,
	"stanimir.k.varbanov@gmail.com" <stanimir.k.varbanov@gmail.com>,
	"quic_vgarodia@quicinc.com" <quic_vgarodia@quicinc.com>,
	"agross@kernel.org" <agross@kernel.org>,
	"andersson@kernel.org" <andersson@kernel.org>,
	"konrad.dybcio@linaro.org" <konrad.dybcio@linaro.org>,
	"ezequiel@vanguardiasur.com.ar" <ezequiel@vanguardiasur.com.ar>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"daniel.almeida@collabora.com" <daniel.almeida@collabora.com>,
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
	"kernel@collabora.com" <kernel@collabora.com>
Subject: Re: [RFC 2/4] media: videobuf2: Replace bufs array by a list
Message-ID: <20230324202142.GB23868@pendragon.ideasonboard.com>
References: <86df05244d974416903e919d387a0a0b@AcuMS.aculab.com>
 <e704b505-86d8-c6f2-8546-adccdab72622@xs4all.nl>
 <dc04d48e34ed40e58f43badd001a81d0@AcuMS.aculab.com>
 <cbf34cf1-e065-8136-8344-89ca1864f637@xs4all.nl>
 <20230319233358.GD20234@pendragon.ideasonboard.com>
 <f085aa9225c573df906bdc7ff032a8fd591b18b3.camel@ndufresne.ca>
 <20230322150153.GO20234@pendragon.ideasonboard.com>
 <2d6480e36ce061a63440d1e11d52b02e57ba746d.camel@ndufresne.ca>
 <68ba7b3f-57f5-3969-5036-2c8d08273548@xs4all.nl>
 <6f2979d33526e5ccdc32cf096415d8309fc91d3d.camel@ndufresne.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6f2979d33526e5ccdc32cf096415d8309fc91d3d.camel@ndufresne.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_132140_120253_2830D498 
X-CRM114-Status: GOOD (  31.01  )
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

T24gRnJpLCBNYXIgMjQsIDIwMjMgYXQgMTE6MzQ6NDhBTSAtMDQwMCwgTmljb2xhcyBEdWZyZXNu
ZSB3cm90ZToKPiBMZSB2ZW5kcmVkaSAyNCBtYXJzIDIwMjMgw6AgMTY6MTggKzAxMDAsIEhhbnMg
VmVya3VpbCBhIMOpY3JpdMKgOgo+ID4gT24gMjQvMDMvMjAyMyAxNjoxNCwgTmljb2xhcyBEdWZy
ZXNuZSB3cm90ZToKPiA+ID4gTGUgbWVyY3JlZGkgMjIgbWFycyAyMDIzIMOgIDE3OjAxICswMjAw
LCBMYXVyZW50IFBpbmNoYXJ0IGEgw6ljcml0wqA6Cj4gPiA+ID4gT24gV2VkLCBNYXIgMjIsIDIw
MjMgYXQgMTA6NTA6NTJBTSAtMDQwMCwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPiA+ID4gPiA+
IExlIGx1bmRpIDIwIG1hcnMgMjAyMyDDoCAwMTozMyArMDIwMCwgTGF1cmVudCBQaW5jaGFydCBh
IMOpY3JpdMKgOgo+ID4gPiA+ID4gPiA+IFRoZSB0eXBpY2FsIHVzYWdlIGlzIHRoYXQgYXBwbGlj
YXRpb25zIGFsbG9jYXRlIE4gYnVmZmVycyB3aXRoIHRoZQo+ID4gPiA+ID4gPiA+IFZJRElPQ19S
RVFCVUZTIGlvY3RsLCBhbmQgaW4gbW9zdCBjYXNlcyB0aGF0J3MgYWxsIHRoZXkgdXNlLgo+ID4g
PiA+ID4gPiAKPiA+ID4gPiA+ID4gTm90ZSB0aGF0IG9uY2Ugd2UgZ2V0IERFTEVURV9CVUYgKG9y
IERFTEVURV9CVUZTKSBzdXBwb3J0IEknZCBsaWtlIHRvCj4gPiA+ID4gPiA+IGVuY291cmFnZSBh
cHBsaWNhdGlvbnMgdG8gdXNlIHRoZSBuZXcgQVBJLCBhbmQgZGVwcmVjYXRlIFJFUUJVRlMKPiA+
ID4gPiA+ID4gKGRyb3BwaW5nIGl0IGlzbid0IG9uIG15IHJhZGFyLCBhcyBpdCB3b3VsZCB0YWtl
IGZvcmV2ZXIgYmVmb3JlIG5vCj4gPiA+ID4gPiA+IHVzZXJzcGFjZSB1c2VzIGl0IGFueW1vcmUp
Lgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBJIHdhcyB3b25kZXJpbmcgaWYgeW91IGNhbiBleHRlbmQg
b24gdGhpcy4gSSdtIHdvcnJpZWQgdGhlIGNvdW50IHNlbWFudGljIG1pZ2h0Cj4gPiA+ID4gPiBw
cmV2ZW50IGVtdWxhdGluZyBpdCBvdmVyIGNyZWF0ZV9idWZzKCkgb3BzLCBidXQgaWYgdGhhdCB3
b3JrcywgZGlkIHlvdSBtZWFudCB0bwo+ID4gPiA+ID4gZW11bGF0ZSBpdCBzbyBkcml2ZXIgbm8g
bG9uZ2VyIGhhdmUgdG8gaW1wbGVtZW50IHJlcWJ1ZnMoKSBpZiB0aGV5IGhhdmUKPiA+ID4gPiA+
IGNyZWF0ZV9idWZzKCkgPwo+ID4gPiA+IAo+ID4gPiA+IEZvciBkcml2ZXJzIGl0IHNob3VsZCBi
ZSBmYWlybHkgc2ltcGx5LCBhcyB0aGUgcmVxYnVmcyBhbmQgY3JlYXRlX2J1ZnMKPiA+ID4gPiBp
b2N0bCBoYW5kbGVycyBzaG91bGQganVzdCBwb2ludCB0byB0aGUgY29ycmVzcG9uZGluZyB2aWRl
b2J1ZjIgaGVscGVycy4KPiA+ID4gPiAKPiA+ID4gPiBXaGF0IEkgbWVhbnQgaXMgdGhhdCBJJ2Qg
bGlrZSB0byBlbmNvdXJhZ2UgdXNlcnNwYWNlIHRvIHVzZSB0aGUKPiA+ID4gPiBWSURJT0NfQ1JF
QVRFX0JVRlMgaW9jdGwgaW5zdGVhZCBvZiBWSURJT0NfUkVRQlVGUy4KPiA+ID4gPiAKPiA+ID4g
Cj4gPiA+IEknbSBub3Qgc3VyZSB3aGF0IHJhdGlvbmFsZSBJIGNhbiBnaXZlIGltcGxlbWVudGVy
IHRvICJlbmNvdXJhZ2UiIHRoZW0gdG8gdXNlIGEKPiA+ID4gbW9yZSBjb21wbGV4IEFQSSB0aGF0
IG5lZWRzIHRvIGNvcHkgb3ZlciB0aGUgRk1UICh3aGljaCBoYXMganVzdCBiZWVuIHNldCksCj4g
PiA+IHNwZWNpYWxseSBpbiB0aGUgaW5pdGlhbCBwcmUtYWxsb2NhdGlvbiBjYXNlLiBGb3IgbW9z
dCwgQ1JFQVRFX0JVRlMgYWZ0ZXIgU01UCj4gPiA+IHdpbGwgbG9vayBsaWtlIGEgdmVyeSByZWR1
bmRhbnQgYW5kIGNvdW50ZXIgaW50dWl0aXZlIHRoaW5nLiBNYXliZSB5b3UgaGF2ZSBhCj4gPiA+
IG1vcmUgb3B0aW1pc3RpYyB2aWV3IG9uIHRoZSBtYXR0ZXIgPyBPciB5b3UgaGF2ZSBhIGJldHRl
ciBpZGVhIGhvdyB3ZSBjb3VsZCBnaXZlCj4gPiA+IGEgbWVhbmluZyB0byBoYXZpbmcgYSBmbXQg
dGhlcmUgb24gdGhlIGluaXRpYWwgY2FzZSB3aGVyZSB0aGUgYWxsb2NhdGlvbiBtYXRjaGVzCj4g
PiA+IHRoZSBxdWV1ZSBGTVQgPwo+ID4gCj4gPiBJIHdvdWxkbid0IG1pbmQgaWYgd2UgY2FuIG1h
a2UgYSBtdWNoIG5pY2VyIENSRUFURV9CVUZTIHZhcmlhbnQgd2l0aCBqdXN0IHRoZQo+ID4gc2l6
ZSBpbnN0ZWFkIG9mIGEgZm9ybWF0LiBUaGF0IHdhcyBpbiBoaW5kc2lnaHQgYSByZWFsbHkgYmFk
IGlkZWEsIHRlcnJpYmxlCj4gPiBvdmVyLWVuZ2luZWVyaW5nLgo+IAo+IE5vdGUgdGhhdCBhbGwg
RFJNIGFsbG9jYXRvcnMgYWxzbyBpbmNsdWRlcyB3aWR0aC9oZWlnaHQgYW5kIHNvbWUgZm9ybWF0
IHJlbGF0ZWQKPiBpbmZvIChvciB0aGUgZnVsbCBpbmZvKS4gVGhpcyBpcyBiZWNhdXNlIHRoZSBk
cml2ZXIgZGVhbHMgd2l0aCB0aGUgYWxpZ25tZW50Cj4gcmVxdWlyZW1lbnRzLiBJbiBzb21lIHVz
ZSBjYXNlcyAoSSBoYXZlIGludGVyIGZyYW1lIGR5bmFtaWMgY29udHJvbCBpbiBtaW5kCj4gaGVy
ZSkgdGhlIGZtdCBjb3VsZCBiZSBhIG1lYW4gdG8gZmVlZGJhY2sgdGhlIGFsaWdubWVudCAobGlr
ZSBieXRlc3BlcmxpbmUpIGJhY2sKPiB0byB0aGUgYXBwbGljYXRpb24gd2hlcmUgdGhlIHN0cmVh
bSBpcyBubyBsb25nZXIgaG9tb2dlbmVvdXMgb24gdGhlIEZNVC4KPiAKPiBUaGF0IGJlaW5nIHNh
aWQsIElmIHdlIG1vdmUgdG93YXJkIGEgc2l6ZSBiYXNlIGFsbG9jYXRvciBBUEksIHdlIGNvdWxk
IGFsc28ganVzdAo+IHBvaW50IGJhY2sgdG8gYW4gZXhpc3RpbmcgSEVBUCAob3IgZXhwb3J0IGFu
IG5ldyBoZWFwIGlmIG5vbmUgYXJlIHZhbGlkKS4gQW5kCj4gZGVmaW5lIHRoZSBzaXplaW1hZ2Uo
cykgaXMgbm93IHRoYXQgaW5mb3JtYXRpb24geW91IG5lZWQgZnJvbSB0aGUgRk1UIHRvCj4gYWxs
b2NhdGUgYW55dGhpbmcgKyB3aGljaCBoZWFwIG5lZWRzIHRvIGJlIHVzZWQgZm9yIHRoZSBjdXJy
ZW50IHNldHVwLgoKSWYgd2UgY291bGQgbW92ZSBhd2F5IGZyb20gYWxsb2NhdGluZyBidWZmZXJz
IHdpdGhpbiBWNEwyIHRvIG9ubHkKaW1wb3J0aW5nIGJ1ZmZlcnMgYWxsb2NhdGVkIHRocm91Z2gg
dGhlIERNQSBoZWFwcyBBUEksIEknZCBiZSB2ZXJ5CmhhcHB5LiBUaGF0IHdvbid0IGJlIHNpbXBs
ZSB0aG91Z2guIE1heWJlIGEgZ29vZCBjYW5kaWRhdGUgZm9yCmRpc2N1c3Npb25zIGR1cmluZyB0
aGUgbWVkaWEgc3VtbWl0IGluIFByYWd1ZSB0aGlzIHllYXIgPwoKLS0gClJlZ2FyZHMsCgpMYXVy
ZW50IFBpbmNoYXJ0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
