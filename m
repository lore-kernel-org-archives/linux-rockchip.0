Return-Path: <SRS0=g3xy=PJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40456C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Oct 2021 15:37:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 03EF2610FF
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Oct 2021 15:37:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 03EF2610FF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdHQV/F5oPN0hZY4N7I/jKtbcshA111NNVWykqU2iOI=; b=hr2eN3ZjjlyeaS
	mZD6COtrSeLlOUxekdwx9u8mUPr8OBC+cP09RmNqIp1HmlcTgFK+44mWBK7yHiGis5xJIAl0B8Ztu
	QRKcS9FLK5w8/wpewktRb4D/oteBcc33EiXbBSuNNH4U1G3nStR4dLg3yizd1snqV7ak8Q5M5y1ld
	lbJD6SNQ71ZB7Q24EUBubJFv8QC+Nfc4N3uVFZKZ1hgYqA3+AfnIMqgnm+NhGDTjRnApk6S9vwc3z
	B/NOguQyKV9foN/kJJx/v1eV9Ns8JehTwDgtvmYbKjyHga0AQFGd1QbEnGnvoNMFZwFXdYA3X7BSR
	vuracMgNVJiZnBDHrVwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mda7u-008ALs-SB; Thu, 21 Oct 2021 15:37:06 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mda7Y-008AEL-Di; Thu, 21 Oct 2021 15:36:47 +0000
Received: by mail-ed1-x533.google.com with SMTP id g8so2631447edb.12;
 Thu, 21 Oct 2021 08:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cXxB1iqeAcia/gUr/dCX991+dsHriT2zpUDepICfnMw=;
 b=ilqBUlu0nHsH2mJKeHnFm9R/+2dL/GcNH1oH3XXSrLuQtlTD7sMsGVDD+HthV9fExs
 zvWN+mA7kNwbu992dhKwAndrhbpxgHEO6QwrCNH+yPi/JwveiUa7A2IzLAjVaRG4BPf4
 BGvb7DB4FSIHxpeYNobH/9TYEEVcxHulW4+z74IuDPlzugeG57U9K4vqxL4SDV5WY7kh
 U8y+YK3YnFhTPrwZisaohpr7o9km561eDBKNYMvs7aQH0bYFMHoK2UquLmHHv8Vwgq6i
 //gZRmvNvLIip7S4INHC0LG7GMo6luqAQU9uHMsNMul4vBHtNUcMWZlok029DlbyWVcq
 LL6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cXxB1iqeAcia/gUr/dCX991+dsHriT2zpUDepICfnMw=;
 b=yaSUnSshK5szTzWDQZWFKgnVkllaD1X5Vf3sLT6GTVxCIBzawpHgbcw/yfMFOf+ZBT
 zGMKh8Fk/Q75kzMSpyGoPLC1OvRpA5m1Vb+S5C/s+CJjqB/i10JCmS1qGC10vNHbF5Dw
 ghmKQDzfmYECHCKURqdVkOYcaBdMhlto5/UPmvnryAvxwENYyob2JP6B2NjLcoueLaYB
 K0yi+UrDrX0z5x2Ha5D9ORv8bJlL4NVqAU3HWTkwQLwHObNDdbnqF89qjHSHJNrme39U
 mZbgNqp48B79/RHC4Tt1X45mrc4+c3RDHNfoGj6FVEYt18e8eggWnzEECXbkjDpFyhS4
 KxJQ==
X-Gm-Message-State: AOAM532wFmCIFs0sd2io+CbSYvr5jOQyX+q5dNB81wBGNJDKaulkCLl7
 rb7CCFmRI/kMwWmrBLnGSKw=
X-Google-Smtp-Source: ABdhPJww6dt0MM2DwFmRnm4LIiY9YxS6m8v7GdOWHB5AFB2dvHF3j1128hCBXPqAygosULIIVGWOTg==
X-Received: by 2002:a05:6402:1d49:: with SMTP id
 dz9mr8794246edb.17.1634830600987; 
 Thu, 21 Oct 2021 08:36:40 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-29-253.static.triera.net.
 [86.58.29.253])
 by smtp.gmail.com with ESMTPSA id v28sm3031349edx.21.2021.10.21.08.36.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Oct 2021 08:36:40 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: linux-media <linux-media@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Collabora Kernel ML <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: Re: Re: Re: [PATCH v7 11/11] media: hantro: Support NV12 on the
 G2 core
Date: Thu, 21 Oct 2021 17:36:39 +0200
Message-ID: <5507278.DvuYhMxLoT@kista>
In-Reply-To: <CAAEAJfDkOUp_kzrR-eAUiwO4EGHcuQVpCxBJwJr5_pZZqr-xwg@mail.gmail.com>
References: <20210929160439.6601-1-andrzej.p@collabora.com>
 <4350097.LvFx2qVVIh@kista>
 <CAAEAJfDkOUp_kzrR-eAUiwO4EGHcuQVpCxBJwJr5_pZZqr-xwg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_083644_484136_B0A80508 
X-CRM114-Status: GOOD (  43.18  )
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

RG5lIHNyZWRhLCAyMC4gb2t0b2JlciAyMDIxIG9iIDE3OjI1OjQwIENFU1QgamUgRXplcXVpZWwg
R2FyY2lhIG5hcGlzYWwoYSk6Cj4gT24gV2VkLCAyMCBPY3QgMjAyMSBhdCAxMjowNCwgSmVybmVq
IMWga3JhYmVjIDxqZXJuZWouc2tyYWJlY0BnbWFpbC5jb20+IAp3cm90ZToKPiA+Cj4gPiBEbmUg
c3JlZGEsIDIwLiBva3RvYmVyIDIwMjEgb2IgMTM6MDY6NTkgQ0VTVCBqZSBFemVxdWllbCBHYXJj
aWEgCm5hcGlzYWwoYSk6Cj4gPiA+IEhpIEplcm5laiwKPiA+ID4KPiA+ID4gT24gVHVlLCAxOSBP
Y3QgMjAyMSBhdCAxMzozOCwgSmVybmVqIMWga3JhYmVjIDxqZXJuZWouc2tyYWJlY0BnbWFpbC5j
b20+Cj4gPiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IEhpIEFuZHJ6ZWohCj4gPiA+ID4KPiA+ID4g
PiBEbmUgcGV0ZWssIDE1LiBva3RvYmVyIDIwMjEgb2IgMTk6MTk6NDcgQ0VTVCBqZSBBbmRyemVq
IFBpZXRyYXNpZXdpY3oKPiA+ID4gPiBuYXBpc2FsKGEpOgo+ID4gPiA+ID4gSGkgSmVybmVqLAo+
ID4gPiA+ID4KPiA+ID4gPiA+IFcgZG5pdSAxNC4xMC4yMDIxIG8gMTk6NDIsIEplcm5laiDFoGty
YWJlYyBwaXN6ZToKPiA+ID4gPiA+ID4gSGkgQW5kcnplaiEKPiA+ID4gPiA+ID4KPiA+ID4gPiA+
ID4gRG5lIHNyZWRhLCAyOS4gc2VwdGVtYmVyIDIwMjEgb2IgMTg6MDQ6MzkgQ0VTVCBqZSBBbmRy
emVqCj4gPiBQaWV0cmFzaWV3aWN6Cj4gPiA+ID4gPiA+IG5hcGlzYWwoYSk6Cj4gPiA+ID4gPiA+
PiBUaGUgRzIgZGVjb2RlciBibG9jayBwcm9kdWNlcyBOVjEyIDR4NCB0aWxlZCBmb3JtYXQgKE5W
MTJfNEw0KS4KPiA+ID4gPiA+ID4+IEVuYWJsZSB0aGUgRzIgcG9zdC1wcm9jZXNzb3IgYmxvY2ss
IGluIG9yZGVyIHRvIHByb2R1Y2UgcmVndWxhciAKTlYxMi4KPiA+ID4gPiA+ID4+Cj4gPiA+ID4g
PiA+PiBUaGUgbG9naWMgaW4gaGFudHJvX3Bvc3Rwcm9jLmMgaXMgbGV2ZXJhZ2VkIHRvIHRha2Ug
Y2FyZSBvZgo+ID4gYWxsb2NhdGluZwo+ID4gPiA+ID4gPj4gdGhlIGV4dHJhIGJ1ZmZlcnMgYW5k
IGNvbmZpZ3VyZSB0aGUgcG9zdC1wcm9jZXNzb3IsIHdoaWNoIGlzCj4gPiA+ID4gPiA+PiBzaWdu
aWZpY2FudGx5IHNpbXBsZXIgdGhhbiB0aGUgb25lIG9uIHRoZSBHMS4KPiA+ID4gPiA+ID4KPiA+
ID4gPiA+ID4gUXVpY2sgc3VtbWFyeSBvZiBkaXNjdXNzaW9uIG9uIExpYnJlRUxFQyBTbGFjazoK
PiA+ID4gPiA+ID4gV2hlbiB1c2luZyBOVjEyIGZvcm1hdCBvbiBBbGx3aW5uZXIgSDYgdmFyaWFu
dCBvZiBHMiAobmVlZHMgc29tZQo+ID4gZHJpdmVyCj4gPiA+ID4gPiA+IGNoYW5nZXMpLCBJIGdl
dCBmcmFtZXMgb3V0IG9mIG9yZGVyLiBJZiBJIHVzZSBuYXRpdmUgTlYxMiB0aWxlZAo+ID4gZm9y
bWF0LAo+ID4gPiA+IGZyYW1lcwo+ID4gPiA+ID4gPiBhcmUgb3JkZXJlZCBjb3JyZWN0bHkuCj4g
PiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEN1cnJlbnRseSBJJ20gbm90IHN1cmUgaWYgdGhpcyBpcyBp
c3N1ZSB3aXRoIG15IGNoYW5nZXMgb3IgaXMgdGhpcwo+ID4gZ2VuZXJhbAo+ID4gPiA+ID4gPiBp
c3N1ZS4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gSSB3b3VsZCBiZSBncmF0ZWZ1bCBpZiBhbnlv
bmUgY2FuIHRlc3QgZnJhbWUgb3JkZXIgd2l0aCBhbmQgCndpdGhvdXQKPiA+ID4gPiA+ID4gcG9z
dHByb2Nlc3NpbmcgZW5hYmxlZCBvbiBpbXg4LiBUYWtlIHNvbWUgZHluYW1pYyB2aWRlbyB3aXRo
IGEgbG90IApvZgo+ID4gPiA+IHNob3J0Cj4gPiA+ID4gPiA+IHNjZW5lcy4gSXQncyBwcmV0dHkg
b2J2aW91cyB3aGVuIGZyYW1lcyBhcmUgb3V0IG9mIG9yZGVyLgo+ID4gPiA+ID4gPgo+ID4gPiA+
ID4KPiA+ID4gPiA+IEkgY2hlY2tlZCBvbiBpbXg4IGFuZCBjYW5ub3Qgb2JzZXJ2ZSBhbnkgc3Vj
aCBhcnRpZmFjdHMuCj4gPiA+ID4KPiA+ID4gPiBJIGZpbmFsbHkgZm91bmQgdGhlIGlzc3VlLiBB
cyB5b3UgbWVudGlvbmVkIG9uIFNsYWNrLCByZWdpc3RlciB3cml0ZSAKb3JkZXIKPiA+IG9uY2UK
PiA+ID4gPiBhbHJlYWR5IGFmZmVjdGVkIGRlY29kaW5nLiBXZWxsLCBpdCdzIHRoZSBjYXNlIGFn
YWluLiBJIG1hZGUgaGFja3kgdGVzdCAKYW5kCj4gPiA+ID4gbW92ZWQgcG9zdHByb2MgZW5hYmxl
IGNhbGwgYWZ0ZXIgb3V0cHV0IGJ1ZmZlcnMgYXJlIHNldCBhbmQgaXQgd29ya2VkLiAKU28sCj4g
PiB0aGlzCj4gPiA+ID4gaXMgYWN0dWFsbHkgY29yZSBxdWlyayB3aGljaCBpcyBvYnZpb3VzbHkg
Zml4ZWQgaW4gbmV3ZXIgdmFyaWFudHMuCj4gPiA+ID4KPiA+ID4KPiA+ID4gVWdoLCBnb29kIGNh
dGNoLgo+ID4gPgo+ID4gPiBXaGF0IGhhcHBlbnMgaWYgeW91IG1vdmUgYWxsIHRoZSBjYWxscyB0
byBIQU5UUk9fUFBfUkVHX1dSSVRFX1MKPiA+ID4gKEhBTlRST19QUF9SRUdfV1JJVEUgZG9lcyBh
IHJlbGF4ZWQgd3JpdGUpPwo+ID4gPgo+ID4gPiBPciB3aGF0IGhhcHBlbnMgaWYgdGhlIEhBTlRS
T19QUF9SRUdfV1JJVEUodnB1LCBvdXRfbHVtYV9iYXNlLCBkc3RfZG1hKQo+ID4gPiBpcyBtb3Zl
ZCB0byBiZSBkb25lIGFmdGVyIGFsbCB0aGUgb3RoZXIgcmVnaXN0ZXJzPwo+ID4KPiA+IFRob3Nl
IHR3byBtYWNyb3MgYXJlbid0IHVzZWQgb24gRzIuIEFuZHJ6ZWogaW50cm9kdWNlZCBuZXcgcG9z
dHByb2MgCmhlbHBlcnMKPiA+IGZvciBHMi4KPiA+Cj4gCj4gQWgsIHNvIHRoZSBpc3N1ZSBpcyBz
cGVjaWZpYyBvbiB0aGUgRzIgcG9zdC1wcm9jZXNzb3IuCgpUbyBiZSBtb3JlIHByZWNpc2UsIGlz
c3VlIGlzIHNwZWNpZmljIG9ubHkgdG8gb2xkIEcyIHBvc3QtcHJvY2Vzc29yLCBmb3VuZCBpbiAK
QWxsd2lubmVyIEg2LiBBbmRyemVqIHRlc3RlZCBjb2RlIHdpdGggbmV3ZXIgRzIgY29yZSBhbmQg
Ym90aCBsb2NhdGlvbnMgd29ya2VkIApmaW5lLgoKPiAKPiA+IFRoaXMgY29tbWl0IHNvbHZlcyBp
c3N1ZSBmb3IgSDY6Cj4gPiBodHRwczovL2dpdGh1Yi5jb20vamVybmVqc2svbGludXgtMS9jb21t
aXQvCj4gPiBhNzgzYTk3N2MwODQzYmI0YjU1NWRjOWQwYjVkNjQ5MTVjZDIxOWU3Cj4gPgo+IAo+
IFJpZ2h0LCBidXQgc2VlIHRoaXMgY29tbWVudDoKPiAKPiAgICAgLyogVHVybiBvbiBwaXBlbGlu
ZSBtb2RlLiBNdXN0IGJlIGRvbmUgZmlyc3QuICovCj4gICAgIEhBTlRST19QUF9SRUdfV1JJVEVf
Uyh2cHUsIHBpcGVsaW5lX2VuLCAweDEpOwo+IAo+IEkgaGF2ZSB2YWd1ZSByZWNvbGxlY3Rpb24g
b2Ygd2h5IHdlIGhhdmUgdGhhdCBjb21tZW50LAo+IGJ1dCBJJ20gcmVsdWN0YW50IHRvIG1vdmUg
cG9zdC1wcm9jIGVuYWJsZSB0byB0aGUgZW5kLgo+IChvciBhdCBsZWFzdCBub3QgZG8gaXQgb24g
RzE/KS4KCkkgbWlzc2VkIHRoYXQuIEFueSBpZGVhIHdoYXQgd291bGQgYmUgdGhlIGNsZWFuZXN0
IHdheSB0byBtb3ZlIGNvZGUgZm9yIEcyIApvbmx5PyBJIGNhbiBvbmx5IHRoaW5rIG9mIHF1aXJr
IGZsYWcgaW4gcGxhdGZvcm0gc3BlY2lmaWMgc3RydWN0dXJlLgoKQmVzdCByZWdhcmRzLApKZXJu
ZWoKCj4gCj4gPiA+Cj4gPiA+ID4gVGhpcyBtYWtlcyB0aGlzIHNlcmllcyB3aXRoIG1pbm9yIGFk
YXB0YXRpb25zIGNvbXBsZXRlbHkgd29ya2luZyBvbiAKSDYuIEkKPiA+IHNlZQo+ID4gPiA+IG5v
IHJlYXNvbiBub3QgdG8gbWVyZ2Ugd2hvbGUgc2VyaWVzLgo+ID4gPiA+Cj4gPiA+Cj4gPiA+IERv
IHlvdSBoYXZlIHBsYW5zIHRvIHN1Ym1pdCB5b3VyIEg2IHdvcmsgb24gdG9wIG9mIHRoaXM/Cj4g
Pgo+ID4gT2YgY291cnNlLCB3aHkgd291bGQgSSB3b3JrIG9uIHRoaXMgb3RoZXJ3aXNlPyA6KSBC
dXQgYmVmb3JlIEkgZG8gdGhhdCwgSSAKaGF2ZQo+ID4gdG8gY2xlYW4gdXAgYW5kIHNwbGl0IG9u
ZSBjb21taXQsIHdoaWNoIGFkYXB0cyBWUDkgRzIgY29kZSBmb3IgSDYgdmFyaWFudC4KPiA+Cj4g
Cj4gT0ssIHNvdW5kcyBnb29kLgo+IAo+ID4gSWYgeW91J3JlIGludGVyZXN0ZWQgaW4gY2hhbmdl
cywgdGFrZSBhIGxvb2sgaGVyZToKPiA+IGh0dHBzOi8vZ2l0aHViLmNvbS9qZXJuZWpzay9saW51
eC0xL2NvbW1pdHMvdnA5Cj4gPgo+IAo+IFdpbGwgdGFrZSBhIGxvb2suCj4gCj4gVGhhbmtzLAo+
IEV6ZXF1aWVsCj4gCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
