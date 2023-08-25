Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8CEEC3DA66
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Aug 2023 14:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=byAKoI3yUmzaLR+3Xl2bLvC8gbpY51wWXEc743A8WSc=; b=jDUBzW1Tw+clVp
	i/Wdof4Ek3Eezm+EphcND8vHtrS9FB31iznkxwz0nw2jRR6MLvi+5B8ththa6jmwPRWYMzXI4TLZb
	QIaLzhVKwN04pcXF6PxnCyZeXzrfmJQEFAWZnoGLzn+Z2FBeXpoJ6hUL2AHtKjzkPDwqB0BsWB604
	yl0YT73lAg1whdm+7jRLykPx+qUX8vZNymhbfUAHeJ3T8KdVGCGxk5qEPYSOE4tw6Yo664qEi82tk
	1Er6briL/IRwlxCZj4EMlA3xpp95yl+K1yEkA9uzkbvrmE0UmLRHzzWR/bETdRVRbfeRu1QJFlSlB
	9Lu38t1RFJJQFRFLkAuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZXpb-005bUv-00;
	Fri, 25 Aug 2023 14:30:35 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZXpX-005bTd-35;
	Fri, 25 Aug 2023 14:30:33 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-99bcc0adab4so125421566b.2;
        Fri, 25 Aug 2023 07:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692973829; x=1693578629;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+TKRKdJyVPQnXrud/UFhZyJn/bFLsStYMULRC9lmJOg=;
        b=OQXrYSh/ZTaRcrWWA0vglXPp3TlsL1Ma7vpCxlFdwF1lEPdbMdGQ/tKMaMonLuwtO5
         JABJFdxaAHTAHmpQ686SHGkxHl979MSfAFLV+3B5HIinjzcPUGnuPBGRlMn6pbEscsw4
         b0PqksMuIqStaAEvnyVczSfPUB69oWqBDHLqH0RNamea7U8iC2tZ6nNFXK2HuYAt/32n
         2kynjPi6lEJRwFgree9ATo/CaHaPlGM78Qu24dsK7wKNCKVFgt5H/HBeLRbk++6K2c1l
         0MoGgedsO6+4cm5hC27BUve7gq5G1M1pu2ApSyFKqsJXzh2yWo+9u/FQYYSPKg4EXygz
         Vhkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692973829; x=1693578629;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+TKRKdJyVPQnXrud/UFhZyJn/bFLsStYMULRC9lmJOg=;
        b=JOeWGbWVf9Fs79I5NHT/azBNyK4bc2PM5HHta/tN5Rm00ptyS+TnBuNNABGld2dN+v
         y6GEBBMVwxvotj4Jb4DTEs9Uu/lbG43jO4V/9DR6R/+aOknfdgs5bINjflNZ7LdMlwXy
         wfx0onKNnHaXVkPpU2HAzPQ6K3njgNzu8Ut/UeBg63OGKoOiZx6KrVySHAdmkU9h4OyU
         VsTpt6mXhsOq8vCi/dj2+KsJaXytKsfb8AiYRFc0qn0jER9/k8NLo80GLlyWKqrAyiIu
         IBzcvBX9RohUL3KXw1lStQQCetDJrXMhv8CQSxGgsg+qt8Q5TNaU06mxH+Wc9Se7uiqF
         Ukpg==
X-Gm-Message-State: AOJu0YywpMicmWk4f6kks0udNFyTyFj0RvwabApP5RTEeTP7lY6YDjJY
	cFaqVB2MG3A1fTTxaCETUwlLBdO4FSOjQSSAhUU=
X-Google-Smtp-Source: AGHT+IEES/Rzsyvr1JvufABrAQWEAlPgt7MuBwIREScZLrLGFwNRoIXbaWrIdhd46oBepXht/zkQv0lQ0dAVqCGxlr0=
X-Received: by 2002:a17:906:150:b0:9a1:d79a:418e with SMTP id
 16-20020a170906015000b009a1d79a418emr6028363ejh.40.1692973829204; Fri, 25 Aug
 2023 07:30:29 -0700 (PDT)
MIME-Version: 1.0
References: <20230825122435.316272-1-vignesh.raman@collabora.com>
 <20230825122435.316272-3-vignesh.raman@collabora.com> <87pm3b2pkz.fsf@intel.com>
In-Reply-To: <87pm3b2pkz.fsf@intel.com>
From: Rob Clark <robdclark@gmail.com>
Date: Fri, 25 Aug 2023 07:30:17 -0700
Message-ID: <CAF6AEGs4p0xXJjsNug45CFiP0n-5h7wpdy22YBryjrnWFROESg@mail.gmail.com>
Subject: Re: [PATCH 2/6] drm: ci: Force db410c to host mode
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vignesh Raman <vignesh.raman@collabora.com>, dri-devel@lists.freedesktop.org, 
	emma@anholt.net, linux-doc@vger.kernel.org, david.heidelberg@collabora.com, 
	linux-amlogic@lists.infradead.org, jbrunet@baylibre.com, robdclark@google.com, 
	corbet@lwn.net, khilman@baylibre.com, sergi.blanch.torne@collabora.com, 
	gustavo.padovan@collabora.com, linux-rockchip@lists.infradead.org, 
	daniels@collabora.com, martin.blumenstingl@googlemail.com, 
	robclark@freedesktop.org, helen.koike@collabora.com, anholt@google.com, 
	linux-mediatek@lists.infradead.org, mripard@kernel.org, 
	matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org, 
	angelogioacchino.delregno@collabora.com, neil.armstrong@linaro.org, 
	guilherme.gallo@collabora.com, linux-kernel@vger.kernel.org, 
	tzimmermann@suse.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_073032_003661_748DCC12 
X-CRM114-Status: GOOD (  29.64  )
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

T24gRnJpLCBBdWcgMjUsIDIwMjMgYXQgNjo1NuKAr0FNIEphbmkgTmlrdWxhIDxqYW5pLm5pa3Vs
YUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+Cj4gT24gRnJpLCAyNSBBdWcgMjAyMywgVmlnbmVz
aCBSYW1hbiA8dmlnbmVzaC5yYW1hbkBjb2xsYWJvcmEuY29tPiB3cm90ZToKPiA+IEZvcmNlIGRi
NDEwYyB0byBob3N0IG1vZGUgdG8gZml4IG5ldHdvcmsgaXNzdWUgd2hpY2ggcmVzdWx0cyBpbiBm
YWlsdXJlCj4gPiB0byBtb3VudCByb290IGZzIHZpYSBORlMuCj4gPiBTZWUgaHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eC8tL2NvbW1pdC9jYjcyYTYyOWI4YzE1Yzgw
YTU0ZGRhNTEwNzQzY2VmZDFjNGI2NWI4Cj4gPgo+ID4gU2luY2UgdGhpcyBmaXggaXMgbm90IHNl
bnQgdXBzdHJlYW0sIGFkZCBpdCB0byBidWlsZC5zaCBzY3JpcHQKPiA+IGJlZm9yZSBidWlsZGlu
ZyB0aGUga2VybmVsIGFuZCBkdHMuIEJldHRlciBhcHByb2FjaCB3b3VsZCBiZQo+ID4gdG8gdXNl
IGRldmljZXRyZWUgb3ZlcmxheXMuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogVmlnbmVzaCBSYW1h
biA8dmlnbmVzaC5yYW1hbkBjb2xsYWJvcmEuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUv
ZHJtL2NpL2J1aWxkLnNoIHwgNCArKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vY2kvYnVpbGQuc2ggYi9k
cml2ZXJzL2dwdS9kcm0vY2kvYnVpbGQuc2gKPiA+IGluZGV4IDdiMDE0Mjg3YTA0MS4uYzM5ODM0
YmQ2YmQ3IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2NpL2J1aWxkLnNoCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vY2kvYnVpbGQuc2gKPiA+IEBAIC03MCw2ICs3MCwxMCBAQCBp
ZiBbIC16ICIkQ0lfTUVSR0VfUkVRVUVTVF9QUk9KRUNUX1BBVEgiIF07IHRoZW4KPiA+ICAgICAg
ZmkKPiA+ICBmaQo+ID4KPiA+ICsjIEZvcmNlIGRiNDEwYyB0byBob3N0IG1vZGUgdG8gZml4IG5l
dHdvcmsgaXNzdWUgd2hpY2ggcmVzdWx0cyBpbiBmYWlsdXJlIHRvIG1vdW50IHJvb3QgZnMgdmlh
IE5GUy4KPiA+ICsjIFNlZSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xp
bnV4Ly0vY29tbWl0L2NiNzJhNjI5YjhjMTVjODBhNTRkZGE1MTA3NDNjZWZkMWM0YjY1YjgKPiA+
ICtzZWQgLWkgJy8mdXNiIHsvLC9zdGF0dXMgPSAib2theSI7L3Mvc3RhdHVzID0gIm9rYXkiOy8m
XG5cdGRyX21vZGUgPSAiaG9zdCI7LycgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2FwcTgwMTYt
c2JjLmR0cwo+ID4gKwo+Cj4gSXQgc2VlbXMgbGlrZSBhIHJlYWxseSBiYWQgaWRlYSB0byBtZSB0
byBoYXZlIHRoZSBDSSBidWlsZCBtb2RpZnkgdGhlCj4gc291cmNlIHRyZWUgYmVmb3JlIGJ1aWxk
aW5nLgo+Cj4gVGhlIGtlcm5lbCBiZWluZyBidWlsdCB3aWxsIGhhdmUgYSBkaXJ0eSBnaXQgcmVw
bywgYW5kIHRoZSBsb2NhbHZlcnNpb24KPiB3aWxsIGhhdmUgLWRpcnR5IGluIGl0Lgo+Cj4gSSB0
aGluayBpdCB3b3VsZCBiZSBiZXR0ZXIgdG8gZG8gb3V0LW9mLXRyZWUgYnVpbGRzIGFuZCBhc3N1
bWUgdGhlCj4gc291cmNlIGlzIHJlYWQtb25seS4KCldlIGhhdmUgdGhlICR7dGFyZ2V0X2JyYW5j
aH0tZXh0ZXJuYWwtZml4ZXMgbWVjaGFuaXNtIHRvIG1lcmdlCm5lY2Vzc2FyeSBjaGFuZ2VzIGJl
Zm9yZSBidWlsZGluZyB0aGUga2VybmVsIGZvciBDSS4gIFdoaWNoIGlzCm5lY2Vzc2FyeSBmb3Ig
YSBjb3VwbGUgb2YgcmVhc29uczoKCjEpIHBhdGNoZXMgbGlrZSB0aGlzIHdoaWNoIGFyZW4ndCBh
cHByb3ByaWF0ZSB1cHN0cmVhbSBidXQgbmVjZXNzYXJ5CmR1ZSB0byB0aGUgQ0kgbGFiIHNldHVw
CjIpIHRhcmdldCBicmFuY2ggaWYgb2Z0ZW4gYmFzZWQgb24gYW4gZWFybHkgLXJjLCBhbmQgaXQg
aXNuJ3QgdW5oZWFyZApvZiB0byBuZWVkIHNvbWUgZml4IGZvciBzb21lIGJvYXJkIG9yIGFub3Ro
ZXIgd2hpY2ggaXNuJ3QgYXBwcm9wcmlhdGUKdG8gbGFuZCB2aWEgZHJtLW5leHQKCldlIHNob3Vs
ZCB1c2UgdGhlIC1leHRlcm5hbC1maXhlcyBicmFuY2ggbWVjaGFuaXNtIGZvciBwYXRjaGVzIGxp
a2UgdGhpcyBvbmUuCgpCUiwKLVIKCj4gPiAgZm9yIG9wdCBpbiAkRU5BQkxFX0tDT05GSUdTOyBk
bwo+ID4gICAgZWNobyBDT05GSUdfJG9wdD15ID4+IGRyaXZlcnMvZ3B1L2RybS9jaS8ke0tFUk5F
TF9BUkNIfS5jb25maWcKPiA+ICBkb25lCj4KPiBEaXR0byBmb3IgdGhlIGNvbmZpZyBjaGFuZ2Vz
IGluIHRoZSBjb250ZXh0IGhlcmUuIFRob3NlIGFyZSBmaWxlcyBpbgo+IGdpdCwgZG9uJ3QgY2hh
bmdlIHRoZW0uCj4KPiBTaG91bGRuJ3QgdGhpcyB1c2Ugc29tZXRoaW5nIGxpa2UgJ3NjcmlwdHMv
Y29uZmlnIC0tZW5hYmxlJyBvcgo+ICdzY3JpcHRzL2NvbmZpZyAtLWRpc2FibGUnIG9uIHRoZSAu
Y29uZmlnIGZpbGUgdG8gYmUgdXNlZCBmb3IgYnVpbGRpbmcKPiBpbnN0ZWFkPwo+Cj4KPiBCUiwK
PiBKYW5pLgo+Cj4KPiAtLQo+IEphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGlj
cyBDZW50ZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
