Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26015C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 20:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E46+0S7ZCaPq9b1J+NfATOkXDnazQx++RuehVCiM5z4=; b=Ra/OKxa9t5UwBF
	6+ESa+Blyl9urXbCd4G+T+CEzNF4a8f7nzg+IL0zxSsMgpaDI8ns1qm9f9DQ9Ets8f+h7h0DsUava
	TwOjHteRwkwZpaJ3DalMqb9dFphyTJ0BAdfn0uwwxWDmQxwOYGv/9yJDFLSFdPZg4JpKSb3a2sLJ7
	x24MPeaK1I+9Vi1BJSPRKjTevV5wgpyotbumvXWE+0wOFcG+NBdmiMVovrUzFJXJa65p6UCoKnyR7
	seeijtAG/yuI7Op0SzB/SiN+48ekDpEM8Q9HDQDv9ZR707e73yUlOiwszVNZJCln2/rKsTwfuf11J
	N1RapzSBZtIvKW/Q2JyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7MyM-002Nw0-9u; Mon, 19 Dec 2022 20:42:54 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7My5-002NDp-Ez
	for linux-rockchip@lists.infradead.org; Mon, 19 Dec 2022 20:42:38 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id c14so7053617qvq.0
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Dec 2022 12:42:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=inRemP8l8T0lJzsgX9r8VHvv2ljO5+mNrIR9f4Y4KPY=;
        b=blzh/78hYWyfNH0CYRrQGM5NaXRbBZ8BvRLLmkz0fd7CiS8LQGWiZ4lDnwecxgSFw8
         46GzvEvVtZ/CvJPEa3V0fxlh9pj+5JVOgcL/HZqP1dCsE1RVbUFyps+E482HuaNqe3X9
         nn4kuotIA9bR6tfy8Tj3/6DodRscd9ErPYWTmqeaJfcf7owU2qkX43W9aaN7NKcaTCmH
         HNX1tXEhoiW64LJkBQOwef5CLKMoxUrtG3enHmiikuHTBUlZA/4WOeh7Voz/L1jP4ulc
         vQkLTopFUKy/6v1WA/TUp9+KjHAd8ltaJ1/UOot3S0nzJ/pXDl3zSDoQNzM+VyJ/iHzB
         9Tmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=inRemP8l8T0lJzsgX9r8VHvv2ljO5+mNrIR9f4Y4KPY=;
        b=NdZxcZrUc0GZaTUDvC5y5tkK2DBjntbTJNlaRtve8GVLGB88B6ihpNGEA60IdlmaEZ
         sA+BuBzQwt4JWg4hZMIVSy1AJc6XOeo1WaU5G8TXfD/1xjjv5PZX1vKr+Nk7eONpN4M5
         qy9nbrWJcHY6NABBqsXdPx0C27zQ8JjKIRTNiYOwZ4EVMuAYzdpH1LlKSz98Mos22KGC
         MQjbQIdi0YiIUi8//9d45mJMnITd27AstWOVYBwXrTWg+eh11opizBuQyyHs+rQQBBSK
         H4vPJXT2W4Ikld2jnXA/FGp0gRyBSYmlsk4IPGzHLhyTENu717E6ZzrR6wix09TMfdpG
         nYxQ==
X-Gm-Message-State: ANoB5pnC7OR9rEmr1fIaHMBaDd5JNe8X99EySMrWLMRF+11lqnDZ275K
	7K2Q6Ufqkn9hbND884FUP2mXEQ==
X-Google-Smtp-Source: AA0mqf4SYwFIwGR65cN1wMfvs0LEu1yaJxKFNyFY9MUJ6uxERA72MHixsFX26tdJqFk6F/3XlTn39Q==
X-Received: by 2002:a05:6214:3c8e:b0:4c6:e0d0:6f51 with SMTP id ok14-20020a0562143c8e00b004c6e0d06f51mr63004918qvb.43.1671482555087;
        Mon, 19 Dec 2022 12:42:35 -0800 (PST)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id bi4-20020a05620a318400b006fb0e638f12sm7632463qkb.4.2022.12.19.12.42.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 12:42:34 -0800 (PST)
Message-ID: <44b06c15410e184e8e856a4a882d1b42a02fa8d2.camel@ndufresne.ca>
Subject: Re: [PATCH v1 5/9] media: verisilicon: Compute motion vectors size
 for AV1 frames
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	daniel.almeida@collabora.com, nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Mon, 19 Dec 2022 15:42:33 -0500
In-Reply-To: <20221219155616.848690-6-benjamin.gaignard@collabora.com>
References: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
	 <20221219155616.848690-6-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.46.2 (3.46.2-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_124237_546671_CB13BBDC 
X-CRM114-Status: GOOD (  19.20  )
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

TGUgbHVuZGkgMTkgZMOpY2VtYnJlIDIwMjIgw6AgMTY6NTYgKzAxMDAsIEJlbmphbWluIEdhaWdu
YXJkIGEgw6ljcml0wqA6Cj4gQ29tcHV0ZSB0aGUgYWRkaXRpb25hbCByZXF1aXJlZCB0byBzdG9y
ZSBtb3Rpb24gdmVjdG9ycyBhdAoKcmVxdWlyZXMgKnNwYWNlKiwgcmVxdWlyZXMgKmJ1ZmZlciog
PyBJIHRoaW5rIHRoaXMgaXMgbWlzc2luZyBhIHdvcmQuCgo+IHRoZSBlbmQgb2YgdGhlIGZyYW1l
cyBidWZmZXJzLgo+IAo+IAo+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5q
YW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3ZlcmlzaWxpY29uL2hhbnRyb19ody5oICAgICAgfCAxMyArKysrKysrKysrKysrCj4gIC4u
Li9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fcG9zdHByb2MuYyAgICB8ICAzICsr
Kwo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMgICAg
fCAgNSArKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKykKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faHcuaCBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2h3LmgKPiBpbmRleCBl
ODNmMGM1MjNhMzAuLjhiM2JjN2UzMTM5NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19ody5oCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faHcuaAo+IEBAIC00MTcsNiArNDE3LDE5IEBAIGhhbnRy
b19oZXZjX212X3NpemUodW5zaWduZWQgaW50IHdpZHRoLCB1bnNpZ25lZCBpbnQgaGVpZ2h0KQo+
ICAJcmV0dXJuIHdpZHRoICogaGVpZ2h0IC8gMTY7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbmxpbmUg
dW5zaWduZWQgc2hvcnQgaGFudHJvX2F2MV9udW1fc2JzKHVuc2lnbmVkIHNob3J0IGRpbWVuc2lv
bikKPiArewo+ICsJcmV0dXJuIERJVl9ST1VORF9VUChkaW1lbnNpb24sIDY0KSArIDE7CgpXaHkg
cGx1cyBvbmUgPyBJJ3ZlIHRlc3RlZCBsb2NhbGx5IHdpdGggdGhlIGxvZ2ljYWwgRElWX1JPVU5E
X1VQKGRpbWVuc2lvbiwgNjQpLAphbmQgZGlkbid0IHNlZSBhbnkgZGlmZmVyZW5jZS4gSXQgdGhl
biBtYXRjaCBoYW50cm9fdnBfbnVtX3NicygpLCBzbyBjYW4ndCB0aGlzCmJlIHNoYXJlZCA/Cgo+
ICt9Cj4gKwo+ICtzdGF0aWMgaW5saW5lIHNpemVfdAo+ICtoYW50cm9fYXYxX212X3NpemUodW5z
aWduZWQgaW50IHdpZHRoLCB1bnNpZ25lZCBpbnQgaGVpZ2h0KQo+ICt7Cj4gKwlzaXplX3QgbnVt
X3NicyA9IGhhbnRyb19hdjFfbnVtX3Nicyh3aWR0aCkgKiBoYW50cm9fYXYxX251bV9zYnMoaGVp
Z2h0KTsKPiArCj4gKwlyZXR1cm4gQUxJR04obnVtX3NicyAqIDM4NCwgMTYpICsgNTEyOwoKU2hh
bGwgdGhlIG1hZ2ljIG51bWJlcnMgYmUgdHVybmVkIGludG8gZGVmaW5lcyA/Cgo+ICt9Cj4gKwo+
ICBpbnQgaGFudHJvX2cxX21wZWcyX2RlY19ydW4oc3RydWN0IGhhbnRyb19jdHggKmN0eCk7Cj4g
IGludCByb2NrY2hpcF92cHUyX21wZWcyX2RlY19ydW4oc3RydWN0IGhhbnRyb19jdHggKmN0eCk7
Cj4gIHZvaWQgaGFudHJvX21wZWcyX2RlY19jb3B5X3F0YWJsZSh1OCAqcXRhYmxlLAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19wb3N0cHJv
Yy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fcG9zdHByb2Mu
Ywo+IGluZGV4IDA5ZDhjZjk0MjY4OS4uN2RjMzk1MTlhMmVlIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Bvc3Rwcm9jLmMKPiArKysgYi9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19wb3N0cHJvYy5jCj4gQEAg
LTIxMyw2ICsyMTMsOSBAQCBpbnQgaGFudHJvX3Bvc3Rwcm9jX2FsbG9jKHN0cnVjdCBoYW50cm9f
Y3R4ICpjdHgpCj4gIAllbHNlIGlmIChjdHgtPnZwdV9zcmNfZm10LT5mb3VyY2MgPT0gVjRMMl9Q
SVhfRk1UX0hFVkNfU0xJQ0UpCj4gIAkJYnVmX3NpemUgKz0gaGFudHJvX2hldmNfbXZfc2l6ZShw
aXhfbXAud2lkdGgsCj4gIAkJCQkJCXBpeF9tcC5oZWlnaHQpOwo+ICsJZWxzZSBpZiAoY3R4LT52
cHVfc3JjX2ZtdC0+Zm91cmNjID09IFY0TDJfUElYX0ZNVF9BVjFfRlJBTUUpCj4gKwkJYnVmX3Np
emUgKz0gaGFudHJvX2F2MV9tdl9zaXplKHBpeF9tcC53aWR0aCwKPiArCQkJCQkgICAgICAgcGl4
X21wLmhlaWdodCk7CgpuaXQ6IFRpbWUgdG8gdHVybiBpbnRvIGEgc3dpdGNoIG9yIHVzZSBhbiBv
cHMgPwoKPiAgCj4gIAlmb3IgKGkgPSAwOyBpIDwgbnVtX2J1ZmZlcnM7ICsraSkgewo+ICAJCXN0
cnVjdCBoYW50cm9fYXV4X2J1ZiAqcHJpdiA9ICZjdHgtPnBvc3Rwcm9jLmRlY19xW2ldOwo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwy
LmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMKPiBp
bmRleCAyYzdhODA1Mjg5ZTcuLmQ0MWRjYjEwOGE2ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMKPiArKysgYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMKPiBAQCAtMzM0LDYgKzMzNCwx
MSBAQCBzdGF0aWMgaW50IGhhbnRyb190cnlfZm10KGNvbnN0IHN0cnVjdCBoYW50cm9fY3R4ICpj
dHgsCj4gIAkJCXBpeF9tcC0+cGxhbmVfZm10WzBdLnNpemVpbWFnZSArPQo+ICAJCQkJaGFudHJv
X2hldmNfbXZfc2l6ZShwaXhfbXAtPndpZHRoLAo+ICAJCQkJCQkgICAgcGl4X21wLT5oZWlnaHQp
Owo+ICsJCWVsc2UgaWYgKGN0eC0+dnB1X3NyY19mbXQtPmZvdXJjYyA9PSBWNEwyX1BJWF9GTVRf
QVYxX0ZSQU1FICYmCj4gKwkJCSAhaGFudHJvX25lZWRzX3Bvc3Rwcm9jKGN0eCwgZm10KSkKPiAr
CQkJcGl4X21wLT5wbGFuZV9mbXRbMF0uc2l6ZWltYWdlICs9Cj4gKwkJCQloYW50cm9fYXYxX212
X3NpemUocGl4X21wLT53aWR0aCwKPiArCQkJCQkJICAgcGl4X21wLT5oZWlnaHQpOwo+ICAJfSBl
bHNlIGlmICghcGl4X21wLT5wbGFuZV9mbXRbMF0uc2l6ZWltYWdlKSB7Cj4gIAkJLyoKPiAgCQkg
KiBGb3IgY29kZWQgZm9ybWF0cyB0aGUgYXBwbGljYXRpb24gY2FuIHNwZWNpZnkKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
