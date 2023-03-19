Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A078DC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Mar 2023 23:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BkHD2cPHhRcQGnwxbeOma5AHOs/zxeQAMfnzXRwdXeM=; b=Pl4pA41Oxlotma
	asbm5fR+AtOhQu55gJNIY+naR/pEGD3rNdj8ifRBqwbUw/IGCxQHKDliq20FRN3cqZiOQnpbsmQ9e
	UMrxd79WGCqtCeyOWLlHy4MqB4dbCc9n9baXcSctYCpZjBhCviEDWVj1vkJ4g0xwQp7clQcmaP6Kq
	hrAhMoK32fR2qiFCzfvuNPnWg51EGcDTlXGKaVJWYZK1lZ05UzcWZSCSZdrItJxh0kfgi2cOTQcPC
	xJ+nNTc9qQb9uIEtCa1WfO8+Fo9bTg3vG0jSHISksZT1Is0ExNns/BhwesjxudCOnR043ENJNa2VY
	V+ygn9MT9CJbKMfLjf8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pe2XD-007eHG-0O;
	Sun, 19 Mar 2023 23:33:55 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pe2X9-007eFD-0b;
	Sun, 19 Mar 2023 23:33:52 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 261C41373;
	Mon, 20 Mar 2023 00:33:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1679268826;
	bh=rfehHzT0nNC1C/6Q8HysuOgzvRnx3AnZ/cu68zcvIDo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AbjSS6ayXnuqLhNWp/mlyDEibEroimNo5524LDllyl+5l8OTzNL+N19fuRaa8JOkQ
	 /hMzNTpPDQoaW3ugi1qphNNqEpCX2hp2/Y5dXcqu1UBXKiQrXaiUGLpXnhZwk/4asE
	 cZfZf5l6VdSz+htrDT2WABZRId7PHRBwC2VQMVbw=
Date: Mon, 20 Mar 2023 01:33:52 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, tfiga@chromium.org,
	m.szyprowski@samsung.com, mchehab@kernel.org, ming.qian@nxp.com,
	shijie.qin@nxp.com, eagle.zhou@nxp.com, bin.liu@mediatek.com,
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com,
	tiffany.lin@mediatek.com, andrew-ct.chen@mediatek.com,
	yunfei.dong@mediatek.com, stanimir.k.varbanov@gmail.com,
	quic_vgarodia@quicinc.com, agross@kernel.org, andersson@kernel.org,
	konrad.dybcio@linaro.org, ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de, daniel.almeida@collabora.com,
	hverkuil-cisco@xs4all.nl, jerbel@kernel.org,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [RFC 2/4] media: videobuf2: Replace bufs array by a list
Message-ID: <20230319233352.GC20234@pendragon.ideasonboard.com>
References: <20230313135916.862852-1-benjamin.gaignard@collabora.com>
 <20230313135916.862852-3-benjamin.gaignard@collabora.com>
 <20230313181155.GC22646@pendragon.ideasonboard.com>
 <bdade438cd93230daa47ee48eafab60f65cd4224.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bdade438cd93230daa47ee48eafab60f65cd4224.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_163351_378212_7DF1F0EF 
X-CRM114-Status: GOOD (  21.82  )
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

T24gV2VkLCBNYXIgMTUsIDIwMjMgYXQgMDk6NTc6NTFBTSAtMDQwMCwgTmljb2xhcyBEdWZyZXNu
ZSB3cm90ZToKPiBMZSBsdW5kaSAxMyBtYXJzIDIwMjMgw6AgMjA6MTEgKzAyMDAsIExhdXJlbnQg
UGluY2hhcnQgYSDDqWNyaXTCoDoKPiA+ID4gLQkvKiBFbnN1cmUgdGhhdCBxLT5udW1fYnVmZmVy
cytudW1fYnVmZmVycyBpcyBiZWxvdyBWQjJfTUFYX0ZSQU1FICovCj4gPiA+IC0JbnVtX2J1ZmZl
cnMgPSBtaW5fdCh1bnNpZ25lZCBpbnQsIG51bV9idWZmZXJzLAo+ID4gPiAtCQkJwqDCoMKgIFZC
Ml9NQVhfRlJBTUUgLSBxLT5udW1fYnVmZmVycyk7Cj4gPiA+IC0KPiA+IAo+ID4gV2UgY2FuIGlu
ZGVlZCBkcm9wIHRoaXMgY2hlY2sgbm93LCBidXQgc2hvdWxkbid0IHdlIGludHJvZHVjZSBzb21l
IGtpbmQKPiA+IG9mIHJlc291cmNlIGFjY291bnRpbmcgYW5kIGxpbWl0YXRpb24gPyBPdGhlcndp
c2UgYW55IHVucHJpdmlsZWRnZWQKPiA+IHVzZXJzcGFjZSB3aWxsIGJlIGFibGUgdG8gc3RhcnZl
IHN5c3RlbSBtZW1vcnkuIFRoaXMgY291bGQgYmUKPiA+IGltcGxlbWVudGVkIG9uIHRvcCwgYXMg
dGhlIHByb2JsZW0gbGFyZ2VseSBleGlzdHMgdG9kYXkgYWxyZWFkeSwgYnV0IEknZAo+ID4gbGlr
ZSB0byBhdCBsZWFzdCByZWNvcmQgdGhpcyBpbiBhIFRPRE8gY29tbWVudC4KPiAKPiBUaGUgY3Vy
cmVudCBsaW1pdCBhbHJlYWR5IGlzbid0IHdvcmsgZm9yIHJlc291cmNlIGFjY291bnRpbmcgYW5k
IGxpbWl0YXRpb24gZm9yCj4gbTJtIGRyaXZlcnMuIFlvdSBjYW4gb3BlbiBhIGRldmljZSwgYWxs
b2NhdGUgMzIgYnVmZmVycywgYW5kIGNsb3NlIHRoYXQgZGV2aWNlCj4ga2VlcGluZyB0aGUgbWVt
b3J5IGFyb3VuZC4gQW5kIHJlZG8gdGhpcyBwcm9jZXNzIGFzIG1hbnkgdGltZXMgYXMgeW91IHdh
bnQuCgpJIGtub3csIHRoYXQncyB3aHkgSSBtZW50aW9uZWQgdGhhdCB0aGUgcHJvYmxlbSBsYXJn
ZWx5IGV4aXN0cyB0b2RheQphbHJlYWR5LgoKPiBBIFRPRE8gaXMgbW9zdCBhcHByb3ByaWF0ZSwg
YnV0IEkgd291bGQgcHJlZmVyIHRvIHNlZSB0aGlzIGRvbmUgYXQgYSBtZW1vcnkKPiBsYXllciBs
ZXZlbCAocmF0aGVyIHRoZW4gdjRsMiBzcGVjaWZpYyksIHNvIHRoYXQgbGltaXRzIGFuZCBhY2Nv
dW50aW5nIHdvcmtzCj4gd2l0aCBjb250YWluZXJzIGFuZCBvdGhlciBzYW5kYm94ZXMuCgpJIGhh
dmVuJ3QgdGhvdWdodCBhYm91dCBob3cgdGhpcyBjb3VsZCBiZSBpbXBsZW1lbnRlZCwgYWxsIEkg
a25vdyBpcwp0aGF0IGl0J3MgYWJvdXQgdGltZSB0byB0YWNrbGUgdGhpcyBpc3N1ZSwgc28gSSB3
b3VsZCBsaWtlIHRvIGF0IGxlYXN0CnJlY29yZCBpdC4KCj4gPiBJIGFsc28gd29uZGVyIGlmIHdl
IHNob3VsZCBzdGlsbCBsaW1pdCB0aGUgbnVtYmVyIG9mIGFsbG9jYXRlZCBidWZmZXJzLgo+ID4g
VGhlIGxpbWl0IGNvdWxkIGJlIGxhcmdlLCBmb3IgaW5zdGFuY2UgMTAyNCBidWZmZXJzLCBhbmQg
aXQgd291bGQgYmUgYW4KPiA+IGluLWtlcm5lbCBsaW1pdCB0aGF0IGNvdWxkIGJlIGluY3JlYXNl
ZCBsYXRlciBpZiBuZWVkZWQuIEknbSBjb25jZXJuZWQKPiA+IHRoYXQgZHJvcHBpbmcgdGhlIGxp
bWl0IGNvbXBsZXRlbHkgd2lsbCBhbGxvdyB1c2Vyc3BhY2UgdG8gcmVxdWVzdAo+ID4gVUlOVF9N
QVggYnVmZmVycywgd2hpY2ggbWF5IGNhdXNlIGludGVnZXIgb3ZlcmZsb3dzIHNvbWV3aGVyZS4g
TGltaXRpbmcKPiA+IHRoZSBudW1iZXIgb2YgYnVmZmVycyB3b3VsZCBhdm9pZCBleHRlbnNpdmUg
cmV2aWV3IG9mIGFsbCB0aGUgY29kZSB0aGF0Cj4gPiBkZWFscyB3aXRoIGNvdW50aW5nIGJ1ZmZl
cnMuCj4gCgotLSAKUmVnYXJkcywKCkxhdXJlbnQgUGluY2hhcnQKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
