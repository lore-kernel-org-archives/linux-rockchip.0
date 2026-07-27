Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CAAFC531D0
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 17:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cntOOJi5doBcirc5KOxmJtaUqz/r8qnRWXwK6XQazM0=; b=1mqisU4OagHntA
	bRm1lMIfBfsmVQnRBm2db+xLatYXbJx1KtXiw4Jf8NAo96P2pYP6e4rj67o4SDVPfk/MLWq1lh/E/
	25Asp14EsPnXAPmJXoWIfGeOfPgD6x0DHvBuudZmHV+mkd/a7ooowSM5ZXnXXR4pqCD/lQVsLsUuP
	1M9gpzBme8q369nOrVVmrQJULJTvfgmaOmGmEhYhHDTciT9zxbUINZUmPtq34RE6bn6CbuwdL7mIS
	yFvdYSeWwiYyw1jFW2kQGvK6qz+500g1XhpQt6pzpo1RYPx68VY4pHVoPfx6KFhWawZLmMo7OpVfy
	IQHd6bI0Kj8VUS5fiHEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woPM2-00000003YzP-2Q7U;
	Mon, 27 Jul 2026 17:43:06 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woPLz-00000003YxV-1fwA
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Jul 2026 17:43:05 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-848479c9bd5so2270782b3a.3
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Jul 2026 10:43:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785174182; cv=none;
        d=google.com; s=arc-20260327;
        b=WNhcjq5sGyp1rmEM81HCyQwAKjGY6lZuVye6T/q1J04G/+ojcny/qtoThELd7jdZ9y
         TdjsZdBl7guQiReUTmXmGIJcCojbuvOJhHPmqxAvUgfrCH3Aqg/ir7myxUJojOEw1PzE
         IkADKzPZWAwzQGMO6VfSqPgFMnm6Xgu1icdm8IrRzoccY37GK73sqYB4F7L7aiydpoi4
         b7bRxvAK3RFkNqcJgRfSJz9Nb34YEz29JuvG18D1sLOyRBXwk0rGPwE9OVryc5Nz2R1u
         I0gWVlFUSbGSiMOPmHZ6pEFGHzv+Gxvn71mmxSsJTVLc0oVoRC//HqnKxEIvSQek0taB
         o8Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=GE2Gc7S3rQsVMvQ6VTSOfR/xqWu60Jvi8kVxQRl1IrM=;
        fh=rPG8CkPdFDF6YAY+zLXulHY8VZxYkOlbLCucl2Ta3H4=;
        b=Hhef0o8QfyOaBG15qVmGJpN486pkwoHn8Xc1Dwmse8mL2LM67CGPIDeoiDjjqKNyYG
         1/z+ZHtkLH36bWKdDM5zc+TW0xZnQ5lgmvzlemOmsky14CCDnTH+iWuuFZE7xaHN6CQN
         x1h7jsZ9LIk9DQ2vaA8frziJVHQa0d5T9fahAqsHl4pUus0NUh80GEsIQZOsFXjQm2Po
         iZMyt4P6i2FDDjwrJMKhHVv+sYbZx1yHtuKRANQFK5b7v1zKdS48aKeifjZ01GyC1Jg/
         izg79VGXjABTjflmMHA0mR8pMw215pQeC1JXSOHJcbO/m6vG7KvZzxxzph099DH1XMgC
         pCUA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785174182; x=1785778982; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=GE2Gc7S3rQsVMvQ6VTSOfR/xqWu60Jvi8kVxQRl1IrM=;
        b=AYf8PYK31sUxJX4yEDHJ63ENZ5/HKyayHaJu6/BSKPl+maRV0F0VKKpxbFkRHAVGWd
         w3VUrjRiT0py4UKgfjxlPOrYYZfiMgUKmZ2A7QFUikN6dMzr/FTdIx/YVv9l/9Rogbzi
         gGOBscIYkF2480cmKqti8H6YrCe7dgV+IoN/o5OxW+sqnrBU3Cd85hEJzz6jhfzpoMvr
         JLx84P373vhb4sxPaK4z7Eb/EJGZYdJ+LoLH7m5Q8Wr4dBqbaIILU4EeHJfg+GFO86sl
         EC4lOMYxg5o1/JcRBP3ZaxV99eKVzqXpbo1cHtf5e0emP4dd3r+Iirqjob+8KttKznzZ
         ix4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785174182; x=1785778982;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GE2Gc7S3rQsVMvQ6VTSOfR/xqWu60Jvi8kVxQRl1IrM=;
        b=Gt4Yn9X6NA5TmeE2pUHAT32L+hDSvcTIw1GEfQfzRLoY50oRqsNi1A5NrRYKsiLviq
         42UjaqVpSZzurxnAKHG4Ip6NvIwNDCm94hlzbFw6yOVK+g5L94TB0vd4xBqEykXxyblG
         Z7M9wHL5uuYO9ju1oP0Yk1mAKayJduW27spMUQ9ASmvwRT1pvVQFRzBjHlrVo9DuE9Ez
         Ia+HQapi2BoGaVOFOwXU8X6xwPB3pGPd0+HeEZDyIIzCgE/KJWHMqbCokiHsq71XGoPM
         yrVSLHhWp1D9N7JNIzL6x3DCrmMGDwDjXgv05jcrCsMLPkv8WmNs8jWwTyIBM/CqGaMq
         vpNg==
X-Forwarded-Encrypted: i=1; AHgh+Roz0rdBwGT5mo5SsbB1VEEOmkGkABO2t0pu4tyEZIqgcPR+Mu3eRegK0vxo7FJ0orsJ8RTRXRYsSGvPEN8aOQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxEyolKRTLfYFbcAZ5t+SXVAYD4TqLMwPg1q7IDiuY6NnXagwjb
	pXW9U4K9VCvGNe4zdSS3ML0guJ77GwTJLvOrUNPubcOCJv1pDNbufQ2kDi5ZlgDLXh9V0uFMSom
	3F8a5lIoWAdozRvD7VdTTPtB1hSvMUA==
X-Gm-Gg: AR+sD12PrQuIAdV1myu+4u2Mt9Dvb/HbtrR2AbzFkRCHitqJoc4tVKCifiYX6UFIlx+
	EZZjaBVY9xxGDcHUUB7KAkEoxPE3lpBEy+17tubBCUsSI3ZflhVOvjEPEx+IVbMBMc7aiEMKYrE
	KcYAfh/bAtBU6MQyYBm0a+GQQwK9gIoRAcFAKOOlsK0KGaVCATLnUbwBRnFP+nv67FhgNG3J2lv
	Ss/IxWJEmYXFw7XZfeFz+oecK/avQaxzePXjyyJdIDnePJv2cBKzWp/wJ/644lQTNlD7V0kmpU6
	T53EreUwQeqbu8+aHQ==
X-Received: by 2002:a05:6a00:4285:b0:845:31a6:d84d with SMTP id
 d2e1a72fcca58-84e594050a0mr7460731b3a.7.1785174182279; Mon, 27 Jul 2026
 10:43:02 -0700 (PDT)
MIME-Version: 1.0
References: <20260726-b4-add-rkvdec2-vp9-vdpu381-v1-0-180fb2d1f10c@gmail.com>
 <20260726-b4-add-rkvdec2-vp9-vdpu381-v1-4-180fb2d1f10c@gmail.com>
 <cb8XVJu6RUmEjMZpl7NA1g@collabora.com> <CAEWPSH7rQv-yZ+dL+mZi6Mt3rj6gUZhp3r7_Gpjy8=1OArqwUA@mail.gmail.com>
In-Reply-To: <CAEWPSH7rQv-yZ+dL+mZi6Mt3rj6gUZhp3r7_Gpjy8=1OArqwUA@mail.gmail.com>
From: Francesco Saverio Pavone <pavone.lawyer@gmail.com>
Date: Mon, 27 Jul 2026 19:42:49 +0200
X-Gm-Features: AUfX_mzH05lg1Xshmnhdl4MT0s8-l2--8m9czgeFTmnU7hUrCIbQUFu1WK57mGY
Message-ID: <CAMhzuboSqvGxV3C1YSRqtopGm=sTo9S9YD5fh7GVHjAebH2wOw@mail.gmail.com>
Subject: Re: [PATCH 4/4] media: rkvdec: align bytesperline to 64 bytes in rkvdec_fill_decoded_pixfmt()
To: Igor Paunovic <royalnet026@gmail.com>
Cc: Detlev Casanova <detlev.casanova@collabora.com>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, 
	Venkata Atchuta Bheemeswara Sarma Darbha <vdarbha0473@gmail.com>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_104303_451395_6BA72AB2 
X-CRM114-Status: GOOD (  36.32  )
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

SGksCgo+IFRoZSAxMC1iaXQgY2FwdHVyZSBmb3JtYXQgaXMgTlYxNSwgd2hvc2UgbHVtYSBzdHJp
ZGUgaXMgd2lkdGggKiA1IC8gNAo+IFsuLi5dIHdoaWxlIHRoZSBWRFBVMzgxIG5lZWRzIHRoZSBs
dW1hIHN0cmlkZSA2NC1ieXRlIGFsaWduZWQgKDI0MzIpLgo+IFsuLi5dIHNvIE5WMTUgY29tZXMg
b3V0IHVuYWxpZ25lZCBhbmQgdGhlIGRlY29kZWQgZnJhbWUgaXMgY29ycnVwdGVkCj4gd2l0aG91
dCB0aGlzLiBJIGNhbiBzaG93IHRoZSBiZWZvcmUvYWZ0ZXIgb24gYSAxMC1iaXQgdmVjdG9yIGlm
IHRoYXQncwo+IHVzZWZ1bC4KClRoZSBhcml0aG1ldGljIGlzIHJpZ2h0LCB0aGUgaGFyZHdhcmUg
cmVxdWlyZW1lbnQgZG9lcyBub3QgcmVwcm9kdWNlIGhlcmUuCkkgYnVpbHQgdGhlIHNhbWUgdHJl
ZSB0d2ljZSwgY2hhbmdpbmcgb25seSB0aGlzIGh1bmssIGFuZCBtZWFzdXJlZCBvbiBhClJvY2sg
NUIrIChSSzM1ODgsIFZEUFUzODEpOgp0ZXN0IHdpdGggQUxJR04gd2l0aG91dCBBTElHTiBsaWJ2
cHgKMTkyMHgxMDgwIFZQOSBQcm9maWxlIDIsIDEwLWJpdCA4ZjQwZmFkZGQzMmUgOGY0MGZhZGRk
MzJlIDhmNDBmYWRkZDMyZQoxMDgweDE5MjAgVlA5IFByb2ZpbGUgMiwgMTAtYml0IDY4NDAwYjkx
M2NhYSA2ODQwMGI5MTNjYWEgNjg0MDBiOTEzY2FhCmZsdXN0ZXIgVlA5LVRFU1QtVkVDVE9SUyAy
MjQvMzA1IDIyNC8zMDUgLQpCb3RoIGNsaXBzIGFyZSB0aGUgc2hhcGVzIHRoYXQgcmVhY2ggdGhl
IEFMSUdOOiAxOTIwIGdpdmVzIGFuIE5WMTUgc3RyaWRlCm9mIDI0MDAgKDI0MDAgJSA2NCA9IDMy
KSBhbmQgdGhlIHBvcnRyYWl0IGNsaXAgcm91bmRzIHRvIGEgY2FwdHVyZSB3aWR0aCBvZgoxMDg4
LCBzdHJpZGUgMTM2MCAoMTM2MCAlIDY0ID0gMTYpLiBtZDUgaXMgb2YgdGhlIGRlY29kZWQgZnJh
bWVzIGNvbnZlcnRlZAp0byBJNDIwLCBzYW1lIHBpcGVsaW5lIGZvciBoYXJkd2FyZSBhbmQgc29m
dHdhcmUuIFRoZSA4LWJpdCBjb250cm9sIG9uIHRoZQpzYW1lIHBpcGVsaW5lIGlzIGJ5dGUtaWRl
bnRpY2FsIHRvbywgc28gdGhlIGNvbXBhcmlzb24gaXMgbm90IGhpZGluZyBhCmNvbnZlcnNpb24g
YXJ0ZWZhY3QuClRoYXQgbWF0Y2hlcyB3aGF0IHRoZSByZWdpc3RlcnMgYXNrIGZvci4gVGhlIHN0
cmlkZSBnb2VzIGludG8gdGhlIGhhcmR3YXJlCmFzIGJ5dGVzcGVybGluZSAvIDE2ICh5X2hvcl92
aXJzdHJpZGUsIHV2X2hvcl92aXJzdHJpZGUsIGFuZCB0aGUgVlA5CnJlZmVyZW5jZSBvbmVzKSwg
YW5kIHdpZHRoICogNSAvIDQgd2l0aCBhIDY0LWFsaWduZWQgd2lkdGggaXMgYWx3YXlzIGEKbXVs
dGlwbGUgb2YgMTYsIHNvIHN0ZXBfd2lkdGggPSA2NCBhbHJlYWR5IGd1YXJhbnRlZXMgdGhlIGFs
aWdubWVudCB0aGUKaGFyZHdhcmUgbmVlZHMuIFJvdW5kaW5nIHRvIDY0IG9ubHkgcGFkcyB0aGUg
c3RyaWRlIHJlcG9ydGVkIHRvIHVzZXJzcGFjZSwKZm9yIGV2ZXJ5IHZhcmlhbnQgYW5kIGV2ZXJ5
IGNvZGVkIGZvcm1hdCwgbm90IGp1c3QgdGhlIDEwLWJpdCBjYXNlLgpJZiB5b3UgZGlkIHNlZSBj
b3JydXB0aW9uIHdpdGhvdXQgdGhpcywgSSBzdXNwZWN0IHRoZSBvdGhlciBodW5rIGluIHRoZQpz
YW1lIHBhdGNoIHdhcyBtaXNzaW5nIHRvby4gVGFraW5nIHRoZSBNViBhbmQgcmVmZXJlbmNlIHBp
dGNoIGZyb20KYnl0ZXNwZXJsaW5lIGluc3RlYWQgb2YgdGhlIGJpdHN0cmVhbSB3aWR0aCBpcyB0
aGUgcGFydCB0aGF0IG1ha2VzIHRoZQpyZWdpc3RlciB2YWx1ZSBhbmQgdGhlIGJ1ZmZlciBsYXlv
dXQgYWdyZWUsIGFuZCBpdCBpcyB0aGUgb25lIEkgd291bGQga2VlcC4KTXkgQS9CIGhhcyB0aGF0
IGh1bmsgb24gYm90aCBzaWRlcywgc28gd2hhdCBJIHZhcmllZCBpcyBvbmx5IHRoZSBBTElHTi4g
SWYKeW91IGhhdmUgYSB2ZWN0b3IgdGhhdCBmYWlscyB3aXRoIHRoZSBwaXRjaCBmaXggaW4gcGxh
Y2UgYW5kIHRoZSBBTElHTgpyZW1vdmVkLCBJIHdvdWxkIGxpa2UgdG8gcnVuIGl0LgpPbmUgc21h
bGwgdGhpbmcgb24gdGhlIHYyIHN1Z2dlc3Rpb246IHY0bDJfZmlsbF9waXhmbXRfbXBfYWxpZ25l
ZCgpIGRvZXMKbm90IGV4aXN0IGluIDcuMi1yYzUuIHY0bDItY29tbW9uLmggZXhwb3J0cyB2NGwy
X2ZpbGxfcGl4Zm10KCkgYW5kCnY0bDJfZmlsbF9waXhmbXRfbXAoKSBvbmx5LCBzbyB0aGF0IHdv
dWxkIGJlIGEgbmV3IGhlbHBlciB0byBhZGQgcmF0aGVyCnRoYW4gYSBkcm9wLWluIHJlcGxhY2Vt
ZW50LgoKU2F2CgpJbCBnaW9ybm8gbHVuIDI3IGx1ZyAyMDI2IGFsbGUgb3JlIDE5OjA3IElnb3Ig
UGF1bm92aWMKPHJveWFsbmV0MDI2QGdtYWlsLmNvbT4gaGEgc2NyaXR0bzoKPgo+IEhpCj4KPiA+
IFRoaXMgc2hvdWxkbid0IGJlIG5lZWRlZC4gQXMgeW91IHNldCBzdGVwX3dpZHRoIHRvIDY0LAo+
ID4gdjRsMl9hcHBseV9mcm1zaXplX2NvbnN0cmFpbnRzKCkgc2hvdWxkIGFscmVhZHkgZG8gdGhl
IGFsaWdubWVudC4KPiA+IERvIHlvdSBoYXZlIG1vcmUgY29udGV4dCBhcyB0byB3aGVuIHdpZHRo
IGlzIG5vdCBhbGlnbmVkID8KPgo+IFlvdSdyZSByaWdodCB0aGF0IHRoZSB3aWR0aCBpcyBhbGln
bmVkIC0tIHN0ZXBfd2lkdGggPSA2NCBoYW5kbGVzIHRoYXQuCj4gVGhpcyBpc24ndCB0aGUgd2lk
dGggdGhvdWdoLCBpdCdzIHRoZSBzdHJpZGUsIGFuZCBpdCBvbmx5IGJpdGVzIG9uIHRoZQo+IDEw
LWJpdCAoUHJvZmlsZSAyKSBjYXB0dXJlIGZvcm1hdC4KPgo+IEZvciA4LWJpdCBOVjEyIHRoZSBs
dW1hIHN0cmlkZSBlcXVhbHMgdGhlIHdpZHRoLCBzbyBvbmNlIHRoZSB3aWR0aCBpcwo+IDY0LWFs
aWduZWQgdGhlIHN0cmlkZSBpcyB0b28gYW5kIHRoaXMgYmxvY2sgaXMgYSBuby1vcC4KPgo+IFRo
ZSAxMC1iaXQgY2FwdHVyZSBmb3JtYXQgaXMgTlYxNSwgd2hvc2UgbHVtYSBzdHJpZGUgaXMgd2lk
dGggKiA1IC8gNAo+IChicHAgezUsIDEwfSwgYnBwX2RpdiB7NCwgNH0gaW4gdjRsMi1jb21tb24u
YykuIFRoYXQgaXNuJ3QgYSBtdWx0aXBsZQo+IG9mIDY0IGV2ZW4gd2hlbiB0aGUgd2lkdGggaXM6
IGEgMTkyMC13aWRlIFByb2ZpbGUgMiBmcmFtZSBnaXZlcyBhCj4gMjQwMC1ieXRlIHN0cmlkZSwg
d2hpbGUgdGhlIFZEUFUzODEgbmVlZHMgdGhlIGx1bWEgc3RyaWRlIDY0LWJ5dGUKPiBhbGlnbmVk
ICgyNDMyKS4gdjRsMl9hcHBseV9mcm1zaXplX2NvbnN0cmFpbnRzKCkgb25seSByb3VuZHMgdGhl
IHdpZHRoCj4gYW5kIGhlaWdodCwgYW5kIHY0bDJfZmlsbF9waXhmbXRfbXAoKSBmaWxscyB0aGUg
c3RyaWRlIHdpdGggYWxpZ25tZW50IDEsCj4gc28gTlYxNSBjb21lcyBvdXQgdW5hbGlnbmVkIGFu
ZCB0aGUgZGVjb2RlZCBmcmFtZSBpcyBjb3JydXB0ZWQgd2l0aG91dAo+IHRoaXMuIEkgY2FuIHNo
b3cgdGhlIGJlZm9yZS9hZnRlciBvbiBhIDEwLWJpdCB2ZWN0b3IgaWYgdGhhdCdzIHVzZWZ1bC4K
Pgo+IElmIHlvdSdkIHJhdGhlciBleHByZXNzIGl0IHRocm91Z2ggdGhlIGZyYW1ld29yayB0aGFu
IHdpdGggYSBtYW51YWwKPiBBTElHTigpIGhlcmUsIHY0bDJfZmlsbF9waXhmbXRfbXBfYWxpZ25l
ZChwaXhmbXQsIHBpeGVsZm9ybWF0LCB3aWR0aCwKPiBoZWlnaHQsIDY0KSBwcm9kdWNlcyB0aGUg
c2FtZSBieXRlc3BlcmxpbmUgYW5kIHNpemVpbWFnZSAtLSBoYXBweSB0bwo+IHN3aXRjaCB0byB0
aGF0IGluIHYyLgo+Cj4gSWdvcgo+Cj4KPiBPbiBNb24sIEp1bCAyNywgMjAyNiBhdCA1OjU44oCv
UE0gRGV0bGV2IENhc2Fub3ZhCj4gPGRldGxldi5jYXNhbm92YUBjb2xsYWJvcmEuY29tPiB3cm90
ZToKPiA+Cj4gPiBIaSAhCj4gPgo+ID4gT24gU3VuZGF5LCAyNiBKdWx5IDIwMjYgMTY6MjU6Mzcg
RURUIFZlbmthdGEgQXRjaHV0YSBCaGVlbWVzd2FyYSBTYXJtYSBEYXJiaGEKPiA+IHdyb3RlOgo+
ID4gPiBGcm9tOiBJZ29yIFBhdW5vdmljIDxyb3lhbG5ldDAyNkBnbWFpbC5jb20+Cj4gPiA+Cj4g
PiA+IEVuc3VyZSBieXRlc3BlcmxpbmUgaXMgNjQtYnl0ZSBhbGlnbmVkIGFuZCBzY2FsZSBzaXpl
aW1hZ2UgYWNjb3JkaW5nbHkuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IElnb3IgUGF1bm92
aWMgPHJveWFsbmV0MDI2QGdtYWlsLmNvbT4KPiA+ID4gU2lnbmVkLW9mZi1ieTogRnJhbmNlc2Nv
IFNhdmVyaW8gUGF2b25lIDxwYXZvbmUubGF3eWVyQGdtYWlsLmNvbT4KPiA+ID4gU2lnbmVkLW9m
Zi1ieTogVmVua2F0YSBBdGNodXRhIEJoZWVtZXN3YXJhIFNhcm1hIERhcmJoYQo+ID4gPiA8dmRh
cmJoYTA0NzNAZ21haWwuY29tPiAtLS0KPiA+ID4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9j
a2NoaXAvcmt2ZGVjL3JrdmRlYy5jIHwgMTIgKysrKysrKysrKy0tCj4gPiA+ICAxIGZpbGUgY2hh
bmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+ID4KPiA+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmt2ZGVjL3JrdmRlYy5jCj4g
PiA+IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya3ZkZWMvcmt2ZGVjLmMgaW5k
ZXgKPiA+ID4gNDM2YmI0NjBmMDRlLi42YWI2NTMwYjFjYzkgMTAwNjQ0Cj4gPiA+IC0tLSBhL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmt2ZGVjL3JrdmRlYy5jCj4gPiA+ICsrKyBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmt2ZGVjL3JrdmRlYy5jCj4gPiA+IEBA
IC0xMDIsMTIgKzEwMiwyMCBAQCBzdGF0aWMgdm9pZCBya3ZkZWNfZmlsbF9kZWNvZGVkX3BpeGZt
dChzdHJ1Y3QKPiA+ID4gcmt2ZGVjX2N0eCAqY3R4LCBzdHJ1Y3QgdjRsMl9waXhfZm9ybWF0X21w
bGFuZSAqcGl4X21wKQo+ID4gPiAgewo+ID4gPiAgICAgICBjb25zdCBzdHJ1Y3Qgcmt2ZGVjX3Zh
cmlhbnQgKnZhcmlhbnQgPSBjdHgtPmRldi0+dmFyaWFudDsKPiA+ID4gKyAgICAgc3RydWN0IHY0
bDJfcGxhbmVfcGl4X2Zvcm1hdCAqcGxhbmUgPSAmcGl4X21wLT5wbGFuZV9mbXRbMF07Cj4gPiA+
ICsgICAgIHUzMiBhbGlnbmVkX2JwbDsKPiA+ID4KPiA+ID4gICAgICAgdjRsMl9maWxsX3BpeGZt
dF9tcChwaXhfbXAsIHBpeF9tcC0+cGl4ZWxmb3JtYXQsIHBpeF9tcC0+d2lkdGgsCj4gPiA+IHBp
eF9tcC0+aGVpZ2h0KTsKPiA+ID4KPiA+ID4gLSAgICAgY3R4LT5jb2xtdl9vZmZzZXQgPSBwaXhf
bXAtPnBsYW5lX2ZtdFswXS5zaXplaW1hZ2U7Cj4gPiA+ICsgICAgIC8qIGVuc3VyZSBicGwgaXMg
NjQgYnl0ZSBhbGlnbmVkIGFuZCBzY2FsZSBzaXplaW1hZ2UgYWNjb3JkaW5nbHkuCj4gPiAqLwo+
ID4gPiArICAgICBhbGlnbmVkX2JwbCA9IEFMSUdOKHBsYW5lLT5ieXRlc3BlcmxpbmUsIDY0KTsK
PiA+ID4gKyAgICAgaWYgKGFsaWduZWRfYnBsICE9IHBsYW5lLT5ieXRlc3BlcmxpbmUpIHsKPiA+
ID4gKyAgICAgICAgICAgICBwbGFuZS0+c2l6ZWltYWdlID0gcGxhbmUtPnNpemVpbWFnZSAvIHBs
YW5lLQo+ID4gPmJ5dGVzcGVybGluZSAqIGFsaWduZWRfYnBsOwo+ID4gPiArICAgICAgICAgICAg
IHBsYW5lLT5ieXRlc3BlcmxpbmUgPSBhbGlnbmVkX2JwbDsKPiA+ID4gKyAgICAgfQo+ID4KPiA+
IFRoaXMgc2hvdWxkbid0IGJlIG5lZWRlZC4gQXMgeW91IHNldCBzdGVwX3dpZHRoIHRvIDY0LAo+
ID4gdjRsMl9hcHBseV9mcm1zaXplX2NvbnN0cmFpbnRzKCkgc2hvdWxkIGFscmVhZHkgZG8gdGhl
IGFsaWdubWVudC4KPiA+Cj4gPiBEbyB5b3UgaGF2ZSBtb3JlIGNvbnRleHQgYXMgdG8gd2hlbiB3
aWR0aCBpcyBub3QgYWxpZ25lZCA/Cj4gPgo+ID4gPgo+ID4gPiAtICAgICBwaXhfbXAtPnBsYW5l
X2ZtdFswXS5zaXplaW1hZ2UgKz0gdmFyaWFudC0+b3BzLT5jb2xtdl9zaXplKHBpeF9tcC0KPiA+
ID53aWR0aCwKPiA+ID4gcGl4X21wLT5oZWlnaHQpOyArICAgIGN0eC0+Y29sbXZfb2Zmc2V0ID0g
cGxhbmUtPnNpemVpbWFnZTsKPiA+ID4gKyAgICAgcGxhbmUtPnNpemVpbWFnZSArPSB2YXJpYW50
LT5vcHMtPmNvbG12X3NpemUocGl4X21wLT53aWR0aCwKPiA+ID4gcGl4X21wLT5oZWlnaHQpOyB9
Cj4gPiA+Cj4gPiA+ICBzdGF0aWMgdm9pZCBya3ZkZWNfcmVzZXRfZm10KHN0cnVjdCBya3ZkZWNf
Y3R4ICpjdHgsIHN0cnVjdCB2NGwyX2Zvcm1hdCAqZiwKPiA+Cj4gPiBSZWdhcmRzLAo+ID4gRGV0
bGV2Lgo+ID4KPiA+Cj4gPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
