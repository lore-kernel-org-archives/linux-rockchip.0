Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AA5DCD8CB9
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 07:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OkHqPwS0JzRvSKfhNZBhkfhqEb4AfF7skJ1fdAzSI/U=; b=ZRqQMhRrovEGR8
	986sKZsqDf2CLS7acnF7HXLQp7+nFnR2Ly3ynikMQnGEYqPAOFcP7YSA/2RLWPkALjUapgG6errP/
	FhoNTvJI18OnDbQDkYYQIIYL1LHCteifFt7BV9WOWnE3pyKIFraTzRH70kZugyO6kgZ1sNAMEQMpD
	ylOZCV6kJskeSM7BrQjaLXGlUDkrDFOU5+i7A9vuxsvTT28pSzfxSh6WbXGgQeIB4np0r7xVgjucU
	/la51MNKI2Akc84t9GDjdxoy7dz4Tr4qs02WPiq2G+B7CSAI8SQBrQeAl0VCbXgX7Qv2q5P22Z38X
	PaiNf8IYKSgN0EGA/0yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXa24-00000008tKL-2HhX;
	Thu, 11 Jun 2026 07:40:56 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXa22-00000008tJ1-1MeZ
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jun 2026 07:40:55 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-691c5776f95so1612881a12.3
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Jun 2026 00:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781163652; x=1781768452; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ac4jiWO7qGzODHYdUaXq5mQJG2QTT2zWwIpoN1/P2z4=;
        b=LGmnBXJHz8Hqzck7p0+eg2SPu7qs0U08eW2gAj080WwvPuxNdgjDozD7MmotjvsuaQ
         D1tNc/7mnXCnaWyHSaAQrtYAUuYiglBUGIIU+F7uFEXDA+yL6tbwaso55QPrZ+MD0sb9
         sk5JS2nzPD5+12xKQrxAN5qAkcSiO5CjNQY7dEvERsjCylM9M9RIFyCnWl2sJXiL06/p
         9teliZFs9qZRD3xT31nvKM3FU9eOE2/BfzmshtfuhrOFIpDs1nJ5wRseTYho4tV4tMTX
         JYxJEcF/C59+NlZxv4x2s6vmeCWZQSvZMHqn34zz0GP4JzTitbbq6n9vKCACB8zb7kiA
         YVqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781163652; x=1781768452;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ac4jiWO7qGzODHYdUaXq5mQJG2QTT2zWwIpoN1/P2z4=;
        b=syWIIApCvvwehcmdiI139r8Mq+i+753ERrZFINu848uAHIpgc9tITWuUo4VMGwB3VA
         IwsnerILQ2ZxeF61swWCNzkAJuvnS9ejoNraFJ/vIoMBjy2pZkmeBgmJMZgLx2SVQ1wC
         CR3mDmqNzGVEP/1Yl0YaFqYEyZJvhK/TCLH/WjdasuiE1+MoXuhhlDAZ2/CYPbVyvtVU
         6jG7PTXLogcd+vjW/BehITdXSEV3XD9qkEzjmZiANBUYQMRZBuZ/pWEJGlwQMYDyytkI
         oC976Xr6utQcJvW9mNe9wt8OdveQdAmxZIzTN5FEJuQvNB9Uu8b6vpCxwFH+h9NmIOCh
         7O8w==
X-Forwarded-Encrypted: i=1; AFNElJ9wY8KQXLoogC2WhXCVYEOuHxSaWt2AJPtgohRt8Ban4LQZhKZ+eRd61KMhb5S2Xxkrng7m1L7stVvsJcezjw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwEz4PC5L3tsxV7feXj9HgUvRyH80DgfhusZQx7gw3tlOgHuEn4
	mEJ/DdJsRSqQdRp+mImvj7CkK/EAad3xDjh248EUb7j7co7oWoaBkfdC
X-Gm-Gg: Acq92OHW8cjhXCLdxlOT0xhpVqaaFKF7ocszuV/1tDqdzRhZ/WoPPcgWVqNEOHDqV9O
	kBFVAGmz8dLLsKlfF1wY/Whnm9MMGDPpM+tXdA27rpv0eLZS5KhvxbKWuoIYOUm0LMMyWLkofuI
	Z2/XTvjTZW83PgbA4fEP3VJVssV4+E6TQ/USqJFcOEq0yzXhyw1hse1PK/ntXz45lm2TpeVpqgA
	yJWU7ekrpvzw52+UFvAHzeKvtQEzuzLMxEzEn5RvMHB4LgIF7mOSoF0vVP0c1mXeJsf7qrMjttU
	Eo3vS6znV6KPeXM4cRGaVw4T9rbYzs7QgdcKwcia4k7ATZdsWbla+wJU7IUlHtXwmGF6CEkzGzK
	8f/x70f9tQ+//w5LJdm7vyVOhawMWx5cy9MtoebUu6Wyhv4HpWrdD2aa39ALwVHVqVanaB2G1cL
	q7HThxxNUTUptswyMwLN6CTl7KG8Qgp1i0NuAamPgNj1tQpYdnHhqRP9wFXSIg4/O9LW2fcdqVp
	t45Y/Pv7pv0VRvzOb+0
X-Received: by 2002:a17:907:9726:b0:bd5:1482:930a with SMTP id a640c23a62f3a-bfc87bfca4emr70689766b.39.1781163652094;
        Thu, 11 Jun 2026 00:40:52 -0700 (PDT)
Received: from smtpclient.apple (89-66-237-154.dynamic.play.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bfcb0f14315sm23828666b.10.2026.06.11.00.40.51
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Jun 2026 00:40:51 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.600.51.1.1\))
Subject: Re: [BUG] rkvdec-vdpu383-h264: wrong pixels at horizontal de-blocking
 edges y=4 and y=12
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <1f178828-2cba-4120-bc6d-bb3be7b24073@symple.nz>
Date: Thu, 11 Jun 2026 09:40:40 +0200
Cc: linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Message-Id: <8673B89B-0F1F-400D-BD0B-31FC1647167A@gmail.com>
References: <52a01f1f-5b36-429b-96cf-f1a0a1c8f5e4@symple.nz>
 <5939C396-3A70-458F-8E6B-A55319929564@gmail.com>
 <4b3a9f32-807a-4b9e-8df2-d22f872d288e@symple.nz>
 <2CB1844A-3DB7-4973-98E0-0C141DD38B45@gmail.com>
 <1f178828-2cba-4120-bc6d-bb3be7b24073@symple.nz>
To: Simon Wright <simon@symple.nz>
X-Mailer: Apple Mail (2.3864.600.51.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_004054_381869_DFEBCDB4 
X-CRM114-Status: GOOD (  12.11  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFNpbW9uIFdyaWdodCA8c2ltb25Ac3ltcGxl
Lm56PiB3IGRuaXUgMTEgY3plIDIwMjYsIG8gZ29kei4gMDg6MTU6Cj4gCj4gSGkgUGlvdHIsCj4g
Cj4gU2hvcnQgdmVyc2lvbjogdGhlIGluLXRyZWUgcG9ydCBkaWRuJ3QgYWN0dWFsbHkgaGF2ZSB0
aGUgd2FybXVwIHJ1bm5pbmcgKGl0IG5lZWRzIGEKPiBwcm9iZS10aW1lIGJ1ZmZlciBhbGxvYyAr
IGEgcG1fcnVudGltZV9yZXN1bWUgaG9vaywgbm90IGp1c3QgdGhlIGRlY29kZSBjb2RlKS4gUmF0
aGVyCj4gdGhhbiBwaWNrIHRoYXQgYXBhcnQsIGhlcmUncyBhIGNsZWFuIHBhdGNoIHRoYXQgd2ly
ZXMgaXQgcHJvcGVybHkgLSBhbmQgSSd2ZSBub3cKPiB2YWxpZGF0ZWQgaXQgb24gaGFyZHdhcmUu
CgpIYXBweSB0byBoZWFyIHRoYXQuCihJIHdhcyBhZnJhaWQgeW91ciBleGNlbGxlbnQgd29yayB3
aWxsIG5vdCBzb2x2ZSBteSBpc3N1ZeKApikKCj4gCj4gVGhlIHBhdGNoIGlzIHNlbGYtY29udGFp
bmVkIGFuZCBuZWVkcyBubyBkZXZpY2V0cmVlIGNoYW5nZSAobWFpbmxpbmUgYWxyZWFkeSBtYXBz
IHRoZQo+ICJsaW5rIiByZWdpc3RlciBiYW5rIGl0IHVzZXMpOyBnaXQgYXBwbHktY2xlYW4gb24g
Ny4wIGFuZCA3LjEtcmM3Ogo+IAo+IAo+ICAgIGRtZXNnIHwgZ3JlcCAtaSAiZGVibG9jay1wcmlt
aW5nIgo+ICAgICMgZXhwZWN0OiAiUkszNTc2IEguMjY0IGRlYmxvY2stcHJpbWluZyB3b3JrYXJv
dW5kIGVuYWJsZWQiCj4gCgpJbSBzZWVpbmcgdGhpcyBzbyBhbGwgZ29vZC4KCj4gSSB2YWxpZGF0
ZWQgaXQgb24gdGhlIHR3byBSSzM1NzYgYm9hcmRzIGhlcmU6IG9uIGEgTmFub1BpIFI3NlMgdGhl
IHdhcm11cCB0YWtlcyBCQkIKPiBmcm9tIH4xOCUgb2YgZGVjb2RlcyBjb3JydXB0IHRvIDAvNDA7
IG9uIGFuIEFybVNvTSBTaWdlNSB0aGUgdW5wYXRjaGVkIEhXIGRlY29kZSBpcwo+IDEwMCUgY29y
cnVwdCwgYW5kIHRoZSBjb3JydXB0aW9uIGxvb2tzIGV4YWN0bHkgbGlrZSB0aGUgcGhvdG8geW91
IHNoYXJlZC4gQmVmb3JlL2FmdGVyCj4gY2FwdHVyZXM6CgpQbHMgZ2l2ZSBtZSBmZXcgZGF5cyAt
IEkgYXNrIHRlc3QgdXNlcnMgdG8gZ2l2ZSBkYWlseSB1c2FnZSB0ZXN0IHJ1bnMgdG8gbWFrZSBz
dXJlIHVzZXJzIHdpbGwgYmUgaGFwcHkKKFNvIGZhciBteSBzaG9ydCBsYWIgdGVzdHMgc2hvd2lu
ZyBhbGwgZ29vZCkKClNpbW9uOiBmYW50YXN0aWMgd29yayEKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
