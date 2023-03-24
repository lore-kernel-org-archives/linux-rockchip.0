Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 265A9C76196
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Mar 2023 15:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/dlPEaTaAo0N6jDIJXub3nQB53+ijNpdvmC+WgpQZYQ=; b=NdMpev9DChYaaw
	cpYeXDhpo2Q7tBhIh0BZYiYI/X+zYLRzgUmAa6hoVjqRHqJrSxOOnLHeFPCRwQSSGiRaQIIklhm1H
	2BMGTGdw2aEmfFntmnC/3uh1n1eTFJxM9+ggQKddn6qu2CwSIRVTIJlgCLtG/yKrS0fFQrWFpmKG/
	O6k8ETUY83/86CHjUv/m65FjDOvvUnXLiZLi+RMpqj4Uv9MHBWwM3h+Rw2UZIcT7/M2sixOWwmWNg
	QMRwoYBmE5c99gTwrsSa+UcWlW3UXrTf1Kp9/LlNeutsQA6Duur5z8ICRw0w5n0CHXN0wEfqAHaZ8
	7bv9lKfsTSjR69ezwt6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfjBP-004owb-0H;
	Fri, 24 Mar 2023 15:18:23 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfjBK-004oub-2G;
	Fri, 24 Mar 2023 15:18:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 32CE3B824F3;
	Fri, 24 Mar 2023 15:18:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6113C433D2;
	Fri, 24 Mar 2023 15:18:10 +0000 (UTC)
Message-ID: <68ba7b3f-57f5-3969-5036-2c8d08273548@xs4all.nl>
Date: Fri, 24 Mar 2023 16:18:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [RFC 2/4] media: videobuf2: Replace bufs array by a list
Content-Language: en-US
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: David Laight <David.Laight@ACULAB.COM>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 "tfiga@chromium.org" <tfiga@chromium.org>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "ming.qian@nxp.com" <ming.qian@nxp.com>,
 "shijie.qin@nxp.com" <shijie.qin@nxp.com>,
 "eagle.zhou@nxp.com" <eagle.zhou@nxp.com>,
 "bin.liu@mediatek.com" <bin.liu@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "angelogioacchino.delregno@collabora.com"
 <angelogioacchino.delregno@collabora.com>,
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
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "kernel@collabora.com" <kernel@collabora.com>
References: <20230313135916.862852-1-benjamin.gaignard@collabora.com>
 <20230313135916.862852-3-benjamin.gaignard@collabora.com>
 <20230313181155.GC22646@pendragon.ideasonboard.com>
 <86df05244d974416903e919d387a0a0b@AcuMS.aculab.com>
 <e704b505-86d8-c6f2-8546-adccdab72622@xs4all.nl>
 <dc04d48e34ed40e58f43badd001a81d0@AcuMS.aculab.com>
 <cbf34cf1-e065-8136-8344-89ca1864f637@xs4all.nl>
 <20230319233358.GD20234@pendragon.ideasonboard.com>
 <f085aa9225c573df906bdc7ff032a8fd591b18b3.camel@ndufresne.ca>
 <20230322150153.GO20234@pendragon.ideasonboard.com>
 <2d6480e36ce061a63440d1e11d52b02e57ba746d.camel@ndufresne.ca>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <2d6480e36ce061a63440d1e11d52b02e57ba746d.camel@ndufresne.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_081819_052129_2EA3AEAF 
X-CRM114-Status: GOOD (  21.96  )
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

T24gMjQvMDMvMjAyMyAxNjoxNCwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPiBMZSBtZXJjcmVk
aSAyMiBtYXJzIDIwMjMgw6AgMTc6MDEgKzAyMDAsIExhdXJlbnQgUGluY2hhcnQgYSDDqWNyaXTC
oDoKPj4gT24gV2VkLCBNYXIgMjIsIDIwMjMgYXQgMTA6NTA6NTJBTSAtMDQwMCwgTmljb2xhcyBE
dWZyZXNuZSB3cm90ZToKPj4+IEhpIExhdXJlbnQsCj4+Pgo+Pj4gTGUgbHVuZGkgMjAgbWFycyAy
MDIzIMOgIDAxOjMzICswMjAwLCBMYXVyZW50IFBpbmNoYXJ0IGEgw6ljcml0wqA6Cj4+Pj4+IFRo
ZSB0eXBpY2FsIHVzYWdlIGlzIHRoYXQgYXBwbGljYXRpb25zIGFsbG9jYXRlIE4gYnVmZmVycyB3
aXRoIHRoZQo+Pj4+PiBWSURJT0NfUkVRQlVGUyBpb2N0bCwgYW5kIGluIG1vc3QgY2FzZXMgdGhh
dCdzIGFsbCB0aGV5IHVzZS4KPj4+Pgo+Pj4+IE5vdGUgdGhhdCBvbmNlIHdlIGdldCBERUxFVEVf
QlVGIChvciBERUxFVEVfQlVGUykgc3VwcG9ydCBJJ2QgbGlrZSB0bwo+Pj4+IGVuY291cmFnZSBh
cHBsaWNhdGlvbnMgdG8gdXNlIHRoZSBuZXcgQVBJLCBhbmQgZGVwcmVjYXRlIFJFUUJVRlMKPj4+
PiAoZHJvcHBpbmcgaXQgaXNuJ3Qgb24gbXkgcmFkYXIsIGFzIGl0IHdvdWxkIHRha2UgZm9yZXZl
ciBiZWZvcmUgbm8KPj4+PiB1c2Vyc3BhY2UgdXNlcyBpdCBhbnltb3JlKS4KPj4+Cj4+PiBJIHdh
cyB3b25kZXJpbmcgaWYgeW91IGNhbiBleHRlbmQgb24gdGhpcy4gSSdtIHdvcnJpZWQgdGhlIGNv
dW50IHNlbWFudGljIG1pZ2h0Cj4+PiBwcmV2ZW50IGVtdWxhdGluZyBpdCBvdmVyIGNyZWF0ZV9i
dWZzKCkgb3BzLCBidXQgaWYgdGhhdCB3b3JrcywgZGlkIHlvdSBtZWFudCB0bwo+Pj4gZW11bGF0
ZSBpdCBzbyBkcml2ZXIgbm8gbG9uZ2VyIGhhdmUgdG8gaW1wbGVtZW50IHJlcWJ1ZnMoKSBpZiB0
aGV5IGhhdmUKPj4+IGNyZWF0ZV9idWZzKCkgPwo+Pgo+PiBGb3IgZHJpdmVycyBpdCBzaG91bGQg
YmUgZmFpcmx5IHNpbXBseSwgYXMgdGhlIHJlcWJ1ZnMgYW5kIGNyZWF0ZV9idWZzCj4+IGlvY3Rs
IGhhbmRsZXJzIHNob3VsZCBqdXN0IHBvaW50IHRvIHRoZSBjb3JyZXNwb25kaW5nIHZpZGVvYnVm
MiBoZWxwZXJzLgo+Pgo+PiBXaGF0IEkgbWVhbnQgaXMgdGhhdCBJJ2QgbGlrZSB0byBlbmNvdXJh
Z2UgdXNlcnNwYWNlIHRvIHVzZSB0aGUKPj4gVklESU9DX0NSRUFURV9CVUZTIGlvY3RsIGluc3Rl
YWQgb2YgVklESU9DX1JFUUJVRlMuCj4+Cj4gCj4gSSdtIG5vdCBzdXJlIHdoYXQgcmF0aW9uYWxl
IEkgY2FuIGdpdmUgaW1wbGVtZW50ZXIgdG8gImVuY291cmFnZSIgdGhlbSB0byB1c2UgYQo+IG1v
cmUgY29tcGxleCBBUEkgdGhhdCBuZWVkcyB0byBjb3B5IG92ZXIgdGhlIEZNVCAod2hpY2ggaGFz
IGp1c3QgYmVlbiBzZXQpLAo+IHNwZWNpYWxseSBpbiB0aGUgaW5pdGlhbCBwcmUtYWxsb2NhdGlv
biBjYXNlLiBGb3IgbW9zdCwgQ1JFQVRFX0JVRlMgYWZ0ZXIgU01UCj4gd2lsbCBsb29rIGxpa2Ug
YSB2ZXJ5IHJlZHVuZGFudCBhbmQgY291bnRlciBpbnR1aXRpdmUgdGhpbmcuIE1heWJlIHlvdSBo
YXZlIGEKPiBtb3JlIG9wdGltaXN0aWMgdmlldyBvbiB0aGUgbWF0dGVyID8gT3IgeW91IGhhdmUg
YSBiZXR0ZXIgaWRlYSBob3cgd2UgY291bGQgZ2l2ZQo+IGEgbWVhbmluZyB0byBoYXZpbmcgYSBm
bXQgdGhlcmUgb24gdGhlIGluaXRpYWwgY2FzZSB3aGVyZSB0aGUgYWxsb2NhdGlvbiBtYXRjaGVz
Cj4gdGhlIHF1ZXVlIEZNVCA/CgpJIHdvdWxkbid0IG1pbmQgaWYgd2UgY2FuIG1ha2UgYSBtdWNo
IG5pY2VyIENSRUFURV9CVUZTIHZhcmlhbnQgd2l0aCBqdXN0IHRoZQpzaXplIGluc3RlYWQgb2Yg
YSBmb3JtYXQuIFRoYXQgd2FzIGluIGhpbmRzaWdodCBhIHJlYWxseSBiYWQgaWRlYSwgdGVycmli
bGUKb3Zlci1lbmdpbmVlcmluZy4KClJlZ2FyZHMsCgoJSGFucwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
