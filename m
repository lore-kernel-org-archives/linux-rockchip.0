Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F05DCC4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 12:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MykAjOHQqXSF1C0eIAkka4mpN0OcFLwBiv4JG25B+4I=; b=TqkrpoIQjrSKUQ
	M+UOEHX6GRvbL6ZPAhaJyRxOMOzXAgBJy/QDvMxdQgeDd/AkYBKT34wVEQceucFbp0bV93qDP1fH4
	ErTlFNsZ1CU5XKLLGWuCB5P8BLCATVLxArQkDOZ4WDY08UQV3uo+5ornB7t4Z8lIRm0WOuUsVsnt2
	Il5ohOwG12KrFl1fL/+6EjSwBoN45YsXBp9Kf1Lti4vwubzhxh1CJAGqTfB003kIvK6I3i5kn5cB+
	cgUW+Gu/v0I96rsVslkM7mOo9FOyhjc7NzqOMbN/ApH14cGeMxppIxfAdvy/no5LPK8tKAQsQiwb3
	Ko4m6vIXiFx1GdtRnmlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzFBI-0000000HMZm-0V5L;
	Tue, 23 Apr 2024 12:23:28 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzFBE-0000000HMWE-1AJp
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Apr 2024 12:23:26 +0000
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-de480576c3cso4836060276.2
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Apr 2024 05:23:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713874997; x=1714479797; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zdEuS8XRlyMWs8i+nahfC/xh1vWX2u7uUNV94NmtyxI=;
        b=qB8vE3qUIxbf6A5nQ7ruJlmHhpmh5BrPY7iQ3Bez7lUxx96IuGzC+yYD/ELFEuMc35
         hf3HbvIVOPFuW1u4fVqUbo8RzlmOS4iPpkkN3bOd04MZzsxRBoWmh1uPCguDEekUWr7M
         4U5bIXfFSrI2FhIClMdTkyAF9c+I3WxkMQbdLLFmq0uq3l7y2hn2mJIPYRNb3Mbph0/D
         qsTfk63BEbuE6JR7yMfOb1f9RI82f416iL+tUvJw3wDnRHWrGI/5V/hsKdkd/GkbnEkQ
         vXRlTdGziy92UIJeH14hiQ+hqNfIdrccI0m0x7IpmYyvSJFLf8epXDIxH7jPdVpMsaS6
         Yfcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713874997; x=1714479797;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zdEuS8XRlyMWs8i+nahfC/xh1vWX2u7uUNV94NmtyxI=;
        b=jSvH+APYlP0tlYemrSFY2HojFQUuF6hWjk/c9yDrDmml+etz9DMifd1Le/3yqvlAWy
         RWQUoYdU0QQF6wnNfZGHmmVKZ5O5aqKSg/gbcAPJtFOZLST5aN9Av+56Vv0CrvpfZp6p
         KukIG7cmpGAwtIvG2LyDnbQz2Po15kRTnCkSpHq962DqoMxLTJU6jjIAqQK7npajV6HN
         mh0zpSQLRXK4nkTANT3ZC6qvvJ9OpugxCb66HmTF5eAaojfCPkXit2fFYcQry+TTHeFb
         ERjD+KU875Qoj9Jyk+x+KocUSeCOkkSNgr/9GUKg50Q5QvpQooy3K46G1qV3yybfuOF7
         f/2w==
X-Forwarded-Encrypted: i=1; AJvYcCVHg3hwYL1k2rxcEhXCAUnVBB6OpTwRru18RVX3YPZeBUKe9Kw1kQkPMa6zGWJJHGPHBeppHe0q0Ks8QyzSqykX0IOn8mMJnY/CmZbeCncn3iDB
X-Gm-Message-State: AOJu0YwbWLXgAEDOkrxZQEOhb/1BxdKEW5KuzvppS3Fh+S3VwsRmKDWM
	TpDix0VywUnFjO6ds2FD0+v2+AQjcK210IW8NVFzttfEDIo/4lkiMAI0etOzXyCqrwSijP4Qoqy
	x6dMEnnFUbkDvEx4a7j2zAypQDdSffvx5i2aq0g==
X-Google-Smtp-Source: AGHT+IFGEmHXL5CwAkBYa70XCoYWKwe8UnjgAcbc2h7iJmpsycDinZVPrwrOVKWCKX5O935DZ/QH6hClp73iSys2pzI=
X-Received: by 2002:a25:8251:0:b0:dc7:4067:9f85 with SMTP id
 d17-20020a258251000000b00dc740679f85mr12766959ybn.58.1713874997608; Tue, 23
 Apr 2024 05:23:17 -0700 (PDT)
MIME-Version: 1.0
References: <20240423040243.448091-1-vignesh.raman@collabora.com>
 <20240423040243.448091-4-vignesh.raman@collabora.com> <e3a0ea8f-d306-488c-a69c-aa18078e5e03@igalia.com>
In-Reply-To: <e3a0ea8f-d306-488c-a69c-aa18078e5e03@igalia.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 23 Apr 2024 15:23:06 +0300
Message-ID: <CAA8EJppaaitcXkXSFTB4-S2CbBcrAVHouB0wWiU5Nw2FvpagqA@mail.gmail.com>
Subject: Re: [PATCH v1 3/4] drm/ci: uprev IGT and generate testlist from build
To: =?UTF-8?B?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>
Cc: Vignesh Raman <vignesh.raman@collabora.com>, dri-devel@lists.freedesktop.org, 
	daniels@collabora.com, helen.koike@collabora.com, airlied@gmail.com, 
	daniel@ffwll.ch, robdclark@gmail.com, david.heidelberg@collabora.com, 
	guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com, 
	linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, amd-gfx@lists.freedesktop.org, 
	linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
	virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_052324_513481_7513F04D 
X-CRM114-Status: GOOD (  15.04  )
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

T24gVHVlLCAyMyBBcHIgMjAyNCBhdCAxMzoyNCwgTWHDrXJhIENhbmFsIDxtY2FuYWxAaWdhbGlh
LmNvbT4gd3JvdGU6Cj4KPiBPbiA0LzIzLzI0IDAxOjAyLCBWaWduZXNoIFJhbWFuIHdyb3RlOgo+
ID4gVXByZXYgSUdUIHRvIHRoZSBsYXRlc3QgdmVyc2lvbiBhbmQgc3RvcCB2ZW5kb3JpbmcgdGhl
Cj4gPiB0ZXN0bGlzdCBpbnRvIHRoZSBrZXJuZWwuIEluc3RlYWQsIHVzZSB0aGUgdGVzdGxpc3Qg
ZnJvbQo+ID4gdGhlIElHVCBidWlsZCB0byBlbnN1cmUgd2UgZG8gbm90IG1pc3MgcmVuYW1lZCBv
ciBuZXdseQo+ID4gYWRkZWQgdGVzdHMuCj4KPiBOaXRwaWNrOiB3b3VsZG4ndCBpdCBiZSBiZXR0
ZXIgdG8gKDEpIHN0b3AgdmVuZG9yaW5nIHRoZQo+IHRlc3RsaXN0IGludG8gdGhlIGtlcm5lbCBp
biBvbmUgcGF0Y2ggYW5kIHRoZW4gKDIpIHVwcmV2Cj4gSUdUIHRvIHRoZSBsYXRlc3QgdmVyc2lv
bj8gSSBmZWVsIHRoYXQgdGhpcyBwYXRjaCBpcyBjaGFuZ2luZwo+IGEgbG90IG9mIGRpZmZlcmVu
dCBzdHVmZi4KCkRlZmluaXRlbHkuIE90aGVyd2lzZSBpdCdzIGhhcmQgdG8gdW5kZXJzdGFuZCB3
aGV0aGVyIGEgY2hhbmdlIHRvCmZhaWxzL2ZsYWtlcyBpcyBjYXVzZWQgYnkgdGhlIHVwcmV2IG9y
IGJ5IHRoZSB0ZXN0bGlzdCBjaGFuZ2UuIEUuZy4gaW4Kc2V2ZXJhbCBjYXNlcyB0aGUgbGlzdCBv
ZiBmYWlsaW5nIHN1YnRlc3RzIHNlZW1zIHRvIGJlIHJlcGxhY2VkIHdpdGgKdGhlIHRlc3QgaXRz
ZWxmLgoKPgo+IEJlc3QgUmVnYXJkcywKPiAtIE1hw61yYQo+Cj4gPgo+ID4gU2tpcCBrbXMgdGVz
dHMgZm9yIHBhbmZyb3N0IGRyaXZlciBzaW5jZSBpdCBpcyBub3QgYSBrbXMKPiA+IGRyaXZlciBh
bmQgc2tpcCBkcml2ZXItc3BlY2lmaWMgdGVzdHMuIFVwZGF0ZSB4ZmFpbHMgd2l0aAo+ID4gdGhl
IGxhdGVzdCB0ZXN0bGlzdC4KPiA+Cj4gPiBJbmNyZWFzZSB0aGUgdGltb291dCBvZiBpOTE1IGpv
YnMgdG8gMmgzMG0gc2luY2Ugc29tZSBqb2JzCj4gPiB0YWtlcyBtb3JlIHRoYW4gMiBob3VycyB0
byBjb21wbGV0ZS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBWaWduZXNoIFJhbWFuIDx2aWduZXNo
LnJhbWFuQGNvbGxhYm9yYS5jb20+Cj4gPiAtLS0KCgotLSAKV2l0aCBiZXN0IHdpc2hlcwpEbWl0
cnkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
