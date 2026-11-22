Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D35606A320
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Nov 2026 06:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=pyUzvJDS;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=v4do4ea4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=G9pIdiTrol05cxb/kVCFOZkaz54Y3Xy7vFXn02/2pME=; b=pyUzvJDSk/kOlpTeNdcQDKPwlW
	9SX60/J3PBIboLYp9ihMienAiokUp6f2cu3Tv83CFXm+zMXnW3QXXC/zLhMBrqTO6Wx1C53TGq/Gq
	nGL/42BbgBwWLLGb1Uf0cmqBWEWQQ1AuJEsH00lf6fxkqEMU59xfqbUErIjA7hxlCqqJ+BaDzQwHt
	yEDfn/fxmQe/qkVIeNVB+yZhrJetP+qXs8WZFuFAPu9C4Yv+0DButbBXOto2/e6vEcOshyox0xLQJ
	MLU2dAN908NDJ0nz6RgcUCfni60s5aD3NqOxm4syuDTLTa++ZlVlfvnn1sMi5JaIfVjPksiSDGR/d
	XAleosaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV0dh-00000000lCk-27TD;
	Sun, 22 Nov 2026 06:01:25 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV0de-00000000lBr-0yXA
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Nov 2026 06:01:23 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-94965745d92so249603285a.2
        for <linux-rockchip@lists.infradead.org>; Sat, 21 Nov 2026 22:01:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795327280; cv=none;
        d=google.com; s=arc-20260327;
        b=dT3SUVkEDNOcfxnjvK7ibPjAMhyc67+mqHUnYXl41+BDAV/NTPtKn19yjCqIjfcGft
         oGXQ9K/TxctOZdnOaT5rVKkOUwn5MudW76li8zjCesYi5rt0GMsG8sT2jHL+iuQwhF8L
         xUqgAq9fSS9cvRutUC0brgXRawCTN4yBCEg03ipRtLnfELJPdRTwwylkNZtIFlvVTd8i
         cgEgSAuR8gdHdyT99z3s9THlzvtMnQxmBJGJfQd+XYFnBLmaCv432DRsHruydWpUm/0E
         tNQ9XzFJBVx2+7jUNIkKtIiBonorEzQIDAAYS5U4ywVnD/yJWUQazhLa6Oi3l/BubQzI
         CHgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=o+5QUw2PCrKwYeqKNjiahZ51YG2l39veBudVRc5XYKw=;
        fh=GOoBHPqd4/MajU+E24uA/8ktCmfhw9U4oCpJRcfHP6k=;
        b=YLFMgHW2HaPX/T2Ptp1DgsHTLSFkfkQvyHHlWCu1bHK9TsmrNImrQ/1r6GbdlR8LXd
         pmfc5gWBqnlJs6Ovo60Qp/Xsn/+RgKFk22mqbWyoIlCwG+TKzJFpQt2F4fDkNdGFq0vZ
         UEm2qKyL6sFMD678qWAXYTPNAGxjaS9napUNpkQc3hnE5b9oCwJ1B3jXfGD1lB3SuHs0
         RF048BUBYiHrkAJKSVOlk9ZgVoL29ueYRFbNGQ2QlGVYDYq/UB/jH6+UcByU0cocbh5U
         uITimhwY8vDy41ctrlM6RACBnSRRgqvQTmuf9J6dk5b8gieV2yZ13Uo5yjgQgYI4XO7E
         00Rg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795327280; x=1795932080; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=o+5QUw2PCrKwYeqKNjiahZ51YG2l39veBudVRc5XYKw=;
        b=v4do4ea4f71Zf5vGpEhh7syUfsVyS4hOTc4Gv95bp4qIJYgxJWfcSDmVGbbLbdfjzp
         1RjT5lr5QhWRsmYCRws7oRusbeDBd+cjVrXYvJ0LcFzCGVFW/To9kZ31M/V4tR/A1fbQ
         NeRPx7OHDhPw+7GnSEJTubNHvEOUDPdlsLI7UUftWRQdbV1iwGNLJbJWxe/8/xZhnvL+
         JuVsGEQYqZR6rsYagI1qyg55/aMvMs+BphbBo3vJMqLiqPIJWq73T76Wx8iioUlTcYms
         Z0kn2ZD6mnXGC5CG3DDsLTKV4cTaeNoAPQj0gZ7oeKcl52z5tjbod/xWvSYBNJdHMoB+
         tgKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795327280; x=1795932080;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=o+5QUw2PCrKwYeqKNjiahZ51YG2l39veBudVRc5XYKw=;
        b=kKkr+3G8DKvbVVyf67gFtIA3gmnmV5ZBQBVYf9B8JUwB6sKBKGK/3EzsXOBKzlvVmY
         pLSQ1VwH8auL0BjXAhlj8uDI7rP0WSGSI0I9AR52rInMZqSB9v8/M0zBnudvvsQnw8fL
         YR4++61B8GeqK18RrP29Acy4jzD5YG1eJuRk6axFS54MbkQwl6IR12O/gl9uQ443ByWU
         u4zhgLDfjP1J8ricFEU3dEbEkl3n1KyGng4liqonqTmdGScZBechIThJO0jAPZH8HJ0J
         iDwBPC3ne6vHMEHRUb1diRUUcBoDYln2CKC++pjQuEQZJuCxXWO+5N4zzdEdlzUNKWqI
         HKfA==
X-Gm-Message-State: APuU4Z8KG+hPMKatF2icLHSJRSlF6+d0WJ1ZTZfF5Rded7bo+y0jsHm+
	3qyTBNhxq2RolY9tPb2IgCDkK9JdSiwWtySnmkeJE+ekGL0KVqrDlcPUg8DN1+WE0B+id+QlvNX
	1LZdH1pZlGQ0KgqQsJumgfrl4NBAUjj4=
X-Gm-Gg: AZFdTZd2q3sNm/eoGl8yzyD/s3Bmvad1E0hD/nFtMHtQ2/JDprD6iFsceXzS10LZeHK
	p8WjOrTRwh+B6Z6Wn8RyCQVQbYSVb5aZBrBFqjXWZAY5mpZK7OaeLn/2JVCZMyrqz7xfCvzf2wo
	MAezhJ69grULkrXx1g6kDPKb1GJB2Psjio7t5Ip8AfbaYGPCAFB+sTxeo+Hc6sFWZVkYEFYrplk
	5ieynsh/CG+ngmpXKCyOKZPLIcItH6kQc6M9zTUkdAWFO1c8ayCOqnUqWsOfxGo/TVzDOnpbxx8
	21li7OrDnuJ+H1JYM3/yQiGTluJh72gYPvnISrjiGsLuTyPcOXd3tsV1w8TWaScSTkZ7ci0R9w8
	w0VTnENNqZpBN1UjkBwiyctN5RAI9OzYGcSLyoHwt3HkiDDdWCFsl59FXcIWiSbVManQz
X-Received: by 2002:a05:620a:6011:b0:949:733e:ddd8 with SMTP id
 af79cd13be357-949ba9ef1c1mr1209539385a.54.1795327280273; Sat, 21 Nov 2026
 22:01:20 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <5e6ebf68.3773.1a201cf3894.Coremail.220110626hanxuechao@alu.hit.edu.cn>
In-Reply-To: <5e6ebf68.3773.1a201cf3894.Coremail.220110626hanxuechao@alu.hit.edu.cn>
From: Alexey Charkov <alchark@gmail.com>
Date: Sun, 22 Nov 2026 10:01:09 +0400
X-Gm-Features: Aa3M54pZ7IdaxPC9CbQNRh_pul0VaAYHm51kF77R__jgCL4fpz9IgdTgLw29bAE
Message-ID: <CABjd4Yxr9NuLwhsUvvryy-Y5fXhSHUdU239vEW1=M60zVaWhMA@mail.gmail.com>
Subject: Re: [RFC] arm64: dts: rockchip: rk3576-lckfb-tspi-3m: sdmmc0_det_l question
To: 220110626hanxuechao@alu.hit.edu.cn
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
	Liu Changjie <liucj1228@outlook.com>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_220122_312539_5F07DAAC 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gU3VuLCBOb3YgMjIsIDIwMjYgYXQgOTo1MeKAr0FNIDwyMjAxMTA2MjZoYW54dWVjaGFvQGFs
dS5oaXQuZWR1LmNuPiB3cm90ZToKPgo+IEhpIEhlaWtvLCBMaXUgQ2hhbmdqaWUsCj4KPiBJIGhh
dmUgYSBxdWVzdGlvbiBhYm91dCB0aGUgU0QgY2FyZCBkZXRlY3QgY29uZmlndXJhdGlvbiBvZiB0
aGUgTENLRkIKPiBUYWlzaGFuIFBpIDNNLgo+Cj4gVGhlICZzZG1tYyBub2RlIHVzZXMgdGhlIGJv
YXJkLXNwZWNpZmljIHNkbW1jMF9kZXRfbCBncm91cDoKPgo+ICAgICBzZG1tYyB7Cj4gICAgICAg
ICBzZG1tYzBfZGV0X2w6IHNkbW1jMC1kZXQtbCB7Cj4gICAgICAgICAgICAgcm9ja2NoaXAscGlu
cyA9IDwwIFJLX1BBNyBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF91cD47Cj4gICAgICAgICB9Owo+
ICAgICB9Owo+Cj4gd2hpY2ggbXV4ZXMgR1BJTzBfQTcgYXMgYSBHUElPLCBtYXRjaGluZwo+Cj4g
ICAgIGNkLWdwaW9zID0gPCZncGlvMCBSS19QQTcgR1BJT19BQ1RJVkVfTE9XPjsKPgo+IFRoZSBT
b0MgZHRzaSBhbHJlYWR5IHByb3ZpZGVzIHNkbW1jMF9kZXQgZm9yIHRoZSBzYW1lIHBpbiwgdXNp
bmcgdGhlCj4gU0RNTUMwX0RFVG4gZnVuY3Rpb24gaW5zdGVhZDoKPgo+ICAgICBzZG1tYzBfZGV0
OiBzZG1tYzAtZGV0IHsKPiAgICAgICAgIHJvY2tjaGlwLHBpbnMgPSA8MCBSS19QQTcgMSAmcGNm
Z19wdWxsX3VwPjsKPiAgICAgfTsKPgo+IGFuZCBvdGhlciBSSzM1NzYgYm9hcmRzIHVzZSBpdCB0
b2dldGhlciB3aXRoIGNkLWdwaW9zLCBmb3IgZXhhbXBsZQo+IHJrMzU3Ni1ldmIxLXYxMC5kdHMg
YW5kIHJrMzU3Ni1ldmIyLXYxMC5kdHMuIEJvdGggZ3JvdXBzIGNvbmZpZ3VyZSB0aGUKPiBzYW1l
IHBpbiB3aXRoIHRoZSBzYW1lIHB1bGwtdXA7IG9ubHkgdGhlIHBpbiBmdW5jdGlvbiBkaWZmZXJz
Lgo+Cj4gSSB0ZXN0ZWQgdGhlIG5vZGUgYmVsb3cgb24gYSBUYWlzaGFuIFBpIDNNIHdpdGggbWFp
bmxpbmUgdjcuNC1yYzIsCj4gaS5lLiB3aXRoIHNkbW1jMF9kZXQgaW5zdGVhZCBvZiBzZG1tYzBf
ZGV0X2wgYW5kIGNkLWdwaW9zIHVuY2hhbmdlZCwKPiBhbmQgY2FyZCBpbnNlcnRpb24gYW5kIHJl
bW92YWwgYXJlIHN0aWxsIGRldGVjdGVkIGNvcnJlY3RseToKPgo+ICAgICAmc2RtbWMgewo+ICAg
ICAgICAgYnVzLXdpZHRoID0gPDQ+Owo+ICAgICAgICAgY2FwLXNkLWhpZ2hzcGVlZDsKPiAgICAg
ICAgIGNkLWdwaW9zID0gPCZncGlvMCBSS19QQTcgR1BJT19BQ1RJVkVfTE9XPjsKCkhlcmUgeW91
J3ZlIGp1c3QgdXNlZCB5b3VyIHBpbiBpbiB0aGUgR1BJTyBmdW5jdGlvbiB3aXRob3V0CmNvbmZp
Z3VyaW5nIGl0cyBtdXggaW50byBHUElPLiBUaGlzIGhhcHBlbnMgdG8gd29yayBpbiBMaW51eCBk
dWUgdG8KaG93IGl0cyBHUElPIGFuZCBwaW5jdHJsIHN1YnN5c3RlbXMgYXJlIHdpcmVkLCBidXQg
aXQncyBub3QgYSBjb3JyZWN0CmRlc2NyaXB0aW9uIG9mIHRoZSBoYXJkd2FyZSBhbmQgaXMgbGlr
ZWx5IHRvIGJyZWFrIHVuZGVyIG90aGVyIE9TZXMuCkUuZy4gVS1Cb290IGRvZXNuJ3QgaW1wbGlj
aXRseSByZS1tdXggdGhlIHBpbnMgdXNlZCBhcyBHUElPcyBhbmQgd291bGQKYmUgbGlrZWx5IHRv
IGJyZWFrLgoKT24gYSBtb3JlIGdlbmVyYWwgcG9pbnQsIHRoZSByZWFzb24gdG8gdXNlIEdQSU8g
Zm9yIGNhcmQgZGV0ZWN0aW9uIG9uClJvY2tjaGlwIGJvYXJkcyBpcyB0byBhbGxvdyB0aGUgY29u
dHJvbGxlciB0byBzbGVlcCB3aXRoIGl0cyBjbG9ja3MKZG93biB3aGVuIG5vIGNhcmQgaXMgaW5z
ZXJ0ZWQuIEl0IGNhbm5vdCBkZXRlY3QgY2FyZCBpbnNlcnRpb24gdmlhIGl0cwoibmF0aXZlIiBD
RCBwaW4gbW9kZSBpbiBzdWNoIGEgY2FzZSwgYnV0IEdQSU8gY2FuLgoKQmVzdCByZWdhcmRzLApB
bGV4ZXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
