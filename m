Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D52BCF45CB
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 19:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N2fl8N6M/SwEOi5m5RJCu+cQ7nHjWeDbWW5VYrB3+ws=; b=hGC20uFC82WdLr
	TH3Q+zrgBbdCumcxdIyI4DtOhBaDajdZ2AbueCBs9GIXNKze0TX3WWuh2nvN7un8GEzMIL/s8dyZH
	CBhLurcgzK8cXnN6h1NQvjbwxIxiw3PvgPmmhRqI/w3cEEY2+fJrPlOzH8Irgk9bzuGeXpasgH00d
	eSCsvvVAO4kNjTl1V+515j4MEnx1lmotTAEXV33xcuh8zce+o2RFkhmQo9YkMuYbDNjVVpF4hyjKP
	B9j5qfPnhr202D20RbF3Rp4uecOvj3GkfoSj6DhebX31w7f3hpjZMdMPdoD6Y2WN0zyrZOjSX2R63
	PUM4HF4QCjY2ZlacL/Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfNIT-00000005xg5-1GoA;
	Mon, 12 Jan 2026 19:09:49 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfNIR-00000005xet-0FNh
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jan 2026 19:09:48 +0000
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-450b3f60c31so3263928b6e.3
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Jan 2026 11:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768244986; x=1768849786; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3xgYxXVz7pTlrANFhJdQjdekTrJ2dMKKIhvMM9hszBs=;
        b=SXC9fmB2+/Use1tqeBt+zcww15KwXx8tNyzy8DH//NNg1m8okZLHLplrN0smO5G1bW
         AP9t8nZ+iWwJpyZPKVSlUz9ZGSJfbM3ZYBpsH9/60oK71NOxWxDi5EHk1lz0JQuR/sOr
         gxGNywrKWWylWKpkfT7FvRenOVg0ksGUop1CoQyQcK8sYREKOim6kuX/r7tF3nKJk0Uq
         LhR4E/1UiU7ZsUiJ23eCvCprYMUFVU0rkqe6MDTlxlEStsUROYPzE1BOgLdo19hO+xd1
         lzf1I+dOBy1UHmbwLfgvpzI8VnCvq3cJ+VulmRrNREC4czR7wX2/ke9GK5KTkZSAE9uI
         Pyqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768244986; x=1768849786;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3xgYxXVz7pTlrANFhJdQjdekTrJ2dMKKIhvMM9hszBs=;
        b=MczmBVqw+bfPEChvCoc48JXyTzKZjqsVg+6r1A6lKuzaOcs/ilF7ou02gMcA/rFgpw
         e3ie8N3FAu+syAC7YdTt1iiXt5gPM02XWHBuXepkq1BM7JpmU+NR6d1xX+7PAJ4mfJft
         z4u6erkeUa+48SuvJq9ZB6szdRkubaTbua1h5sZ8sGxBl1hrS0EF93PMBy19lYrCIyAZ
         4wONfMwCdfocvISfX1LjwDPQ0aFhJWnv74UCjJ2E1/pGU8hU4rI7kx6+Vqf+V8zq32Bt
         Rq8YAlK2vSkAhpDie68BSle7tXjxieTDq/T+CpGYKsRoEe9ZUFpAvISnwC2PIpcyvZL8
         UT/w==
X-Forwarded-Encrypted: i=1; AJvYcCU8CGsJyV35kijo1glTf+RXIQowN3kOpNk6kEFe3Pm5/rqY1afTN71yHIFX12aMVQMogI68qCAqIO9PMmepNA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzSPYB8IvfjHj0ucRVF1g7r3vFPQ8pxvWFm4pC+pwzw9iWTweBy
	NOjndakcy6Fpgdi4DHhZVhHzOxmEP8gYnwEK/7+JuDGIzKzW0jGjBOQ270ubN1i4lkMgncxfZGM
	wK9TxdDFeSVm42PnbmPDc7iUfQGNd2is=
X-Gm-Gg: AY/fxX5FNej1rPFW7WZ/uMno3qXyhAQIhtMrIhGIN+L5BtJ75TUBLT1Ct3xebymb4HJ
	y6bWmPVsA9tLYRUN49PSTIBBqq47YpUQJbIit8+6EMBdGD2y9bupLd9lYb+nwmEnz3pLFwACJHC
	+gsXM8Rh5RBy2tugLqezEWAd1yl+5ghOX3oWJJMcP1OZhkjPQd1ijDQuxP04i13nzOHr/vqU4Em
	CWLAFZWh8MEWSaWjcqTCGm+2MjZDj8htlf3QiKHdgRLrN+M1ZuLpezFYx9IMdAsEPE5tPrTgy28
	id7J6EctieotZDTpLMfnZNN0bQc=
X-Google-Smtp-Source: AGHT+IEwDmLeVhBFXh9EVFS3176R5WTz9bHFuYfygwgWJn3bI7U+szmlFfINN1R6jPICkSRAQjR3WA/cuwePtfThcjs=
X-Received: by 2002:a05:6808:18aa:b0:450:32f0:4887 with SMTP id
 5614622812f47-45a6bdfd28fmr7796703b6e.31.1768244985965; Mon, 12 Jan 2026
 11:09:45 -0800 (PST)
MIME-Version: 1.0
References: <20260110010715.1610159-1-mschirrmeister@gmail.com>
 <67ccb8f6-f9bd-4266-b79a-b688bd6d030b@rock-chips.com> <8536413c-8687-4d75-befb-8f25e54838bf@rock-chips.com>
 <c3ee063c-ca11-44e4-9e7d-3861a82db3ea@rock-chips.com> <a346ba30-43f1-4579-91e7-f10d2ccff039@rock-chips.com>
In-Reply-To: <a346ba30-43f1-4579-91e7-f10d2ccff039@rock-chips.com>
From: Marco Schirrmeister <mschirrmeister@gmail.com>
Date: Mon, 12 Jan 2026 20:09:35 +0100
X-Gm-Features: AZwV_QhduoYwkSZhCEw-t8HBLxeWwsxbNWZkTjbia4I_1o_9SGTrHxB5ncQ2lVs
Message-ID: <CAGJh8eCJEwSySH3jddmcLjdtbFkn2yDmoE4mH1snmZJQHopA0Q@mail.gmail.com>
Subject: Re: [PATCH v1 0/3] mmc: dw_mmc-rockchip: Add stability quirk for
 NanoPi R76S
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Chaoyi Chen <chaoyi.chen@rock-chips.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-rockchip@lists.infradead.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, heiko@sntech.de, ulf.hansson@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_110947_090650_CE7EF1BF 
X-CRM114-Status: GOOD (  17.50  )
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

T24gTW9uLCBKYW4gMTIsIDIwMjYgYXQgOTo1OOKAr0FNIFNoYXduIExpbiA8c2hhd24ubGluQHJv
Y2stY2hpcHMuY29tPiB3cm90ZToKCj4gPj4gSSBmb3VuZCBzZXZlcmFsIHByb2JsZW1zIG9uIFJL
MzU3NiBmb3Igc3VwcG9ydGluZyBzZCBjYXJkcy4gSSB3b25kZXJlZAo+ID4+IGhvdyBhbGwgdXBz
dHJlYW0gUkszNTc2IGJvYXJkcyBjbGFpbWluZyBTRCBzdXBwb3J0IHdvcms/IEFueXdheSwgSSBz
ZW50Cj4gPj4gYSBzZXJpZXMgdG8gdGhlIGxpc3RbMV0sIG5vdCBzdXJlIGlmIGl0IGZpeGVzIHRo
ZSBwcm9ibGVtIHlvdSBmYWNlZCwgYnV0Cj4gPj4gdGhlc2Ugc2hvdWxkIGJlIHRoZSByaWdodCBw
YXRjaGVzIHlvdSBzaG91bGQgaGF2ZSBhIHRyeS4KPiA+Pgo+ID4+IFsxXWh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzE3NjgxODk3NjgtOTYzMzMtMS1naXQtc2VuZC1lbWFp
bC1zaGF3bi5saW5Acm9jay1jaGlwcy5jb20vVC8jdAoKSSB3aWxsIGdpdmUgaXQgYSB0cnkgb24g
dGhlIE5hbm9QaSBSNzZTLiBIYXZlIGFsc28gb3JkZXJlZCBhIFJvY2sgNEQuCkJ1dCBpdCB3aWxs
IHRha2UgYSB3aGlsZSBiZWZvcmUgaXQgYXJyaXZlcy4KCj4gPiBjYW5ub3QgYmUgZGV0ZWN0ZWQu
IEhvd2V2ZXIsIGlmIHRoZSBTRCBjYXJkIGlzIGluc2VydGVkIGJlZm9yZSBMaW51eAo+ID4gYm9v
dHMsIGl0IGNhbiBhdCBsZWFzdCBzdGFydCB1cC4gSSBzdXNwZWN0IHRoYXQgb3RoZXIgYm9hcmRz
IG1heSBiZWhhdmUKPiA+IHRoZSBzYW1lIHdheSA6KQo+Cj4gVGhpcyBpcyB0cnVlLCBiZWNhdXNl
IC5nZXRfY2QoKSByZXR1cm5zIGNhcmQgcHJlc2VudCB3aGVuIGJvb3RpbmcgZm9yCj4gdGhlIGZp
cnN0IHRpbWUsIHlvdSB0aGUgb25seSB3YXkgZm9yIHVwc3RyZWFtIFJLMzU3NiBib2FyZHMgdG8g
dXNlIHNkCj4gY2FyZHMgaXMgdG8gaW5zZXJ0IHRoZSBjYXJkIGJlZm9yZSBib290aW5nLiBCdXQg
dGhlbiBob3QtcGx1ZyBjYXNlIHdpbGwKPiBub3QgYWJsZSB0byB3b3JrLgoKSSBjYW4gY29uZmly
bSB0aGUgc2FtZS4gc2QgY2FyZCBvbmx5IHdvcmtzLCB3aGVuIGluc2VydGVkIGJlZm9yZSBib290
LgpObyBob3RwbHVnLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
