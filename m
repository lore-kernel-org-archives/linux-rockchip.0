Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14A86C67861
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Apr 2024 16:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29zAKqD6hpGwZhIuaGVQJYYr1F/vpuLqavC4YSYSYlo=; b=YCfRKenomZgxJu
	x8JL3RxkXx0sQhFRN9Wj5voxoChDtaUZkWkHlP8FoFT4miLZZKjnNlJN0ODvEVPkVizIUww7T9r70
	Bm3x93AovYhxn0tXiKzbQ5azGv62rWmCZeVyJv82IvlXlNPXp6r18W/HCITRefWQdY0zuSu9gMnqg
	ecPLVwQDk4M7G/ywzVt1NIjpoAwALUaIJ/QXS2eJ1Ev5Fq1VPlQejnV5nbIKW7vIqB/Zc5utTqIio
	5eJ4UWk9BzibAesyvn3VKYPpt9ZbotoK5mE7bFSOpq8Py9dlfAm98oCQkKaIOBvAAc5Sc+1ProhUV
	l2Zy/Q60eDeW1jfLXZWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruETU-00000002yVC-0MLq;
	Tue, 09 Apr 2024 16:37:33 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruETP-00000002yQN-2wDc
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Apr 2024 16:37:29 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-dc742543119so5592293276.0
        for <linux-rockchip@lists.infradead.org>; Tue, 09 Apr 2024 09:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712680639; x=1713285439; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VWrgc6fSc3w4dKU6IsZCUM+SMdZmjryY3zaMUJ1lg5M=;
        b=aqtwnnP2YGszPntqWLUrfBoLFEZij6fsxe3TGtUMywMoOxpZPq4CUUPGLcNCJGlCeY
         5pCpfRfdFFsENnrZPmZurhY3kvHAQKzirZzhBdE0dHlgzdCNvMYQnD4VIFBLEvDX99Tl
         Ouq1wiM0zOTD1jI2YiTq8KV8D91riI+6f3OpZ3HAg8zSp0IOy6tgO3J5aE5HBia6yVXG
         HVM0PdXm2cXOWEmc5RqAOJg8Rl922s+QPLapGDI9aElFur0zwSAkQZXVhXfdVdMYO8jd
         Ukxu2zJKUDjnIHMEmJsFYDcLrbxaOYgjzzw+WAQZQx9d3ntOcvYtAyqB0CQpV7oTZi8X
         +XWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712680639; x=1713285439;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VWrgc6fSc3w4dKU6IsZCUM+SMdZmjryY3zaMUJ1lg5M=;
        b=CRmZp8SQVq1lRqyRuQhvfMf58IKlypty6G4xXStNhZJWlSuNDC/7QinACacrs/tUeR
         fDk+R3Ue1JOjDL7V5+ofkJjBI4s7HNbCoVrCHnTKups/XprBH69J0dTZVkcuw03A1l9E
         jgm6p0pSFtMX69pZo51qhGY0gLy0NPDfHEWQCcyGtpYmP5MaMxOt8BYmQIqM6kzDpwvX
         XEV9wa/rvhLfDC+uiQ2sBFds7r48BvjjZhQ/YS/7vCMQt0b2IV58yJ77pyn2rHUKg+D+
         Q/YcWjJmb7sLWWkJid5I9P5i9/DMFl7nWXf0v362a6PzYRMwtSjyEVlGEghOMotOPA8p
         8B3A==
X-Forwarded-Encrypted: i=1; AJvYcCXe3KDB5pO5Q04o7VmHiqxxOxBDvND1Vp0zaZTWbP2XOFDOM4oxDJrZy1c/FuWdrHdnwbLNWLDMrUaBxIZD0mDF94rSYYCabvDWNhdAr0CB8Gqa
X-Gm-Message-State: AOJu0Yw43OdwK8z3DXtm570JIM4w7DWDYZvFt009/rFPIzpnS4/CrnZY
	nMd8Fam2L39YbVj7FAO3qMUC1Sjr7w91LLmXm4IxIpRW9bjPFhlC4W6PchHSeDNLFskIOAA5BS2
	Ur0lXzSP2GL8iH04pwN1le/aUy6jDXVbWKCfg
X-Google-Smtp-Source: AGHT+IGJRrnZd6GpHhz2e2NeVhdfIMLHOtWWI1dHIs7kshaTz2NJhrtoPZ84nV+L11Kpx9q3bco9EMqTwIkVE14CEDU=
X-Received: by 2002:a5b:cc8:0:b0:de0:de50:d6d4 with SMTP id
 e8-20020a5b0cc8000000b00de0de50d6d4mr296806ybr.8.1712680639127; Tue, 09 Apr
 2024 09:37:19 -0700 (PDT)
MIME-Version: 1.0
References: <20211113062222.3743909-1-jay.xu@rock-chips.com>
 <1da5cdf0-ccb8-3740-cf96-794c4d5b2eb4@amd.com> <3175d41a-fc44-4741-91ac-005c8f21abb8@vivo.com>
 <9e6f1f52-db49-43bb-a0c2-b0ad12c28aa1@amd.com> <5c7ac24c-79fa-45fc-a4fd-5b8fc77a741b@vivo.com>
In-Reply-To: <5c7ac24c-79fa-45fc-a4fd-5b8fc77a741b@vivo.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 9 Apr 2024 09:37:07 -0700
Message-ID: <CABdmKX1OZ9yT3YQA9e7JzKND9wfiL-hnf87Q6v9pwtnAeLHrdA@mail.gmail.com>
Subject: Re: [PATCH] dma-buf: add DMA_BUF_IOCTL_SYNC_PARTIAL support
To: Rong Qianfeng <11065417@vivo.com>
Cc: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Rong Qianfeng <rongqianfeng@vivo.com>, Jianqun Xu <jay.xu@rock-chips.com>, sumit.semwal@linaro.org, 
	pekka.paalanen@collabora.com, daniel.vetter@ffwll.ch, jason@jlekstrand.net, 
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_093727_807675_D9B431DA 
X-CRM114-Status: GOOD (  27.61  )
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

T24gVHVlLCBBcHIgOSwgMjAyNCBhdCAxMjozNOKAr0FNIFJvbmcgUWlhbmZlbmcgPDExMDY1NDE3
QHZpdm8uY29tPiB3cm90ZToKPgo+Cj4g5ZyoIDIwMjQvNC84IDE1OjU4LCBDaHJpc3RpYW4gS8O2
bmlnIOWGmemBkzoKPiA+IEFtIDA3LjA0LjI0IHVtIDA5OjUwIHNjaHJpZWIgUm9uZyBRaWFuZmVu
ZzoKPiA+PiBbU05JUF0KPiA+Pj4gQW0gMTMuMTEuMjEgdW0gMDc6MjIgc2NocmllYiBKaWFucXVu
IFh1Ogo+ID4+Pj4gQWRkIERNQV9CVUZfSU9DVExfU1lOQ19QQVJUSUFMIHN1cHBvcnQgZm9yIHVz
ZXIgdG8gc3luYyBkbWEtYnVmIHdpdGgKPiA+Pj4+IG9mZnNldCBhbmQgbGVuLgo+ID4+Pgo+ID4+
PiBZb3UgaGF2ZSBub3QgZ2l2ZW4gYW4gdXNlIGNhc2UgZm9yIHRoaXMgc28gaXQgaXMgYSBiaXQg
aGFyZCB0bwo+ID4+PiByZXZpZXcuIEFuZCBmcm9tIHRoZSBleGlzdGluZyB1c2UgY2FzZXMgSSBk
b24ndCBzZWUgd2h5IHRoaXMgc2hvdWxkCj4gPj4+IGJlIG5lY2Vzc2FyeS4KPiA+Pj4KPiA+Pj4g
RXZlbiB3b3JzZSBmcm9tIHRoZSBleGlzdGluZyBiYWNrZW5kIGltcGxlbWVudGF0aW9uIEkgZG9u
J3QgZXZlbiBzZWUKPiA+Pj4gaG93IGRyaXZlcnMgc2hvdWxkIGJlIGFibGUgdG8gZnVsZmlsbCB0
aGlzIHNlbWFudGljcy4KPiA+Pj4KPiA+Pj4gUGxlYXNlIGV4cGxhaW4gZnVydGhlciwKPiA+Pj4g
Q2hyaXN0aWFuLgo+ID4+IEhlcmUgaXMgYSBwcmFjdGljYWwgY2FzZToKPiA+PiBUaGUgdXNlciBz
cGFjZSBjYW4gYWxsb2NhdGUgYSBsYXJnZSBjaHVuayBvZiBkbWEtYnVmIGZvcgo+ID4+IHNlbGYt
bWFuYWdlbWVudCwgdXNlZCBhcyBhIHNoYXJlZCBtZW1vcnkgcG9vbC4KPiA+PiBTbWFsbCBkbWEt
YnVmIGNhbiBiZSBhbGxvY2F0ZWQgZnJvbSB0aGlzIHNoYXJlZCBtZW1vcnkgcG9vbCBhbmQKPiA+
PiByZWxlYXNlZCBiYWNrIHRvIGl0IGFmdGVyIHVzZSwgdGh1cyBpbXByb3ZpbmcgdGhlIHNwZWVk
IG9mIGRtYS1idWYKPiA+PiBhbGxvY2F0aW9uIGFuZCByZWxlYXNlLgo+ID4+IEFkZGl0aW9uYWxs
eSwgY3VzdG9tIGZ1bmN0aW9uYWxpdGllcyBzdWNoIGFzIG1lbW9yeSBzdGF0aXN0aWNzIGFuZAo+
ID4+IGJvdW5kYXJ5IGNoZWNraW5nIGNhbiBiZSBpbXBsZW1lbnRlZCBpbiB0aGUgdXNlciBzcGFj
ZS4KPiA+PiBPZiBjb3Vyc2UsIHRoZSBhYm92ZS1tZW50aW9uZWQgZnVuY3Rpb25hbGl0aWVzIHJl
cXVpcmUgdGhlCj4gPj4gaW1wbGVtZW50YXRpb24gb2YgYSBwYXJ0aWFsIGNhY2hlIHN5bmMgaW50
ZXJmYWNlLgo+ID4KPiA+IFdlbGwgdGhhdCBpcyBvYnZpb3VzLCBidXQgd2hlcmUgaXMgdGhlIGNv
ZGUgZG9pbmcgdGhhdD8KPiA+Cj4gPiBZb3UgY2FuJ3Qgc2VuZCBvdXQgY29kZSB3aXRob3V0IGFu
IGFjdHVhbCB1c2VyIG9mIGl0LiBUaGF0IHdpbGwKPiA+IG9idmlvdXNseSBiZSByZWplY3RlZC4K
PiA+Cj4gPiBSZWdhcmRzLAo+ID4gQ2hyaXN0aWFuLgo+Cj4gSW4gZmFjdCwgd2UgaGF2ZSBhbHJl
YWR5IHVzZWQgdGhlIHVzZXItbGV2ZWwgZG1hLWJ1ZiBtZW1vcnkgcG9vbCBpbiB0aGUKPiBjYW1l
cmEgc2hvb3Rpbmcgc2NlbmFyaW8gb24gdGhlIHBob25lLgo+Cj4gIEZyb20gdGhlIHRlc3QgcmVz
dWx0cywgVGhlIGV4ZWN1dGlvbiB0aW1lIG9mIHRoZSBwaG90byBzaG9vdGluZwo+IGFsZ29yaXRo
bSBoYXMgYmVlbiByZWR1Y2VkIGZyb20gMy44cyB0byAzcy4KPgpGb3IgcGhvbmVzLCB0aGUgKG91
dCBvZiB0cmVlKSBBbmRyb2lkIHZlcnNpb24gb2YgdGhlIHN5c3RlbSBoZWFwIGhhcyBhCnBhZ2Ug
cG9vbCBjb25uZWN0ZWQgdG8gYSBzaHJpbmtlci4gVGhhdCBhbGxvd3MgeW91IHRvIHNraXAgcGFn
ZQphbGxvY2F0aW9uIHdpdGhvdXQgZnVsbHkgcGlubmluZyB0aGUgbWVtb3J5IGxpa2UgeW91IGdl
dCB3aGVuCmFsbG9jYXRpbmcgYSBkbWEtYnVmIHRoYXQncyB3YXkgbGFyZ2VyIHRoYW4gbmVjZXNz
YXJ5LiBJZiBpdCdzIGZvciBhCmNhbWVyYSBtYXliZSB5b3UgbmVlZCBwaHlzaWNhbGx5IGNvbnRp
Z3VvdXMgbWVtb3J5LCBidXQgaXQncyBhbHNvCnBvc3NpYmxlIHRvIHNldCB0aGF0IHVwLgoKaHR0
cHM6Ly9hbmRyb2lkLmdvb2dsZXNvdXJjZS5jb20va2VybmVsL2NvbW1vbi8rL3JlZnMvaGVhZHMv
YW5kcm9pZDE0LTYuMS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYyMzNzcKCgo+
IFRvIGJlIGhvbmVzdCwgSSBkaWRuJ3QgdW5kZXJzdGFuZCB5b3VyIGNvbmNlcm4gIi4uLmhvdyBk
cml2ZXJzIHNob3VsZCBiZQo+IGFibGUgdG8gZnVsZmlsbCB0aGlzIHNlbWFudGljcy4iIENhbiB5
b3UgcGxlYXNlIGhlbHAgZXhwbGFpbiBpdCBpbiBtb3JlCj4gZGV0YWlsPwo+Cj4gVGhhbmtzLAo+
Cj4gUm9uZyBRaWFuZmVuZy4KPgo+ID4KPiA+Pgo+ID4+IFRoYW5rcwo+ID4+IFJvbmcgUWlhbmZl
bmcuCj4gPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
