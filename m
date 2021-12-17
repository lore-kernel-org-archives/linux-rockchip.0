Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CC3EC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Dec 2021 18:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A0Q7s7DpPGA9QJscRXQUKssvY1IUjyvPtD/cYNnvaH4=; b=cK/iHrJDw1/Vwz
	N7UVYVG7dDhBKs0ioX2gsc+r8aUI0cBy5Wgl18ORLcKJBcHnlfbAYb6jsFApvXvHhh6hcf13OPB5u
	JCjbu2uAhW2jpOMVIFU4/hS94f8TziLa2tELTzY2qsLIwCyCLR7me5T9BCegFsuue/aahfoGPQyQS
	S3tKUvwSlawpmPjNDc2ZhetBPMd0Jzt4t7EgWqg3JRJTGXrW0pBQ7nVVIun6IkUhPFtjZdhMhAAa3
	5Z9Zdkg0S7wc3S1kQ/oiVEwc0TJCIsCHWMSdpmgomFPSY5fEgXxa2d4R0mFl2fTIsn2he+x6BP7SA
	BgJdbXjtNF+Az3pyz78g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myILa-00C11i-P6; Fri, 17 Dec 2021 18:52:50 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myIBm-00BwAR-RL
 for linux-rockchip@lists.infradead.org; Fri, 17 Dec 2021 18:42:44 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id v138so9002171ybb.8
 for <linux-rockchip@lists.infradead.org>; Fri, 17 Dec 2021 10:42:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ID87xFF1ny0rLnoj6o/E96/XNAWF53PF2CEgRmDwQwI=;
 b=Tw0uaJnIHVUZPEGxonVzrc6/1BV/tKWS00U4oPPF5jDheVgFxHriJAmN1PbaMD93gW
 HbuL0hwocaYHScxww+hUIfWXVQoeb5ftv+RbdHU3o7KNVC2kvpF1pTvoW7xJfLloZn3M
 vsZMawdg4CDMKacTVY2Hn+UnG4TT402rCrPU+tJpZjM39IeaIN8fx0w9Gy485CQ7pd5k
 Ii2RqBoz0279ZFJIBLzCxWLiCVGG7CPu40FxaEBXN2sudwTitNcDTnBx0y2C9AF487Wo
 wyF/0YcFsA/cXgZNjm7uwVm8FbKIMr/ANRtJLQQLP3QXWgaFGMxo+TYpRpB6+q2pH3x9
 LNcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ID87xFF1ny0rLnoj6o/E96/XNAWF53PF2CEgRmDwQwI=;
 b=6qvecoM62cn2Iy3T4EjhJVLGhvyiSNm8SXToX3Ccc+jTV9Nheb2O6DviteL6QG1vFZ
 qk4cfD6VQHgwNTTLWsuUNTH0mU7AAEZ12ZgXS1IaheBKF/SM5m0qydm7anufBBoj8BJe
 k8rcO5FgszUNZro2AY1OJXDW+mFwNt3yJYzPju12BNbcPRSLUTycZya3au8oIpCGEA8u
 z0UWrPj6h3cM/3M0rJrMVJTwp9DsNutcsABicF1pjA3Bnou9HucZIfxOsgtgkOaE2NBx
 TgaT5hVaOJZ78XqoaTEFkf5Wmpe5WEUAdvPTsH90gJXqAq2OB4L7O3RYbUNxeFPh6zWt
 ut6g==
X-Gm-Message-State: AOAM531jSy98JOlFVMpxLE2rr5DjTx90L+a8/arvX+m4lLYqf2NtxOvJ
 B30LSMCYaP/aogMVDr/3/GoosXN4/B/8obkauYY=
X-Google-Smtp-Source: ABdhPJwOggq37Z1jDxVsfM37Tp7rZJWzPeeUpZ8kNU1HHVqF6MbeC9XL/xzVPiWo/KOOjyc/qNsWOVZVvu1z2mxkXIo=
X-Received: by 2002:a25:84c1:: with SMTP id x1mr6013454ybm.690.1639766561310; 
 Fri, 17 Dec 2021 10:42:41 -0800 (PST)
MIME-Version: 1.0
References: <20211217145544.341617-1-pgwipeout@gmail.com>
 <2bebe0ae-27df-f75d-97d6-2e4d2dd032b0@gmail.com>
 <CAMdYzYq=2G1bvu9M_DR0vdQDtcvVBhQFRPTNKo1ySFrMZOk=jg@mail.gmail.com>
 <4d24cb08-0475-3a9d-1b73-24e465f34701@gmail.com>
In-Reply-To: <4d24cb08-0475-3a9d-1b73-24e465f34701@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 17 Dec 2021 13:42:29 -0500
Message-ID: <CAMdYzYrDp5zcRJ=TudtiAtviJVMyNmqB5TMNYZ=XN+mb3paSTQ@mail.gmail.com>
Subject: Re: [PATCH v2] mfd: rk808: add reboot support to rk808.c
To: Dmitry Osipenko <digetx@gmail.com>
Cc: Lee Jones <lee.jones@linaro.org>, Robin Murphy <robin.murphy@arm.com>, 
 Heiko Stuebner <heiko@sntech.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_104242_942289_7A6C48AE 
X-CRM114-Status: GOOD (  13.91  )
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

T24gRnJpLCBEZWMgMTcsIDIwMjEgYXQgMTozMCBQTSBEbWl0cnkgT3NpcGVua28gPGRpZ2V0eEBn
bWFpbC5jb20+IHdyb3RlOgo+Cj4gMTcuMTIuMjAyMSAyMToxNiwgUGV0ZXIgR2VpcyDQv9C40YjQ
tdGCOgo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gPj4+ICsgICAgICAgICAg
ICAgZGVmYXVsdDoKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGRldl9pbmZvKCZjbGllbnQt
PmRldiwgInBtaWMgY29udHJvbGxlZCBib2FyZCByZXNldCBub3Qgc3VwcG9ydGVkXG4iKTsKPgo+
IEknZCBjaGFuZ2UgdGhpcyBkZXZfaW5mbyB0byBkZXZfZGJnIHRvIG5vdCBjbHV0dGVyIEtNU0cu
CgpJJ2QgcHJlZmVyIHRvIGxlYXZlIHRoaXMgYXMgaW5mbywgc2luY2UgdGhlIGRldmljZSBpcyBk
ZXNpZ25hdGVkIGFzCnRoZSBzeXN0ZW0gcG93ZXIgY29udHJvbGxlciBidXQgaXQgaXMgb25seSBj
YXBhYmxlIG9mIHBvd2VyaW5nIGRvd24KdGhlIHN5c3RlbSwgbm90IHJlYm9vdGluZyBpdC4KQnV0
IG9uIHNlY29uZCB0aG91Z2h0LCBhbnlvbmUgd2hvJ3MgbWFraW5nIHRoZXNlIGNoYW5nZXMgd291
bGQgYmUKaW52ZXN0aWdhdGluZyB0aGUgZHJpdmVyIGFueXdheS4KU28gSSdsbCBjaGFuZ2UgaXQg
dG8gZGV2X2RiZy4KCj4KPiA+PiBJJ2Qgc2V0IHJldD0wIGV4cGxpY2l0bHkgaGVyZS4gTGF0ZXIg
b24gc29tZWJvZHkgbWF5IGNoYW5nZSB0aGUgY29kZSBhbmQKPiA+PiByZXQgd29uJ3QgYmUgemVy
byBhbnltb3JlLCB0aGlzIGlzIG5vdCBhbiB1bmNvbW1vbiB0cm91YmxlIGluIGtlcm5lbC4KPiA+
IEl0IHRvb2sgbWUgYSBtb21lbnQgdG8gc2VlIHRoZSBsb2dpYyBoZXJlLCBidXQgSSB1bmRlcnN0
YW5kIGl0IG5vdy4KPiA+Cj4KPiBDb3VsZCBiZSBldmVuIGJldHRlciB0byBwbGFjZSB0aGUgZXJy
b3IgbWVzc2FnZSBzaW1wbHkgcmlnaHQgYWZ0ZXIgdGhlCj4gcmVnaXN0ZXJfcmVzdGFydF9oYW5k
bGVyKCkuCgpHb29kIHBvaW50LCB0aGFua3MKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
