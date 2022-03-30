Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D89B0C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 10:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UR7jDVwdc8xcKG9difsgWkHBpxoXHnco5P5keLhv+2I=; b=ISIe0g20Rx04s7
	DlVG46IjOHd4VrLSSODJhiEbW+j1ofCHPw5d47espisQN3zir1UDZHfu2MQIpviUe28SxKxd26r8J
	0iUsWuRJHp/E8gM1ODaNo28pTg1sPIYYpieMmGTzQI3E9RCVG9KhFJd3ZfFjd7v5pSr4h6EUJ4kpJ
	1WD2C7ipA21ZKjNHwdjJRt0kr8xqD5MqqX4EbekMxCYW4CPvi927wi55lXteiMpo0yeNcbWhfIJEG
	NqEd4ZasDkKQvMgC39auf471eW+jpxshpCQfp9akfpthKsxUa+1bvSS5Lr+1ufBuFp3/H+f8+3ovR
	1kiKIq9sWsAMTcvWosew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZV9E-00F6Rg-Hu; Wed, 30 Mar 2022 10:01:52 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZV8b-00F69c-Bm; Wed, 30 Mar 2022 10:01:14 +0000
Received: by mail-lf1-x12b.google.com with SMTP id d5so34862709lfj.9;
 Wed, 30 Mar 2022 03:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=iM9RkPocLajd/F2Sado6Lz3mmw6/5GLuVCjJsTEPSlQ=;
 b=afhYY2uiPWmuqXrLFTTmcNLD1VwyENIeJDto8ZZ8HrjwbmF1KnQUMWdODCI5YsDCuF
 rAQxKE87ymzn5qeFdnpVL5gQomgtM+Q4I4fD75TPqSa5DIyGhuKTUpizNRt4qHIGTldm
 iHSrHF4Oo3nJqGErS8Jj2laHHZjMlBicV6CgBBmElSxL0IGa8DJ8yC7mQLsuZwhg7rcA
 ke4SgZDYW+9t47WTnqCdILIc+9M1KKYnx9xRzSOFVClw3ovK4bJR/Dh+PXBj6nxI2jGc
 GgLk/4yBSqR4oP4bp8jYZRrAsBGfeC61069mMfy4Gw3cAQaXenVKr9ZHKVGMyT43a2pJ
 CEGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=iM9RkPocLajd/F2Sado6Lz3mmw6/5GLuVCjJsTEPSlQ=;
 b=vB2Ogzie6bingAsTejaGdXtowsd3HoppEQB+X99j9ePkZKrMkEqpH/6eukqZikzGV5
 6KBpR0BX7VqVmcBUnOoSXpIIOdWb0E+BBvbMO+zC3JpwBSkd2g6oWYpNEFyOVo62ZcNz
 6xeXZayph3VcFnok6V5RqznzRRuYc+8KRWEWktEseZwhDhbxw6odaoBLjC3/hjwczt0X
 E8g4oKe6wwvJOK6sNFPXIxtMlMHjVDhxjaou/jVvGfQgyWO0dTafLuRwesX+Oh0bu/Ba
 IV/3Jka0Y1VsV+TqZZpFk2Rkfa+McUkH1LRw1pxLL/WEfqYCrMqpXNZCRwxeWY9auJso
 9UMA==
X-Gm-Message-State: AOAM533TOS09am/iKOcQbcEZ2C8LQdkfB/BdytO6vQajd1fbqkTbY0kI
 WAVC/NGr13VLBfBeKaXomQo=
X-Google-Smtp-Source: ABdhPJwoaEklwy52BTnnqc/WFhBF9pjJcgLr6vuMHK0urHErA00xP51NX+6+xp0tad0639krJPjqfg==
X-Received: by 2002:a05:6512:33c3:b0:44a:8067:7ec4 with SMTP id
 d3-20020a05651233c300b0044a80677ec4mr6313648lfg.601.1648634467661; 
 Wed, 30 Mar 2022 03:01:07 -0700 (PDT)
Received: from smtpclient.apple (public-gprs541832.centertel.pl.
 [31.61.235.201]) by smtp.gmail.com with ESMTPSA id
 u12-20020a056512128c00b00446499f855dsm2285773lfs.78.2022.03.30.03.01.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Mar 2022 03:01:07 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From: "piotro.oniszczuk@google.com" <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220330094556.GZ12181@pengutronix.de>
Date: Wed, 30 Mar 2022 12:01:05 +0200
Cc: dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Message-Id: <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
 <20220330094556.GZ12181@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_030113_412378_627BF8A4 
X-CRM114-Status: GOOD (  15.25  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5n
dXRyb25peC5kZT4gdyBkbml1IDMwLjAzLjIwMjIsIG8gZ29kei4gMTE6NDU6Cj4gCj4gT24gV2Vk
LCBNYXIgMzAsIDIwMjIgYXQgMTA6NDE6NTZBTSArMDIwMCwgcGlvdHJvLm9uaXN6Y3p1a0Bnb29n
bGUuY29tIHdyb3RlOgo+IAo+IExldCBtZSByZXBocmFzZSB0aGlzOiBUaGUgYWJvdmUgc2V0cyBh
IHBsYW5lLCBidXQgaXQgZG9lc24ndCBzZXQgYSBtb2RlCj4gb24gdGhlIGNydGMuIFdoZW4gbXkg
c3lzdGVtIGJvb3RzIHVwIHRoZW4gdGhlIG91dHB1dCBvZiBtb2RldGVzdCBsb29rcwo+IGxpa2Ug
dGhpczoKPiAKPiBFbmNvZGVyczoKPiBpZCAgICAgIGNydGMgICAgdHlwZSAgICBwb3NzaWJsZSBj
cnRjcyAgcG9zc2libGUgY2xvbmVzCj4gNjggICAgICAwICAgICAgIFRNRFMgICAgMHgwMDAwMDAw
MSAgICAgIDB4MDAwMDAwMDEKPiBDb25uZWN0b3JzOgo+IGlkICAgICAgZW5jb2RlciBzdGF0dXMg
ICAgICAgICAgbmFtZSAgICAgICAgICAgIHNpemUgKG1tKSAgICAgICBtb2RlcyAgZW5jb2RlcnMK
PiA2OSAgICAgIDAgICAgICAgY29ubmVjdGVkICAgICAgIEhETUktQS0xICAgICAgICA1MzB4MzAw
ICAgICAgICAgOSAgICAgIDY4Cj4gQ1JUQ3M6Cj4gaWQgICAgICBmYiAgICAgIHBvcyAgICAgc2l6
ZQo+IDY3ICAgICAgMCAgICAgICAoMCwwKSAgICgweDApCj4gICMwICBuYW4gMCAwIDAgMCAwIDAg
MCAwIDAgZmxhZ3M6IDsgdHlwZTogCj4gCj4gTm8gbW9kZSBpcyBzZXQgb24gdGhlIENSVEMgYW5k
IHRoZSBlbmNvZGVyL2Nvbm5lY3Rvci9jcnRjIGFyZSBub3QgYm91bmQKPiB0byBlYWNoIG90aGVy
LCBjb25zZXF1ZW50bHkgdGhlIHNjcmVlbiBpcyBpbiBzdGFuZGJ5LiAibW9kZXRlc3QgLVAKPiA0
M0A2NzoxOTIweDEwODBATlYxMiIgZG9lc24ndCBjaGFuZ2UgdGhpcywgc3RpbGwgbm8gbW9kZSBz
ZXQuIEhlbmNlIG15Cj4gcXVlc3Rpb246IEhvdyBkaWQgeW91IHNldCBhIG1vZGUgaW5pdGlhbGx5
PwoKQWggb2suIEkgc2VlIHlvdXIgcG9pbnQuCm1vZGUgaXMgc2V0IGJ5IGFwcCAocGxheWVyKS4g
CgpTZXF1ZW5jZSB3YXMgbGlrZSB0aGlzOgotYm9vdCBib2FyZAotc3RhcnQgYXBwCi1vbiBVSSBz
ZWxlY3QgcGxheWJhY2sKLXBsYXliYWNrIGhhcyBncmVlbiBzY3JlZW4KLWV4aXQgYXBwCi1ydW4g
bW9kZXRlc3QgLVAgNDNANjc6MTkyMHgxMDgwQE5WMTIgKHRoZSBzYW1lIGdyZWVuIHNjcmVlbiBs
aWtlIGluIHBsYXliYWNrKQotcnVuIG1vZGV0ZXN0IC1QIDQ5QDY3OjE5MjB4MTA4MEBOVjEyICh3
b3JrcyBvaykKLXJ1biBtb2RldGVzdCAtUCA0M0A2NzoxOTIweDEwODBATlYxMiAobm93IHdvcmtz
IG9rKQoKPiAKPj4+IAo+PiAKPj4gSSdtIG5vdCBzdXJlIHRoYXQgYWJvdmUgY29tbWFuZCBvbmx5
IHNldHMgcGxhbmUuCj4+IE9uIG90aGVyIFNvQ3MgaeKAmW0gdGVzdGluZyBpdCBnaXZlcyBleHBl
Y3RlZCByZXN1bHRzOiBkaWFnb25hbCBjb2xvcmVkIHN0cmlwZXMuCj4+IFRoZXJlIGlzIHNpbmds
ZSBleGNlcHRpb246IHJrMzU2eCB3aXRoIHZvcDIgLSB3aGVyZSBzY3JlZW4gaXMgZ3JlZW4gdW5s
ZXNzIGkg4oCeZml4L2VuYWJsZeKAnSBieSBwbGF5aW5nIHdpdGggcGxhbmUgIzY5ICAgCj4+IAo+
Pj4gSSBkaWQgd2l0aCAibW9kZXRlc3QgLXMgNjlANjc6MTkyMHgxMDgwIC1kIiBhbmQgd2l0aCB0
aGlzIGl0IHdvcmtzIGFzCj4+PiBleHBlY3RlZCwgSSBjYW4ndCByZXByb2R1Y2UgYW55IGdyZWVu
IHNjcmVlbiBpc3N1ZSBoZXJlLgo+PiAKPj4gSSBzZWUgeW91IGFyZSB1c2luZyBwbGFuZSAjNjku
Cj4+IFdoeSBub3QgIzQzPwo+IAo+IEkgdXNlZCAibW9kZXRlc3QgLXMgNjlANjc6MTkyMHgxMDgw
IC1kIiB0byBzZXQgYSBtb2RlLiBUaGUgJzY5JyBpcyB0aGUKPiBjb25uZWN0b3IgaWQsIG5vdCBh
IHBsYW5lLgoKYWNrLgp0eXBvIGZyb20gbXkgc2lkZS4KCml0IHdhcwptb2RldGVzdCAtUCA0OUA2
NzoxOTIweDEwODBATlYxMgoKCj4gCj4+IElzIHBsYW5lICM0MyB3b3JraW5nIG9rIGZvciB5b3U/
Cj4gCj4gWWVzLgoKU28gaXQgbG9va3MgeW91ciB0ZXN0aW5nIG1ldGhvZCBvZiAjNDMgaXMgbm90
IG1lYW5pbmdmdWwgZm9yIHZlcmlmeWluZyBpc3N1ZSB3ZSBhcmUgZGlzY3Vzc2luZyBoZXJlLgoK
SW4gbXkgY2FzZToKMTIgU09DIChleGNlcHQgcmszNTZ4IFZPUDIpIGdpdmVzIG1lOgotYm9vdCBi
b2FyZAotc3RhcnQgYXBwCi1vbiBVSSBzZWxlY3QgcGxheWJhY2sKLXBsYXliYWNrIGlzIG9rCi1l
eGl0IGFwcAotcnVuIG1vZGV0ZXN0IC1QIFhYQFlZOjE5MjB4MTA4MEBOVjEyIChkaWFnb25hbCBz
dHJpcGVzKQoKKFhYL1lZIGFyZSBwbGFuZS9jb25uZWN0b3IgZWxlY3RlZCBieSBhcHA6IHBsYW5l
QGNvbmVjdG9yIHdpdGggZm9ybWF0IG1hdGNoaW5nIHByb3ZpZGVyIGZvcm1hdCkgCgpyazM1Nngg
d2l0aCB2b3AyIHY5OgotYm9vdCBib2FyZAotc3RhcnQgYXBwCi1vbiBVSSBzZWxlY3QgcGxheWJh
Y2sKLXBsYXliYWNrIGhhcyBncmVlbiBzY3JlZW4KLWV4aXQgYXBwCi1ydW4gbW9kZXRlc3QgLVAg
NDNANjc6MTkyMHgxMDgwQE5WMTIgKHRoZSBzYW1lIGdyZWVuIHNjcmVlbiBsaWtlIGluIHBsYXli
YWNrKQotcnVuIG1vZGV0ZXN0IC1QIDQ5QDY3OjE5MjB4MTA4MEBOVjEyICh3b3JrcyBvaykKLXJ1
biBtb2RldGVzdCAtUCA0M0A2NzoxOTIweDEwODBATlYxMiAobm93IHdvcmtzIG9rKQoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
