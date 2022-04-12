Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCECEC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Apr 2022 11:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xdQpBAa7TYIKEFx/aNe2RoGmhcNkYvTEMBHG8AnNu+0=; b=uAYSyNncOqD8E2
	rykZRt3mX6zylxuSi+tJlJ6dWbIAc8NhZ86HLvqkYdLykubs8/VEMt3HgybsBXWWTJd+qYUwK0/b3
	sBfCgf+9CtbRXc1pwCrzM6WI+ut54gIsvF+2OuUwmAXyJUtURvqcTJtOCjED5qTrLBBZcGOTsOhN3
	ca71ibenBAG9VHw64gEwOfUNihCvO8+r+bHhxxZLLTyREn7G9d/2oweAJKQfAoRck2eK05h+rOb5x
	veK92b5yvWRWQ7KxIQhvLUrBEhOLGUYimSQQmYI1T0xfnQtVed4gBVrh8sS+EcD08aPxQgoR4lpxO
	e65GgH0pAQdtb/YJQosQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neExm-00DoJ8-3l; Tue, 12 Apr 2022 11:45:38 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neEje-00DhmL-Qg
 for linux-rockchip@lists.infradead.org; Tue, 12 Apr 2022 11:31:09 +0000
Received: by mail-yb1-xb32.google.com with SMTP id h8so2095059ybj.11
 for <linux-rockchip@lists.infradead.org>; Tue, 12 Apr 2022 04:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MNFVKn/6sR+qJy1xjZwLhojWhMEBJZkIZm88XzONGOA=;
 b=SUoVFIXk4pDqXz8Tq1K1xwH2XlZWTHANCuN+6KitrpI3nIKG2d0pu7xkhSg3nBrfI1
 xVAsTmxL6vqGZiOkavmCI6X3wsKyuvOWGmaVW/5JeMpyFInytcQCF0+0d3TOJ8s8cWs+
 DmhJpIgUZaoR1eoFXp+Wx000g1S4y1ogcfs+LUkGiRk/HbbCK6L7bNdGtnaToRIBcqnv
 77YlMyPmmeMDT8v5adrU7oLY65D6kKA2h4gXNcN+2tRNM9EBaCux4UH8aRvls9E4W1Fp
 vNd63tq9B6dDowT6+YHjNQ5t+wBQHDRsbRxaQrNy4PZC4Rca7YV8JlIqyFVgjpL3/c4+
 ILUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MNFVKn/6sR+qJy1xjZwLhojWhMEBJZkIZm88XzONGOA=;
 b=t9GfJSeXxJcYSYX9irsLlxVoQiRpBQGwbtu4dZzFamai28qX9suOGP/b9XjIPw/dVj
 XlEg1clx0KdhiCnwbCjivl8D537cEb6TI/2xax5Fw1LJE0/K6ctQR1pWqgwxkUpl+ng/
 hDUEWalHaepg3vqTrkkpyjsUWD12p5LFMzQBRvGtcYsGpvZwoKxI8WGfy1QVfq6JGc4s
 1sQ/8sB2/yNXVooL4Y5bUyy86S8Ey89jK13QJ/+WwUcK8a+NDDlpacXnndLjrP8BR4QX
 CVG3AtQJCX2ZI4HG0zN3F1hWFzj6eg3/wk+S290qaKT+5gLxtkGWaL8sSYTNCeMM5xP/
 fGXQ==
X-Gm-Message-State: AOAM531FLvDeqsg3/S72Y8kEKDLtXi+2bPUupNzNuUduvIVynJOoZnzG
 eRLZIJXrtWpu1FCoP7DyDbwWcyZDsK/jn1Es4OM+yA==
X-Google-Smtp-Source: ABdhPJzaCS5ELmQS0Du4Km9AA/DbhyZFWNBRY9Z4RZEpdJfWE7QMeMYVpX+cQLO72zcuzJ6OCR7NHEZH7VJR/v4kpAU=
X-Received: by 2002:a25:b7c8:0:b0:633:5650:781e with SMTP id
 u8-20020a25b7c8000000b006335650781emr25046546ybj.466.1649763058611; Tue, 12
 Apr 2022 04:30:58 -0700 (PDT)
MIME-Version: 1.0
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
 <5420D26D-34FD-4637-B602-F6271E38BB8D@gmail.com>
 <BA4C591F-D115-43D2-BF59-A75B29889E50@gmail.com>
 <20220408080748.GA2387@pengutronix.de> <20220408120021.GO4012@pengutronix.de>
 <B3E76A7A-9B62-4E6F-9472-00B6298689C5@gmail.com>
 <20220411090800.GR4012@pengutronix.de>
 <5929E7A7-776E-4BCB-92C8-A1CE05774FE3@gmail.com>
 <20220412075034.GS4012@pengutronix.de>
 <e2ef484b60fe9c5fc077240a26bd18275974dc4a.camel@pengutronix.de>
 <EF0F8E87-2618-4E5E-807D-259FEEC0FB24@gmail.com>
In-Reply-To: <EF0F8E87-2618-4E5E-807D-259FEEC0FB24@gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 12 Apr 2022 12:30:46 +0100
Message-ID: <CAPj87rNatQ9KjDSnYQTh4+FOUcPTerbzH3m8AuAF_BPbM1xxGg@mail.gmail.com>
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Sandy Huang <hjc@rock-chips.com>, 
 dri-devel@lists.freedesktop.org, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Lucas Stach <lst@pengutronix.de>, 
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de, 
 Andy Yan <andy.yan@rock-chips.com>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_043103_056496_14CB6E2D 
X-CRM114-Status: GOOD (  14.29  )
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

T24gVHVlLCAxMiBBcHIgMjAyMiBhdCAxMToxNCwgUGlvdHIgT25pc3pjenVrIDxwaW90ci5vbmlz
emN6dWtAZ21haWwuY29tPiB3cm90ZToKPiA+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEx1
Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPiB3IGRuaXUgMTIuMDQuMjAyMiwgbyBn
b2R6LiAxMDoxMDoKPiA+IDEuIFRoZSBhcHBsaWNhdGlvbiBmZWVkcyBhIHdyb25nIG1vZGlmaWVy
IGxpc3QgdG8gdGhlIEdCTQo+ID4gaW1wbGVtZW50YXRpb24sIGFzIGl0IG1heSBoYXZlIHF1ZXJp
ZWQgYW5vdGhlciBwbGFuZSBpbiB0aGUgYXNzdW1wdGlvbgo+ID4gdGhhdCBzdXBwb3J0ZWQgbW9k
aWZpZXJzIGFyZSB1bmlmb3JtIGFjcm9zcyBhbGwgcGxhbmVzLgo+Cj4gVGhpcyB3aWxsIGJlIGNh
cmRpbmFsIGRlc2lnbiBlcnJvci4KPiAoa2VlcGluZyBpbiBtaW5kIHdlIGhhdmUgbXVsdGlwbGUg
cHJvZHVjZXJzIChHUFUvdmlkZW8gZGVjb2RlcikgYW5kIG11bHRpcGxlIGNvbnN1bWVycyAoYmFz
ZSAmIG92ZXJsYXkgRFJNIHBsYW5lcykKPgo+Cj4gPiAyLiBUaGUgR0JNIGltcGxlbWVudGF0aW9u
IChQYW5mcm9zdCkgYWN0dWFsbHkgYWxsb2NhdGVzIGEgc3VyZmFjZQo+ID4gaW5zdGVhZCBvZiBm
YWlsaW5nIHRoZSBhbGxvY2F0aW9uLCBldmVuIGlmIGl0IGRvZXMgbm90IHN1cHBvcnQgYW55Cj4g
PiBjb21iaW5hdGlvbiBvZiB0aGUgcHJvdmlkZWQgZm9ybWF0IGFuZCBtb2RpZmllciBsaXN0Lgo+
Cj4gVGVzdGluZyBTYWNoYSBwYXRjaCAoc2VlIHRvZGF5J3MgZW1haWwgZnJvbSBTYXNjaGEpIGkn
bSBnZXR0aW5nCj4KPiBRdDogRUdMIEVycm9yIDogQ291bGQgbm90IGNyZWF0ZSB0aGUgZWdsIHN1
cmZhY2U6IGVycm9yID0gMHgzMDA5Cj4KPiBpJ20gcmVhZGluZyB0aGlzIGFzOiBRdCB0cmllcyBh
bGxvY2F0ZSBFR0wgc3VyZmFjZSBhbmQgRUdMIHJldHVybnMgZXJyb3IuCj4gb3IgaSdtIHdyb25n
PwoKQ29ycmVjdCwgdGhhdCdzIEVHTF9CQURfTUFUQ0guIFRoZXJlIGFyZSB2ZXJ5IGZldyB3YXlz
IHRoYXQgY2FuCmhhcHBlbjsgYnkgZmFyIHRoZSBtb3N0IGxpa2VseSBpcyB0aGF0IFF0IGhhcyBj
aG9zZW4gYW4gRUdMQ29uZmlnCndoaWNoIGRvZXMgbm90IGNvcnJlY3RseSBjb3JyZXNwb25kIHRv
IHRoZSBmb3JtYXQuIChJZiBpdCB3YXMgYW4KaW1wb3NzaWJsZSBmb3JtYXQvbW9kaWZpZXIgY29t
YmluYXRpb24sIHRoZW4gdGhpcyB3b3VsZCBiZSBhbHJlYWR5CmNhdWdodCB3aGVuIGFsbG9jYXRp
bmcgdGhlIGdibV9zdXJmYWNlLikKCkVpdGhlciB3YXksIGl0IHNlZW1zIHF1aXRlIGNsZWFyIHRo
YXQgdGhlIFZPUDIgZHJpdmVyIGlzIHRvdGFsbHkgZmluZQpoZXJlLCBhbmQgdGhhdCB5b3UgaGF2
ZSBhIFF0IChsaWtlbHkpIG9yIE1lc2EgKHRiaCBsZXNzIGxpa2VseSkgaXNzdWUKdG8gZGVidWcg
dG8gZ2V0IHRoZSBhcHAgd29ya2luZy4KCkNoZWVycywKRGFuaWVsCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
