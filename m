Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC7D5C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 May 2022 22:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Px8K2VSzXZ712UGRF7zPg5pUhtJclAv1WfBD+/H75L8=; b=ZH4LE/KJOIH2Hi
	qY/JxxmuNiAH4h8RgQSpAT577oOnwONxHRSSPhgce07pscyQlL9+H/wP0I3IZU/6FqRreO4QS7upT
	ThowP8SFezq91q/Xk6pSRe6QSZ8xPlKnyMlQgNDF9jTQBHASrpQ53QHVN8OaY77UV58hopCBGpRqi
	oHYMI7k6xwKNeJeA2jvKCWp/LFVmlWOjvOwWen26l1Vgg8oWGDE5j5ik5iE7qZoYLt5+4poC7M45y
	geSpxTfHKD+r1NTS8L3/fzqa4th8c6wZ70eE4RYGOdQx31aSXzJE3FPTrR70/q4t2VooCQ/QUdvvt
	C/gHrvs3AGumN0HjljDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noYgD-004GJN-Hz; Tue, 10 May 2022 22:50:09 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noYg2-004GEX-9A; Tue, 10 May 2022 22:49:59 +0000
Received: by mail-yw1-x1129.google.com with SMTP id
 00721157ae682-2f7bb893309so1842037b3.12; 
 Tue, 10 May 2022 15:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=odDeWEQn+dxMMnpuDr3wrpKOZqaMz1USU4YdJsifEC0=;
 b=mGVIIGo48qdJEBmeO1w/NaPfd+/U0PrKZm7SDFU3SbN7Tp7fphiRm+JQu+KqHJe2ie
 A9SMDftsnzoqZy0qpCjmn2sSb2MR8pC0t8MMonMGB7SbLRK5I12zJrppZ+BPhQds6RHQ
 gyyWUuip7bqEn6IfkDfLGaaIVAYN7ncFxF6mSn+mMjlFuKpSx+BNYie+9RoAdawsOTw4
 FYC05egW3X6pivH7vAsOtytkHVozGLIrsnIAYf/Xu8Jbo0WvA7A8Xh8Yxb424mtt34A3
 MdXYP9HgwK8uoFD9JXwrriiS962iJ1i2ZpHTmpKV3zMskjx6oEMq+cEgNXVtTt+Or2RR
 jF/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=odDeWEQn+dxMMnpuDr3wrpKOZqaMz1USU4YdJsifEC0=;
 b=ObxDWXe+UB1AawFCpG3pFPBXlr9KxS8Fz5dlg6IA8mACE5kmASVtigMR0tjju16WSl
 pExMjmNMS3LhAX0YP0XkXdq9WwN5rDhezHvUvc1CmMDA6LWGevmiBpoM6ILF2RKtBOJK
 oKmABPCKkVHK4t+4220zwHp/z2lcXArbN8sLw1YOb6qxl3S47ymp9MeHAFAi36o3u85a
 e6gmR++0GV1EDfWXXWptp4ShJ+1kVNO2QCk1h6+3+GPfyYzA76sWK6kmHNJ0E4qxglTU
 NWfiJJ7NdtiD1UHBpZxbQMk1s5OTPlWAGG7OGy/vAeMDJQ8zCot9rJrBJRRQsoG9yBSX
 ALlA==
X-Gm-Message-State: AOAM533Lxn8Ef3WCqbjdMV1WlVy62gDp0vrt9RNhQdMrentvr0fuo7RR
 gL+lT/St4bd4cDYW8OfWMQOKjcSs7gecrCo6g3k=
X-Google-Smtp-Source: ABdhPJxpA6vOK4J63qUlZcvu8ChGp7/HgqyK3YgIAo7vg2rmQB/NK0dbW3F6axhto0qt7DPlk2lMhcktAMM3vIHK8OE=
X-Received: by 2002:a81:488b:0:b0:2f7:cc43:ae4c with SMTP id
 v133-20020a81488b000000b002f7cc43ae4cmr22414095ywa.414.1652222995163; Tue, 10
 May 2022 15:49:55 -0700 (PDT)
MIME-Version: 1.0
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
 <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <812AC0DB-A6D0-4DA3-BCDC-7743E8F61821@gmail.com>
 <CAMdYzYozewYUbM=Q+iJ2wdM5TrB6dGrjS6zh0qmVgWD4XPVR+Q@mail.gmail.com>
 <ABC61229-B851-4BB7-8B55-688F8A8D841A@gmail.com>
 <CAMdYzYrsaNED+oMj+z2b4fK7pt32Qg=nXDk3SA0KFDDCJ2XY0g@mail.gmail.com>
 <F1728C93-CFF8-4C51-B95C-A5049E0DC46A@gmail.com>
 <CAMdYzYpRVZ2hrGiYeQLqSduOZyKuZenw9bViS7oW7d3MWN7Z8g@mail.gmail.com>
In-Reply-To: <CAMdYzYpRVZ2hrGiYeQLqSduOZyKuZenw9bViS7oW7d3MWN7Z8g@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 10 May 2022 18:49:43 -0400
Message-ID: <CAMdYzYpujdqejDz_K2M0aUhPYNFVgTuqnUwkOA6jcxgDdJ+RoA@mail.gmail.com>
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, 
 dri-devel@lists.freedesktop.org, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_154958_355791_90567100 
X-CRM114-Status: GOOD (  18.60  )
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

T24gVHVlLCBNYXkgMTAsIDIwMjIgYXQgNDo1NCBQTSBQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21h
aWwuY29tPiB3cm90ZToKPgo+IE9uIFR1ZSwgTWF5IDEwLCAyMDIyIGF0IDk6NDkgQU0gUGlvdHIg
T25pc3pjenVrCj4gPHBpb3RyLm9uaXN6Y3p1a0BnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+Cj4g
Pgo+ID4gPiBXaWFkb21vxZvEhyBuYXBpc2FuYSBwcnpleiBQZXRlciBHZWlzIDxwZ3dpcGVvdXRA
Z21haWwuY29tPiB3IGRuaXUgMTAuMDUuMjAyMiwgbyBnb2R6LiAxNDowODoKPiA+ID4KPiA+ID4K
PiA+ID4gWW91IGFyZSBvbiB0aGUgY2xrX3J0YzMya19mcmFjIHdoaWNoIGlzIGEgZnJhY3Rpb25h
bCBkaXZpZGVyIHRoYXQgaXMKPiA+ID4gZmVkIGZyb20gdGhlIDI0bSBjbG9jay4gWW91ciBjbG9j
ayBsaWtlbHkgaXNuJ3QgdGhlIGlzc3VlIGhlcmUuIEknZAo+ID4gPiByZWNvbW1lbmQgc2V0dGlu
ZyB1cCB0aGUgY2VjLWdwaW8gbm9kZSB0byB2YWxpZGF0ZSB5b3VyIGhhcmR3YXJlCj4gPiA+IHdv
cmtzLgo+ID4KPiA+IFBldGVyLAo+ID4KPiA+IEhlcmUgaXMgd2hhdCBpIGRvbmUgdG8gdmVyaWZ5
IG15IHJvY2szLWEgSFc6Cj4gPgo+ID4gMS5kb3dubG9hZCAmIGJ1cm4gb24gU0QgUmFkeGEgVWJ1
bnR1Cj4gPiAyLmJvb3QgYW5kIGluc3RhbGwgdjRsLXV0aWxzCj4gPiAzLnJ1biBjZWMtY29tcGxp
YW5jZSAtdiAtVC4gSXQgZmFpbHMgd2l0aCBlcnJvciAtMjIKPiA+IDQuZGVjb21waWxlIFVidW5u
dHUgRFQuCj4gPiA1LkNoZWNrIHdoYXQgSERNSVRYX0NFQ19NIGhkbWkgdXNlcy4gSXQgd2FzIE0w
Cj4gPiA2LkNoZW5nZSB0byBIRE1JVFhfQ0VDX00xOyBjb21waWxlIGR0YjsgaW5zdGFsbCBvbiBz
ZAo+ID4gNy5yZWJvb3QuCj4gPiA4LmNlYy1jb21wbGlhbmNlIC12IC1UIGdpdmVzIGFsbCB0ZXN0
cyBPSwo+ID4gOS5jZWMtY3RsIC0taW1hZ2Utdmlldy1vbiAtdDAgdHVybnMtb24gbXkgVFYKPiA+
Cj4gPiBob3BlIHRoaXMgcHJvdmVzIG15IEhXIGlzIG9rPwo+ID4KPgo+IFRoYXQgZG9lcyBzaG93
IHRoYXQgdGhlIGhhcmR3YXJlIHdvcmtzIHdpdGggdGhlIG9lbSBpbWFnZS4gSXQgZG9lcyBub3QK
PiB1bmZvcnR1bmF0ZWx5IHByb3ZlIGlmIGl0IHdvcmtzIHdpdGggeW91ciBjdXJyZW50IGR0cy4g
Y2VjLWdwaW8gd2lsbAo+IHNob3cgaWYgaXQncyBhbiBpc3N1ZSB3aXRoIHRoZSBjZWMgY29udHJv
bGxlciBvciBhbiBleHRlcm5hbCBwcm9ibGVtLgoKSSd2ZSBwdWxsZWQgeW91ciBkdHMgYW5kIHdp
dGggYSBmZXcgZml4ZXMgZ290IGEgd29ya2luZyBzeXN0ZW0gZnJvbQppdC4gQXQgbGVhc3Qgb24g
dGhlIHYxLjEgYm9hcmQgY2VjIGlzIGZ1bmN0aW9uYWw6ClRvdGFsIGZvciBkd2hkbWktcm9ja2No
aXAgZGV2aWNlIC9kZXYvY2VjMDogMSwgU3VjY2VlZGVkOiAxLCBGYWlsZWQ6CjAsIFdhcm5pbmdz
OiAwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
