Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE4ABC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Apr 2024 16:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FsP0G7DR6x8O2jmvZL7+yyw/jCKuWx50/41dEPJm9Ns=; b=VsrdJhBjvI3cZ7
	YviCFlIsnytcAaLTCpbJXK0E8NU65f7D8x8bd13HFU4MR5QXot9aGK8AQQxVXQwRKZv8mpYQFT5bw
	90xjICnZPpTZLLEfZyLeOF8piw+DPL6IYIw7aWW4ZQ39Obv6s/v73ujtJCt9rnwXFiwCzo0jL/i5Q
	mXgJOfA+qCS3dPl1L+n53G3Yc2ytknWglvAVa0oWCBpV5D0lNQwR11Dnk4nih9Asoutvcw1UCV9wP
	cfekpWDo1EsAajmRQuMtTUpNCRnj5tYwaF9Ss0BhYgW3UqZC5HcnoSyQ+mp3XoJxTkE23oAA02sJg
	CUKOSGYw52UA10TNV/Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruxfj-0000000DBuE-4AtB;
	Thu, 11 Apr 2024 16:53:12 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruxfh-0000000DBrj-1Ggm
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Apr 2024 16:53:10 +0000
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-dd14d8e7026so12583276.2
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Apr 2024 09:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712854384; x=1713459184; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xk9ow4mQo0ztyiO7KrDlitvaa4igMglZOi5Xwvcpnhc=;
        b=fff3yfyFx3sQoqJzH/GOTvFLdBA/zt0jxm77/5E3gR9+BF942HUZW3/1P0zQ3iZn02
         +sWhdytnuVuPX7LigEJmIEhBDFRzoZU6M7IF4Yir7HhnsNR++GAWiC9tmQVAgqYGROId
         89jyiI5CflT9AK0xDfQXa1mv7eFTr0jJN6qBSaLWQchELYmrbV6cmnAa0CncdXqfDbqJ
         fyBNYHODU7/Ur7+gnvVq+J+qDjnneXI0xBtuZxI546IxufrSml8U6r49z0tEMhLd6rSA
         A/ELzXdXlmrg5SCgt25HbXET4Q7c692+skwZygeeZErFACssZagB2WumbWkI58lYLr6i
         g3TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712854384; x=1713459184;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xk9ow4mQo0ztyiO7KrDlitvaa4igMglZOi5Xwvcpnhc=;
        b=fLCrh7k5JL103E1lO8AedAzy/xjwdcWZ4kKdVhggc8UcOVhRJzqCcODzJPwsFb/beE
         XCxSwj1+WsBOa+4BZzB6rVJnWEQ6MK809ilHpuW19I7GSNCK1Vq85hc5mQcSjwx9/7Ug
         N2A5OXJ59VDxiZb0FCrYXrXV6F2J5bEZIrA2nfGBXN6/qu+yrBKPRbNtxjAi9AdY+Iqb
         7uEBow6VsCCGNg8tZFoIdROMMRRwXLabnbKwMg1hx6CfAzh+cR/akHHF21j9Vd62OqT8
         K7e0oj/IYZP/sZSCjOTrUc0ryOAsm1ygZK1aU1AoOUm8zVdkH3eWvDXvPsiQpLgvMpZW
         9VwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWH1XSuJueiAJLQllixkbrm4AzqOzzt0LPwGPt/tBpe9+Rms6mac07iWKUZVhl80T4piehfahOtjp49pkmDBTqJPWiXoAs8wRW4cu5YDwv7qE8D
X-Gm-Message-State: AOJu0YwsDBIUNEbV1F2ieLiuZccuBEa8PXO6FN5+5JmYri9x1ib/Tcqo
	kDLcxwP3iWaD6Gmh6SZflddhAVCybsxCc8gZhnuHmywP/sZcWmJSE4iq/H3rUlWT1gb57IVsuVw
	dg0xvOILXWwKh4GAj4e8FqlR5nqq7hm6LkJhG
X-Google-Smtp-Source: AGHT+IHrAmk4FEak1U24FFhz5I0pjJ4Y1W1GoH1d+YXdH2uAvcc4gxTiyypFZ0hyOkDoXT/aukk4rEfY2anMtoK+l4s=
X-Received: by 2002:a25:86d1:0:b0:dc6:b088:e742 with SMTP id
 y17-20020a2586d1000000b00dc6b088e742mr112053ybm.8.1712854383276; Thu, 11 Apr
 2024 09:53:03 -0700 (PDT)
MIME-Version: 1.0
References: <20211113062222.3743909-1-jay.xu@rock-chips.com>
 <1da5cdf0-ccb8-3740-cf96-794c4d5b2eb4@amd.com> <3175d41a-fc44-4741-91ac-005c8f21abb8@vivo.com>
 <9e6f1f52-db49-43bb-a0c2-b0ad12c28aa1@amd.com> <5c7ac24c-79fa-45fc-a4fd-5b8fc77a741b@vivo.com>
 <CABdmKX1OZ9yT3YQA9e7JzKND9wfiL-hnf87Q6v9pwtnAeLHrdA@mail.gmail.com> <da21fe55-2ffb-4c8e-9863-2f27aa18cf5c@vivo.com>
In-Reply-To: <da21fe55-2ffb-4c8e-9863-2f27aa18cf5c@vivo.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Thu, 11 Apr 2024 09:52:51 -0700
Message-ID: <CABdmKX0AJjdVBPR=3c7oRyDRQx86GCGheVwkheXi7fOkJaRY8A@mail.gmail.com>
Subject: Re: [PATCH] dma-buf: add DMA_BUF_IOCTL_SYNC_PARTIAL support
To: Rong Qianfeng <11065417@vivo.com>
Cc: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Rong Qianfeng <rongqianfeng@vivo.com>, Jianqun Xu <jay.xu@rock-chips.com>, sumit.semwal@linaro.org, 
	pekka.paalanen@collabora.com, daniel.vetter@ffwll.ch, jason@jlekstrand.net, 
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_095309_377307_1AB53CEF 
X-CRM114-Status: GOOD (  37.06  )
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

T24gVGh1LCBBcHIgMTEsIDIwMjQgYXQgMToyMeKAr0FNIFJvbmcgUWlhbmZlbmcgPDExMDY1NDE3
QHZpdm8uY29tPiB3cm90ZToKPgo+Cj4g5ZyoIDIwMjQvNC8xMCAwOjM3LCBULkouIE1lcmNpZXIg
5YaZ6YGTOgo+ID4gW1lvdSBkb24ndCBvZnRlbiBnZXQgZW1haWwgZnJvbSB0am1lcmNpZXJAZ29v
Z2xlLmNvbS4gTGVhcm4gd2h5IHRoaXMgaXMgaW1wb3J0YW50IGF0IGh0dHBzOi8vYWthLm1zL0xl
YXJuQWJvdXRTZW5kZXJJZGVudGlmaWNhdGlvbiBdCj4gPgo+ID4gT24gVHVlLCBBcHIgOSwgMjAy
NCBhdCAxMjozNOKAr0FNIFJvbmcgUWlhbmZlbmcgPDExMDY1NDE3QHZpdm8uY29tPiB3cm90ZToK
PiA+Pgo+ID4+IOWcqCAyMDI0LzQvOCAxNTo1OCwgQ2hyaXN0aWFuIEvDtm5pZyDlhpnpgZM6Cj4g
Pj4+IEFtIDA3LjA0LjI0IHVtIDA5OjUwIHNjaHJpZWIgUm9uZyBRaWFuZmVuZzoKPiA+Pj4+IFtT
TklQXQo+ID4+Pj4+IEFtIDEzLjExLjIxIHVtIDA3OjIyIHNjaHJpZWIgSmlhbnF1biBYdToKPiA+
Pj4+Pj4gQWRkIERNQV9CVUZfSU9DVExfU1lOQ19QQVJUSUFMIHN1cHBvcnQgZm9yIHVzZXIgdG8g
c3luYyBkbWEtYnVmIHdpdGgKPiA+Pj4+Pj4gb2Zmc2V0IGFuZCBsZW4uCj4gPj4+Pj4gWW91IGhh
dmUgbm90IGdpdmVuIGFuIHVzZSBjYXNlIGZvciB0aGlzIHNvIGl0IGlzIGEgYml0IGhhcmQgdG8K
PiA+Pj4+PiByZXZpZXcuIEFuZCBmcm9tIHRoZSBleGlzdGluZyB1c2UgY2FzZXMgSSBkb24ndCBz
ZWUgd2h5IHRoaXMgc2hvdWxkCj4gPj4+Pj4gYmUgbmVjZXNzYXJ5Lgo+ID4+Pj4+Cj4gPj4+Pj4g
RXZlbiB3b3JzZSBmcm9tIHRoZSBleGlzdGluZyBiYWNrZW5kIGltcGxlbWVudGF0aW9uIEkgZG9u
J3QgZXZlbiBzZWUKPiA+Pj4+PiBob3cgZHJpdmVycyBzaG91bGQgYmUgYWJsZSB0byBmdWxmaWxs
IHRoaXMgc2VtYW50aWNzLgo+ID4+Pj4+Cj4gPj4+Pj4gUGxlYXNlIGV4cGxhaW4gZnVydGhlciwK
PiA+Pj4+PiBDaHJpc3RpYW4uCj4gPj4+PiBIZXJlIGlzIGEgcHJhY3RpY2FsIGNhc2U6Cj4gPj4+
PiBUaGUgdXNlciBzcGFjZSBjYW4gYWxsb2NhdGUgYSBsYXJnZSBjaHVuayBvZiBkbWEtYnVmIGZv
cgo+ID4+Pj4gc2VsZi1tYW5hZ2VtZW50LCB1c2VkIGFzIGEgc2hhcmVkIG1lbW9yeSBwb29sLgo+
ID4+Pj4gU21hbGwgZG1hLWJ1ZiBjYW4gYmUgYWxsb2NhdGVkIGZyb20gdGhpcyBzaGFyZWQgbWVt
b3J5IHBvb2wgYW5kCj4gPj4+PiByZWxlYXNlZCBiYWNrIHRvIGl0IGFmdGVyIHVzZSwgdGh1cyBp
bXByb3ZpbmcgdGhlIHNwZWVkIG9mIGRtYS1idWYKPiA+Pj4+IGFsbG9jYXRpb24gYW5kIHJlbGVh
c2UuCj4gPj4+PiBBZGRpdGlvbmFsbHksIGN1c3RvbSBmdW5jdGlvbmFsaXRpZXMgc3VjaCBhcyBt
ZW1vcnkgc3RhdGlzdGljcyBhbmQKPiA+Pj4+IGJvdW5kYXJ5IGNoZWNraW5nIGNhbiBiZSBpbXBs
ZW1lbnRlZCBpbiB0aGUgdXNlciBzcGFjZS4KPiA+Pj4+IE9mIGNvdXJzZSwgdGhlIGFib3ZlLW1l
bnRpb25lZCBmdW5jdGlvbmFsaXRpZXMgcmVxdWlyZSB0aGUKPiA+Pj4+IGltcGxlbWVudGF0aW9u
IG9mIGEgcGFydGlhbCBjYWNoZSBzeW5jIGludGVyZmFjZS4KPiA+Pj4gV2VsbCB0aGF0IGlzIG9i
dmlvdXMsIGJ1dCB3aGVyZSBpcyB0aGUgY29kZSBkb2luZyB0aGF0Pwo+ID4+Pgo+ID4+PiBZb3Ug
Y2FuJ3Qgc2VuZCBvdXQgY29kZSB3aXRob3V0IGFuIGFjdHVhbCB1c2VyIG9mIGl0LiBUaGF0IHdp
bGwKPiA+Pj4gb2J2aW91c2x5IGJlIHJlamVjdGVkLgo+ID4+Pgo+ID4+PiBSZWdhcmRzLAo+ID4+
PiBDaHJpc3RpYW4uCj4gPj4gSW4gZmFjdCwgd2UgaGF2ZSBhbHJlYWR5IHVzZWQgdGhlIHVzZXIt
bGV2ZWwgZG1hLWJ1ZiBtZW1vcnkgcG9vbCBpbiB0aGUKPiA+PiBjYW1lcmEgc2hvb3Rpbmcgc2Nl
bmFyaW8gb24gdGhlIHBob25lLgo+ID4+Cj4gPj4gICBGcm9tIHRoZSB0ZXN0IHJlc3VsdHMsIFRo
ZSBleGVjdXRpb24gdGltZSBvZiB0aGUgcGhvdG8gc2hvb3RpbmcKPiA+PiBhbGdvcml0aG0gaGFz
IGJlZW4gcmVkdWNlZCBmcm9tIDMuOHMgdG8gM3MuCj4gPj4KPiA+IEZvciBwaG9uZXMsIHRoZSAo
b3V0IG9mIHRyZWUpIEFuZHJvaWQgdmVyc2lvbiBvZiB0aGUgc3lzdGVtIGhlYXAgaGFzIGEKPiA+
IHBhZ2UgcG9vbCBjb25uZWN0ZWQgdG8gYSBzaHJpbmtlci4gVGhhdCBhbGxvd3MgeW91IHRvIHNr
aXAgcGFnZQo+ID4gYWxsb2NhdGlvbiB3aXRob3V0IGZ1bGx5IHBpbm5pbmcgdGhlIG1lbW9yeSBs
aWtlIHlvdSBnZXQgd2hlbgo+ID4gYWxsb2NhdGluZyBhIGRtYS1idWYgdGhhdCdzIHdheSBsYXJn
ZXIgdGhhbiBuZWNlc3NhcnkuIElmIGl0J3MgZm9yIGEKPiA+IGNhbWVyYSBtYXliZSB5b3UgbmVl
ZCBwaHlzaWNhbGx5IGNvbnRpZ3VvdXMgbWVtb3J5LCBidXQgaXQncyBhbHNvCj4gPiBwb3NzaWJs
ZSB0byBzZXQgdGhhdCB1cC4KPiA+Cj4gPiBodHRwczovL2FuZHJvaWQuZ29vZ2xlc291cmNlLmNv
bS9rZXJuZWwvY29tbW9uLysvcmVmcy9oZWFkcy9hbmRyb2lkMTQtNi4xL2RyaXZlcnMvZG1hLWJ1
Zi9oZWFwcy9zeXN0ZW1faGVhcC5jIzM3Nwo+ID4KPiBUaGFuayB5b3UgZm9yIHRoZSByZW1pbmRl
ci4KPgo+IFRoZSBwYWdlIHBvb2wgb2YgdGhlIHN5c3RlbSBoZWFwIGNhbiBtZWV0IHRoZSBuZWVk
cyBvZiBtb3N0IHNjZW5hcmlvcywKPiBidXQgdGhlIGNhbWVyYSBzaG9vdGluZyBzY2VuYXJpbyBp
cyBxdWl0ZSBzcGVjaWFsLgo+Cj4gV2h5IHRoZSBjYW1lcmEgc2hvb3Rpbmcgc2NlbmFyaW8gbmVl
ZHMgdG8gaGF2ZSBhIGRtYS1idWYgbWVtb3J5IHBvb2wgaW4KPiB0aGUgdXNlci1sZXZlbO+8nwo+
Cj4gKDEpIFRoZSBtZW1vcnkgZGVtYW5kIGlzIGV4dHJlbWVseSBoaWdoIGFuZCB0aW1lIHJlcXVp
cmVtZW50cyBhcmUKPiBzdHJpbmdlbnQuCgpQcmVhbGxvY2F0aW5nIGZvciB0aGlzIG1ha2VzIHNl
bnNlIHRvIG1lLCB3aGV0aGVyIGl0IGlzIGluZGl2aWR1YWwKYnVmZmVycyBvciBvbmUgbGFyZ2Ug
b25lLgoKPiAoMikgVGhlIG1lbW9yeSBpbiB0aGUgcGFnZSBwb29sKHN5c3RlbSBoZWFwKSBpcyBl
YXNpbHkgcmVjbGFpbWVkIG9yIHVzZWQKPiBieSBvdGhlciBhcHBzLgoKWWVhaCwgYnkgZGVzaWdu
IEkgZ3Vlc3MuIEkgaGF2ZSBzZWVuIGFuIGltcGxlbWVudGF0aW9uIHdoZXJlIHRoZSBwYWdlCnBv
b2wgaXMgcHJvYWN0aXZlbHkgcmVmaWxsZWQgYWZ0ZXIgaXQgaGFzIGJlZW4gZW1wdHkgZm9yIHNv
bWUgdGltZQp3aGljaCB3b3VsZCBoZWxwIGluIHNjZW5hcmlvcyB3aGVyZSB0aGUgcG9vbCBpcyBv
ZnRlbiByZWNsYWltZWQgYW5kCmxvdy9lbXB0eS4gWW91IGNvdWxkIGFkZCB0aGF0IGluIGEgdmVu
ZG9yIGhlYXAuCgo+ICgzKSBIaWdoIGNvbmN1cnJlbnQgYWxsb2NhdGlvbiBhbmQgcmVsZWFzZSAo
d2l0aCBkZWZlcnJlZC1mcmVlKSBsZWFkIHRvCj4gaGlnaCBtZW1vcnkgdXNhZ2UgcGVha3MuCgpI
b3BlZnVsbHkgdGhpcyBpcyBub3QgZXZlcnkgZnJhbWU/IEkgc2F3IGVub3VnaCBjb21wbGFpbnRz
IGFib3V0IHRoZQpkZWZlcnJlZCBmcmVlIG9mIHBvb2wgcGFnZXMgdGhhdCBpdCBoYXNuJ3QgYmVl
biBjYXJyaWVkIGZvcndhcmQgc2luY2UKQW5kcm9pZCAxMywgc28gdGhpcyBzaG91bGQgYmUgbGVz
cyBvZiBhIHByb2JsZW0gb24gcmVjZW50IGtlcm5lbHMuCgo+IEFkZGl0aW9uYWxseSwgYWZ0ZXIg
dGhlIGNhbWVyYSBleGl0cywgdGhlIHNoYXJlZCBtZW1vcnkgcG9vbCBjYW4gYmUKPiByZWxlYXNl
ZCwgd2l0aCBtaW5pbWFsIGltcGFjdC4KCldoeSBkbyB5b3UgY2FyZSBhYm91dCB0aGUgZGlmZmVy
ZW5jZSBoZXJlPyBJbiBvbmUgY2FzZSBpdCdzIHdoZW4gdGhlCmJ1ZmZlciByZWZjb3VudCBnb2Vz
IHRvIDAgYW5kIG1lbW9yeSBpcyBmcmVlZCBpbW1lZGlhdGVseSwgYW5kIGluIHRoZQpvdGhlciBp
dCdzIHRoZSBuZXh0IHRpbWUgcmVjbGFpbSBydW5zIHRoZSBzaHJpbmtlci4KCgpJIGRvbid0IHdh
bnQgdG8gYWRkIFVBUEkgZm9yIERNQV9CVUZfSU9DVExfU1lOQ19QQVJUSUFMIHRvIEFuZHJvaWQK
d2l0aG91dCBpdCBiZWluZyBpbiB0aGUgdXBzdHJlYW0ga2VybmVsLiBJIGRvbid0IHRoaW5rIHdl
IGNhbiBnZXQgdGhhdAp3aXRob3V0IGFuIGluLWtlcm5lbCB1c2VyIG9mIGRtYV9idWZfYmVnaW5f
Y3B1X2FjY2Vzc19wYXJ0aWFsIGZpcnN0LApldmVuIHRob3VnaCB5b3VyIHVzZSBjYXNlIHdvdWxk
bid0IHJlbHkgb24gdGhhdCBpbi1rZXJuZWwgdXNhZ2UuIDpcIFNvCmlmIHlvdSB3YW50IHRvIGFk
ZCB0aGlzIHRvIHBob25lcyBmb3IgeW91ciBjYW1lcmEgYXBwLCB0aGVuIEkgdGhpbmsKeW91ciBi
ZXN0IG9wdGlvbiBpcyB0byBhZGQgYSB2ZW5kb3IgZHJpdmVyIHdoaWNoIGltcGxlbWVudHMgdGhp
cyBJT0NUTAphbmQgY2FsbHMgdGhlIGRtYV9idWZfYmVnaW5fY3B1X2FjY2Vzc19wYXJ0aWFsIGZ1
bmN0aW9ucyB3aGljaCBhcmUKYWxyZWFkeSBleHBvcnRlZC4KCkJlc3QsClQuSi4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
