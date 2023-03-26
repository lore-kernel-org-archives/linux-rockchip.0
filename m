Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23872C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Mar 2023 17:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JcIAVbU/1kZa90Sagu+Et6i/zKPDrkH/ipxkPwAUtVY=; b=hQIFpsllJL9AIo
	ew01wJ4dgp1zVDi7K/OYJe8LYeEZlSRGUEhU8pgz7yZuFX1nLagI91n8Wed6sdQ8mFpbsoTibOMFz
	S35+jWLrbMsXmdemnQEfL7kbGFPROEG7CBuk9J8U7T6Vt5evz+I/I+XOo1vvbt37PwagghDcyIVfu
	DnMu1NNR5c0T73+uZKTo7A9CIj+3Kh5noYCQDbalyg1e4d9VGl6TWiBSzR1F3Xu8v97z8CuQPVaD4
	famyi/Kyaw1a/9zLIAorF9JvrA1LG1QDFdSGOZUogbcfqCIFPpf4BNYkSMhesnlFML7KgxVQmr/1e
	b+V+sUoYjxCQ6lJrgGrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgUWx-008vXK-0t;
	Sun, 26 Mar 2023 17:51:47 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgUWs-008vWW-2H;
	Sun, 26 Mar 2023 17:51:44 +0000
Received: by mail-wr1-x435.google.com with SMTP id l12so6369370wrm.10;
        Sun, 26 Mar 2023 10:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679853101;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SQtHwxLiaWLJIGykUiHYl89Ngg0txqbdaptvAgwczSA=;
        b=HXRiXeGKYFyN1HdxGyEvmo3qTxzeR0tZQcIjFMCsO11EiMdZiOyyx/7sM4Jqkwyfmi
         BaZnw3Sc1LnonaCyGsfkKUfw0Tg3CL+Sce7ORpAGOuxj8/Es3j7RuPZulMuOMaNZLWwB
         ZFP8sbKwfJ6KX4UavGrcQcWfCJlDoHBm1jCeP/w56ebqBJjIGysPoJNsc1kGo7BcWfJG
         0JKylT+TRSMTCr/8Le7S2wwcxnOOPZbEC2i04Q04NoJjZ0YE/3NiItMvY2oeABpyjOKq
         lx+HNM7Zz2jpF4XdfFJx9S0wxS11Fs1Rv7zVKbp5x39yH6BPAzgpard02kkI8pC9MJs5
         464A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679853101;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SQtHwxLiaWLJIGykUiHYl89Ngg0txqbdaptvAgwczSA=;
        b=6T4qwSsEV//F38eP6/SNp7kc6j8kTUwSmF6nm3LVZ2rgVLsaN98bX6p1FBfNOLpVoq
         UhdcxCnuG5zGVtXlGZrPSgfADItLZhPlxyPBQb9FXQt2IWDSY4mhYJiodX1V0/woXUAd
         NPutBhkqnsoZoZL3R8JLaSSYsjaVFQOpgE2V2I1cwb9cdHmhhV7kSWt4R9/ch/m+5NUB
         64UAA8npagpbVG0KXFZRWWxghYeicuwKLKqnsAT5hwjyhiXbnsxGRuYru29l4fWv/Q9m
         +g61QpnsozgPJPWcqDWDCOiq7K5hU/GzCSOBdNJAGqBkl/9H2vkdis3ldERVFwNpN8jw
         2sjw==
X-Gm-Message-State: AAQBX9eJT5p2t/f7e2tHZ5xJ/IaYoYo6otHn2kdLpWaVMnrjerzaei4t
	3sg4QH+3Oz23sTrngr2fwQaO8cPp80GILLzYFAdqqwgH8FMheA==
X-Google-Smtp-Source: AKy350YEtmZvkRKbrZP0JupwIckeH8jk6XHajX9oLrJNa6AiLb+Tt3Djt4A71mPRRZcRxRb6OCxsuHXjxN4KaG5dqv4=
X-Received: by 2002:adf:ec82:0:b0:2ce:56eb:5892 with SMTP id
 z2-20020adfec82000000b002ce56eb5892mr1486107wrn.2.1679853100837; Sun, 26 Mar
 2023 10:51:40 -0700 (PDT)
MIME-Version: 1.0
References: <20230326001535.149539-1-bigbeeshane@gmail.com>
 <20230326001535.149539-2-bigbeeshane@gmail.com> <10930783-e1dd-5e75-a2cc-a09af862d949@linaro.org>
 <CABnpCuCzdbWTTp1Gc6wWPsB80J5GYw1QzKtZzzyEYU456E=1JA@mail.gmail.com>
 <1b9c8e19-10f2-824d-9b50-51e7a9287bb1@linaro.org> <CABnpCuAWm7jh19JKukOquPnZCwHoJispgDPGJzjYy6T_BZSnbg@mail.gmail.com>
 <717bfba9-1d70-ef09-9193-853a57117926@linaro.org>
In-Reply-To: <717bfba9-1d70-ef09-9193-853a57117926@linaro.org>
From: Shane Francis <bigbeeshane@gmail.com>
Date: Sun, 26 Mar 2023 18:51:29 +0100
Message-ID: <CABnpCuA7V9ti6BOoz+3Mq-f=PwgxL2K7rOhjo6tJ4QquSZbaSA@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: clock: update rk3588 clock definitions
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_105142_783369_D382E3AB 
X-CRM114-Status: GOOD (  16.88  )
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

PiBCb290bG9hZGVyIGFsc28gZG9lcyBub3QgdXNlIG1haW5saW5lIERUUywgc28gd2hlcmUgaXMg
ZXhhY3RseSB0aGUgcHJvYmxlbT8KCkluIHRoaXMgY2FzZSB1Ym9vdCBkb2VzIGxvYWQgdGhlIHRh
cmdldCBEVEIsIGFuZCBpdCBzZWVtcyBhIGNvbW1vbgpmdW5jdGlvbiBpbiByb2NrY2hpcHMKZG93
bnN0cmVhbSBib290IHByb2Nlc3MsIHNlZSA6CgpodHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAt
bGludXgvdS1ib290L2Jsb2IvZWYxZGQ2NTAwNDJmNjE5MTVjNDg1OWVjYzk0NjIzYTA5YTM1Mjlm
YS9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL2tlcm5lbF9kdGIuYyNMNzAKCkl0J3MgYSBwcmV0dHkg
bmFzdHkgcHJvY2VzcywgYnV0IHVuZm9ydHVuYXRlbHkgc29tZSBkZXZpY2VzIHdpbGwgYmUKc3R1
Y2sgd2l0aCBpdCBJIGd1ZXNzLCBhbmQgaW4KdGhvc2UgY2FzZXMgdGhleSB3aWxsIGhhdmUgaXNz
dWVzIGJvb3RpbmcgYSBtYWlubGluZSBrZXJuZWwuCgoKUmVnYXJkcwoKCk9uIFN1biwgTWFyIDI2
LCAyMDIzIGF0IDY6MjPigK9QTSBLcnp5c3p0b2YgS296bG93c2tpCjxrcnp5c3p0b2Yua296bG93
c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gMjYvMDMvMjAyMyAxODo1OSwgU2hhbmUgRnJh
bmNpcyB3cm90ZToKPiA+IEhpIEtyenlzenRvZgo+ID4KPiA+Cj4gPj4gU28gbWVudGlvbiB0aGlz
IGluIHRoZSBjb21taXQgbXNnLgo+ID4KPiA+PiBUaGVuIGNvbW1pdCBtc2cgc2hvdWxkIGFsc28g
bWVudGlvbiBpdC4KPiA+Cj4gPiBTb3JyeSBmb3Igbm90IGV4cGFuZGluZyBvbiB0aGlzIG1vcmUg
aW4gdGhlIGluaXRpYWwgY29tbWl0IG1lc3NhZ2UsIEkgd2lsbAo+ID4gZXhwYW5kIG9uIHRoaXMg
aW4gdGhlIG5leHQgcGF0Y2ggc2V0Lgo+ID4KPiA+IEhvd2V2ZXIgSSB0aGluayBpbiBnZW5lcmFs
IGZvciBtb3N0IG1vZGVybiBwbGF0Zm9ybXMgaXQgY2FuIGJlIGFzc3VtZWQKPiA+IHRoYXQgcmVw
bGFjaW5nIHRoZSBib290bG9hZGVyIGlzIG5vdCBhbHdheXMgc29tZXRoaW5nIHRoYXQgaXMgYWNo
aWV2YWJsZQo+ID4gZm9yIG9uZSByZWFzb24gb3IgYW5vdGhlcgo+Cj4gQm9vdGxvYWRlciBhbHNv
IGRvZXMgbm90IHVzZSBtYWlubGluZSBEVFMsIHNvIHdoZXJlIGlzIGV4YWN0bHkgdGhlIHByb2Js
ZW0/Cj4KPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
