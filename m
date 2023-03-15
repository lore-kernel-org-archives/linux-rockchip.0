Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04B6AC61DA4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 13:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+e52bdckzhYBN8q/32z7STgGddMi8d0kxn5HCgBR9EQ=; b=MJ18Y0EoKHtzPL
	uEdQ69ZrzIbwrBAPivyUMvrFe9l1GIa2R6zA19/jsYeccFhemCC1PuAW1wTTliafzXQBoRAW4fL5p
	K+70wcLT3ojJNWni2TBncxWhN6uYwzkyfEfpgqJfzEaWDvMAnC8BY/wSPBvfVKQ03ba4ux02jz2hV
	y2MrwDhlouONAwY2uzDmIbpf+lTThIax0WWwAgZMJAq9s+uYzLgRTNssVBfB6yIkOdlZrOSf9QPrk
	92VFZq5z7uszCHsi0EblAjxZI0tiMmB2tdWIXKNE0QuEAqpmhCh6PPrm6gBRKMtxR/pzWqfXuDpch
	BOQLpygnj+fK2C1TiEHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcRdw-00DXWD-2R;
	Wed, 15 Mar 2023 13:58:16 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcRds-00DXTi-1V;
	Wed, 15 Mar 2023 13:58:13 +0000
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net [192.222.136.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6ACC0660304F;
	Wed, 15 Mar 2023 13:58:01 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1678888684;
	bh=uJqR7EssC//Fq/VnhmhfKuiFmnGhoDw1Z52cTcjrpVU=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=Ma4KyOxNTTffxcyxbnl1X2J+7Njd+LaQyivOPbIi6i+utwTW50beH5GMWO2sQSOcB
	 maGk7KOVzQf+8PxfTlIcLEvrEu7qH6OJof9IPsgUINsvhrQCO2XCZcNRRHjLrIilpI
	 sAOTs/7Hc6bmwrKlI5yw62hpBlPQ/V3KyuNnNUDdQ9bepJbGuEl0NYoddDzcBVhxvf
	 ij2wB4847oUulw25PblhthMc4tXZH53bjlsDQzsgJq69DBbbLhxYyMHfpfSWd49ERi
	 RFknrqq/TSXIca/wf91CIwIweWGRP5V98MBRZV8AG/2Glgp3z161dtCCnRrSSAQG8q
	 Tj1xEQbRrt7WA==
Message-ID: <bdade438cd93230daa47ee48eafab60f65cd4224.camel@collabora.com>
Subject: Re: [RFC 2/4] media: videobuf2: Replace bufs array by a list
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Benjamin Gaignard
	 <benjamin.gaignard@collabora.com>
Cc: tfiga@chromium.org, m.szyprowski@samsung.com, mchehab@kernel.org, 
 ming.qian@nxp.com, shijie.qin@nxp.com, eagle.zhou@nxp.com,
 bin.liu@mediatek.com,  matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com,  tiffany.lin@mediatek.com,
 andrew-ct.chen@mediatek.com, yunfei.dong@mediatek.com, 
 stanimir.k.varbanov@gmail.com, quic_vgarodia@quicinc.com,
 agross@kernel.org,  andersson@kernel.org, konrad.dybcio@linaro.org,
 ezequiel@vanguardiasur.com.ar,  p.zabel@pengutronix.de,
 daniel.almeida@collabora.com, hverkuil-cisco@xs4all.nl,  jerbel@kernel.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 kernel@collabora.com
Date: Wed, 15 Mar 2023 09:57:51 -0400
In-Reply-To: <20230313181155.GC22646@pendragon.ideasonboard.com>
References: <20230313135916.862852-1-benjamin.gaignard@collabora.com>
	 <20230313135916.862852-3-benjamin.gaignard@collabora.com>
	 <20230313181155.GC22646@pendragon.ideasonboard.com>
User-Agent: Evolution 3.46.3 (3.46.3-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_065812_654013_AA26A28D 
X-CRM114-Status: GOOD (  13.36  )
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

TGUgbHVuZGkgMTMgbWFycyAyMDIzIMOgIDIwOjExICswMjAwLCBMYXVyZW50IFBpbmNoYXJ0IGEg
w6ljcml0wqA6Cj4gPiAtCS8qIEVuc3VyZSB0aGF0IHEtPm51bV9idWZmZXJzK251bV9idWZmZXJz
IGlzIGJlbG93IFZCMl9NQVhfRlJBTUUgKi8KPiA+IC0JbnVtX2J1ZmZlcnMgPSBtaW5fdCh1bnNp
Z25lZCBpbnQsIG51bV9idWZmZXJzLAo+ID4gLQkJCcKgwqDCoCBWQjJfTUFYX0ZSQU1FIC0gcS0+
bnVtX2J1ZmZlcnMpOwo+ID4gLQo+IAo+IFdlIGNhbiBpbmRlZWQgZHJvcCB0aGlzIGNoZWNrIG5v
dywgYnV0IHNob3VsZG4ndCB3ZSBpbnRyb2R1Y2Ugc29tZSBraW5kCj4gb2YgcmVzb3VyY2UgYWNj
b3VudGluZyBhbmQgbGltaXRhdGlvbiA/IE90aGVyd2lzZSBhbnkgdW5wcml2aWxlZGdlZAo+IHVz
ZXJzcGFjZSB3aWxsIGJlIGFibGUgdG8gc3RhcnZlIHN5c3RlbSBtZW1vcnkuIFRoaXMgY291bGQg
YmUKPiBpbXBsZW1lbnRlZCBvbiB0b3AsIGFzIHRoZSBwcm9ibGVtIGxhcmdlbHkgZXhpc3RzIHRv
ZGF5IGFscmVhZHksIGJ1dCBJJ2QKPiBsaWtlIHRvIGF0IGxlYXN0IHJlY29yZCB0aGlzIGluIGEg
VE9ETyBjb21tZW50LgoKVGhlIGN1cnJlbnQgbGltaXQgYWxyZWFkeSBpc24ndCB3b3JrIGZvciBy
ZXNvdXJjZSBhY2NvdW50aW5nIGFuZCBsaW1pdGF0aW9uIGZvcgptMm0gZHJpdmVycy4gWW91IGNh
biBvcGVuIGEgZGV2aWNlLCBhbGxvY2F0ZSAzMiBidWZmZXJzLCBhbmQgY2xvc2UgdGhhdCBkZXZp
Y2UKa2VlcGluZyB0aGUgbWVtb3J5IGFyb3VuZC4gQW5kIHJlZG8gdGhpcyBwcm9jZXNzIGFzIG1h
bnkgdGltZXMgYXMgeW91IHdhbnQuCgpBIFRPRE8gaXMgbW9zdCBhcHByb3ByaWF0ZSwgYnV0IEkg
d291bGQgcHJlZmVyIHRvIHNlZSB0aGlzIGRvbmUgYXQgYSBtZW1vcnkKbGF5ZXIgbGV2ZWwgKHJh
dGhlciB0aGVuIHY0bDIgc3BlY2lmaWMpLCBzbyB0aGF0IGxpbWl0cyBhbmQgYWNjb3VudGluZyB3
b3Jrcwp3aXRoIGNvbnRhaW5lcnMgYW5kIG90aGVyIHNhbmRib3hlcy4KCj4gCj4gSSBhbHNvIHdv
bmRlciBpZiB3ZSBzaG91bGQgc3RpbGwgbGltaXQgdGhlIG51bWJlciBvZiBhbGxvY2F0ZWQgYnVm
ZmVycy4KPiBUaGUgbGltaXQgY291bGQgYmUgbGFyZ2UsIGZvciBpbnN0YW5jZSAxMDI0IGJ1ZmZl
cnMsIGFuZCBpdCB3b3VsZCBiZSBhbgo+IGluLWtlcm5lbCBsaW1pdCB0aGF0IGNvdWxkIGJlIGlu
Y3JlYXNlZCBsYXRlciBpZiBuZWVkZWQuIEknbSBjb25jZXJuZWQKPiB0aGF0IGRyb3BwaW5nIHRo
ZSBsaW1pdCBjb21wbGV0ZWx5IHdpbGwgYWxsb3cgdXNlcnNwYWNlIHRvIHJlcXVlc3QKPiBVSU5U
X01BWCBidWZmZXJzLCB3aGljaCBtYXkgY2F1c2UgaW50ZWdlciBvdmVyZmxvd3Mgc29tZXdoZXJl
LiBMaW1pdGluZwo+IHRoZSBudW1iZXIgb2YgYnVmZmVycyB3b3VsZCBhdm9pZCBleHRlbnNpdmUg
cmV2aWV3IG9mIGFsbCB0aGUgY29kZSB0aGF0Cj4gZGVhbHMgd2l0aCBjb3VudGluZyBidWZmZXJz
LgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
