Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C67BCCFB43F
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 09:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0hE2fVcGLUED5RSmDuCm1PSdJxEhhFnstvU924JYvSw=; b=qdXmDdDA1b2jwi
	av0SHK86fci1oSvdabLhaa7SuCrLSRJRCVot58NF3qsM6n+GiXws2AMouC8COtr3BIk26BDC50bjN
	3xjja/Zdg7h61SYzq25yaxlMISGbrZPyK90ahHdju4OU0cpTqH5ZK5vCq9axSUevT2bGC5yJhKuVi
	7HpuqMOpM87GyREDQ7Gl+l8fOWWwc9QkIFjpGGgezeGgAITY8TI5f+fH0LKohxO3sKUPsrfcJ7rIP
	/Zp3DaFhtnxz0lMZAqH00Ks1lKs+g44UA6M2JFLLgNc6vecq7i1iarD9OCKiEE1R8S5B6LSlZDHDi
	VH4jIQx0HPbTD/mon5rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxkOY-00000001xhb-3584;
	Mon, 07 Oct 2024 09:51:14 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxkNH-00000001xdR-34ue
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 09:49:56 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-6e2ef9af517so7297547b3.1
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Oct 2024 02:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728294593; x=1728899393; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k8brDWLlZk0dTO8J46y2uPWyWt9rqKJ6ybBhtU5TnAA=;
        b=D/AsuUPA6aR7/kGafyYesgSeAqFNcKH+9yDdLOfHFbDllumnET5u0rIMCF2Kc1QJyn
         93dZLRhfkXaU/HPnc3NnvdP1p5WB3SsVDKiPKaZDE6N9GtCziW9PX2qqRyKqRHzboSeq
         KCPxp9MjjrBbxumcqhRy5exegJH/zxClj2tlFNR6DxxxOQ8pxBihTHheDde4y36Z5bqr
         lD9cNYd9ykXNZBIeFpv9i6f9R34NJ73JwALENw21mx2r0TLtbwk4c7BROotrBbrnuZiG
         WwUvhoXk0C+LGzhtAPzRc5JrSsxAFS7FTnBTmTbxRjzI6m0e08fZu3PArOjPfkEjKn64
         jeWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728294593; x=1728899393;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k8brDWLlZk0dTO8J46y2uPWyWt9rqKJ6ybBhtU5TnAA=;
        b=n7JZSdSSYrLyU1c1JTn/Ui+QAipXcSxrxoEKw7CYcNl2a8gJhUp0v1vulyMKBrNOsX
         IXJ7EAJ1hX92coDnKQ5yKG3Alt1PH36BIP5aoA5ZS3Sefhu6hYPj558C1bXt6iIvhgJ7
         A0FSdsVlwubjmZm3/fyEaJqhpy6Q0EeU6MYhzCqtpYYr69QgyP6bWAIQsa6huF+s+2EU
         wIbj4DFx1SgdPaEUCGD7HWQ1lfkOS+hXC+E7oWkmfa7yFg4Q2AiN0YLVPkPBXewVZxP0
         hbbMPuOQDTVqaczuQ6xNn/V7pATk6gF9CBXRBwYIlTnNDyFm68oYjpjEviR9yrRBaxFY
         r/Ng==
X-Forwarded-Encrypted: i=1; AJvYcCWhE0YoSA/PeinERA4p9eTrAYqtXH2VmL9EKk8Zrg9QQGssQEy6KTgIZ21YSKWxVGCIDFXsdtcJvp5z8Dse8g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxOapd4zGpGEQND/bKzDEe6cXIpb8sJNXlLAKKNajmdoLb4fcLX
	UUv8yQw5dScNJGNIzLTpyV0UmoXP+9Oh6QoWhXMWNeCq+jjze8n0h9J9D8x24uyfskyQ0VmJeC4
	eom6vmzThTJR2IPkLbyq33W1vjK5t6aby0Ewoxw==
X-Google-Smtp-Source: AGHT+IGSGgIFN4afz5XWgt9KmsO3+YZJnn8Ko+Z2HXn7fkNdGM2ZDBjhHypaK+quYOHT6jssiLjEWS446xsZEN9pFLg=
X-Received: by 2002:a05:6902:20c4:b0:e28:6c15:ac6c with SMTP id
 3f1490d57ef6-e289393a731mr7649236276.40.1728294593313; Mon, 07 Oct 2024
 02:49:53 -0700 (PDT)
MIME-Version: 1.0
References: <20240912152538.1.I858c2a0bf83606c8b59ba1ab6944978a398d2ac5@changeid>
 <4920950.GXAFRqVoOG@diego> <CAPDyKFosf_+m9j8YgHa-PsC2SV8+Aou2O6bTbMfzGBpQ2sY8YA@mail.gmail.com>
 <69d06c04-cc8c-4435-a622-33d5dcd1fa24@arm.com>
In-Reply-To: <69d06c04-cc8c-4435-a622-33d5dcd1fa24@arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 7 Oct 2024 11:49:17 +0200
Message-ID: <CAPDyKFoU=AoQqXov_-qFo8xjEbiDAk9mtTtCR9HAYz_gg-bnzQ@mail.gmail.com>
Subject: Re: [PATCH] mmc: dw_mmc: rockchip: Keep controller working for card detect
To: Robin Murphy <robin.murphy@arm.com>
Cc: Kever Yang <kever.yang@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	linux-rockchip@lists.infradead.org, Jaehoon Chung <jh80.chung@samsung.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_024955_778030_4E4DE648 
X-CRM114-Status: GOOD (  23.39  )
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

T24gRnJpLCA0IE9jdCAyMDI0IGF0IDE5OjM0LCBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBh
cm0uY29tPiB3cm90ZToKPgo+IE9uIDAyLzEwLzIwMjQgMTA6NTUgcG0sIFVsZiBIYW5zc29uIHdy
b3RlOgo+ID4gT24gU2F0LCAxNCBTZXB0IDIwMjQgYXQgMTM6NTIsIEhlaWtvIFN0w7xibmVyIDxo
ZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+ID4+Cj4gPj4gQW0gRG9ubmVyc3RhZywgMTIuIFNlcHRl
bWJlciAyMDI0LCAwOToyNjoxNCBDRVNUIHNjaHJpZWIgS2V2ZXIgWWFuZzoKPiA+Pj4gSW4gb3Jk
ZXIgdG8gbWFrZSB0aGUgU0QgY2FyZCBob3RwbHVnIHdvcmtpbmcgd2UgbmVlZCB0aGUgY2FyZCBk
ZXRlY3QKPiA+Pj4gZnVuY3Rpb24gbG9naWMgaW5zaWRlIHRoZSBjb250cm9sbGVyIGFsd2F5cyB3
b3JraW5nLiBUaGUgcnVudGltZSBQTSB3aWxsCj4gPj4+IGdhdGUgdGhlIGNsb2NrIGFuZCB0aGUg
cG93ZXIgZG9tYWluLCB3aGljaCBzdG9wcyBjb250cm9sbGVyIHdvcmtpbmcgd2hlbgo+ID4+PiBu
byBkYXRhIHRyYW5zZmVyIGhhcHBlbi4KPiA+Pj4KPiA+Pj4gU28gbGV0cyBza2lwIGVuYWJsZSBy
dW50aW1lIFBNIHdoZW4gdGhlIGNhcmQgbmVlZHMgdG8gZGV0ZWN0ZWQgYnkgdGhlCj4gPj4+IGNv
bnRyb2xsZXIgYW5kIHRoZSBjYXJkIGlzIHJlbW92YWJsZS4KPiA+Pj4KPiA+Pj4gU2lnbmVkLW9m
Zi1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KPiA+Pgo+ID4+IFNv
IGZvciB0aGUgY2hhbmdlIGl0c2VsZiB0aGlzIGxvb2tzIGdvb2QsIGkuZS4gaXQgZml4ZXMgYW4g
aXNzdWUgZm9yIGJhb3JkcyByZWx5aW5nCj4gPj4gb24gdGhlIG9uLWNoaXAtY2FyZC1kZXRlY3Qu
Cj4gPj4KPiA+Pgo+ID4+IEJ1dCBmb3IgYm9hcmRzIGRvaW5nIHRoYXQsIHRoZSBjb250cm9sbGVy
IHdpbGwgYmUgcnVubmluZyBfYWxsIHRoZSB0aW1lXwo+ID4+IGV2ZW4gaWYgdGhlcmUgaXMgbmV2
ZXIgYW55IGNhcmQgaW5zZXJ0ZWQuCj4gPj4KPiA+PiBTbyByZWx5aW5nIG9uIHRoZSBvbi1zb2Mg
Y2FyZC1kZXRlY3Qgd2lsbCBlZmZlY3RpdmVseSBpbmNyZWFzZSB0aGUgcG93ZXItCj4gPj4gY29u
c3VtcHRpb24gb2YgdGhlIGJvYXJkIC0gZXZlbiBpdCBpdCdsbCBuZXZlciB1c2UgYW55IHNkLWNh
cmQ/Cj4gPgo+ID4gR29vZCBwb2ludCEgQSBiZXR0ZXIgb3B0aW9uIGlzIHRvIHVzZSBhIHBvbGxp
bmcgYmFzZWQgbWVjaGFuaXNtIC0gYW5kCj4gPiB3ZSBoYXZlIE1NQ19DQVBfTkVFRFNfUE9MTCBm
b3IgZXhhY3RseSB0aGF0Lgo+ID4KPiA+IE1vcmVvdmVyLCBvbiBEVCBiYXNlZCBwbGF0Zm9ybXMg
b25lIGNhbiBldmVuIHVzZSB0aGUgImJyb2tlbi1jZCIKPiA+IHByb3BlcnR5IHRvIGluZGljYXRl
IHRoaXMuCj4KPiBFeGNlcHQgdGhhdCBnb2VzIGZ1cnRoZXIgdGhhbiBpcyBuZWVkZWQgaGVyZSwg
c2luY2UgaXQgd291bGQgZmFsbCBiYWNrCj4gZW50aXJlbHkgdG8gc29mdHdhcmUtYmFzZWQgcG9s
bGluZyBmb3IgY2FyZCBwcmVzZW5jZS4gSW4gdGhpcyBjYXNlIHRoZQo+IENEIGZ1bmN0aW9uIGlz
IG5vdCBicm9rZW4gaW4gdGVybXMgb2YgYWN0dWFsbHkgZGV0ZWN0aW5nIGEgY2FyZCwgaXQganVz
dAo+IGRvZXNuJ3Qgd29yayB0byB3YWtlIHRoZSBjb250cm9sbGVyIHVwIGZyb20gc3VzcGVuZCBi
ZWNhdXNlIGl0IGNhbid0Cj4gZmlyZSBpdHMgb3duIGludGVycnVwdCB3aGlsZSBwb3dlcmVkIG9m
Zi4gSW4gcHJpbmNpcGxlIGFsbCB3ZSBzaG91bGQKPiByZXF1aXJlIGhlcmUgaXMgdG8gcGVyaW9k
aWNhbGx5IHJlc3VtZS9zdXNwZW5kIHRoZSBkZXZpY2UsIHRvIHByb3ZpZGUgYQo+IHdpbmRvdyBm
b3IgdGhlIGludGVycnVwdCB0byB3b3JrIGFuZCBub3JtYWwgb3BlcmF0aW9uIHRvIHRha2Ugb3Zl
ciBpZgo+IGFwcHJvcHJpYXRlLgoKV2VsbCwgSSB3b3VsZCBub3Qgb2JqZWN0IGlmICJicm9rZW4t
Y2QiIHdvdWxkIGJlIHVzZWQgZm9yIHRoaXMgY2FzZQp0b28uIEkgYmVsaWV2ZSBpdCBhbHJlYWR5
IGlzLgoKQW5vdGhlciBvcHRpb24gd291bGQgYmUgdG8gbG9vayBhdCBhIGNvbXBhdGlibGUgc3Ry
aW5nIGFuZCBzZXQKTU1DX0NBUF9ORUVEU19QT0xMIGJhc2VkIG9uIHRoYXQuCgo+Cj4gT2YgY291
cnNlIHRoZSByZWFsbHkgY2xldmVyIHdheSB3b3VsZCBiZSBmb3Igc3VzcGVuZCB0byBzd2l0Y2gg
dGhlIHBpbgo+IGludG8gR1BJTyBtb2RlLCBhbmQgc2V0IHRoZSBHUElPIGludGVycnVwdCBhcyBh
IHdha2V1cCB0byB0cmlnZ2VyIHJlc3VtZQo+IGFuZCBzd2l0Y2ggaXQgYmFjayBhZ2FpbiwgYnV0
IHBlcmhhcHMgdGhhdCdzIGEgYml0IHRyaWNreSB3aXRob3V0Cj4gZXhwbGljaXQgcGluY3RybCBz
dGF0ZXMgaW4gdGhlIERUIDovCgpSaWdodC4gQSBkZWRpY2F0ZWQgR1BJTyBwaW4gZm9yIHRoZSBj
YXJkIGRldGVjdCBpcyBjZXJ0YWlubHkgdGhlCnByZWZlcnJlZCBtZXRob2QsIGlmIHlvdSBjYXJl
IGFib3V0IG5vdCB3YXN0aW5nIHBvd2VyLgoKS2luZCByZWdhcmRzClVmZmUKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
