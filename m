Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AED5C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 23:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vii85Ukhs9dzMmVW8UBf5g3lPGRuq9fdHfl+Ucu5SK4=; b=YnUOHdSzx9O2TU
	M62Pfg0cY4Us//E+M3za1J6NBnOePsTC5S0nS2e3CsRJ8/pw62Y0zesMaBgEIwYjfFY5a0GGrcG14
	Khaeykw6eD9gvfeswNT3+mb4c7ULkizrPEmUuFD10fOfx/HabPSJbvlS1kdgX3HnVNb6kgztt0H2Z
	L6wpbuts5v2EqJoI6ABAPMj7cXxEisKaEMhmSJnps35cnht4NvbSgnOJwUJKjmdkZp0Y/EgpQymW/
	qXTD7D++G9Z1I9DCnfTpHQ3/7Ek9i8PLaasVY4PVp/qzKAg7NycY4ks6bIi0uf2qoXNjwaMw2IeSU
	Qz8JCiSt8npo2NPTb11g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4t4q-0048yO-60; Fri, 24 Jun 2022 23:51:04 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4t4e-0048vb-4p; Fri, 24 Jun 2022 23:50:54 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id i15so7080451ybp.1;
        Fri, 24 Jun 2022 16:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Tpyy52Va1yoUFxkWaJiZWHUiWCZKDHYZNk3jb16MkOc=;
        b=bZ5Qc2PmXudjnJ7XSVzr2YBjuEyOt6GrlLXoD12O9fIJ+jo0UGfqbWTpuNs3g/mQzU
         Jr5tBqM0dnffPv10emheE6AMj/AASM0COPNeOXelqEYDSNZNL+Vh6hgLq1ekJayzpiUh
         FED1zdeTCzdhgtVkUu998NvUX+OIXrM02hrA8sF/GIyHXlUdwjVGP5ax3j49XH3/Qnfq
         0rSjgWTimDcX3doA3Z7ckSIbyll1U0JPMFTHErhLEmc4dhHmKEVjMyQDN9iWSE5wr23P
         3jNFI+FsOJUl8Tj1puiOWEj/ZUD4YhNXWgQDnbgEhtw1VTMVzqAjqlW3MlO237R2SY3c
         u4eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Tpyy52Va1yoUFxkWaJiZWHUiWCZKDHYZNk3jb16MkOc=;
        b=WZ8r8Nq6kKI5zkW2OphnHCoIresqbOQlY7JMbE4CHFURPFUN1fGyBqVS8EAbQBBbim
         i+WE3TqXXs7l0d2JF7kqsJ8UCF6gIbHbz370oY+5Kz0aoW9S/MgpRO4hsZ6/gTY+rO+z
         99cR22ceD6jVlSwHa0H787gCWzk9IGkYytTGIJCktH8iIiOpMmzFjhjtysp7YrGwMeqQ
         5Gs+43gMsWfXv2gXvHBG70ZlYwlqFzEsuow4bhn39gWwFCpiNx0QbsAZuMuQ17OmFVw3
         9vKp+Xyt2L6GDK0R/FMw2H8SZ+isvg8xPj2Xohhvr/dWdp/KU8Mauc6WKXxGHrF4+9mS
         rDmA==
X-Gm-Message-State: AJIora+iirf1308ishT/l2BYfWBrmk4Nx1Aui1Eyi699Azm6d9don0g4
	40uZni5V+ZNCoA/VSpNYT6PSp8Ng1L6Qs6JrSyg=
X-Google-Smtp-Source: AGRyM1vdDI/f8LGzmuk1iFMTPRqi7k5Gwp2+cwL1cyeaP7+C0e3UHCumNqn9DagvqoDBnzMHFa+NXofTv2G6w2geU2U=
X-Received: by 2002:a25:9101:0:b0:669:8f1d:d2cf with SMTP id
 v1-20020a259101000000b006698f1dd2cfmr1730228ybl.461.1656114650221; Fri, 24
 Jun 2022 16:50:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de> <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com> <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com> <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <9567EECF-A154-4FE1-A03C-5ED080409030@gmail.com> <190C3FD3-0185-4A99-B10E-A5790047D993@gmail.com>
 <CAMdYzYqGGfWDr11iyyfzigxsL7_N2szuag9P6TUZGuzGF4oB+A@mail.gmail.com> <AF6176F5-995E-473B-B494-844ECC26BC03@gmail.com>
In-Reply-To: <AF6176F5-995E-473B-B494-844ECC26BC03@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 24 Jun 2022 19:50:38 -0400
Message-ID: <CAMdYzYocZw1SNtgbfqn1VuvKTCiuMNTYRn2MydiGnL-UxtnYuA@mail.gmail.com>
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Michael Riesch <michael.riesch@wolfvision.net>, 
	dri-devel@lists.freedesktop.org, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, kernel@pengutronix.de, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_165052_255945_6A69BF3B 
X-CRM114-Status: GOOD (  41.29  )
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

T24gRnJpLCBKdW4gMjQsIDIwMjIgYXQgMjo1NyBQTSBQaW90ciBPbmlzemN6dWsKPHBpb3RyLm9u
aXN6Y3p1a0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4KPgo+ID4gV2lhZG9tb8WbxIcgbmFwaXNhbmEg
cHJ6ZXogUGV0ZXIgR2VpcyA8cGd3aXBlb3V0QGdtYWlsLmNvbT4gdyBkbml1IDI0LjA2LjIwMjIs
IG8gZ29kei4gMTQ6NDA6Cj4gPgo+ID4+Cj4gPj4gU2FzY2hhLCBQZXRlcgo+ID4+Cj4gPj4gSSBy
ZXR1cm5lZCB0byB0cnlpbmcgdG8gZmluZCB3aHkgaGRtaS1jZWMgaXMgbm90IHdvcmtpbmcgb24g
cm9jazMtYSB2MS4zMSBody4KPiA+Pgo+ID4+IEknbSBvbiB2b3AyIHYxMSBvbiA1LjE4IG1haW5s
aW5lLgo+ID4+Cj4gPj4gQ3VycmVudCBmaW5kaW5nczoKPiA+Pgo+ID4+ICgxKSB0aGUgc2FtZSBz
dy4gc3RhY2svYmluYXJpZXMgd29ya3Mgb24gcm9jay0zYiAod2hlcmUgY2VjIHVzZXMgaGRtaXR4
X20wIGluc3RlYWQgb2YgaGRtaXR4X20xIEkvTyBsaW5lKTsKPiA+Pgo+ID4+ICgyKSBncGlvLWNl
YyBob3dldmVyIHdvcmtzIG5vIHByb2JsZW0gb24gcm9jazMtYTsKPiA+Pgo+ID4+ICgzKSBtb25p
dG9yaW5nIGNlYyBtZXNzYWdlcyB3aXRoIHY0LXV0aWxzICdjZWMtZm9sbG93ZXIgLXMnIHNob3dz
IGV4YWN0IHRoZSBzYW1lIGV2ZW50cyBpbiBub24td29ya2luZyByb2NrMy1hIGFuZCB3b3JraW5n
IHJvY2szLWIKPiA+PiAodGVzdGVkIGJ5IGlzc3VlIGNvbmZpZ3VyZSBjZWMgYnkgJ2NlYy1jdGwg
LWQgL2Rldi9jZWMwIC0tcGh5cy1hZGRyPTEuMC4wLjAgLS1wbGF5YmFjaycgY29tbWFuZCkKPiA+
Cj4gPiAtLXBoeXMtYWRkciBpc24ndCBhIHZhbGlkIGNvbW1hbmQgZm9yIHRoaXMgY29udHJvbGxl
ci4gVGhlIGRldmljZQo+ID4gZGVzaWduYXRpb24gaXMgb25seSByZXF1aXJlZCBpZiB5b3UgaGF2
ZSBtb3JlIHRoYW4gb25lIGNlYyBkZXZpY2UuCj4gPgo+ID4+Cj4gPj4gLS0+IGknbSBpbnRlcnBy
ZXRpbmcgdGhpcyBhcyBjb25maXJtYXRpb24gdGhhdCBsb3cgbGV2ZWwgcGh5IGxheWVyIHJlY2Vp
dmVzIG9rIGNlYyBkYXRhIGZyb20gY29ubmVjdGVkIGRldmljZSBvbiBub24td29ya2luZyByb2Nr
My1hOwo+ID4+Cj4gPj4gKDQpIGRlYnVnIHN5c2ZzIGZvciBjZWMgc2hvd3MgImhhcyBDRUMgZm9s
bG93ZXIgKGluIHBhc3N0aHJvdWdoIG1vZGUpIiBmb3Igd29ya2luZyByb2NrLTNiIGFuZCB0aGVy
ZSBpcyBOTyAiaGFzIENFQyBmb2xsb3dlciIgZGVidWcgbWVzc2FnZSBpbiBmYWlsaW5nIHJvY2sz
LWEuCj4gPgo+ID4gVGhpcyBtYWtlcyBtZSBzdXNwZWN0IHlvdSBhcmUgaW4gZmFjdCBub3QgdXNp
bmcgdGhlIHNhbWUgc29mdHdhcmUKPiA+IHN0YWNrLCBvciBhcmUgbm90IHJ1bm5pbmcgdGhlIHNh
bWUgY29tbWFuZHMuCj4KPiBJdCB3YXMgdGhlIHNhbWUgU0QgY2FyZCAtIHdpdGggb25seSBEVCBk
ZWNsYXJhdGlvbiBjaGFuZ2VkIGluIGJvb3Quc2NyCj4gU3VjaCBTRCBjYXJkIGhhcyBjZWMgcGVy
ZmVjdGx5IHdvcmtpbmcgaW4gcm9jazNiCj4KPiA+IFJ1bm5pbmcgYGNlYy1mb2xsb3dlciAtdiAt
bSAtVGAgb24gYSByazM1NjYgZGV2aWNlIHdpdGggd29ya2luZyBjZWMKPiA+IHVzaW5nIDUuMTkt
cmMxLCBJIHNlZSBubyBtZW50aW9uIG9mIGNlYy1mb2xsb3dlciBpbiB0aGUgZGVidWdmcyBjZWMw
Cj4gPiBzdGF0dXMgZW50cnkuCj4gPgo+ID4+Cj4gPj4gRm9yIG1lIEl0IGxvb2tzIGxpa2UgbG93
LWxldmVsIGhkbWktY2VjIHdvcmtzIG9rIG9uIGZhaWxpbmcgcm9jazMtYSAtIGJ1dCB1cHBlciBs
YXllcnMgKGluIGhkbWkgdm9wMj8pIGFyZSBub3QgcmVnaXN0ZXJpbmcgKG9yIGZhaWxpbmcgdG8g
cmVnaXN0ZXIpIGNlYy1mb2xsb3dlciBmaWxlaGFuZGxlLiBUaGlzIGhhcHBlbnMganVzdCB3aGVu
IGhkbWl0eCBJL08gaW4gRFQgaXMgY2hhbmdlZCBmcm9tIGhkbWl0eF9tMCB0byBoZG11dHhfbTEu
IEEgYml0IHN0cmFuZ2UgLSBidXQgYWxsIG15IHRlc3RzIGNvbnNpc3RlbnRseSBjb25maXJtaW5n
IHRoaXMgb2JzZXJ2YXRpb24uLi4uCj4gPgo+ID4gVGhlcmUgaXMgbm90aGluZyB3cm9uZyB3aXRo
IHZvcDIgYXMgaXQgaXMgbm90IGludm9sdmVkIGF0IGFsbCBpbiB0aGlzLgo+ID4gVGhlIHJvY2tj
aGlwIGhkbWkgZHJpdmVyICh3aGljaCBpcyBub3Qgc3BlY2lmaWMgdG8gdm9wMikgZG9lcyBub3Ro
aW5nCj4gPiBtb3JlIHRoYW4gY2FsbCB0aGUgY2VjIHJlZ2lzdHJhdGlvbiBtZXRob2QgaW4gdGhl
IGR3IGhkbWkgYnJpZGdlCj4gPiBkcml2ZXIsIHdoaWNoIHRoZW4gY2FsbHMgdGhlIGtlcm5lbCBj
ZWMgcmVnaXN0cmF0aW9uIGZ1bmN0aW9ucy4KPiA+IENoYW5naW5nIHBpbm11eCBjaGFuZ2VzIG5v
dGhpbmcgaW4gaG93IHRoaXMgZnVuY3Rpb25zLgo+ID4KPiA+Pgo+ID4+IEknbSB0b28gd2VhayBp
biBrZXJuZWwgY2VjIGludGVybmFscyAtIHNvIG1heWJlIHlvdSBoYXZlIGFueSBwb2ludGVycyBo
b3cgdG8gZnVydGhlciBkZWJ1Zy9pbnZlc3RpZ2F0ZSB0aGlzIGlzc3VlPwo+ID4KPiA+IEFzIHdl
IGRpc2N1c3NlZCBpbiB0aGUgcGluZTY0IHJvb20sIHRoaXMgaXMgc3RpbGwgdmVyeSBsaWtlbHkg
YQo+ID4gaGFyZHdhcmUgaXNzdWUgd2l0aCB0aGlzIGJvYXJkLiBBIGNvbmZpZ3VyYXRpb24gaXNz
dWUgd2l0aCB5b3VyIHUtYm9vdAo+ID4gb3IgdGYtYSBpcyBhbHNvIGEgcG9zc2liaWxpdHksIGJ1
dCBpcyBsZXNzIGxpa2VseS4KPiA+Cj4gPiBZb3Ugc2hvd2VkIHdpdGggeW91ciBsb2dpYyBhbmFs
eXplciB3aXRoIG5vdGhpbmcgcGx1Z2dlZCBpbiBhbmQgY2VjCj4gPiBub3QgbXV4ZWQgdG8gbTEs
IGRhdGEgd2FzIHByZXNlbnQgb24gbTEuCj4KPiBJc3N1ZSBvZiBwcmVzZW5jZSBvZiBkYXRhIG9u
IG0xIHdpdGggbm90aGluZyBwbHVnZ2VkIHdhcyBtaXN0YWtlIGZyb20gbXkgc2lkZTogd3Jvbmcg
Ym9hcmQgcGluIHVzZWQgdG8gY29ubmVjdCBsb2dpYyBhbmFseXNlciBHTkQuCj4gQWZ0ZXIgY29y
cmVjdGx5IGNvbm5lY3RpbmcgR05EIC0gYWxsIGlzIG9rIChubyBhbnkgdW5leHBlY3RlZCBkYXRh
OyBwdWxzZXMgYXBwZWFycyBvbmx5IGFmdGVyIGNlYyBjb21tYW5kczsgcHVsc2VzIHRpbWluZ3Mg
YXJlIG9rIHNvIGNlYyBwcm90b2NvbCBhbmFseXNlciBzaG93cyByZWFzb25hYmxlIGRhdGE7IG5v
IGNlYyB0aW1pbmcgZXJyb3JzIHJlcG9ydGVkIGJ5IHByb3RvY29sIGFuYWx5c2VyKS4KPgo+Cj4g
PiBJIHJlcXVlc3RlZCB5b3UgaW52ZXN0aWdhdGUKPiA+IHRoZSBmb2xsb3dpbmcsIHRvIHdoaWNo
IHlvdSBoYXZlbid0IHJlcGxpZWQ6Cj4gPiBIYXZlIHlvdSB0cmllZCBmb3JjaW5nIG0wIHRvIGJl
IGFzc2lnbmVkIHRvIGEgZGV2aWNlIG90aGVyIHRoYW4gaGRtaS1jZWM/Cj4KPiBJJ20gYSBiaXQg
bG9zdCBoZXJlOiB2MS4zMSBodyB1c2VzIG0xIGFuZCBtMCBpcyB1bnVzZWQuCj4gSXMgeW91IGlk
ZWEgdG8gdmVyaWZ5IHRoYXQgbTAgaXMgbm90IHVzZWQgYnkgaGRtaS1jZWMgLSBldmVuIHdoZW4g
bTEgaXMgZGVjbGFyZWQgZm9yIGhkbWktY2VjIGluIERUPwo+IE1heSB5b3UgcGxzIGhpbnQgbWUg
d2l0aCBhbnkgZXhhbXBsZSBvZiBEVCBzbmlwcGV0IGZvciBZb3VyIG0wIGFzc2lnbm1lbnQgaWRl
YT8KCkFzIHBpbmN0cmwgaXMgb25seSBhc3NpZ25lZCB3aGVuIGEgZGV2aWNlIGV4cGxpY2l0bHkg
cmVxdWVzdHMgaXQgaW4KdGhlIGtlcm5lbCBkcml2ZXIsIGl0IGlzIHBvc3NpYmxlIHRvIGhhdmUg
bXVsdGlwbGUgcGluY3RybCBwaW5zCmFzc2lnbmVkIHRvIGEgc2luZ2xlIGRldmljZSBpZiBpdCB3
YXMgbGVmdCB0aGF0IHdheSBieSBwcmV2aW91cwpzb2Z0d2FyZSBvciB1c2Vyc3BhY2UgaGFzIGZ1
biB3aXRoIGl0LiBTdWNoIGFzIGJvdGggdGhlIG0wIGFuZCBtMSBwaW5zCmFyZSBhc3NpZ25lZCB0
byB0aGUgY2VjLWNvbnRyb2xsZXIuIFN1Y2ggYSBjYXNlIGlzIGJyb2tlbi4KCllvdSBjYW4gYXNz
aWduIHRoZSBtMCBwaW4gdG8gYW5vdGhlciBkZXZpY2UgZXhwbGljaXRseSwgYnV0IGJlZm9yZQpk
b2luZyBzbyBJJ2QgcmVhZCB0aGUgcmVnaXN0ZXIgbWFudWFsbHkganVzdCB0byBzZWUgaWYgaXQu
IEZvciBleGFtcGxlCnRoYXQgcGluIGFsc28gaXMgdGhlIHNwaTNtMV9jczEgcGluLgoKPgo+ID4g
SGF2ZSB5b3UgY2hlY2tlZCBpZiBtMSBpcyBzaG9ydGVkIHRvIGFub3RoZXIgcGluPwo+Cj4gWWVz
LiBMb29rcyBvayBmb3IgbWUuCj4gKGFzIHJhZHhhIGRlYmlhbiBoYXMgd29ya2luZyBvayBoZG1p
LWNlYyBpIHRoaW5rIGh3IGlzIG9rKQo+Cj4gPgo+ID4gSW4gcmVnYXJkcyB0byB5b3VyIGRhdGEg
ZnJhbWVzIGZvciA0LjE5IHZzIDUuMTgsIGltYWdlLXZpZXctb24gaXMgbm90Cj4gPiBhIHZhbGlk
IGNvbW1hbmQgaWYgdGhlIHRvcG9sb2d5IGRvZXNuJ3QgZGV0ZWN0IGEgZGV2aWNlIG9uIHRoZSBi
dXMuCj4gPiBJIHJlY29tbWVuZCBydW5uaW5nIHRoZSBzYW1lIHRlc3QsIGV4Y2VwdCBydW4gYGNl
Yy1jdGwgLVMgLS1wbGF5YmFja2AKPiA+IGFuZCBwb3N0IHRoZSByZXN1bHRzIGZvciBib3RoLgo+
Cj4gUGxzIGZpbmQgcmVzdWx0cyBmb3IgY29tbWFuZCBgY2VjLWN0bCAtUyAtLXBsYXliYWNrYDoK
Pgo+IDEuICByYWR4YSB1YnVudHUgNC4xOSBic3A6Cj4gbG9naWMgYW5hbHlzZXIgY2VjIHByb3Rv
IGRlY29kZWQgKyB0aW1pbmdzOiBodHRwczovL3Bhc3RlYmluLmNvbS9oSFBtS3Y0aQo+IEZZSSBs
b2dpYyBhbmFseXNlciBvdXRwdXQgKGZpcnN0IDM1MG1zZWMpOiBodHRwczovL3Bhc3RlLnBpY3Mv
NjNjYjRkYzdmOWI1MWQ4ODI1ZDM3N2I0NWJmNzFhZTQKPgo+IDIuIG1haW5saW5lIDUuMTguNjoK
PiBsb2dpYyBhbmFseXNlciBjZWMgcHJvdG8gZGVjb2RlZCArIHRpbWluZ3M6IGh0dHBzOi8vcGFz
dGViaW4uY29tL1lZRFVZNHgxCj4gRllJIGxvZ2ljIGFuYWx5c2VyIG91dHB1dCAoZmlyc3QgMzUw
bXNlYyk6IGh0dHBzOi8vcGFzdGUucGljcy8wZDg5NGI4Y2ViYTE2NGRjNmQ3NDNmODA0NGM3ZTAx
ZQo+Cj4KCk5vdyB0aGlzIGlzIGludGVyZXN0aW5nLCB0aGUgVFYgaXMgcmVzcG9uZGluZyBpbiBi
b3RoIGNhc2VzLiBUaGUgVFYKZG9lcyBub3Qgc2hvdyB1cCBhdCBhbGwgaW4gdGhlIHJldHVybiBz
ZXF1ZW5jZSBpbiBjYXNlIDI/CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
