Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62DF9EB64DD
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jul 2023 23:07:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RaFdQHdfk4V7l+qaRYhaDH3DmNYaqhumUmJHFuExw6Q=; b=tk5VJ76Uuv3eZg
	J6njj9d6qWtM14bYWHaLd37jO/UmRAxbLS1hVj8kSDq0AmvTmezyZEnNpjyPjOGSbPDcYkgSpWgSw
	kTONV8BArrdE12+qAvjizQZi8+sDSLN6EE35v1v+TTRWy29B90trKxjqAeVs1I8d4vMuPvKUdpGgL
	CytajNbQRWSNiiPtVjLnRaPlXna+8yKU6/i63gNgh02r7z79haxcqVfSA+s0x5x7PoOIQnCo7OLV0
	+ibZoEtq/6jgDb2K8szsFo1yljKIqAEWnh0cqf4vyVFBausEkuUFPihWpkEdUjI/agkbYkHBvzG5+
	QaAvJe2S0wktRglQwBjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMzDK-00FKgH-0A;
	Fri, 21 Jul 2023 23:07:10 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMzDG-00FKeR-37
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jul 2023 23:07:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689980819;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+TRPwhJZ+o520O6Ym6ZWJVR3ho9j5KAjs0ASJLqe9cc=;
	b=Lmw5qtJ1THBerAWXia85ln+TrsM6WQhCSm3UqBeyFKAS3jg/4CIwltXGdexa95i3SzJFCx
	ScI0Su+cTSj1PUr51Et3t6+3FInxelXXaRlIFkTyFhPFkRmvW+Ijr5rUsT5KeA89YIBrjE
	MltOwyp/RecHD1fJm5sMzMK0DDNIFD8=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-635-7WeQu_90OjKS9B3rDN0Pag-1; Fri, 21 Jul 2023 19:06:58 -0400
X-MC-Unique: 7WeQu_90OjKS9B3rDN0Pag-1
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-315926005c9so1257969f8f.0
        for <linux-rockchip@lists.infradead.org>; Fri, 21 Jul 2023 16:06:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689980817; x=1690585617;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NasJhN8fBoLwgmMb8fDN81QOfOt3NYCI8cJ6HWiK1WI=;
        b=kcNxweQRSZHnK5JvLgZnK6Kb7a0Bx6APW1v7TGitQhUcW5o4HMwbhLiQnJWdP3vTgR
         ZHJ25mzzPiskSC9hmqrI4zkkwxrXt9HVl8WwHMKjh40qjsdLM5atqcpiNYw8dqfaHQvO
         ywdSSuWEMn9qBb6X+8qNFep6pecAlNdLc7a1dUli7qrTdLdBbWQ2k4BQXofuV9DSoQXf
         B5csN+XLB0EwLaawau904LvjJpgsW6qYiuKzExx12TZKdrIdfMNhXQTH+pWjDujtFWcA
         zA4cp/huV5lwVfqjURSKcCi7xo8CGRAP6t7dSUkLrcdQXJMv4OXdZZUJLdc+vKdeKlTx
         Zj1A==
X-Gm-Message-State: ABy/qLa3D04TOAQb/hHfV5QzSjeKXZElrEmO1bCYKCR3/DX0/D9WYAfc
	ewlfoWf52jZKkQKNr9sE+7TI0Gw0jx7EV2EhUjskLkJQ5dAba6Uj4hYMaT/DVHpR8XNpxUecvqp
	Mn5OfiMHiX01Eh0KrDy1ZXr1a2FIierFN
X-Received: by 2002:a5d:4050:0:b0:313:deda:c444 with SMTP id w16-20020a5d4050000000b00313dedac444mr2019796wrp.24.1689980816822;
        Fri, 21 Jul 2023 16:06:56 -0700 (PDT)
X-Google-Smtp-Source: APBJJlH7shqVKurWd3w6vZ/GI3t7GZG76b0T/0WRqT0uW1YqcIy1k3JSfhPh4mjonUVEUk67D08HEw==
X-Received: by 2002:a5d:4050:0:b0:313:deda:c444 with SMTP id w16-20020a5d4050000000b00313dedac444mr2019779wrp.24.1689980816528;
        Fri, 21 Jul 2023 16:06:56 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id t13-20020a05600001cd00b00316eb7770b8sm5376648wrx.5.2023.07.21.16.06.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jul 2023 16:06:55 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Peter Geis
 <pgwipeout@gmail.com>
Cc: linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
 Caleb Connolly <kc@postmarketos.org>, Jarrah Gosbell <kernel@undef.tools>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Martijn Braam
 <martijn@brixit.nl>, Ondrej Jirman <megi@xff.cz>, Rob Herring
 <robh+dt@kernel.org>, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for
 Pinephone Pro to 1.5 MB
In-Reply-To: <3797122.KgjxqYA5nG@diego>
References: <20230403175937.2842085-1-javierm@redhat.com>
 <3999080.iIbC2pHGDl@diego>
 <87h6tdie46.fsf@minerva.mail-host-address-is-not-set>
 <3797122.KgjxqYA5nG@diego>
Date: Sat, 22 Jul 2023 01:06:54 +0200
Message-ID: <87pm4kuanl.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230721_160707_105082_82B421E1 
X-CRM114-Status: GOOD (  35.22  )
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

SGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JpdGVzOgoKSGVsbG8gSGVpa28sCgo+
IEhpLAo+Cj4gQW0gRGllbnN0YWcsIDE4LiBBcHJpbCAyMDIzLCAxNDoxMTo1MyBDRVNUIHNjaHJp
ZWIgSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzOgo+PiBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250
ZWNoLmRlPiB3cml0ZXM6Cj4+IAo+PiBIZWxsbyBIZWlrbywKPj4gCj4+ID4gSGkgUGV0ZXIsCj4+
ID4KPj4gPiBBbSBEaWVuc3RhZywgNC4gQXByaWwgMjAyMywgMTQ6NTI6MDIgQ0VTVCBzY2hyaWVi
IFBldGVyIEdlaXM6Cj4+ID4+IE9uIFR1ZSwgQXByIDQsIDIwMjMgYXQgMzo1NeKAr0FNIEhlaWtv
IFN0w7xibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+PiA+PiA+Cj4+ID4+ID4gSGksCj4+
ID4+ID4KPj4gPj4gPiBBbSBNb250YWcsIDMuIEFwcmlsIDIwMjMsIDE5OjU5OjM3IENFU1Qgc2No
cmllYiBKYXZpZXIgTWFydGluZXogQ2FuaWxsYXM6Cj4+ID4+ID4gPiBUaGlzIGJhdWQgcmF0ZSBp
cyBzZXQgZm9yIHRoZSBkZXZpY2UgYnkgbWFpbmxpbmUgdS1ib290IGFuZCBpcyBhbHNvIHdoYXQK
Pj4gPj4gPiA+IGlzIHNldCBpbiB0aGUgUGluZWJvb2sgUHJvIERldmljZSBUcmVlLCB3aGljaCBp
cyBhIGRldmljZSBzaW1pbGFyIHRvIHRoZQo+PiA+PiA+ID4gUGluZVBob25lIFBybyBidXQgd2l0
aCBhIGRpZmZlcmVudCBmb3JtIGZhY3Rvci4KPj4gPj4gPiA+Cj4+ID4+ID4gPiBPdGhlcndpc2Us
IHRoZSBiYXVkIHJhdGUgb2YgdGhlIGZpcm13YXJlIGFuZCBMaW51eCBkb24ndCBtYXRjaCBieSBk
ZWZhdWx0Cj4+ID4+ID4gPiBhbmQgYSAnY29uc29sZT10dHlTMiwxNTAwMDAwbjgnIGtlcm5lbCBj
b21tYW5kIGxpbmUgcGFyYW1ldGVyIGlzIHJlcXVpcmVkCj4+ID4+ID4gPiB0byBoYXZlIHByb3Bl
ciBvdXRwdXQgZm9yIGJvdGguCj4+ID4+ID4KPj4gPj4gPiBUaGUgaW50ZXJlc3RpbmcgcXVlc3Rp
b24gaXMgYWx3YXlzIGlmIHRoaXMgd2lsbCBicmVhayBzb21lb25lIGVsc2UncyBzZXR1cC4KPj4g
Pj4gPiBJJ3ZlIG5ldmVyIHJlYWxseSB1bmRlcnN0b29kIHRoZSBzdHJhbmdlIHNldHRpbmcgb2Yg
MS41TUJwcywgYnV0IG9uIHRoZQo+PiA+PiA+IG90aGVyIGhhbmQgaXQgX2lzXyBhIHJlYWxpdHkg
b24gbW9zdCBib2FyZHMuCj4+ID4KPj4gPj4gVGhlIDEuNU0gYmF1ZCBpcyBkZWZhdWx0IGJlY2F1
c2UgdGhlIGNsb2NrIHN0cnVjdHVyZSBvbiByb2NrY2hpcAo+PiA+PiBkZXZpY2VzIGRvZXMgbm90
IGFsbG93IGEgY2xlYW4gMTE1MjAwIGJhdWQuIEJ5IGF0dGVtcHRpbmcgdG8gZm9yY2UKPj4gPj4g
MTE1MjAwLCBpdCB3aWxsIGFsd2F5cyBiZSBzbGlnaHRseSBvZmYgKGVpdGhlciBsb3cgb3IgaGln
aCBkZXBlbmRpbmcKPj4gPj4gb24gaG93IHRoZSBkcml2ZXIgZGVjaWRlZCB0byByb3VuZCkuIElm
IHRoaXMgYWN0dWFsbHkgY2F1c2VzIGFueQo+PiA+PiBwcm9ibGVtcyBpcyB0aGUgc3ViamVjdCBv
ZiBtdWNoIGRlYmF0ZS4KPj4gPgo+PiA+IHRoYW5rcyBzbyBtdWNoIGZvciB0aGlzIHBpZWNlIG9m
IGNsb2NrLWRldGFpbC4gQXMgSSB3cm90ZSwgSSBuZXZlciByZWFsbHkKPj4gPiB1bmRlcnN0b29k
IHRoZSB3aHkgX2JlZm9yZV8gYnV0IGFsc28gbmV2ZXIgY2FyZWQgdGhhdCBtdWNoIHRvIGRpdmUK
Pj4gPiBpbnRvIGl0IGFuZCBmaW5kIG91dC4KPj4gPgo+PiA+IFNvIHlvdXIgZXhwbGFuYXRpb24g
Y2xvc2VzIG9uZSBrbm93bGVkZ2UgZ2FwIGluIG15IGhlYWQuCj4+ID4KPj4gPiBUaGFua3MgYSBs
b3QgOi0pCj4+IAo+PiBEaWQgeW91IG1ha2UgYSBkZWNpc2lvbiBhYm91dCB0aGlzPyBJIGd1ZXNz
IHRoZSBjbG9jayBleHBsYW5hdGlvbiBpcyB5ZXQKPj4gYW5vdGhlciBhcmd1bWVudCBpbiBmYXZv
dXIgb2Ygc3dpdGNoaW5nIHRoZSBQUFAgdG8gYSAxLjUgTWJwcyBiYXVkIHJhdGUgPwo+Cj4gU29y
cnksIGJ1dCBubyBkZWNpc2lvbiBtYWRlIGhlcmUuIEVpdGhlciB3YXkgaXQncyBicmVha2luZyBm
b3Igc29tZW9uZSwKPiB3aGljaCBtYWtlcyB0aGlzIHF1aXRlIGhhcmQuCj4KCkFub3RoZXIgcGlu
ZyBvbiB0aGlzIHBhdGNoLgoKPiBUaGUgcmF0ZSBhY2N1cmFjeSBpcyB0aGUgb25lIHNpZGUsIHRo
ZSB0d28tYm9vdCBpc3N1ZSBpcyB0aGUgb3RoZXIgc2lkZS4KPiBBbmQgbWFpbmxpbmUgdS1ib290
IChhbmQgbGV2aW5ib290IC0gd2hhdGV2ZXIgdGhhdCBpcykgcHJvdmlkZXMgYSAzcmQgc2lkZS4K
Pgo+IFBlb3BsZSBzdGFydGluZyB3aXRoIHRoZSBwaG9uZSBwcm9iYWJseSB3b24ndCByZXBsYWNl
IHRoZSBib290bG9hZGVyCj4gaW4gYSBmaXJzdCBzdGVwIGJ1dCBpbnN0ZWFkIG1pZ2h0IHBsYXkg
d2l0aCBhIHN5c3RlbSBpbWFnZSBvciBuZXdlciBrZXJuZWwuCj4gU28gaWYgdGhlIHVhcnQgd2ls
bCBicmVhayBmb3IgZXZlcnlvbmUgdXNpbmcgdGhlIGRlZmF1bHQgYm9vdGxvYWRlciBmcm9tCj4g
dGhlIGZhY3RvcnkgdGhhdCBpcyBzb21ld2hhdCBiYWQuCj4KClByb2JhYmx5IHdvbid0IHJlcGxh
Y2UgdGhlIERUQiBzaGlwcGVkIHdpdGggdGhlIGZpcm13YXJlIGVpdGhlcj8gSWYgb25lIGlzCnJl
cGxhY2luZyB0aGUgZmlybXdhcmUgcHJvdmlkZWQgRFRCIHdpdGNoIHRoZSBvbmUgaW4gdGhlIG1h
aW5saW5lIGtlcm5lbCwKcHJvYmFibHkgc3VjaCBwZXJzb24gaXMgYWxzbyB1c2luZyBtYWlubGlu
ZSB1LWJvb3Q/Cgo+IEkgZG9uJ3QgaGF2ZSBhIFBpbmVwaG9uZSBQcm8gbXlzZWxmLCBzbyBJIHJl
YWxseSBob3BlZCBmb3Igc29tZSBBY2tzCj4gb3Igc2ltaWxhciB0byBhcHBlYXIgaW4gdGhlIG1l
YW50aW1lLgo+CgpGb3Igc29tZW9uZSBsaWtlIG1lIHdobyBpcyBvbmx5IHVzaW5nIG1haW5saW5l
IHUtYm9vdCwgbGludXgsIGV0YyB0aGVuCmhhdmluZyBhIGNvbnNpc3RlbnQgdWFydCBiYXVkIHJh
dGUgYWNyb3NzIGFsbCBjb21wb25lbnRzIGlzIHJlYWxseSB1c2VmdWwuCgpPdGhlcndpc2UgSSBl
aXRoZXIgaGF2ZSBzZXJpYWwgY29uc29sZSBmb3IgdS1ib290IG9yIHRoZSBrZXJuZWwsIGJ1dCBj
YW4ndApoYXZlIGJvdGggd29ya2luZyBzbyBpcyBhbm5veWluZy4KCkl0IHdvdWxkIGJlIGdvb2Qg
dG8gaGF2ZSBhIGRlZmluaXRlIGFuc3dlciBvbiB0aGlzLiBTaW5jZSBldmVyeSB0aW1lIHRoYXQK
SSB0cnkgdG8gaGFjayBvbiBteSBQUFAsIEkgZW5kIGNoYW5naW5nIG15IERUUyBhbmQgcmVtZW1i
ZXIgdGhpcyBwYXRjaCA6KQoKPiBEbyB3ZSBoYXZlIHNvbWVvbmUgd2l0aCBhbiBhY3R1YWwgUGlu
ZTY0IGFmZmlsaWF0aW9uIGluIHRoaXMgbG9vcD8KPgoKSSBkb24ndCB0aGluayBwaW5lNjQgY2Fy
ZXMgdGhhdCBtdWNoIGFib3V0IHRoZSBzb2Z0d2FyZS4gVGhleSBqdXN0IGJ1aWxkCnRoZSBoYXJk
d2FyZSBhbmQgZXhwZWN0IHRoZSBjb21tdW5pdHkgdG8gYWRkIHRoZSBzdXBwb3J0IEkgYmVsaWV2
ZS4KCi0tIApCZXN0IHJlZ2FyZHMsCgpKYXZpZXIgTWFydGluZXogQ2FuaWxsYXMKQ29yZSBQbGF0
Zm9ybXMKUmVkIEhhdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
