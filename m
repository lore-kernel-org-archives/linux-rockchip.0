Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72BAEC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Nov 2021 03:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TVp1YkwBPUjv85g8ZJt6QC1lLp3wqNA9SNgojHkRT20=; b=FeKWS1UWxIi9DU
	aBQiPnILFkVFuWxFxthywvua6emA8n99uSlATdqCrW1qtg1bBoGk9uUFRen3TH1NQODj5izJK21Oq
	GElQNAD1spgrcA66qZdtcXALGPDfor3LvSxuqaEjv3NVfRi4v8zHQubjk/YwBJq2jq2pHyPu7YAZY
	HRQUKaSX6V0cb76YdMVvE9QBbK/p7+AYe4HpYoaozvz4FGdQJRoxSSOkaG+MThAxS+GTz5go9YEPy
	UcWH56RMOPvVsTDxd1zBmLoWQOgPzaqN1YhfFIiw6EXYmFUQIP30aPaQthAPwzt/I7LOeMRdrfwL4
	E7KUxf40XHTnnIudBmCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp0SG-00EmWs-TT; Mon, 22 Nov 2021 03:57:20 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp0SD-00EmVo-F2
 for linux-rockchip@lists.infradead.org; Mon, 22 Nov 2021 03:57:19 +0000
Received: by mail-lf1-x12d.google.com with SMTP id bu18so74602896lfb.0
 for <linux-rockchip@lists.infradead.org>; Sun, 21 Nov 2021 19:57:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=YPH+0EiaxzoumZ5BogpFk3ypvqyIvp8gCd3yQ5SMSQs=;
 b=je7U59HM902HnyDDvdrsniCHFenLkHrcZN6VCMpNpziBhBG/b8cf/91XvGLb4dL/Cy
 OjsK4ODk9USfQZBOTBtFBB0qWELL7iRtFYk33udnOjVSx/v9y6hLu6hGL4T2XwF+NOYz
 zA6wqKts1sYYjrtrmTruWJFcxKMtZJWGZW0Hs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=YPH+0EiaxzoumZ5BogpFk3ypvqyIvp8gCd3yQ5SMSQs=;
 b=W+xfPlZbIVVrGn5Wr5HS0qB6wJyOb/WVKNthLaODd91ANDUViKk5K4F9G/5tj1H5xg
 a8GwJHBabOLuVnwA8rV2idXHufxMbVuiW2zbIEV0umC96A8jz/acRYFrclVoaX904tgx
 wd8As2F6r57GeYzWLSNdEqcLUiRYL7Q6T7OusOQtgzgYKBbfPbHGp6QCWiHDi6rn7fj4
 xwfFObsROvz+wAGe2YsYuRan+vb+pKXYgLpqfCQzonIK1zOj5Dzl4dpKDy003JUpC1Oa
 2qSGrfurnLKsE3Nl6szuXq191AUFY7IS/1vj4LCJkDEi96srkk7+0RiOpZapY+B67JCL
 nHBg==
X-Gm-Message-State: AOAM5300NWUDAych8nPA1tqW3zgN7QVTwMvnB3vzl38i2eRqb1UjluRI
 bWVkjGeMOeIj98cPp2z2tEQEcqryNn0Ez73W+Y6d9g==
X-Google-Smtp-Source: ABdhPJzjZY+DcDHCyM4+GAs+uYCYy7Sv0RCNUU5ODlpGRz9jfKtWgMv8J2hf23GvVJ7rYzAPGd6ocKQULp3zp0K7pHk=
X-Received: by 2002:a05:6512:32c9:: with SMTP id
 f9mr51649260lfg.308.1637553434248; 
 Sun, 21 Nov 2021 19:57:14 -0800 (PST)
MIME-Version: 1.0
References: <20211119074654.470729-1-wenst@chromium.org>
 <5d23258a954eb0076cacf89d6c88b5e6ef13695f.camel@ndufresne.ca>
In-Reply-To: <5d23258a954eb0076cacf89d6c88b5e6ef13695f.camel@ndufresne.ca>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 22 Nov 2021 11:57:03 +0800
Message-ID: <CAGXv+5Gf-gsB7JXnLiZF_R=0RdxXS7CDZaFftyZ+aESXLXy1Ew@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: Hook up RK3399 JPEG encoder output
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211121_195717_573180_6AA601E6 
X-CRM114-Status: GOOD (  22.33  )
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

T24gU2F0LCBOb3YgMjAsIDIwMjEgYXQgMTI6MDAgQU0gTmljb2xhcyBEdWZyZXNuZSA8bmljb2xh
c0BuZHVmcmVzbmUuY2E+IHdyb3RlOgo+Cj4gTGUgdmVuZHJlZGkgMTkgbm92ZW1icmUgMjAyMSDD
oCAxNTo0NiArMDgwMCwgQ2hlbi1ZdSBUc2FpIGEgw6ljcml0IDoKPiA+IFRoZSBKUEVHIGVuY29k
ZXIgZm91bmQgaW4gdGhlIEhhbnRybyBIMSBlbmNvZGVyIGJsb2NrIG9ubHkgcHJvZHVjZXMgYQo+
ID4gcmF3IGVudHJvcHktZW5jb2RlZCBzY2FuLiBUaGUgZHJpdmVyIGlzIHJlc3BvbnNpYmxlIGZv
ciBidWlsZGluZyBhIEpQRUcKPiA+IGNvbXBsaWFudCBiaXRzdHJlYW0gYW5kIHBsYWNpbmcgdGhl
IGVudHJvcHktZW5jb2RlZCBzY2FuIGluIGl0LiBSaWdodAo+ID4gbm93IHRoZSBkcml2ZXIgdXNl
cyBhIGJvdW5jZSBidWZmZXIgZm9yIHRoZSBoYXJkd2FyZSB0byBvdXRwdXQgdGhlIHJhdwo+ID4g
c2NhbiB0by4KPiA+Cj4gPiBJbiBjb21taXQgZTc2NWRiYTExZWMyICgiaGFudHJvOiBNb3ZlIGhh
bnRyb19lbmNfYnVmX2ZpbmlzaCB0byBKUEVHCj4gPiBjb2RlY19vcHMuZG9uZSIpLCB0aGUgY29k
ZSB0aGF0IGNvcGllcyB0aGUgcmF3IHNjYW4gZnJvbSB0aGUgYm91bmNlCj4gPiBidWZmZXIgdG8g
dGhlIGNhcHR1cmUgYnVmZmVyIHdhcyBtb3ZlZCwgYnV0IHdhcyBvbmx5IGhvb2tlZCB1cCBmb3Ig
dGhlCj4gPiBIYW50cm8gSDEgKHRoZW4gUkszMjg4KSB2YXJpYW50LiBUaGUgUkszMzk5IHZhcmlh
bnQgd2FzIGJyb2tlbiwKPiA+IHByb2R1Y2luZyBhIEpQRUcgYml0c3RyZWFtIHdpdGhvdXQgdGhl
IHNjYW4sIGFuZCB0aGUgY2FwdHVyZSBidWZmZXIncwo+ID4gLmJ5dGVzdXNlZCBmaWVsZCB1bnNl
dC4KPiA+Cj4gPiBGaXggdGhpcyBieSBkdXBsaWNhdGluZyB0aGUgY29kZSB0aGF0IGlzIGV4ZWN1
dGVkIHdoZW4gdGhlIEpQRUcgZW5jb2Rlcgo+ID4gZmluaXNoZXMgZW5jb2RpbmcgYSBmcmFtZS4g
QXMgdGhlIGVuY29kZWQgbGVuZ3RoIGlzIHJlYWQgYmFjayBmcm9tCj4gPiBoYXJkd2FyZSwgYW5k
IHRoZSB2YXJpYW50cyBoYXZpbmcgZGlmZmVyZW50IHJlZ2lzdGVyIGxheW91dHMsIHRoZQo+ID4g
Y29kZSBpcyBkdXBsaWNhdGVkIHJhdGhlciB0aGFuIHNoYXJlZC4KPiA+Cj4gPiBGaXhlczogZTc2
NWRiYTExZWMyICgiaGFudHJvOiBNb3ZlIGhhbnRyb19lbmNfYnVmX2ZpbmlzaCB0byBKUEVHIGNv
ZGVjX29wcy5kb25lIikKPiA+IFNpZ25lZC1vZmYtYnk6IENoZW4tWXUgVHNhaSA8d2Vuc3RAY2hy
b21pdW0ub3JnPgo+ID4gLS0tCj4gPiBUaGlzIHdhcyBkZXZlbG9wZWQgb24gdGhlIGRvd25zdHJl
YW0gQ2hyb21lT1MgNS4xMCBrZXJuZWwgKHdpdGggYSBoYWNrCj4gPiBmb3IgLmRhdGFfb2Zmc2V0
KSBhbmQgdGVzdGVkIHdpdGggQ2hyb21lT1MncyBqcGVnX2VuY29kZV9hY2NlbGVyYXRvcl91bml0
dGVzdAo+ID4gcGF0Y2hlZCB0byBhY2NlcHQgbm9uLUpGSUYgSlBFRyBzdHJlYW1zIChodHRwczov
L2NycmV2LmNvbS9jLzMyOTE0ODApLgo+ID4KPiA+IFRoaXMgd2FzIHRoZW4gZm9yd2FyZC1wb3J0
ZWQgdG8gbWFpbmxpbmUgKG5hbWUgYW5kIGZpbGVuYW1lIGNoYW5nZXMpIGFuZAo+ID4gY29tcGls
ZSB0ZXN0ZWQgb25seS4KPgo+IFRlc3RlZCB3aXRoIEdTdHJlYW1lciBvbiB0b3Agb2YgNS4xNi1y
YzEgZnJvbSBtZWRpYV9zdGFnZS5naXQuIE5vdCBwZXJmZWN0IGJ1dAo+IGF0IGxlYXN0IHRoZSB0
aGUgb3V0cHV0IGl0IHZhbGlkLiBUZXN0IGNvbW1hbmQgd2FzOgo+Cj4gICBnc3QtbGF1bmNoLTEu
MCB2aWRlb3Rlc3RzcmMgbnVtLWJ1ZmZlcnM9MiAhIHY0bDJqcGVnZW5jICEgZmlsZXNpbmsKPiBs
b2NhdGlvbj10ZXN0LmpwZwo+Cj4gTm90aWNlIHRoYXQgSSBlbmNvZGUgdHdvIGZyYW1lcywgaXQg
c2VlbXMgbGlrZSB0aGUgZHJhaW5pbmcgZmxvdyBpcyBicm9rZW4gaW4KPiB0aGlzIGRyaXZlci4g
R1N0cmVhbWVyIHdpbGwgcXVldWUgdGhlIGZyYW1lIGFuZCBpc3N1ZSBDTURfU1RBUlQgaW1tZWRp
YXRlbHksIHRoZQo+IGRyaXZlciB3aWxsIHNraXAgdGhlIGVuY29kZSwgbGVhdmluZyBtZSB3aXRo
IGFuIGVtcHR5IGZpbGUuCgpUaGUgaGFudHJvIGRyaXZlciBkb2Vzbid0IGltcGxlbWVudCBFTkNf
Q01ELCB3aGljaCBJSVJDIGlzIHVzZWQgZm9yIHRoZQpkcmFpbmluZyBmbG93LiBJIGd1ZXNzIHRo
YXQncyBzb21ldGhpbmcgdG8gZml4LCBzaW5jZSB0aGUgbWVtMm1lbSBzdGF0ZWZ1bAplbmNvZGVy
IHNwZWMgc2VlbXMgdG8gcmVxdWlyZSBpdC4gT3IgZG9lcyB0aGF0IHNwZWMgbm90IGFwcGx5IHRv
IHRoZSBKUEVHCmVuY29kZXJzPwoKPiBUZXN0ZWQtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29s
YXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KClRoYW5rcyEKCkNoZW5ZdQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
