Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13253C531F8
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 23:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HBJmyQ56BuoY9yAs5nJjGoRSYegK67kkjD0/N6cBiLw=; b=t3nhMZdqApgCO6
	/2BmAiHH1w7Duws0JfATD8bR56M7Xy4TGeswuKPB9D9RKaPv1EgnEEnymX57ERdORqIrvPRntfi+2
	jWCrMd0ruLA8uJ+0KHPfCscOss1RW14Qy5HvF+eoPApSpA0zFMspcIvzHhhwJZjyoznvspvHVB0td
	MXglmOx3xWTWgpNpaxpogbxuWtkHlE19eIyAhSaC83bqwaHG8GqbDGN3Pv2mhCw7NOiT6bsMCON+h
	+wjw6QB9x3fDCFKxm3vYrfGby41vUEzrlOl++KAhwfIwSMJiS0jgLsqy7aIhFrxLaUmRD65bbLXWz
	YULHV5dO/LjQU8IiApCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn391-0000000FGtu-49Hn;
	Thu, 23 Jul 2026 23:48:03 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn38z-0000000FGtC-46L2
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Jul 2026 23:48:03 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-81bd69f4f6fso1038457b3.2
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Jul 2026 16:48:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784850480; cv=none;
        d=google.com; s=arc-20260327;
        b=KhAcrO1DXYuNx+DYriqVy8cc7m/vnU3CEjkjQa67iPDz4YqGPepwa55oV13x/M1rXJ
         cuINCgjGJ/hvc8Ut0hU+EI+kCLO93RPBhllCRGaj47GbFV8u+7vsDnFKp/sxiE2gW9q+
         MjLdORMhEwRBniM+9ZixZzPJOFetbQM46nlgFcYGjSLOsHw6aAmjqQoBtMRmMXW6m4/p
         CJSODT9TChkhCl98Oi/wvYlDD90VEQbQCTpo+fwOn//fTFGAvGNMkXJo6B2garXfE6Rc
         W6dH8dSbMva+bLjmTIj0D6KACxe1d8hbKYlK0NlB+RboqiwVLkeN/e2oYRcQw0ALjqlz
         M3dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=sBSg+zmK0rXA8MQwVQ/Rx8kwPD6hENRcbQrpEao+5kg=;
        fh=R17pvXgQJb6g+QGOg5+mRijFsGa6uFcQgc9384Ohpzc=;
        b=hZq63jSQnT1UirRsYV/Yx/0LdYtMOksx5cRW+kjIdk98fcywft0WF2gEYFXOM6etFD
         Fyp4CsZSU8icqFS+NdTsUcQarX4zwiwDp/3mathROrbo0CQEqCjKqBYtn7pcJnhFq+FM
         9TnL2DKTkpPFc1c229nGahxOAGAIww91iSJwoju4pJKdsLUDkNR9VfahGqp0Z6OWvnnK
         IiarM0F6HhLjzMlp800Em/IL2+XK8s1ueooIDC8QWA8vIXKaVM+9w2KSst+jNvApNodH
         4wSYOjS5g+LLt2dIP9G292ddWMxwLocnsq3L2+2kz5EnZmT+cCP2ELhu2BNdikkv66vO
         UdWw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784850480; x=1785455280; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=sBSg+zmK0rXA8MQwVQ/Rx8kwPD6hENRcbQrpEao+5kg=;
        b=c00vXz41+Sbfb3rGG84X2N2UI7l7WNYhVwKCz5xv6LaIaftkIkMTFNbi3Bh3sPdUOm
         WAQiQLJ6qkqha3KDnnnTpx3TMVkQuSMwje9JO2SgLZYEvsj+ajLrFsed7Nu3n22Bdvd7
         RE40tMQmge7tTtZnaBEnOZeOfWzMiGXlRlsuSI/+x0FJ682jQUaSWI2BHZb3OuSjezId
         eCA3XIRk+iLQI6eQTGVvImAkNFfGmEEWsmYyVDeOaaEwegyZm3J4z3vZzx+lw1EuzZI+
         TOtIhIhBoQlPgQFNYhr1ebwm8JWJxYJomlvG/u8G9DUBha+Oh8elaYbWDaY+6fIsD0AX
         C5MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784850480; x=1785455280;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=sBSg+zmK0rXA8MQwVQ/Rx8kwPD6hENRcbQrpEao+5kg=;
        b=TrWu4ELgh7XAqElHh3Jnv0eMqtPJ6AVK4emb0AhwV78B6WRwigzgkMWuysfbPRPE3V
         UaJvCv051i4bkrJsaimT0NuhuDZyCx6leOqlv+VBjnNzVZByT9NhoYmZb3Bj+qMkTIHC
         jXM/lSofUG7AzpZhaD0/6P3UYxl3vpxKabCNZZqywf4GVnXw0BvPd133iLg7kZwMTBfG
         EFtC8OS2jQW8qhWsayztRGeVEVPG8Z/yhpFmfJOXwmyFm5+b0rCTfxeRnVgfhyV96Y3y
         V9KhrrYWkAe92SyXWio9I2hfXI1tHkJiyB2eQZ8Uj49kDAzTNEz5rm+jv0HDC2z1bQ+g
         bSXw==
X-Forwarded-Encrypted: i=1; AHgh+RrLG+fcKaIZ/YcPrDCHu528fwPkokV5nZfpI6IVPWamO5nsaOLfwrNtQU/+R7FjxlMGQPxmRJjUPfOmD0uGYw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yydske2W3oI0EQ3AEHh6fSbaVJSbZgk+T+ZjaDlSwiNbGs7dyYZ
	w9KZYwKVWNTe+aJkpCX91WP8jpRpIhSdLULGQUjPVtk+mb542sMu/fX/k7Q40U4ZeHx1DL+THCh
	aV17lPEPIwDCS7PNrBnB0QrSYp9gQp0U=
X-Gm-Gg: AR+sD10VD4dEKZ4UETcd9ctjBd9P2OdLPutsCHUjHBoefbTjJcZwVczowBhNYE4F0XA
	fl6KusCgjbJBok81NnCDrDoPxrkqMOfjO+NIx0tE1sTIfT89lc2EtCbhrhlRJiQwvYE31LlzV8V
	W62kIYfcWJS8MarcUfIesCYB8ZSSIDWLXdL3aQvnj1BVew9yTGSmfEI6dLzQ88Ha5OHK7797ogT
	zh3LJsfRudEUuonJtHqR4JYXIa1LtcwLlIIEqjswINTubstOMSXmA/OMzBjxLUawP+nPdCTcBHc
	xPdooLk1/EkE5plfg1Uh
X-Received: by 2002:a05:690c:6609:b0:7ec:58dc:f23 with SMTP id
 00721157ae682-81f5856ba5bmr8261157b3.5.1784850480115; Thu, 23 Jul 2026
 16:48:00 -0700 (PDT)
MIME-Version: 1.0
References: <20260718085728.6797-1-royalnet026@gmail.com> <20260718085728.6797-3-royalnet026@gmail.com>
 <25922edc-4ff1-4d28-9a64-2c28b2b690cb@collabora.com> <CAEWPSH70FecQRuGtA=S8+_CnLY5sMyf1j57Uwzwv54zceS1HZg@mail.gmail.com>
 <b8d63f61-b73e-412e-8119-ced1afdd4551@collabora.com> <CAEWPSH5j3tYNb1JKRGwa00PVnYAgCKS+B-Qz07D8Z7TJea5cMw@mail.gmail.com>
 <1ac66aab-8985-4441-8ce1-07e2ea5183bd@collabora.com>
In-Reply-To: <1ac66aab-8985-4441-8ce1-07e2ea5183bd@collabora.com>
From: Igor Paunovic <royalnet026@gmail.com>
Date: Fri, 24 Jul 2026 01:47:48 +0200
X-Gm-Features: AUfX_mwQpQY6ms6Ddg9sVvPaEi1tUNBsASXfULkmbLix8kQzlJ5kEVuWDGHKcXY
Message-ID: <CAEWPSH4aB4KZsrLx2TESjPvUG0+A_Z_7uuO=5Rd-VidKU9U3eg@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] media: synopsys: hdmirx: add HDMI audio capture support
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_164802_070150_7CA59ED3 
X-CRM114-Status: GOOD (  38.68  )
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

SGkgRG1pdHJ5LAoKVGhhbmsgeW91IC0tIGFuZCB0aGFuayB5b3UgZm9yIHJldmlld2luZyB0aGUg
d2hvbGUgc2VyaWVzIGFuZCB0ZXN0aW5nCjIvNC4gSXQgd2VudCB0aHJvdWdoIGEgbG90IG9mIGJh
Y2stYW5kLWZvcnRoIHNpbmNlIHRoZSBSRkMsIHNvIGhhdmluZwppdCBsYW5kIHdpdGggeW91ciBU
ZXN0ZWQtYnkgbWVhbnMgYSBsb3QuCgpJJ2xsIHByZXBhcmUgdGhlIGZvbGxvdy11cHMgYXMgc2Vw
YXJhdGUgcGF0Y2hlcyBvbmNlIHRoaXMgc2VyaWVzIGlzIGluOgoKLSBUaGUgdmlkZW9fZGV2aWNl
IGxpZmV0aW1lIGlzc3VlIG9uIHRoZSBWNEwyIHNpZGUgKHRoZSBkZXZtLWFsbG9jYXRlZAogIHN0
cnVjdCB3aXRoIHZpZGVvX2RldmljZV9yZWxlYXNlX2VtcHR5IHRoYXQgdGhlIGF1dG9tYXRlZCBy
ZXZpZXcKICBmbGFnZ2VkKSAtLSBhcyBhIHN0YW5kYWxvbmUgZml4IGZvciB0aGUgZXhpc3Rpbmcg
ZHJpdmVyLCBzaW5jZSBpdCdzCiAgaW5kZXBlbmRlbnQgb2YgdGhlIGF1ZGlvIHN1cHBvcnQuCi0g
QW4gYXRvbWljaXR5IGZpeCBmb3IgdGhlIEdMT0JBTF9TV0VOQUJMRSByZWFkLW1vZGlmeS13cml0
ZSwgbm93IHRoYXQKICB0aGUgYXVkaW8gcGF0aCBhZGRzIGEgc2Vjb25kIHdyaXRlciB0byB0aGF0
IHJlZ2lzdGVyIGFsb25nc2lkZSB0aGUKICBDRUMgY29kZS4KClRoZSByZXBlYXRlZC1zdXNwZW5k
IHdlZGdlIEkgbWVudGlvbmVkIGluIHRoZSBjb3ZlciBsZXR0ZXIgSSdkIHJhdGhlcgpzZW5kIG9u
bHkgb25jZSBJIGhhdmUgYSBjbGVhbiwgcmVwcm9kdWNpYmxlIHRyaWdnZXIgZm9yIGl0IC0tIGl0
J3MKc3RpbGwgdW5kZXIgaW52ZXN0aWdhdGlvbiBhbmQgSSBkb24ndCB3YW50IHRvIHNlbmQgYSBm
aXggYWhlYWQgb2YgYQpzb2xpZCByZXByby4KClRoZSBkeW5hbWljIGNvZGVjIHJlZ2lzdHJhdGlv
biB5b3Ugc3VnZ2VzdGVkIChiaW5kIG9uIHRoZSBwbHVnIGV2ZW50LApyZWFkIHRoZSBhY3R1YWwg
d2lyZSBzYW1wbGUgcmF0ZSBhbmQgcmVzdHJpY3QgdGhlIGNvZGVjJ3MgcmF0ZSkgaXMgdGhlCmRp
cmVjdGlvbiBJJ2QgbGlrZSB0byBleHBsb3JlIGFmdGVyIHRoZXNlLCBvbmNlIEkndmUgbG9va2Vk
IGF0IHdoYXQgaXQKbmVlZHMgZnJvbSBoZG1pX2NvZGVjX29wcy4KClRoYW5rcyBhZ2FpbiwKSWdv
cgoKCk9uIFRodSwgSnVsIDIzLCAyMDI2IGF0IDEwOjU24oCvUE0gRG1pdHJ5IE9zaXBlbmtvCjxk
bWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4KPiBPbiA3LzIxLzI2IDA4OjMx
LCBJZ29yIFBhdW5vdmljIHdyb3RlOgo+ID4gSGkgRG1pdHJ5LAo+ID4KPiA+PiBSZS1hcm1pbmcg
d2lsbCBiZSBiZXN0IG9wdGlvbiBpZiBpdCB3b3JrcyBwcm9wZXJseS4KPiA+Cj4gPiBXZW50IGJh
Y2sgdG8gaXQgYW5kIG1hZGUgaXQgd29yayBwcm9wZXJseSAtLSB3aXRoIG9uZSBob25lc3QgY2F2
ZWF0Cj4gPiBhdCB0aGUgZW5kLgo+ID4KPiA+IFBsYWluIGNhbmNlbC9yZS1hcm0gY291bGQgbm90
IGhhdmUgYmVlbiBlbm91Z2ggYXMgcHJldmlvdXNseQo+ID4gd3JpdHRlbjogaGRtaXJ4X3Jlc3Vt
ZSgpIGZ1bGx5IHJlc2V0cyB0aGUgY29udHJvbGxlciB2aWEKPiA+IHJlc2V0X2NvbnRyb2xfYnVs
a19hc3NlcnQvZGVhc3NlcnQgaW4gaGRtaXJ4X2VuYWJsZSgpLCB3aXBpbmcgdGhlCj4gPiBhdWRp
byBjb25maWd1cmF0aW9uIChJMlNfRU4sIEFVRElPX0VOQUJMRSwgRklGTyB0aHJlc2hvbGRzKSwg
YW5kCj4gPiB0aGUgd29ya2VyJ3MgZXJyb3IgcGF0aCBuZXZlciByZS1wcm9ncmFtcyB0aG9zZSAt
LSBpdCBvbmx5IHJlc3luY3MKPiA+IHRoZSBjbG9jayByYXRlIGFuZCByZWluaXRzIHRoZSBGSUZP
LiBTbyB2NCBkb2VzOgo+ID4KPiA+IC0gc3VzcGVuZDogY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5j
KCkgb24gdGhlIGF1ZGlvIHdvcmtlciBiZWZvcmUKPiA+IHRoZSBjbG9ja3MgYXJlIGdhdGVkIChh
dWRpb19zdHJlYW1pbmcgc3RheXMgc2V0KTsKPiA+IC0gcmVzdW1lOiBpZiBhIGNhcHR1cmUgc3Ry
ZWFtIGlzIGFjdGl2ZSwgcmUtcHJvZ3JhbSB0aGUgd2hvbGUKPiA+IGF1ZGlvIHBhdGggKGNsb2Nr
IGZyb20gdGhlIGxhc3Qga25vd24gc2FtcGxlIHJhdGUsIEZJRk8KPiA+IHRocmVzaG9sZHMsIEky
U19FTiwgQVVESU9fRU5BQkxFKSBhbmQgcmUtYXJtIHRoZSB3b3JrZXIuCj4gPgo+ID4gVGhlIHBy
b2dyYW1taW5nIGlzIGZhY3RvcmVkIG91dCBvZiBod19wYXJhbXMoKSBpbnRvIGEgc2hhcmVkCj4g
PiBoZG1pcnhfYXVkaW9fc2V0dXAoKSBoZWxwZXIgc28gcmVzdW1lIGFuZCBod19wYXJhbXMgY2Fu
bm90IGRyaWZ0Lgo+ID4gSSBhbHNvIGNoZWNrZWQgdGhhdCBub3RoaW5nIGluIHRoZSBwb3N0LXJl
c3VtZSBob3RwbHVnIHJlLWluaXQgcGF0aAo+ID4gKHBsdWdvdXQvcGx1Z2luL3N1Ym1vZHVsZV9p
bml0L2NvbnRyb2xsZXJfaW5pdCkgdG91Y2hlcyB0aGUgYXVkaW8KPiA+IGJpdHMsIHNvIHRoZSBy
ZXN0b3JlIHN1cnZpdmVzIHRoZSByZXBsdWcgZGFuY2UgcmVzdW1lIHRyaWdnZXJzLgo+ID4KPiA+
IE1lYXN1cmVkIG9uIHRoZSBPcmFuZ2UgUGkgNSBQbHVzIChwbV90ZXN0PWRldmljZXMsIGkuZS4g
ZnVsbCBkZXZpY2UKPiA+IHN1c3BlbmQvcmVzdW1lIGNhbGxiYWNrcywgYWN0aXZlIGNhcHR1cmUg
c3RyZWFtIHdpdGggbGl2ZSBhdWRpbwo+ID4gdGhyb3VnaCB0aGUgd2hvbGUgY3ljbGUpOiBvbiBy
ZXN1bWUgdGhlIGNhcHR1cmUgc2ltcGx5IGNvbnRpbnVlcyAtLQo+ID4gYXVkaW8gd2FzIGZsb3dp
bmcgYWdhaW4gdGhlIG1vbWVudCB0aGUgZGlzcGxheSBjYW1lIGJhY2ssIG5vCj4gPiB1c2Vyc3Bh
Y2UgaW50ZXJ2ZW50aW9uLCBjbGVhbiBkbWVzZywgbm8gb29wcyBpbiBhbnkgb2YgdGhlIH42Cj4g
PiBjeWNsZXMgZXhlcmNpc2VkIHRvbmlnaHQuCj4gPgo+ID4gVGhlIGNhdmVhdDogYSAqc2Vjb25k
KiBzdXNwZW5kL3Jlc3VtZSBjeWNsZSBpbiB0aGUgc2FtZSBib290IGxlYXZlcwo+ID4gdGhlIGF1
ZGlvIGRhdGFwYXRoIHNpbGVudCAodGhlIEkyUyBzbGF2ZSBzZWVzIG5vIGJpdCBjbG9jaywgc28K
PiA+IGNhcHR1cmUgcmVhZHMgdGltZSBvdXQpIGV2ZW4gdGhvdWdoIHRoZSByZXN1bWUgcmVzdG9y
ZSByZS1wcm9ncmFtcwo+ID4gZXZlcnl0aGluZywgYW5kIGEgZnJlc2ggc3RyZWFtIG9wZW4gZG9l
cyBub3QgcmVjb3ZlciBpdCAtLSBvbmx5IGEKPiA+IHJlYm9vdCBkb2VzLiBOb3RhYmx5IHRoaXMg
aGFwcGVucyB3aXRoIHBsYWluIG5vLXN0cmVhbSBzdXNwZW5kCj4gPiBjeWNsZXMgYXMgd2VsbCwg
c28gaXQgaXMgbm90IGNhdXNlZCBieSAoYW5kIHdvdWxkIG5vdCBiZSBwcmV2ZW50ZWQKPiA+IGJ5
KSBlaXRoZXIgdGhlIHJlLWFybSBvciB0aGUgLUVCVVNZIGFwcHJvYWNoIC0tIGl0IGxvb2tzIGxp
a2UgbW9yZQo+ID4gY29udHJvbGxlciBzdGF0ZSBsb3N0IG9uIHJlcGVhdGVkIHJlc2V0IHRoYXQg
bmVpdGhlciBod19wYXJhbXMgbm9yCj4gPiByZXN1bWUgY3VycmVudGx5IGNvdmVycywgbGlrZWx5
IHRoZSBzYW1lIHdhcm0tdXAgc3RhdGUgbWFjaGluZSBJCj4gPiBkZXNjcmliZWQgaW4gdGhlIHYz
IHRlc3Rpbmcgbm90ZSAoYXVkaW8gbmVlZGluZyBhIHZpZGVvIFNUUkVBTU9OCj4gPiBhZnRlciBh
IHJlcGx1ZykuIEkgYW0gaW5zdHJ1bWVudGluZyB0aGUgcmVnaXN0ZXIgc3RhdGUgbmV4dCB0bwo+
ID4gcm9vdC1jYXVzZSBpdDsgSSdkIHRyZWF0IGl0IGFzIGEgZm9sbG93LXVwIHJhdGhlciB0aGFu
IGEgdjQKPiA+IGJsb2NrZXIsIGJ1dCBoYXBweSB0byBoZWFyIGlmIHlvdSBzZWUgaXQgZGlmZmVy
ZW50bHkgLS0gYW5kIGN1cmlvdXMKPiA+IHdoZXRoZXIgdGhlIDVCIHNob3dzIHRoZSBzYW1lIHNl
Y29uZC1jeWNsZSBiZWhhdmlvci4KPiA+Cj4gPiB2NCBmb2xsb3dzIHdpdGggdGhlIHJlLWFybSBw
bHVzIHRoZSBkdHMgYW5kIGJpbmRpbmcgY2hhbmdlcyBhbHJlYWR5Cj4gPiBtZW50aW9uZWQuCj4g
Pgo+ID4gT25lIG1vcmUgc21hbGwgdGhpbmcgdGhlIGF1ZGlvIGJpdCBleHBvc2VzLCBmb3IgYSBw
b3NzaWJsZQo+ID4gZm9sbG93LXVwOiBoZG1pcnhfY2VjX3VwZGF0ZV9iaXRzKCkgaXMgYSBub24t
YXRvbWljIFJNVyAodGhlIHJlYWQKPiA+IGFuZCB0aGUgd3JpdGUgZWFjaCB0YWtlIHJzdF9sb2Nr
IHNlcGFyYXRlbHkpLCBhbmQgd2l0aCBhdWRpbyBhZGRlZAo+ID4gdGhlcmUgYXJlIG5vdyB0d28g
d3JpdGVycyBvZiBHTE9CQUxfU1dFTkFCTEUsIHNvIGEgQ0VDIGFkYXB0ZXIKPiA+IGVuYWJsZSBy
YWNpbmcgYW4gYXVkaW8gZW5hYmxlL2Rpc2FibGUgY291bGQgaW4gdGhlb3J5IGxvc2UgdGhlCj4g
PiBvdGhlciBzaWRlJ3MgYml0LiBNYWlubGluZSB0b2RheSBoYXMgYSBzaW5nbGUgd3JpdGVyLCBz
byBpdCBpcyBub3QKPiA+IGEgYnVnIHRoZXJlLiBDYW4gc2VuZCBhIHNtYWxsIHBhdGNoIG1ha2lu
ZyBpdCBhdG9taWMgaWYgeW91IHRoaW5rCj4gPiBpdCBpcyB3b3J0aCBpdC4KPgo+IEZlZWwgZnJl
ZSB0byBzZW5kIHRoZSBmb2xsb3cgdXBzLgo+Cj4gLS0KPiBCZXN0IHJlZ2FyZHMsCj4gRG1pdHJ5
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
