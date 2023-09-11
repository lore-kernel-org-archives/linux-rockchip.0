Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AC7DEE7FF4
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Sep 2023 16:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OryP8iyWCtIQFYbjzkDXOJnwQ7NxImCN8p5E8fLJLqQ=; b=j63lIaP6BVG6n1
	SmiBljX2FgOYtLLcuuwGsbiweKs+g15heF/BzW9MNPyF7qeIp6ENpGpLY3iN2ti1OXsnx8lKcJvJq
	CswMgWBTI6bkMPOn8KGFrz+FgkunXfehVOqB9ryGetpjvyXvP7eFoMmQPXyLo3qAI5CGTm4FixlAB
	Scj7dZV7u8Wic8CDyMdyNbDiZMhXk42yCQtbe9w9E7XsFAk1lhPlvWDB7s7iCpE5blTWmhC1KshDz
	WEZoxlllWRZdQxk72Hl6qGirbQ5HP/3uvCzTGR+tuptWXKj48XgURQ2w22drkziEO+FuPFjXza43/
	DftYKsRYuKbOW7sq1/VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfjtj-0010XP-2B;
	Mon, 11 Sep 2023 16:36:27 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfjtf-0010WV-2X;
	Mon, 11 Sep 2023 16:36:25 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9a9f139cd94so500853066b.2;
        Mon, 11 Sep 2023 09:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694450181; x=1695054981; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tn6ORcYdF7wmn9zYudPCVDeUReDbRM6yHR4pM4CXkGQ=;
        b=mW15KGQKDXpCT+E+oTy0XiXoRJzZ1ik5iPY6Qac0MCV/tKAPLlVWnWyqPVR5gvHKuS
         j+0ns8h5gDZ83W53Puu8rcOrhqWLgOGQ8w/rKY7MuC0sixGobzCV34WZdprrMw9GcUpq
         oz/c01NN8Ark5Moct8GNFQcbioSYbfnq5k9UggkoaXUYVVj6FN4daZ8wOlCyjzDw3Jue
         inanlRT8vRvnn+s5kQSmvA47CTkKGWq37OPwg0Ldy1J+SpDI21929tbr7B2cWeT4MxlG
         pkmSCVZTVdU4lX3ZOstNojaUdAgYUuGVTcOX+8w5hU1KGBevguOqtoUPf2mpRW4VBuUE
         nE6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694450181; x=1695054981;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tn6ORcYdF7wmn9zYudPCVDeUReDbRM6yHR4pM4CXkGQ=;
        b=fLsRFFfc109B4yLE5Dusw3UzaTquV3Ob0pQWqftrAN1nZghstjJHFrvskbvoP8GW2C
         QaC9HLGWXiLyoRRIcjJupPEpqdepY8qOByaGJLDPsMLdD6xsuz8bBANTLIUR0wFSsMGo
         ZZmg9DcqsymkVe01vCcxDqLvZhXVwl33yDklRnqJ6iVKxKtyOYbt6Py+IoHu7OHMhke5
         RyzjEp6NdBPVdCjJ/WITDnNQNp/8b+QopglkUFY/goeuJnJwlNzLM39qJaMnxuJzk/VA
         0oMTarzF2oeMaeMPTpxkDlCW4w9izp63yEkpJ97vEyDDuqIjxyNtl6lccG5DOLLaUiDd
         b/8Q==
X-Gm-Message-State: AOJu0Yx4wOImV6NKD8tyPir1l0tbyr9QRete3BFiYyYaLhDi2pPr5qLj
	ARLx7U5kb83MI6nvehyl/Ow=
X-Google-Smtp-Source: AGHT+IEZkDEwJehDR4fKggLpjoJhnXiAupV9qorq7MLXFhFfk7fRQqvtYUP3Mho6rsQ4juPA6IGloQ==
X-Received: by 2002:a17:906:224a:b0:9a9:e6c3:ad28 with SMTP id 10-20020a170906224a00b009a9e6c3ad28mr9042772ejr.69.1694450181242;
        Mon, 11 Sep 2023 09:36:21 -0700 (PDT)
Received: from jernej-laptop.localnet (82-149-12-148.dynamic.telemach.net. [82.149.12.148])
        by smtp.gmail.com with ESMTPSA id h17-20020a170906261100b00999bb1e01dfsm5534149ejc.52.2023.09.11.09.36.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Sep 2023 09:36:20 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: mchehab@kernel.org, tfiga@chromium.org, m.szyprowski@samsung.com,
 ming.qian@nxp.com, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
Subject: Re: [PATCH v6 14/18] media: verisilicon: vp9: Use destination buffer height
 to compute chroma offset
Date: Mon, 11 Sep 2023 18:36:19 +0200
Message-ID: <3248154.aeNJFYEL58@jernej-laptop>
In-Reply-To: <7da0a2ab-032a-9de9-e136-58f973238c5b@collabora.com>
References: <20230901124414.48497-1-benjamin.gaignard@collabora.com>
 <4856958.31r3eYUQgx@jernej-laptop>
 <7da0a2ab-032a-9de9-e136-58f973238c5b@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_093623_850375_613FAEC8 
X-CRM114-Status: GOOD (  23.00  )
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

RG5lIHBvbmVkZWxqZWssIDExLiBzZXB0ZW1iZXIgMjAyMyBvYiAxMDo1NTowMiBDRVNUIGplIEJl
bmphbWluIEdhaWduYXJkIApuYXBpc2FsKGEpOgo+IExlIDEwLzA5LzIwMjMgw6AgMTU6MjEsIEpl
cm5laiDFoGtyYWJlYyBhIMOpY3JpdCA6Cj4gPiBIaSBCZW5qYW1pbiEKPiA+IAo+ID4gRG5lIHBl
dGVrLCAwMS4gc2VwdGVtYmVyIDIwMjMgb2IgMTQ6NDQ6MTAgQ0VTVCBqZSBCZW5qYW1pbiBHYWln
bmFyZAo+ID4gCj4gPiBuYXBpc2FsKGEpOgo+ID4+IFNvdXJjZSBhbmQgZGVzdGluYXRpb24gYnVm
ZmVyIGhlaWdodCBtYXkgbm90IGJlIHRoZSBzYW1lIGJlY2F1c2UKPiA+PiBhbGlnbm1lbnQgY29u
c3RyYWludCBhcmUgZGlmZmVyZW50Lgo+ID4+IFVzZSBkZXN0aW5hdGlvbiBoZWlnaHQgdG8gY29t
cHV0ZSBjaHJvbWEgb2Zmc2V0IGJlY2F1c2Ugd2UgdGFyZ2V0Cj4gPj4gdGhpcyBidWZmZXIgYXMg
aGFyZHdhcmUgb3V0cHV0Lgo+ID4+IAo+ID4+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWdu
YXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+ID4+IEZpeGVzOiBlMmRhNDY1
NDU1Y2UgKCJtZWRpYTogaGFudHJvOiBTdXBwb3J0IFZQOSBvbiB0aGUgRzIgY29yZSIpCj4gPj4g
LS0tCj4gPj4gCj4gPj4gICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRy
b19nMl92cDlfZGVjLmMgfCA0ICstLS0KPiA+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMyBkZWxldGlvbnMoLSkKPiA+PiAKPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZzJfdnA5X2RlYy5jCj4gPj4gYi9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl92cDlfZGVjLmMgaW5kZXgKPiA+
PiA2ZGIxYzMyZmNlNGQuLjFmM2Y1ZTdjZTk3OCAxMDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl92cDlfZGVjLmMKPiA+PiArKysgYi9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl92cDlfZGVjLmMKPiA+
PiBAQCAtOTMsOSArOTMsNyBAQCBzdGF0aWMgaW50IHN0YXJ0X3ByZXBhcmVfcnVuKHN0cnVjdCBo
YW50cm9fY3R4ICpjdHgsCj4gPj4gY29uc3Qgc3RydWN0IHY0bDJfY3RybF92cDlfIHN0YXRpYyBz
aXplX3QgY2hyb21hX29mZnNldChjb25zdCBzdHJ1Y3QKPiA+PiBoYW50cm9fY3R4ICpjdHgsCj4g
Pj4gCj4gPj4gICAJCQkgICAgY29uc3Qgc3RydWN0IHY0bDJfY3RybF92cDlfZnJhbWUKPiA+IAo+
ID4gKmRlY19wYXJhbXMpCj4gPiAKPiA+PiAgIHsKPiA+PiAKPiA+PiAtCWludCBieXRlc19wZXJf
cGl4ZWwgPSBkZWNfcGFyYW1zLT5iaXRfZGVwdGggPT0gOCA/IDEgOiAyOwo+ID4+IC0KPiA+PiAt
CXJldHVybiBjdHgtPnNyY19mbXQud2lkdGggKiBjdHgtPnNyY19mbXQuaGVpZ2h0ICogYnl0ZXNf
cGVyX3BpeGVsOwo+ID4+ICsJcmV0dXJuIGN0eC0+ZHN0X2ZtdC53aWR0aCAqIGN0eC0+ZHN0X2Zt
dC5oZWlnaHQgKiBjdHgtPmJpdF9kZXB0aCAvCj4gPiAKPiA+IDg7Cj4gPiAKPiA+IENvbW1pdCBt
ZXNzYWdlIGRvZXNuJ3QgbWVudGlvbiBiaXRfZGVwdGggY2hhbmdlIGF0IGFsbC4gV2hpbGUgSSB0
aGluawo+ID4gdGhlcmUgaXMgbm8gZGlmZmVyZW5jZSBiZXR3ZWVuIGRlY19wYXJhbXMtPmJpdF9k
ZXB0aCBhbmQgY3R4LT5iaXRfZGVwdGgsCj4gPiB5b3Ugc2hvdWxkbid0IGp1c3QgdXNlIG9yZGlu
YXJ5IGRpdmlzaW9uLiBJZiBiaXRfZGVwdGggaXMgMTAsIGl0IHdpbGwgYmUKPiA+IHJvdW5kZWQg
ZG93bi4gQW5kIGlmIHlvdSBkZWNpZGUgdG8gdXNlIGJpdF9kZXB0aCBmcm9tIGNvbnRleHQsIHBs
ZWFzZQo+ID4gcmVtb3ZlIGRlY19wYXJhbXMgYXJndW1lbnQuCj4gCj4gSSB3aWxsIGNoYW5nZSB0
aGlzIHBhdGNoIGFuZCBjcmVhdGUgYSBoZWxwZXJzIGZ1bmN0aW9uIGZvciBjaHJvbWEgYW5kIG1v
dGlvbgo+IHZlY3RvcnMgb2Zmc2V0cyB0aGF0IFZQOSBhbmQgSEVWQyBjb2RlIHdpbGwgdXNlIHNp
bmNlIHRoZXkgYXJlIGlkZW50aWNhbC4KPiBJIGRvbid0IHNlZSBpc3N1ZSB3aXRoIHRoZSBkaXZp
c2lvbi4gSWYgeW91IGhhdmUgaW4gbWluZCBhIHNvbHV0aW9uIHBsZWFzZQo+IHdyaXRlIGl0IHNv
IEkgY291bGQgdGVzdCBpdC4KClNvbHV0aW9uIGlzIHNhbWUgYXMgdGhlIGNvZGUgdGhhdCB5b3Ug
cmVtb3ZlZDoKaW50IGJ5dGVzX3Blcl9waXhlbCA9IGRlY19wYXJhbXMtPmJpdF9kZXB0aCA9PSA4
ID8gMSA6IDI7CgpPciBhbHRlcm5hdGl2ZWx5OgppbnQgYnl0ZXNfcGVyX3BpeGVsID0gRElWX1JP
VU5EX1VQKGRlY19wYXJhbXMtPmJpdF9kZXB0aCwgOCk7CgpDb25zaWRlciBiaXRfZGVwdGggYmVp
bmcgMTAuIFdpdGggb2xkIGNvZGUgeW91IGdldCAyLCB3aXRoIHlvdXJzIHlvdSBnZXQgMS4KCkJl
c3QgcmVnYXJkcywKSmVybmVqCgo+IAo+IFJlZ2FyZHMsCj4gQmVuamFtaW4KPiAKPiA+IEJlc3Qg
cmVnYXJkcywKPiA+IEplcm5lago+ID4gCj4gPj4gICB9Cj4gPj4gICAKPiA+PiAgIHN0YXRpYyBz
aXplX3QgbXZfb2Zmc2V0KGNvbnN0IHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsCgoKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
