Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F15CC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Mar 2023 15:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+EsJ8ctbFvDDcsaFEXARoB2tikjQp3/XMO+Z8SYA51A=; b=CF7tuw10PpL4Sm
	hTqa/6ReuB0ettibHJuL9v+vSpn3pe1HsqChDI0HxlE6vcWzePmy+b6/WT3cjxKxKyoXFlBKTp9v/
	dNZHtXm3BCQt/nXNRck5IzIqM0Rjrv3Wyi9hT+rZrWenesV9jxUqfz2/Q2ctRfBHyZnvSG0tgASvt
	03eXm1sc+MdCxCkuEmxzv08w7DLlXJuObYF+haCkIvanhIZ6+LhmpHi9aq/scM3Gm1lLWiNU/ydWw
	OVtLR++qdUtG2i+aBNAtcYIOfgTI1f9CJaiXs4I7iht3dNUMoscGpGTw5Tz+iqtOofP+xI06eki6v
	b9ljwz0S3Cinb2u5N/yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pezyN-00GPy4-2a;
	Wed, 22 Mar 2023 15:01:55 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pezyJ-00GPw6-0G;
	Wed, 22 Mar 2023 15:01:52 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5B113BC1;
	Wed, 22 Mar 2023 16:01:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1679497307;
	bh=Az9CmcJ+XBb4olbWe91Aj3r8+M/Mn03lE84beJHYWcQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WKXlws0YL/fxPG1M5ZQGaWla8QrHlrOYNJMXI2o/UFolpE4TobnpdShV9cjraTqeO
	 MwA6homUVXpEZ5ca7dTz/vAQQhQlSiv7sA8a4cprGocH5iNqqFk8jBFOGn1mJ3u5mP
	 wimrpwmLpPfLk6YPVwEV2dY/f3itqV+8uUElZbK8=
Date: Wed, 22 Mar 2023 17:01:53 +0200
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
Message-ID: <20230322150153.GO20234@pendragon.ideasonboard.com>
References: <20230313135916.862852-1-benjamin.gaignard@collabora.com>
 <20230313135916.862852-3-benjamin.gaignard@collabora.com>
 <20230313181155.GC22646@pendragon.ideasonboard.com>
 <86df05244d974416903e919d387a0a0b@AcuMS.aculab.com>
 <e704b505-86d8-c6f2-8546-adccdab72622@xs4all.nl>
 <dc04d48e34ed40e58f43badd001a81d0@AcuMS.aculab.com>
 <cbf34cf1-e065-8136-8344-89ca1864f637@xs4all.nl>
 <20230319233358.GD20234@pendragon.ideasonboard.com>
 <f085aa9225c573df906bdc7ff032a8fd591b18b3.camel@ndufresne.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f085aa9225c573df906bdc7ff032a8fd591b18b3.camel@ndufresne.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_080151_286963_7A9A7186 
X-CRM114-Status: GOOD (  16.04  )
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

T24gV2VkLCBNYXIgMjIsIDIwMjMgYXQgMTA6NTA6NTJBTSAtMDQwMCwgTmljb2xhcyBEdWZyZXNu
ZSB3cm90ZToKPiBIaSBMYXVyZW50LAo+IAo+IExlIGx1bmRpIDIwIG1hcnMgMjAyMyDDoCAwMToz
MyArMDIwMCwgTGF1cmVudCBQaW5jaGFydCBhIMOpY3JpdMKgOgo+ID4gPiBUaGUgdHlwaWNhbCB1
c2FnZSBpcyB0aGF0IGFwcGxpY2F0aW9ucyBhbGxvY2F0ZSBOIGJ1ZmZlcnMgd2l0aCB0aGUKPiA+
ID4gVklESU9DX1JFUUJVRlMgaW9jdGwsIGFuZCBpbiBtb3N0IGNhc2VzIHRoYXQncyBhbGwgdGhl
eSB1c2UuCj4gPiAKPiA+IE5vdGUgdGhhdCBvbmNlIHdlIGdldCBERUxFVEVfQlVGIChvciBERUxF
VEVfQlVGUykgc3VwcG9ydCBJJ2QgbGlrZSB0bwo+ID4gZW5jb3VyYWdlIGFwcGxpY2F0aW9ucyB0
byB1c2UgdGhlIG5ldyBBUEksIGFuZCBkZXByZWNhdGUgUkVRQlVGUwo+ID4gKGRyb3BwaW5nIGl0
IGlzbid0IG9uIG15IHJhZGFyLCBhcyBpdCB3b3VsZCB0YWtlIGZvcmV2ZXIgYmVmb3JlIG5vCj4g
PiB1c2Vyc3BhY2UgdXNlcyBpdCBhbnltb3JlKS4KPiAKPiBJIHdhcyB3b25kZXJpbmcgaWYgeW91
IGNhbiBleHRlbmQgb24gdGhpcy4gSSdtIHdvcnJpZWQgdGhlIGNvdW50IHNlbWFudGljIG1pZ2h0
Cj4gcHJldmVudCBlbXVsYXRpbmcgaXQgb3ZlciBjcmVhdGVfYnVmcygpIG9wcywgYnV0IGlmIHRo
YXQgd29ya3MsIGRpZCB5b3UgbWVhbnQgdG8KPiBlbXVsYXRlIGl0IHNvIGRyaXZlciBubyBsb25n
ZXIgaGF2ZSB0byBpbXBsZW1lbnQgcmVxYnVmcygpIGlmIHRoZXkgaGF2ZQo+IGNyZWF0ZV9idWZz
KCkgPwoKRm9yIGRyaXZlcnMgaXQgc2hvdWxkIGJlIGZhaXJseSBzaW1wbHksIGFzIHRoZSByZXFi
dWZzIGFuZCBjcmVhdGVfYnVmcwppb2N0bCBoYW5kbGVycyBzaG91bGQganVzdCBwb2ludCB0byB0
aGUgY29ycmVzcG9uZGluZyB2aWRlb2J1ZjIgaGVscGVycy4KCldoYXQgSSBtZWFudCBpcyB0aGF0
IEknZCBsaWtlIHRvIGVuY291cmFnZSB1c2Vyc3BhY2UgdG8gdXNlIHRoZQpWSURJT0NfQ1JFQVRF
X0JVRlMgaW9jdGwgaW5zdGVhZCBvZiBWSURJT0NfUkVRQlVGUy4KCi0tIApSZWdhcmRzLAoKTGF1
cmVudCBQaW5jaGFydAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
