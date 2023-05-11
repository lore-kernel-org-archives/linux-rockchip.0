Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FEA1C7EE22
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 May 2023 01:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jWS5Bk6Dx2wO2B2ecWv1cO2nlqHPyGYu6clJXwbxKdU=; b=XBybL5ASl1VZas
	eNzqUo5DQC8CIhsfTvFgrWouzkq4ycuk2PqbstzWW4hlo4MEAZWm+14xiUCp7Ra56pfXagNJgfXl2
	swLlW133tLbVs+yS6Nw875475Vczq6SOA00bab6Uro6WUYlJxwV+G96W3O4V+1Z8WqjSjF8ODr7kK
	Tao6AfurML19sL6TbwBmlLHBMUNQxBD5eJP7LA/DsP0/n4hvA/cRSsvI7+jYx85KZCI5RlHXY7A4m
	Iu3OQbG1MQIG58t86GbTYlCX5B3YXJwMFek11aCVPMrhcqb/DdKODzAx4Fk9YppviCMM/sxDAHNRb
	7G9ZnFQ2jdKf0nfaykqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwumP-007P3Z-0v;
	Thu, 11 May 2023 01:07:37 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwumM-007P35-0m;
	Thu, 11 May 2023 01:07:35 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-50c8d87c775so10535668a12.3;
        Wed, 10 May 2023 18:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683767251; x=1686359251;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WBFVTTTsvzVv70iU9CVp0O8INXKx7ewdVL5aIiLNN2U=;
        b=e/mCx6wL3ikdgTkS6CB5+AVSzY4AVgz09Ncp5j58wkv/kquL+YWrSzaTyVxy65cQd7
         hwY2Un1NQ08yARrzLLKz7yXreB4720ev8/4z3mObwXkBZQpaF/xg1FRlw0PpSr9thGio
         J/rMAkjKaW+igQx2qDn13145BVNx/b00JiUoV+ntYjE7+hxLWiN9dsT/CV2bu4mnwx5t
         4s6uxOvkS/GhP2V8nrCPsJip/UkimPiJQhWL4e4D3Ob5+5KgTen0Yl6loO96I5pjO2e0
         qe1F73CjbQVkIs2zR3d8nNSK6ggGno2VoqGrpHEmpaSkp2yp3cDjIkWqMqbDC0pPXsZs
         UAKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683767251; x=1686359251;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WBFVTTTsvzVv70iU9CVp0O8INXKx7ewdVL5aIiLNN2U=;
        b=Anj91KyXWvFRiVdJNWZ5vzL7O533ipXCfiTtwfiMs25ymBR0mAOAe6IW8vABCGtYzY
         Tx10KDiZXGp+AmRirTZxOD7a+U4w/Ntf8gS18yEiWppmP47nzcU4AhdCv/cOoS1/Da1r
         DBrc22eMPPKk4sRaAbAI4n16VyIRMcIKGboBi+4hk5xpiBthZKrvHF8r8BCy6URVBFNC
         Z9SlDceyWwlDF034OdsagNpUQ7FXZs1PORN5ndLx/0XTz2wASgZ1iLtYKJYXc2MxsAF/
         wcizdtVPBsov/j502bbdmSTj1tz8+Gt1ZlRrkhcZKd03l8E7fhU9kfU2TlbhzE4M02z/
         L/PA==
X-Gm-Message-State: AC+VfDwGdLpfa7Qqxo8tCgRVIfYPPTVoIji6ZiTQgqy8srf9nqwcz249
	2WaXd6tZiGukyvg0SHpNinoteHgW7P7vOpQhZnA=
X-Google-Smtp-Source: ACHHUZ6y6d+r8/mc7BzoqQn93iv7U0535yE6s3qi/zBmO1f5IIMiJ71mfO3Nu/tyuP/FMMc2KDvKzoU1AAH9FLH3804=
X-Received: by 2002:a17:906:fe01:b0:94f:322d:909d with SMTP id
 wy1-20020a170906fe0100b0094f322d909dmr17099288ejb.63.1683767250852; Wed, 10
 May 2023 18:07:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAMdYzYp6=mYSoUHN3TEXVSMbRt1HpRm0X_4RMez09V0XzQewaw@mail.gmail.com>
 <ZFwC/seTfSoaLn0v@bhelgaas>
In-Reply-To: <ZFwC/seTfSoaLn0v@bhelgaas>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 10 May 2023 21:07:18 -0400
Message-ID: <CAMdYzYoa8dhmBx5MUG0yBPwVVXPXHrYNnR0QvKHXvV=JaKuMfw@mail.gmail.com>
Subject: Re: [PATCH v1] drivers: pci: introduce configurable delay for
 Rockchip PCIe bus scan
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>, linux-pci@vger.kernel.org, 
	robh@kernel.org, heiko@sntech.de, kw@linux.com, shawn.lin@rock-chips.com, 
	linux-kernel@vger.kernel.org, lgirdwood@gmail.com, 
	linux-rockchip@lists.infradead.org, broonie@kernel.org, bhelgaas@google.com, 
	linux-kernel-mentees@lists.linuxfoundation.org, lpieralisi@kernel.org, 
	linux-arm-kernel@lists.infradead.org, Dan Johansen <strit@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_180734_284652_73724CEF 
X-CRM114-Status: GOOD (  35.38  )
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

T24gV2VkLCBNYXkgMTAsIDIwMjMgYXQgNDo0OOKAr1BNIEJqb3JuIEhlbGdhYXMgPGhlbGdhYXNA
a2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBUdWUsIE1heSAwOSwgMjAyMyBhdCAwODoxMToyOVBN
IC0wNDAwLCBQZXRlciBHZWlzIHdyb3RlOgo+ID4gT24gVHVlLCBNYXkgOSwgMjAyMyBhdCA1OjE5
4oCvUE0gQmpvcm4gSGVsZ2FhcyA8aGVsZ2Fhc0BrZXJuZWwub3JnPiB3cm90ZToKPiA+ID4gT24g
VHVlLCBNYXkgMDksIDIwMjMgYXQgMDU6Mzk6MTJQTSArMDIwMCwgVmluY2Vuem8gUGFsYXp6byB3
cm90ZToKPiA+ID4gPiBBZGQgYSBjb25maWd1cmFibGUgZGVsYXkgdG8gdGhlIFJvY2tjaGlwIFBD
SWUgZHJpdmVyIHRvIGFkZHJlc3MKPiA+ID4gPiBjcmFzaGVzIHRoYXQgb2NjdXIgb24gc29tZSBv
bGQgZGV2aWNlcywgc3VjaCBhcyB0aGUgUGluZTY0IFJvY2tQcm82NC4KPiA+ID4gPgo+ID4gPiA+
IFRoaXMgaXNzdWUgaXMgYWZmZWN0aW5nIHRoZSBBUk0gY29tbXVuaXR5LCBidXQgdGhlcmUgaXMg
bm8KPiA+ID4gPiB1cHN0cmVhbSBzb2x1dGlvbiBmb3IgaXQgeWV0Lgo+ID4gPgo+ID4gPiBJdCBz
b3VuZHMgbGlrZSB0aGlzIGhhcHBlbnMgd2l0aCBzZXZlcmFsIGVuZHBvaW50cywgcmlnaHQ/ICBB
bmQgSQo+ID4gPiBhc3N1bWUgdGhlIGVuZHBvaW50cyB3b3JrIGZpbmUgaW4gb3RoZXIgbm9uLVJv
Y2tjaGlwIHN5c3RlbXM/ICBJZgo+ID4gPiB0aGF0J3MgdGhlIGNhc2UsIG15IGd1ZXNzIGlzIHRo
ZSBwcm9ibGVtIGlzIHdpdGggdGhlIFJvY2tjaGlwIGhvc3QKPiA+ID4gY29udHJvbGxlciBhbmQg
aG93IGl0J3MgaW5pdGlhbGl6ZWQsIG5vdCB3aXRoIHRoZSBlbmRwb2ludHMuCj4gPiA+IC4uLgo+
Cj4gPiBUaGUgbWFpbiBpc3N1ZSB3aXRoIHRoZSByazMzOTkgaXMgdGhlIFBDSWUgY29udHJvbGxl
ciBpcyBidWdneSBhbmQKPiA+IHRyaWdnZXJzIGEgU29DIHBhbmljIHdoZW4gY2VydGFpbiBlcnJv
ciBjb25kaXRpb25zIG9jY3VyIHRoYXQgc2hvdWxkCj4gPiBiZSBoYW5kbGVkIGdyYWNlZnVsbHku
IE9uZSBvZiB0aG9zZSBjb25kaXRpb25zIGlzIHdoZW4gYW4gZW5kcG9pbnQKPiA+IHJlcXVlc3Rz
IGFuIGFjY2VzcyB0byB3YWl0IGFuZCByZXRyeSBsYXRlci4KPgo+IEkgYXNzdW1lIHRoaXMgcmVm
ZXJzIHRvIGEgQ29tcGxldGlvbiB3aXRoIFJlcXVlc3QgUmV0cnkgU3RhdHVzIChSUlMpPwoKSSdt
IG5vdCBzdXJlIHRoZSBmdWxsIGNvdmVyYWdlLCB0aGUgdGVzdCBwYXRjaCBmcm9tIFNoYXduIExp
biB0aGF0CmFsbG93ZWQgdGhlIHN5c3RlbSB0byBoYW5kbGUgdGhlIGVycm9ycyBoYXMgdGhlIGZv
bGxvd2luZyBkZXNjcmlwdGlvbjoKIk5hdGl2ZSBkZWZlY3QgcHJldmVudHMgdGhpcyBSQyBmYXIg
ZnJvbSBzdXBwb3J0aW5nIGFueSByZXNwb25zZSBmcm9tCkVQIHdoaWNoIFVSIGZpbGVkIGlzIHNl
dC4iCgo+Cj4gPiBNYW55IHllYXJzIGFnbyB3ZSByYW4gdGhhdCBpc3N1ZSB0byBncm91bmQgYW5k
IHdpdGggUm9iaW4gTXVycGh5J3MKPiA+IGhlbHAgd2UgZm91bmQgdGhhdCB3aGlsZSBpdCdzIHBv
c3NpYmxlIHRvIGdyYWNlZnVsbHkgaGFuZGxlIHRoYXQKPiA+IGNvbmRpdGlvbiBpdCByZXF1aXJl
ZCBoaWphY2tpbmcgdGhlIGVudGlyZSBhcm02NCBlcnJvciBoYW5kbGluZwo+ID4gcm91dGluZS4g
Tm90IGV4YWN0bHkgc2NhbGFibGUgZm9yIGp1c3Qgb25lIFNvQy4KPgo+IERvIHlvdSBoYXZlIGEg
cG9pbnRlciB0byB0aGF0IGRpc2N1c3Npb24/ICBUaGUgVVJMIG1pZ2h0IHNhdmUKPiByZXBlYXRp
bmcgdGhlIHdob2xlIGV4ZXJjaXNlIGFuZCBjb3VsZCBiZSB1c2VmdWwgZm9yIHRoZSBjb21taXQg
bG9nCj4gd2hlbiB3ZSB0cnkgdG8gcmVzb2x2ZSB0aGlzLgoKVGhlIGxpbmsgdG8gdGhlIHBhdGNo
IGVtYWlsIGlzIGhlcmUsIHRoZSBmdWxsIGRpc2N1c3Npb24gaXMgcHJldHR5CmVhc3kgdG8gZm9s
bG93OgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1wY2kvMmEzODEzODQtOWQ0Ny1hN2Uy
LTY3OWMtNzgwOTUwY2Q4NjJkQHJvY2stY2hpcHMuY29tLwpBbHNvOgpodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9saW51eC1yb2NrY2hpcC8xZjE4MGQ0Yi05ZTVkLWM4MjktNTU1Yi1jOTc1MDk0MDM2
MWVAd2ViLmRlL1QvI205YzlkNGEyOGEwZDNhYTA2NDg2NGYxODhiOGVlM2IxNmNlMTA3YWZmCgo+
Cj4gPiBUaGUgY29uZmlndXJhYmxlIHdhaXRzIGFsbG93IHVzIHRvIHByb2dyYW0gcmVhc29uYWJs
ZSB0aW1lcyBmb3IKPiA+IDkwJSBvZiB0aGUgZW5kcG9pbnRzIHRoYXQgY29tZSB1cCBpbiB0aGUg
bm9ybWFsIGFtb3VudCBvZiB0aW1lLCB3aGlsZQo+ID4gYmVpbmcgYWJsZSB0byBhZGp1c3QgaXQg
Zm9yIHRoZSBvdGhlciAxMCUgdGhhdCBkbyBub3QuIFNvbWUgcmVxdWlyZQo+ID4gbXVsdGlwbGUg
c2Vjb25kcyBiZWZvcmUgdGhleSByZXR1cm4gd2l0aG91dCBlcnJvci4gUGFydCBvZiB0aGUgcmVh
c29uCj4gPiB3ZSBkb24ndCB3YW50IHRvIGhhcmRjb2RlIHRoZSB3YWl0IHRpbWUgaXMgYmVjYXVz
ZSB0aGUgcHJvYmUgaXNuJ3QKPiA+IGhhbmRsZWQgYXN5bmNocm9ub3VzbHksIHNvIHRoZSBrZXJu
ZWwgYXBwZWFycyB0byBoYW5nIHdoaWxlIHdhaXRpbmcKPiA+IGZvciB0aGUgdGltZW91dC4KPgo+
IElzIHRoZXJlIHNvbWUgd2F5IGZvciB1c2VycyB0byBmaWd1cmUgb3V0IHRoYXQgdGhleSB3b3Vs
ZCBuZWVkIHRoaXMKPiBwcm9wZXJ0eT8gIE9yIGlzIGl0IGp1c3QgImlmIHlvdXIga2VybmVsIHBh
bmljcyBvbiBib290LCB0cnkKPiBhZGRpbmcgb3IgaW5jcmVhc2luZyAiYnVzLXNjYW4tZGVsYXkt
bXMiIGluIHlvdXIgRFQ/CgpUaGVyZSdzIGEgbGlzdGluZyBvZiB0ZXN0ZWQgY2FyZHMgYXQ6Cmh0
dHBzOi8vd2lraS5waW5lNjQub3JnL3dpa2kvUk9DS1BybzY0X0hhcmR3YXJlX2NvbXBhdGliaWxp
dHkKCk1vc3QgY2FyZHMgd29yayBmaW5lIHRoYXQgZG9uJ3QgcmVxdWlyZSBhIGxhcmdlIEJBUi4g
UENJZSBzd2l0Y2hlcyBhcmUKY29tcGxldGVseSBkZWFkIHdpdGhvdXQgdGhlIGFib3ZlIGhhY2sg
cGF0Y2guIENhcmRzIHRoYXQgbGllIGluIHRoZQptaWRkbGUgYXJlIG9uZXMgdGhhdCBleHBlY3Qg
QklPUyAvIEVGSSBzdXBwb3J0IHRvIGluaXRpYWxpemUsIG9yIG9uZXMKdGhhdCBoYXZlIGNvbXBs
ZXggYm9vdCByb21zIGFuZCBkb24ndCBpbml0aWFsaXplIHF1aWNrbHkuCkJ1dCB5ZXMsIGl0J3Mg
dW5mb3J0dW5hdGVseSBnb2luZyB0byBiZSAiaWYgeW91IHBhbmljLCBpbmNyZWFzZSB0aGUKZGVs
YXkiIHVubGVzcyBhIG1vcmUgY29tcGxldGUgZGF0YWJhc2Ugb2YgY2FyZHMgY2FuIGJlIGdlbmVy
YXRlZC4KClZlcnkgUmVzcGVjdGZ1bGx5LApQZXRlciBHZWlzCgo+Cj4gQmpvcm4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
