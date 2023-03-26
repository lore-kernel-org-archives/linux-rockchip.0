Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD010C7619A
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Mar 2023 23:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+XEVbQcKxkYX1QeTY2yCGTv4SOEfNZbfLK4yHvIJgk=; b=ufGa7ASEcJA6ZQ
	OAZTJTpKKfGxRkZnjfFErmxdhgWqGLcYxOfNKn+62KbsnH1U9SNsqVdfLv+XFLW8tzQkZ+MdMgD+g
	WJpB56mrYiYUibXDV7cQk8/v1RJr2+v3huJa9TtFaqqlU/jRggkyM9wJcq/+09jGLphJQM9g3fJB0
	ZTTwlmJdC5N1+veOOX63iqty/cSCUQYNAtKNg1YL/TYau9biQ8MUkD2ZOaCRprE9o6Qfr6tsTXTTS
	94EpS5xsoU6oTOgmAn3aGG588RSUHyOJnf3iSjXec6bfLVPfopv7uo91V9ys5p0RATMR2mVhuEHwt
	Xg78+TCOvSeFcPBIsfqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgZpn-009LN5-33;
	Sun, 26 Mar 2023 23:31:35 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgZpj-009LMQ-1b;
	Sun, 26 Mar 2023 23:31:32 +0000
Received: by mail-wr1-x431.google.com with SMTP id m2so6889671wrh.6;
        Sun, 26 Mar 2023 16:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679873489;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IS4fLhwz//kQI/SKHwIiN/58Jw75aYaj1Sbbq5p+eGQ=;
        b=jerRZlU3BpTNtYbdGUEJdQmS2i9kAY3UCns0cLhsue29BWOuYY/gLTL2DahonvvQxU
         El7ro+wWQi+q0QDOHJZvxXrF2jMJQaS8udmX1XHxGYj1VAYSp4u/iw7PH8a84A63gqPf
         bRVrh8LNfJSbHh03yPGo4E7eWGKKndRDIUMcYpNDB4Mnjl7Vk4/VOCi8jMCOLZIPFOyo
         x2PvwrDaa1cW1SuGOWuKbSwrDpvyNkAzOJbRIZSuFRJSpwjhV6q+0cDi48+GuuuzMz7u
         1x/7hgYxLmvFgcmldJVblVyuoQk4TVb/KWSRguYSuszzAnjMskIrgbRAnMsiChH+9Ie3
         hhhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679873489;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IS4fLhwz//kQI/SKHwIiN/58Jw75aYaj1Sbbq5p+eGQ=;
        b=bZ3uz3Z6QHi4trWczzP47DCMMHAowZTTvt/69vIm2IR/RLnD6c/ak6FGVFNEL2c4BN
         uMGWC5e914LnDPDVx7TczzTBvHQXk7jYJ7OM9G3MiZ/0BxpWVCTt2YQ0VyvAelgk8mU6
         TxuulxWpveTlL9pst+YtFm7SZt+6ei2ifAEP4Y3mOF3Rqtxj1wPjFm/RDi1qrdbtjpyR
         RjOflhzbsNg4Xk9nCR535H+7HmC8VQQyBnzFKZrhX1C/NNjlLht+niN+WXkY+RAT6j3Z
         QY0/re8f2gwU5DYGro27CiSPgO3oQ2BG65ZjBYvCtlDiV+psxTk+QUJdfTKXgtVDfp/c
         Bkuw==
X-Gm-Message-State: AAQBX9ea9PhigM6Vp5pHHpFrAsESeA7p8TYksyKu9osRoyok/j7jhvzq
	H55vkDz8UON6y1SijM73hiMou6w+2M6WZC2I9S8=
X-Google-Smtp-Source: AKy350bMNcVjpAEQLEIScGOgPhjtRtiiywRIfkT7s6Bxs4K9aKYnHFq/XBB9/Kkk54PtXNBg/zioVJa2QC3Cs8HUgv0=
X-Received: by 2002:adf:f4c2:0:b0:2c3:be6a:7614 with SMTP id
 h2-20020adff4c2000000b002c3be6a7614mr1958745wrp.2.1679873489230; Sun, 26 Mar
 2023 16:31:29 -0700 (PDT)
MIME-Version: 1.0
References: <20230326001535.149539-1-bigbeeshane@gmail.com>
 <20230326184040.33008-1-bigbeeshane@gmail.com> <20230326184040.33008-2-bigbeeshane@gmail.com>
 <0711b320-6c36-6564-70d2-35fc76ac1ebc@linaro.org>
In-Reply-To: <0711b320-6c36-6564-70d2-35fc76ac1ebc@linaro.org>
From: Shane Francis <bigbeeshane@gmail.com>
Date: Mon, 27 Mar 2023 00:31:18 +0100
Message-ID: <CABnpCuC1PLYT82A2iMPkPgRPB0mzGUfF=wBzPpAp+YMN_VfGjg@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: clock: update rk3588 clock definitions
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_163131_576972_33F0248F 
X-CRM114-Status: GOOD (  21.60  )
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

SGkKCj4gV2UgZGlkIG5vdCBmaW5pc2ggZGlzY3Vzc2lvbiB5ZXQsIHNvIHNlbmRpbmcgbmV3IHZl
cnNpb24gNTAgbWludXRlcwo+IGFmdGVyIHlvdXIgbGFzdCByZXBseSBkb2VzIG5vdCBnaXZlIG1l
IGEgY2hhbmNlIHRvIHJlc3BvbmQuCgpJIHdhcyByZWZyZXNoaW5nIHRoZSBwYXRjaCBzZXQgdG8g
YWRkcmVzcyB5b3VyIGNvbW1lbnRzIG9uIHRoZSBuZXcgRFRTCnNldHVwIGZvciB0aGUgUjZTLCBJ
IGRpZCBub3QgY2hhbmdlIHRoaXMgcG9ydGlvbiBvZiB0aGUgcGF0Y2guCgpJIGFwb2xvZ2lzZSBm
b3IgbWlzc2luZyBzb21lIG9mIHRoZSBydWxlcyBoZXJlLCBJIGFtIGp1c3Qgb25ib2FyZGluZyB0
aGlzCmRldmljZSBmb3IgYSBwZXJzb25hbCBwcm9qZWN0LCBidXQgd2lsbCBsZWF2ZSBpdCBoZXJl
IGZvciBub3cuCgoKUmVnYXJkcwoKCk9uIFN1biwgTWFyIDI2LCAyMDIzIGF0IDk6MDTigK9QTSBL
cnp5c3p0b2YgS296bG93c2tpCjxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3Rl
Ogo+Cj4gT24gMjYvMDMvMjAyMyAyMDo0MCwgU2hhbmUgRnJhbmNpcyB3cm90ZToKPiA+IFNvbWUg
dmVuZG9yIHVib290IGJvb3Rsb2FkZXJzIHVzZSB0aGUgdGFyZ2V0IGtlcm5lbHMgRFRCIGltYWdl
IHRvCj4gPiBkZXRlcm1pbmUgdGhlIHRhcmdldCBjbG9jayBzcGVlZHMgZm9yIHNvbWUgUExMcywg
Y3VycmVudGx5IHRoaXMgY2FuIGNhdXNlCj4gPiB1Ym9vdCB0byBzZXQgdGhlIGNsb2NrIHJhdGUg
Zm9yIGdwbGwgaW5jb3JyZWN0bHkgb24gdG8gY3BsbCAoYnJlYWtpbmcpCj4gPiBSR01JSS4KPgo+
IERvIG5vdCBhdHRhY2ggKHRocmVhZCkgeW91ciBwYXRjaHNldHMgdG8gc29tZSBvdGhlciB0aHJl
YWRzICh1bnJlbGF0ZWQKPiBvciBvbGRlciB2ZXJzaW9ucykuIFRoaXMgYnVyaWVzIHRoZW0gZGVl
cCBpbiB0aGUgbWFpbGJveCBhbmQgbWlnaHQKPiBpbnRlcmZlcmUgd2l0aCBhcHBseWluZyBlbnRp
cmUgc2V0cy4KPgo+ID4KPiA+IFRoaXMgY2hhbmdlIHN0YXJ0cyB0aGUgUExMIGNsb2NrIGRlZmlu
aXRpb25zIGZyb20gMSB0byBjb3JyZWN0IHRoaXMKPiA+IG1pc3MtbWF0Y2gKPiA+Cj4gPiBUaGlz
IGNvdWxkIGJlIGhhbmRsZWQgYnkgdWJvb3QgYnUgdXBkYXRpbmcgbWFwcGluZ3MgaW4gdGhhdCBj
b2RlIGJhc2UKPiA+IGhvd2V2ZXIgbm90IGFsbCBkZXZpY2VzIHdpbGwgaGF2ZSBhIHJlcGxhY2Vh
YmxlIHVib290IChpbiBjYXNlcyBzdWNoIGFzCj4gPiB3aGVuIGEgc2VjdXJlIGJvb3QgY2hhaW4g
aXMgaW1wbGVtZW50ZWQpCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogU2hhbmUgRnJhbmNpcyA8Ymln
YmVlc2hhbmVAZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgLi4uL2R0LWJpbmRpbmdzL2Nsb2NrL3Jv
Y2tjaGlwLHJrMzU4OC1jcnUuaCAgIHwgMTQ0MiArKysrKysrKy0tLS0tLS0tLQo+ID4gIDEgZmls
ZSBjaGFuZ2VkLCA3MjEgaW5zZXJ0aW9ucygrKSwgNzIxIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRp
ZmYgLS1naXQgYS9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJrMzU4OC1jcnUu
aCBiL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svcm9ja2NoaXAscmszNTg4LWNydS5oCj4gPiBp
bmRleCBiNTYxNmJjYTdiNDQuLmQ2M2IwN2QwNTRiNyAxMDA2NDQKPiA+IC0tLSBhL2luY2x1ZGUv
ZHQtYmluZGluZ3MvY2xvY2svcm9ja2NoaXAscmszNTg4LWNydS5oCj4gPiArKysgYi9pbmNsdWRl
L2R0LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJrMzU4OC1jcnUuaAo+Cj4gV2UgZGlkIG5vdCBm
aW5pc2ggZGlzY3Vzc2lvbiB5ZXQsIHNvIHNlbmRpbmcgbmV3IHZlcnNpb24gNTAgbWludXRlcwo+
IGFmdGVyIHlvdXIgbGFzdCByZXBseSBkb2VzIG5vdCBnaXZlIG1lIGNoYW5jZSB0byByZXNwb25k
Lgo+Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgo+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
