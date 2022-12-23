Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E347C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Dec 2022 07:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LN56RESPnUfe42le7DUtAIro0y9DmsgAPna8OEkwLcA=; b=jFVvqqSOmVwyK1
	J652CYAHlsCgz8csu/0DMAsLQX2dPrVb6inQtxLTsW6IYtIcbS68ajvtFoJFaaS4DuCT4MZ8sNNYL
	vaMK642a0+uVD4zXpj8mF9yth/yDZCcR12F88ZCQE35FYTvt3Ppr1FsNn7Qx+ptN2DomFeSKQJ/Nj
	JxZ/g+OvSrenXFImCKHW+qXRw7Gq8TQUfyxzSpFGtJlJOd5WYK37IUg5FoQ7W4EJoiLFmUdfjQoLq
	GQekevoYsH43yC9BVjwns3nXHAY54HT4u6FPDdh6PQqd/qfXg8hLeOEMp7K+oLSwDPThNP/npqdOi
	IlSxfIJBdMbqkAUOg8KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8yy9-00FzJO-Cs; Sat, 24 Dec 2022 07:29:21 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8rL3-00Cvck-K3; Fri, 23 Dec 2022 23:20:30 +0000
Received: from [IPv6:2804:14d:72b4:8284:32a8:8167:f815:2895] (unknown [IPv6:2804:14d:72b4:8284:32a8:8167:f815:2895])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: dwlsalmeida)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B54FE6602C2E;
	Fri, 23 Dec 2022 23:20:23 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671837627;
	bh=G4pm6jA9V9AVhYNVaCCN3JOos9BOTi5byDHnIfA0tRY=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=Y8fKRZKrqPXVaDIxWwpek2JxmsNNFXfNpITkSukMyQpz8dhEqLOXxULmWCgeH00Ac
	 21FMlWUBcTtqUaDKAo3YX/enmzp/dsmGGHetes11THJu0rUyYCf1ZwLHCAxxGv9UB9
	 zdHdOlJfQiKYij0opVzbOwshsW8wKz1qCOTbHCVv5nTj3hcU2NSLfeWnb8CzoPVENs
	 WlP6CG7ddGR/+9jyNutgq7OeMCSobDpvMj5IyVMSGYp4Vj3RkVFIVKUuliBv7Tfqzq
	 BsegJgYLgXiYOk9hFpX7F0wcsKxlE0fuhHI1GoTHUdBcnaV21pwlawi4zukZFmN3/1
	 ylJgNRyUnOHfQ==
Message-ID: <e67149df1e72ccdaf7e9f51a0b2f81ac6602bfa2.camel@collabora.com>
Subject: Re: [PATCH v1 7/9] media: verisilicon: Add Rockchip AV1 decoder
From: Daniel Almeida <daniel.almeida@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Nicolas Dufresne
 <nicolas@ndufresne.ca>, ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de,  mchehab@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org,  heiko@sntech.de,
 nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Fri, 23 Dec 2022 20:20:10 -0300
In-Reply-To: <cb95838c835aa91cd69e7067c8a3b747f89d2e95.camel@collabora.com>
References: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
	 <20221219155616.848690-8-benjamin.gaignard@collabora.com>
	 <092f76873a914c52c5157a21401be6cf78e3f188.camel@ndufresne.ca>
	 <be1ff517-765d-c97f-8cce-3f359cd0015c@collabora.com>
	 <4afdce546b2f10cf97e12f8325232483efeea1ce.camel@ndufresne.ca>
	 <d7025e7e-246f-a7f4-f0b5-d1290a38a96c@collabora.com>
	 <cb95838c835aa91cd69e7067c8a3b747f89d2e95.camel@collabora.com>
User-Agent: Evolution 3.46.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_152029_819595_CD8D4862 
X-CRM114-Status: GOOD (  13.73  )
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

QWgsIEkgd2FzIHRvbyBxdWljayBvbiB0aGF0IGFuc3dlciA6LwoKSSBzZWUgdGhhdCB0aGV5IGhh
dmUgUkVGU19QRVJfRlJBTUUgKDcpLCBUT1RBTF9SRUZTX1BFUl9GUkFNRSAoOCkgX2FuZF8KTlVN
X1JFRl9GUkFNRVMgKDgpLCBpbiB3aGljaCBjYXNlIGl0IGlzIHJlZHVuZGFudCBpbmRlZWQuIEkg
d2lsbCByZW1vdmUKdGhhdCBvbiB2NC4KCi0tIERhbmllbAoKT24gRnJpLCAyMDIyLTEyLTIzIGF0
IDIwOjE1IC0wMzAwLCBEYW5pZWwgQWxtZWlkYSB3cm90ZToKPiA+ID4gK8KgwqDCoMKgwqDCoMKg
aW50IGN1cl9vZmZzZXRbVjRMMl9BVjFfTlVNX1JFRl9GUkFNRVMgLSAxXTsKPiA+ID4gK8KgwqDC
oMKgwqDCoMKgaW50IGN1cl9yb2Zmc2V0W1Y0TDJfQVYxX05VTV9SRUZfRlJBTUVTIC0gMV07Cj4g
PiAKPiA+IFRoaXMgbG9va3MgbGlrZSBWNEwyX0FWMV9SRUZTX1BFUl9GUkFNRS4gRGFuaWVsLCBz
aG91bGQgYmUgcmVtb3ZlCj4gPiB0aGlzCj4gPiBWNEwyX0FWMV9OVU1fUkVGX0ZSQU1FUyA/IEl0
cyByZWR1bmRhbnQgd2l0aAo+ID4gVjRMMl9BVjFfVE9UQUxfUkVGU19QRVJfRlJBTUUgLi4uCj4g
Cj4gSGkuIFRoZXNlIGFyZSBkaWZmZXJlbnQuIE5VTV9SRUZfRlJBTUVTIGlzIHRoZSBzaXplIG9m
IHRoZSAiRFBCIgo+IHdoaWxlCj4gVE9UQUxfUkVGU19QRVJfRlJBTUUgaXMgdGhlIG1heGltdW0g
bnVtYmVyIG9mIHJlZmVyZW5jZXMgYSBmcmFtZSBjYW4KPiB1c2UuIEl0IGp1c3Qgc28gaGFwcGVu
cyB0aGF0IGluIEFWMSB0aGVzZSB0d28gYXJlIGNsb3NlIGluIGFic29sdXRlCj4gdmFsdWUgKGku
ZS4gNyB2cyA4KS4KPiAKPiBVc2luZyBWUDkgYXMgYSBjb21wYXJpc29uLCB0aGUgRFBCIHNpemUg
aXMgc3RpbGwgOCwgYnV0Cj4gUkVGU19QRVJfRlJBTUUKPiBpcyAzIChtZWFuaW5nIGEgZnJhbWUg
Y2FuIHNwZWNpZmljeSBMQVNULCBHT0xERU4gYW5kIEFMVFJFRiB2YWx1ZXMpLgo+IAo+IEFzIHRo
aXMgaXMgcGVyIHNwZWMgYW5kIGEgbWVyZSBjb252ZW5pZW5jZSwgSSB2b3RlIGZvciBrZWVwaW5n
IGl0LiAKPiAKPiAtLSBEYW5pZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
