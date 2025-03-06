Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 677F7C282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 17:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SsJYY3ErdfAos+zTCVjDVo/6k9NP9MQl7U/42A18voI=; b=ppvxugvMViJFuy
	fqdvEoBQ6t8UnK1LI0i6OlcOgKKEWyiqXOP/yi2fQ9YOtM8T0lXzhWbC0T8AhVclHDSIFJUVboL6k
	o7xRNVcDjT4acOzsYFtGmAKvzyPETcPfmEE2pVY0MtE3gNFexoRy7bCpXJpeEWcy7SaoaAzuS8riG
	fOrkKPV1X5HMA20pm6PqJePAfT7PPdLj21aBMsPlhWwlBjIUKDrhUkpebGlT0KBv7vwAwDxgA22QW
	Gc1erSIHdqpNKMibFGh05Wv1xwQf6oRG9Vvk3dTDC10HdSiSvdnWkBY/OG1IOtLZD1q10te1vqItP
	Jf6sLQU/KW79B+qVgn8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqFLB-0000000BjWI-2TTy;
	Thu, 06 Mar 2025 17:49:01 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqEGI-0000000BXWf-0gtd
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 16:39:55 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5497e7bf2e0so996774e87.3
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Mar 2025 08:39:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741279192; x=1741883992; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FBPYVaLi/uKYGxgimpo2QNuRdBqjr1WrILf7lC0MLjw=;
        b=lVU0aSuyCQyIUxJNWtv17/e3Kz8LQ4f6IIJFhwRmYyMSsxhQtAQgXhW//mY5pTaXiC
         4hPrqMQKdQ1nP09m8KDZqqu8aAR/p9AneVLkoY9Iu8lMe3kVvtDfGIWg6lQCnJiWIyTn
         fh6v3i5AcGh1cSSFg4lPfB1FpS0UhtZUPqkDv6S0ha7iPO6ixQzq9oXo4R6yC12dOBHS
         eTskbhG5fqP1hRvWc0hl4AqFqhBh/Y6n5GykcJeHgsKsA2fdL/7SBOikGbp6LzJwaoCO
         gt2IqET0fUwmFdysaN5DckCkPM4ZpYA7l6FAGX0jZWSn+YTGDTq9AHoLeEL88x+f0uLa
         2duw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741279192; x=1741883992;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FBPYVaLi/uKYGxgimpo2QNuRdBqjr1WrILf7lC0MLjw=;
        b=nW2lAdYIDlKLguNxl9qGEasC1XPBdcN+YB/zAJsw87MNX+prg3+ZVmvOBfjtiQc597
         hXNRIrqhkP7I+9J7SBN8a0damBYZtvIlqiQeHdgUj3AB5XB6HrQWn/3ue9QYAk1fZG6f
         yqdfTbiP3YCC0n2thIGfT6jBi1RhrhblJQhKkbbMQabdWHStkUsfBEr71OX5FNBOYEt1
         rb9SGJqGOcgHTD7GoiAaQC7B7mEbXt39Vacd2K62LL2gzufYn3+jT91Ms1PwarfBXt29
         7VzgCTEv+wUaGPLIfrvK58d55NRJn7UduCPt1JOx6dq4SGE4Pu3nkSyHaVYHvsHPPVta
         eang==
X-Forwarded-Encrypted: i=1; AJvYcCV3+UeGsG1gp7ze0dWMlFEHJwqS6FFQkhZbi9+jdIXCqsoXEycNi5qwyW2owMjD4acK6OwWOEbYLjxSBVNJsw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwwxS3GnQwcJSGB8v9xCvTfANaQwOjodIlwvc7MajPN0du1o0FM
	ocX3pE9UDPwlnZS4FMWlm8nCvKfXKdvAbBKhlIxClsxTx9C//M4J+tJFmF4wMy5SIZz0F6oEC0Q
	SuVc=
X-Gm-Gg: ASbGncvU0+yItoBcZnmq4dMWJCnTN89XGVAbZNlhAj8AYxej8jl0mk/jT0NxfiBvA77
	4jqvGJL0eqbz1YuDPnKnRTzeN081a+qohv9TpBzZJA7JD6bJH3YVXO8JHYIrOq97tvchUA8Ntta
	jrBrqd2Spy6VqUxjjJ0zLQLHRFtW+Ts2RFE29N63wG2rVb1HjXgEZi+gQQRPTPfw90gZThfwq8w
	bub9wF88o3lKA1Ia9E/fFwejLptZmJ/IL6jdyQ/uxFBfnBJRKFCdn/I0G7zoyoS0dyt9gYsZJKV
	dvtXM0apvXjIT6aNwz2nV+Lgbzw8wgOhFzzqt/imD7qYlXULv5PVqAeMMlEhflpGxrZ+Q/mxveM
	wRgNMaUnj/9SXOtwbD/QjsPM4
X-Google-Smtp-Source: AGHT+IHt8WQLWAGDWHo3md1Ffan9Wx7URm1t0MnTSAc9qQkPKqnAbToODyzMc5O6JoOi7DfCRhZZiA==
X-Received: by 2002:a05:6512:2391:b0:549:9078:dd45 with SMTP id 2adb3069b0e04-5499078ddd8mr7463e87.28.1741279191737;
        Thu, 06 Mar 2025 08:39:51 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5498b1c3c0esm227438e87.248.2025.03.06.08.39.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 08:39:51 -0800 (PST)
Date: Thu, 6 Mar 2025 18:39:48 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Yan <andyshrk@163.com>
Cc: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>, heiko@sntech.de, 
	neil.armstrong@linaro.org, sebastian.reichel@collabora.com, devicetree@vger.kernel.org, 
	hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, yubing.zhang@rock-chips.com, dri-devel@lists.freedesktop.org, 
	Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/6] Add support for RK3588 DisplayPort Controller
Message-ID: <zybxwxxkua2zqukcd7tn2z4uwbqjbxt2fdtnrmpsov4hy55tzn@moxuyfxtyagb>
References: <25401bfa.291d.19564244e54.Coremail.andyshrk@163.com>
 <75189787-28E1-4FC2-8E10-4960B3877A6F@gmail.com>
 <28b0d3fc.bb3.19568f6b5f8.Coremail.andyshrk@163.com>
 <44213B17-FE14-4FB8-8319-1E31BBF6EAA0@gmail.com>
 <74c154b6.8c50.1956aa8c8d2.Coremail.andyshrk@163.com>
 <1573D5D6-AFED-4D92-8112-B0C6BB52D5FF@gmail.com>
 <46c0d239.a4f5.1956b619b97.Coremail.andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <46c0d239.a4f5.1956b619b97.Coremail.andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_083954_204431_842E618A 
X-CRM114-Status: GOOD (  23.53  )
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

T24gVGh1LCBNYXIgMDYsIDIwMjUgYXQgMDg6MTU6MTNQTSArMDgwMCwgQW5keSBZYW4gd3JvdGU6
Cj4gSGkgUGlvdHIsCj4gCj4g5ZyoIDIwMjUtMDMtMDYgMTk6NDc6MzHvvIwiUGlvdHIgT25pc3pj
enVrIiA8cGlvdHIub25pc3pjenVrQGdtYWlsLmNvbT4g5YaZ6YGT77yaCj4gPgo+ID4+IFdpYWRv
bW/Fm8SHIG5hcGlzYW5hIHByemV6IEFuZHkgWWFuIDxhbmR5c2hya0AxNjMuY29tPiB3IGRuaXUg
NiBtYXIgMjAyNSwgbyBnb2R6LiAwOTo1MzoKPiA+PiAKPiA+PiAKPiA+PiBIaSwKPiA+PiAKPiA+
PiDlnKggMjAyNS0wMy0wNiAxNjo0MjowMO+8jCJQaW90ciBPbmlzemN6dWsiIDxwaW90ci5vbmlz
emN6dWtAZ21haWwuY29tPiDlhpnpgZPvvJoKPiA+Pj4gCj4gPj4+IAo+ID4+Pj4gV2lhZG9tb8Wb
xIcgbmFwaXNhbmEgcHJ6ZXogQW5keSBZYW4gPGFuZHlzaHJrQDE2My5jb20+IHcgZG5pdSA2IG1h
ciAyMDI1LCBvIGdvZHouIDAxOjU5Ogo+ID4+Pj4gCj4gPj4+PiAKPiA+Pj4+IAo+ID4+Pj4gCj4g
Pj4+PiBCb3RoIG9mIHRoZSB0d28gY29uZmlnIG9wdGlvbnMgc2hvdWxkIGJlIGVuYWJsZWQuCj4g
Pj4+PiBhbmR5QFBybzQ4MDp+L1dvcmtTcGFjZS9saW51eC1uZXh0JCByZyBEV19EUCAuY29uZmln
Cj4gPj4+PiA0MDQ0OkNPTkZJR19ST0NLQ0hJUF9EV19EUD15Cj4gPj4+IAo+ID4+PiBoZXJlIGni
gJltIGEgYml0IGxvc3TigKYuCj4gPj4+IGdyZXBpbmcgb24gZnVsbCBrZXJuZWwgc291cmNlcyAo
d2l0aCBhcHBsaWVkIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1y
b2NrY2hpcC9saXN0Lz9zZXJpZXM9OTM2Nzg0KSBnaXZlcyBtZSBubyBzaW5nbGUgYXBwZWFyYW5j
ZSBvZiBST0NLQ0hJUF9EV19EUOKApgo+ID4+PiBEbyBpIG1pc3Mgc29tZXRoaW5nPwo+ID4+IAo+
ID4+IHNlZSBQQVRDSCAzLzY6ICAgCj4gPj4gCj4gPj4gCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9LY29uZmlnIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tj
b25maWcKPiA+PiBpbmRleCAyNmM0NDEwYjI0MDcuLmM4NjM4YmFmOTY0MSAxMDA2NDQKPiA+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZwo+ID4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9LY29uZmlnCj4gPj4gQEAgLTgsNiArOCw3IEBAIGNvbmZpZyBEUk1f
Uk9DS0NISVAKPiA+PiBzZWxlY3QgRFJNX1BBTkVMCj4gPj4gc2VsZWN0IFZJREVPTU9ERV9IRUxQ
RVJTCj4gPj4gc2VsZWN0IERSTV9BTkFMT0dJWF9EUCBpZiBST0NLQ0hJUF9BTkFMT0dJWF9EUAo+
ID4+ICsgc2VsZWN0IERSTV9EV19EUCBpZiBST0NLQ0hJUF9EV19EUAo+ID4+IHNlbGVjdCBEUk1f
RFdfSERNSSBpZiBST0NLQ0hJUF9EV19IRE1JCj4gPj4gc2VsZWN0IERSTV9EV19IRE1JX1FQIGlm
IFJPQ0tDSElQX0RXX0hETUlfUVAKPiA+PiBzZWxlY3QgRFJNX0RXX01JUElfRFNJIGlmIFJPQ0tD
SElQX0RXX01JUElfRFNJCj4gPj4gQEAgLTU4LDYgKzU5LDEyIEBAIGNvbmZpZyBST0NLQ0hJUF9D
RE5fRFAKPiA+PiAgUkszMzk5IGJhc2VkIFNvQywgeW91IHNob3VsZCBzZWxlY3QgdGhpcwo+ID4+
ICBvcHRpb24uCj4gPj4gCj4gPj4gK2NvbmZpZyBST0NLQ0hJUF9EV19EUAo+ID4+ICsgYm9vbCAi
Um9ja2NoaXAgc3BlY2lmaWMgZXh0ZW5zaW9ucyBmb3IgU3lub3BzeXMgRFcgRFAiCj4gPj4gKyBo
ZWxwCj4gPj4gKyAgQ2hvb3NlIHRoaXMgb3B0aW9uIGZvciBTeW5vcHN5cyBEZXNpZ25XYXJlIENv
cmVzIERpc3BsYXlQb3J0Cj4gPj4gKyAgdHJhbnNtaXQgY29udHJvbGxlciBzdXBwb3J0IG9uIFJv
Y2tjaGlwIFNvQy4KPiA+PiAKPiA+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2Nr
Y2hpcC8wNDdFRUNGQy03RTU1LTQ0RUMtODk2Ri0xM0ZFMDQzMzNFNERAZ21haWwuY29tL1QvI20x
NzhhMzI1ZWEwZWJjNjQxODdhYWU0NzRkNzdjM2Y3YTllMGJjOTNkCj4gPj4+IAo+ID4KPiA+Cj4g
PkFoIG15IGJhZCEKPiA+T25lIHBhdGNoIHBhdGNoIHdhcyBjb21tZW50ZWQgLSBzbyBub3QgYWxs
IGRwIGNvZGUgd2FzIGFwcGxpZWQuCj4gPgo+ID5Ob3cgaXQgaXMgbXVjaCBiZXR0ZXI6Cj4gPgo+
ID5yb290QG15dGgtZnJvbnRlbmQtNTZiMGYwMThiNWUwOn4gIyBkbWVzZyB8IGdyZXAgZHJtCj4g
PlsgICAgOS43OTUzODBdIHBhbnRob3IgZmIwMDAwMDAuZ3B1OiBbZHJtXSBjbG9jayByYXRlID0g
MTk4MDAwMDAwCj4gPlsgICAgOS43OTYyNTddIHBhbnRob3IgZmIwMDAwMDAuZ3B1OiBbZHJtXSBt
YWxpLWc2MTAgaWQgMHhhODY3IG1ham9yIDB4MCBtaW5vciAweDAgc3RhdHVzIDB4NQo+ID5bICAg
IDkuNzk2MjYyXSBwYW50aG9yIGZiMDAwMDAwLmdwdTogW2RybV0gRmVhdHVyZXM6IEwyOjB4NzEy
MDMwNiBUaWxlcjoweDgwOSBNZW06MHgzMDEgTU1VOjB4MjgzMCBBUzoweGZmCj4gPlsgICAgOS43
OTYyNjVdIHBhbnRob3IgZmIwMDAwMDAuZ3B1OiBbZHJtXSBzaGFkZXJfcHJlc2VudD0weDUwMDA1
IGwyX3ByZXNlbnQ9MHgxIHRpbGVyX3ByZXNlbnQ9MHgxCj4gPlsgICAgOS44NTE4NjldIHBhbnRo
b3IgZmIwMDAwMDAuZ3B1OiBbZHJtXSBGaXJtd2FyZSBwcm90ZWN0ZWQgbW9kZSBlbnRyeSBub3Qg
YmUgc3VwcG9ydGVkLCBpZ25vcmluZwo+ID5bICAgIDkuODUxOTIxXSBwYW50aG9yIGZiMDAwMDAw
LmdwdTogW2RybV0gRmlybXdhcmUgZ2l0IHNoYTogODE0YjQ3YjU1MTE1OTA2N2I2N2EzN2M0ZTlh
ZGRhNDU4YWQ5ZDg1Mgo+ID5bICAgIDkuODUyMTI3XSBwYW50aG9yIGZiMDAwMDAwLmdwdTogW2Ry
bV0gQ1NGIEZXIHVzaW5nIGludGVyZmFjZSB2MS4xLjAsIEZlYXR1cmVzIDB4MCBJbnN0cnVtZW50
YXRpb24gZmVhdHVyZXMgMHg3MQo+ID5bICAgIDkuODUyNDM2XSBbZHJtXSBJbml0aWFsaXplZCBw
YW50aG9yIDEuMy4wIGZvciBmYjAwMDAwMC5ncHUgb24gbWlub3IgMAo+ID5bICAgMTAuMDAzMTA4
XSByb2NrY2hpcC1kcm0gZGlzcGxheS1zdWJzeXN0ZW06IGJvdW5kIGZkZDkwMDAwLnZvcCAob3Bz
IHZvcDJfY29tcG9uZW50X29wcykKPiA+WyAgIDEwLjAwNDcwNV0gcm9ja2NoaXAtZHJtIGRpc3Bs
YXktc3Vic3lzdGVtOiBib3VuZCBmZGU2MDAwMC5kcCAob3BzIGR3X2RwX3JvY2tjaGlwX2NvbXBv
bmVudF9vcHMpCj4gPlsgICAxMC4wMDYwODVdIHJvY2tjaGlwLWRybSBkaXNwbGF5LXN1YnN5c3Rl
bTogYm91bmQgZmRlYTAwMDAuaGRtaSAob3BzIGR3X2hkbWlfcXBfcm9ja2NoaXBfb3BzKQo+ID5b
ICAgMTAuMDA2Njc5XSBbZHJtXSBJbml0aWFsaXplZCByb2NrY2hpcCAxLjAuMCBmb3IgZGlzcGxh
eS1zdWJzeXN0ZW0gb24gbWlub3IgMQo+ID5bICAgMTAuMDA2NzM3XSByb2NrY2hpcC1kcm0gZGlz
cGxheS1zdWJzeXN0ZW06IFtkcm1dIENhbm5vdCBmaW5kIGFueSBjcnRjIG9yIHNpemVzCj4gPlsg
ICAxMC4wMDc2NjNdIHJvY2tjaGlwLWRybSBkaXNwbGF5LXN1YnN5c3RlbTogW2RybV0gQ2Fubm90
IGZpbmQgYW55IGNydGMgb3Igc2l6ZXMKPiA+Cj4gPlVuZm9ydHVuYXRlbHkgc3RpbGwgbm90aGlu
ZyBvbiBzY3JlZW4KPiA+Cj4gPmRyaSBzdGF0ZTogaHR0cHM6Ly9naXN0LmdpdGh1Yi5jb20vd2Fy
cG1lLzVlOTcxZGZkMmU5ZmQ1MmZhZTc2NjQxODMxY2ViZTQ2Cj4gPgo+ID5hbmQga2VybmVsIGRt
ZXNnIGh0dHBzOi8vdGVybWJpbi5jb20vcjBtMwo+ID4KPiA+aeKAmW0gbm90IHN1cmUgd2hhdCBp
cyBtaXNzaW5nIChzb21lIGR0cyBlbmFibGVtZW50IG9y4oCmLikKPiAKPiBGcm9tIHlvdXIgZHRz
LCAgSSBmaW5kIHlvdSB1c2UgZ3BpbyBmb3IgaHBkLCBJJ20gbm90IHN1cmUgaG93IHRvIGhhbmRs
ZSBpdCAgd2l0aCB1cHN0cmVhbSAgY29kZSBub3cuCj4gCj4gCj4gJmRwMSB7Cj4gCXN0YXR1cyA9
ICJva2F5IjsKPiAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAJcGluY3RybC0wID0gPCZk
cDFfaHBkPjsKPiAJaHBkLWdwaW9zID0gPCZncGlvMyBSS19QRDUgR1BJT19BQ1RJVkVfSElHSD47
CgpJZiB0aGlzIEdQSU8gaXMgaGFuZGxlZCBieSB0aGUgRFAgY29udHJvbGxlciBpdHNlbGYsIGl0
IHNob3VsZCBiZSBhIHBhcnQKb2YgRFAncyBub2RlLiBPdGhlcndpc2UgcGxlYXNlIG1vdmUgaXQg
dG8gdGhlIGNvcnJlY3Rwb25kaW5nCmRwLWNvbm5lY3RvciBub2RlLgoKPiB9Owo+IAo+IEkgc3Vn
Z2VzdCBhIGNoYW5nZSBsaWtlIHRoaXM6Cj4gCj4gJmRwMSB7Cj4gCXN0YXR1cyA9ICJva2F5IjsK
PiAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAgICAgICAgIHBpbmN0cmwtMCA9IDwmZHAx
bTBfcGlucz47Cj4gCj4gfTsKPiAKPiBBbmQgYWxzbyByZW1vdmUgZHAxX2hwZCBwaW5jdHJsIGlu
IHlvdXIgZHRzLgo+IAo+IFRoZW4gd2hlbiB5b3UgRFAgY2FibGUgcGx1Z2luLCB5b3UgY2FuIHJ1
biBjb21tYW5kIGFzIGJlbGxvdyB0byBzZWUgaWYgdGhlIGRyaXZlciBkZXRlY3RzIHRoZSBIUEQ6
Cj4gCj4gIyBjYXQgL3N5cy9jbGFzcy9kcm0vY2FyZDAtRFAtMS9zdGF0dXMgCj4gY29ubmVjdGVk
Cj4gIyAKCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
