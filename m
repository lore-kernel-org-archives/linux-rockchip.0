Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F4B6C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Apr 2022 17:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HmPgMRiD2GP3xZA4vgOgIC5/UIIBn1l3UgXVHqzzddI=; b=AKuA6aIX/GYbcH
	CDk38WWyX0MwL977niq4ZS/3VFChvqR2w3ssjdBJbkoqedsiKNh0vrPO6o2Rx4Jll++XfV/5762Dt
	QQNltY9gO4j79K0EMVAQ21K61EgFTqjpUDB/g6DyJCW6+mvazpNVKmJsc0T9/AG18e7PKFOnP8jUM
	5B/PmWezZRGl0iGtOk24V9BSs9lvjdotKmSIRP82UVpM8+YwvXJWbuzgcvVNoO8Q71Qd+HYFMiAT7
	cbLZV9fn9yjw4u9xYHTHPjhd5BwqfN7oWjkmMO6pPfnMLXesG9see7Mu5UL0UA/VMHLnU4UsDi+S9
	C6V0NI3/suIVV85EBxUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc9L8-007L3L-UL; Wed, 06 Apr 2022 17:21:06 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc9L5-007L1g-PU; Wed, 06 Apr 2022 17:21:05 +0000
Received: by mail-ed1-x532.google.com with SMTP id g20so3465442edw.6;
 Wed, 06 Apr 2022 10:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5y49F6FFIHNJFXwX0mwDpkqnylVMigszjtIkPhpuii8=;
 b=P8w9ucNqgOCkMD9cfh5/9Sy+LhNLNVxHGvjSiEWpTv/tYtCA4FCvREBL+YIGfXOxzY
 4SFHJnrbfJLEM8r6ouWRoqIEuHMY/CooGAHqfac4DSpWWicNAOIw8wuck+DtxI37wVEw
 BaJkkUmrdPoPinQOCn9/dQ4ZdbtiaZbOPVMMW4fTbxC0P53Ew4F6UEFCYiMRd8Juy96/
 d2qwJV6kmc3YTcVNty4BQmYiVVh7Q1wyGOweD4ZFrWSYLXTrGwyGUk4zhQ+7BNL4IYRj
 lT8R10BtopHMNIqAfK2+tmZSRpknsj+6osDd/bevh9ecLeWegNHM33fqaX/lzQEo0Mud
 NMig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5y49F6FFIHNJFXwX0mwDpkqnylVMigszjtIkPhpuii8=;
 b=20DSsmrnsF4MzjPDh8enAU70tS6KKqtjA12SVBIcMBxuk28adr0f4ln3K39xmj4xRO
 +cmicMZhnn0Zcflm3i3QGXvP+CQsXnY91Si1sNDdXqttTMWphI9LzKc15G6mtMs5m8N+
 dteVFYAjpan/2mxI1CyryIi6MPEoKQAr8Om9vKzWynctK6A3iu3KlRHJO47BZNV3RASC
 1fr0F4djlBS7iBow1BoBnxKPYQGL2ber1PFdAsbcngV635aGwa5XJjEwiLMpCKdPr3Tx
 Ur8Fep3GS7kXMmw8ASyVojDSWWu3vjjR3mJ1kwLkVuuHbbprnFA59U205ZbRsHXf27Rb
 YTVw==
X-Gm-Message-State: AOAM532a+bmCuwQOO+AE5nGJdZarb+TQqpdTavErjJELr7zzdrY3kOjB
 +zOO2JbRO0/iyfb0eK+dd34=
X-Google-Smtp-Source: ABdhPJw7SwZmk8KMDZN9kawMnoJ2pOLoCUSGiI/T+DYa+t+vvAVLi5zMiKJaRx9H4xaslCQrGhPLEA==
X-Received: by 2002:a50:da8b:0:b0:415:a122:d7ad with SMTP id
 q11-20020a50da8b000000b00415a122d7admr9951784edj.123.1649265661983; 
 Wed, 06 Apr 2022 10:21:01 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-86-58-32-107.static.triera.net.
 [86.58.32.107]) by smtp.gmail.com with ESMTPSA id
 dd6-20020a1709069b8600b006df08710d00sm6947802ejc.85.2022.04.06.10.21.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Apr 2022 10:21:01 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, nicolas@ndufresne.ca, hverkuil-cisco@xs4all.nl,
 gregkh@linuxfoundation.org, wens@csie.org, samuel@sholland.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [RFC PATCH 0/8] media: hantro: Add 10-bit support
Date: Wed, 06 Apr 2022 19:21:00 +0200
Message-ID: <2820101.e9J7NaK4W3@jernej-laptop>
In-Reply-To: <bf938b83-2b57-95b3-4bcb-f967bbb46413@collabora.com>
References: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
 <4386971.LvFx2qVVIh@jernej-laptop>
 <bf938b83-2b57-95b3-4bcb-f967bbb46413@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_102103_870660_95E55769 
X-CRM114-Status: GOOD (  24.60  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

RG5lIHNyZWRhLCAwNi4gYXByaWwgMjAyMiBvYiAwODo1NDowNyBDRVNUIGplIEJlbmphbWluIEdh
aWduYXJkIG5hcGlzYWwoYSk6Cj4gTGUgMDUvMDQvMjAyMiDDoCAyMDo0MCwgSmVybmVqIMWga3Jh
YmVjIGEgw6ljcml0IDoKPiA+IEhpIEJlbmphbWluIQo+ID4gCj4gPiBEbmUgdG9yZWssIDA1LiBh
cHJpbCAyMDIyIG9iIDE4OjA3OjQxIENFU1QgamUgQmVuamFtaW4gR2FpZ25hcmQgCm5hcGlzYWwo
YSk6Cj4gPj4gTGUgMjcvMDIvMjAyMiDDoCAxNTo0OSwgSmVybmVqIFNrcmFiZWMgYSDDqWNyaXQg
Ogo+ID4+PiBGaXJzdCB0d28gcGF0Y2hlcyBhZGQgMTAtYml0IGZvcm1hdHMgdG8gVUFQSSwgdGhp
cmQgZXh0ZW5kcyBmaWx0ZXJpbmcKPiA+Pj4gbWVjaGFuaXNtLCBmb3VydGggZml4ZXMgaW5jb3Jy
ZWN0IGFzc3VtcHRpb24sIGZpZnRoIG1vdmVzIHJlZ2lzdGVyCj4gPj4+IGNvbmZpZ3VyYXRpb24g
Y29kZSB0byBwcm9wZXIgcGxhY2UsIHNpeHRoIGFuZCBzZXZlbnRoIGVuYWJsZSAxMC1iaXQKPiA+
Pj4gVlA5IGRlY29kaW5nIG9uIEFsbHdpbm5lciBINiBhbmQgbGFzdCBpbmNyZWFzZXMgY29yZSBm
cmVxdWVuY3kgb24KPiA+Pj4gQWxsd2lubmVyIEg2Lgo+ID4+PiAKPiA+Pj4gSSdtIHNlbmRpbmcg
dGhpcyBhcyBSRkMgdG8gZ2V0IHNvbWUgY29tbWVudHM6Cj4gPj4+IDEuIGZvcm1hdCBkZWZpbml0
aW9ucyAtIGFyZSBmb3VyY2MncyBvaz8gYXJlIGNvbW1lbnRzL2Rlc2NyaXB0aW9ucyBvaz8KPiA+
Pj4gMi4gaXMgZXh0ZW5kZWQgZmlsdGVyaW5nIG1lY2hhbmlzbSBvaz8KPiA+Pj4gCj4gPj4+IEkg
d291bGQgYWxzbyBsaWtlIGlmIHRoZXNlIHBhdGNoZXMgYXJlIHRlc3RlZCBvbiBzb21lIG1vcmUg
SFcuCj4gPj4+IEFkZGl0aW9uYWxseSwgY2FuIHNvbWVvbmUgdGVzdCB0aWxlZCBQMDEwPwo+ID4+
PiAKPiA+Pj4gUGxlYXNlIHRha2UgYSBsb29rLgo+ID4+IAo+ID4+IEhpIEplcm5laiwKPiA+PiAK
PiA+PiBJIGhhdmUgY3JlYXRlIGEgYnJhbmNoIHRvIHRlc3QgdGhpcyBzZXJpZXMgd2l0aCBWUDkg
YW5kIEhFVkM6Cj4gPj4gaHR0cHM6Ly9naXRsYWIuY29sbGFib3JhLmNvbS9iZW5qYW1pbi5nYWln
bmFyZC9mb3ItdXBzdHJlYW0vLS90cmVlLzEwYml0Xwo+ID4+IGlteCA4bSBGZWVsIGZyZWUgdG8g
cGljayB3aGF0IEkgbWF5IG5lZWQgaW4gaXQuCj4gPj4gCj4gPj4gVGhhdCBkb2Vzbid0IGltcHJv
dmUgZmx1c3RlciBzY29yZXMsIEkgdGhpbmsgbW9yZSBkZXYgYXJlIHN0aWxsIG5lZWRlZCBpbgo+
ID4+IEdTVCBiZWZvcmUgZ2V0dGluZyBzb21ldGhpbmcgZnVsbHkgZnVuY3Rpb25hbC4KPiA+PiBB
bnl3YXkgSSBhYmxlIHRvIHNlbGVjdCBQMDEwIHBpeGVsIGZvcm1hdCBpZiB0aGUgaW5wdXQgaXMg
YSAxMGJpdAo+ID4+IGJpdHN0cmVhbS4+IAo+ID4gV2hhdCBraW5kIG9mIGltcHJvdmVtZW50cyBk
byB5b3UgZXhwZWN0PyBBY3R1YWxseSwgdGhpcyBzZXJpZXMgaXMgZGVzaWduZWQKPiA+IHRvIGNo
YW5nZSBub3RoaW5nIGZvciBwbGF0Zm9ybXMsIHdoZXJlIDEwLWJpdCBmb3JtYXQgaXMgbm90IGFk
ZGVkIGludG8KPiA+IHRoZSBsaXN0IG9mIHN1cHBvcnRlZCBmb3JtYXRzLiBJIHRoaW5rIHJlYXNv
bnMgYXJlIHF1aXRlIG9idmlvdXMuIEZpcnN0LAo+ID4gbm90IGV2ZXJ5IGRldmljZSBtYXkgc3Vw
cG9ydCAxMC1iaXQgb3V0cHV0LiBTZWNvbmQsIGFzIHlvdSBtaWdodCBhbHJlYWR5Cj4gPiBmaWd1
cmVkIGl0IG91dCwgcmVnaXN0ZXJzIGluIHRoaXMgc2VyaWVzIGFyZSBzZXQgb25seSBmb3IgbGVn
YWN5IGNvcmVzLiBJCj4gPiBoYXZlIG5vIGlkZWEsIHdoYXQgbmVlZHMgdG8gYmUgZG9uZSBmb3Ig
bmV3ZXIgb25lcywgc2luY2UgSSBkb24ndCBoYXZlCj4gPiB0aGVtLiBBbnl3YXksIEkgdGVzdGVk
IHRoaXMgd2l0aCBmbHVzdGVyIGFuZCBvbmx5IG9uZSBhZGRpdGlvbmFsIHRlc3QKPiA+IHBhc3Nl
cywgYmVjYXVzZSBpdCBpcyB0aGUgb25seSBvbmUgZm9yIDEwLWJpdCBZVVY0MjAuCj4gCj4gSW4g
dGhpcyBzZXJpZXMgeW91IHdpbGwgZmluZCB0aGF0IEkgaGF2ZSBhZGRlZCB0aGUgcmVnaXN0ZXJz
IGZvciB0aGUgbmV3Cj4gY29yZXMsIGZpeCBoZXZjIHRvIGJlIGFibGUgdG8gdXNlIDEwLWJpdCwg
YW5kIGVuYWJsZSB0aGF0IGluIElNWDhNLgoKWW91ciBjaGFuZ2VzIHNlZW1zIHJlYXNvbmFibGUs
IGJ1dCBhdCB0aGlzIHBvaW50IEkgd291bGRuJ3QgYm90aGVyIHdpdGggCmZsdXN0ZXIuIEluc3Rl
YWQsIHRyeSB0byB0ZXN0IHdpdGggb25lIHNwZWNpZmljIGJpdHN0cmVhbSBvciBldmVuIGEgc2Ft
cGxlIHZpZGVvIApmaWxlLiBJIGp1c3QgdGVzdGVkIHdpdGggb25lIHJhbmRvbSAxMC1iaXQgVlA5
IHZpZGVvIHRoYXQgSSBmb3VuZCB3aGVuIHdvcmtpbmcgCm9uIHRoaXMgc2VyaWVzLiBUaGF0IHdh
eSB5b3UgYXZvaWQgYW55IGNvcm5lciBjYXNlcyB3aGljaCBzb21ldGltZXMgcGxhcXVlIApmbHVz
dGVyIHRlc3RpbmcgKHJlZmVyZW5jZSBiaXRzdHJlYW1zIHNtYWxsZXIgdGhhbiBtaW4uIHN1cHBv
cnRlZCBzaXplKS4gCkFueXdheSwgcmUtY2hlY2sgdmVuZG9yIGxpYiBpZiB0aGVyZSBpcyBhbnkg
b3RoZXIgcGxhY2UgdG8gYWRqdXN0IHNvbWV0aGluZyAKZm9yIDEwLWJpdC4KCkJlc3QgcmVnYXJk
cywKSmVybmVqCgo+IAo+IFJlZ2FyZHMsCj4gQmVuamFtaW4KPiAKPiA+IEJlc3QgcmVnYXJkcywK
PiA+IEplcm5lagoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
