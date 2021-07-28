Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06B1DC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 15:17:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B6D006023F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 15:17:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B6D006023F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2TeQVZmNu4fA98UiEYmzy5VmfT//AUMsyB+NnfCqkss=; b=q8wj54R2lWTTQr
	eDlVQycTd7KBIvacV/9+1u9I8avnfh5tx9IDKBb9ztWgFAUHLm/T3imNi7x6iTV6Mh+3ZcbO5Tp0M
	AEkE1BYyBSMC6v0BC8O5T486uIu4Z5qTNQfmmVfgEJdu7dLIwx+v+7iwsQQFusVS3LV7+ii1wt59n
	J8Z4v+C60BjIK8C0+VtmfOeuPqtr2aa6/EMgZpC5g/d9Y4pSJUQJ2l8gAhbiZAuG3M0SClM23cq2B
	MkXyRQbQYEygILWY804RIqxnGEz7yEPKQxPZ5RAko/H40NiosY7sw5o7LuA6vbVQ+8hVB0sUZyAAs
	fry4PibKi5ojhITmXHhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8lJE-001FGA-R3; Wed, 28 Jul 2021 15:17:24 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8lIy-001FBz-B5; Wed, 28 Jul 2021 15:17:09 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id a93so4568974ybi.1;
 Wed, 28 Jul 2021 08:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ESrezXcwKkqa6xx20d3Rb22HD68EBnHXQ0zjk4sO7Sk=;
 b=XJZLSfz498/PpYdOyshbjuXRO586ZzyWYWVLc01A2rkLHglPeh5q0WZC1seQeA2hSL
 NC13pCwL7i1Myc6lwlvK/jlZ6EAe6+TAa4rHwXDcwD6w9azITNt6z0qT7IkUeoZTvULk
 PcdnI/Jc7BKmKvS/YieMitzuvDRII0DtmwR39uQjdK1Q3rpn/usFnZbFT+SJYwMvJTOa
 IJP+MTrNs8B/QqjyBYal0hiYq2sxJQJhIcQKxZg/Z4LGRVuiTGpXjAKNfFTjJCjjhTFY
 qDtYyvYCL83aVv+mreQkKUHzv4eZMY96HqAxf6/QSJ8QOfo6vFwRGQpru8QBVlJ83O+m
 xekQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ESrezXcwKkqa6xx20d3Rb22HD68EBnHXQ0zjk4sO7Sk=;
 b=qeYaHW92SEElWYXRrAGw2LHIiDI76IbAdh5eCsQmYSepIaDwfNqpNJOUX9Q7ytVxEd
 SiT+zHY0dxOUpXe6Fb99gnMPrAsl0xg6N41Y8xxHNPnp44fDADETKRIx0oUEdtHeSt8u
 /zYZ8UzCFYRiv7aimdfYqqdENauvv0YuS05U4xnWEYL+W2oYngN8mLVDvKlITx2iKq3k
 YjDSAXe98UEUJFYdnEv7+/9j4kycORn2W7tFk+BKF+Ms4eOa4QFP+qK494u1ibdjM69X
 FizwU55r7QXPrVKkeLcUgDDX3nGfjXgc4OBpM0TM96CZ5a5DviABNdvWrqR1zZJZcKyb
 BBKQ==
X-Gm-Message-State: AOAM533uYAFbXawkFEVC8JoxD5j4qeBrTD8yI2Zapt+7gUbkiMoEuAqd
 S3NbafkpOr4t3Aj1u5R+dBcb75/k7/f1dNoIiiA=
X-Google-Smtp-Source: ABdhPJw66uV4pmVHCu4cBfxtOOl41cuXnbEcQs0rCshQ8A82EetArMTQgWhBjTyHiepjqSDensKvqgi0F2KfvBRwC+g=
X-Received: by 2002:a25:808b:: with SMTP id n11mr272052ybk.141.1627485426763; 
 Wed, 28 Jul 2021 08:17:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210728135534.703028-1-pgwipeout@gmail.com>
 <13247009.uLZWGnKmhe@diego>
 <CAMdYzYqR+ocrXQi8TOHY0Yd2oULXuPgE_QnbcuQSw=BoaumBKA@mail.gmail.com>
 <6063626.MhkbZ0Pkbq@diego>
In-Reply-To: <6063626.MhkbZ0Pkbq@diego>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 28 Jul 2021 11:16:54 -0400
Message-ID: <CAMdYzYqz-i1X2oORi6SjSqi6_KwRcbt2u04+cVxcSonX9gxOew@mail.gmail.com>
Subject: Re: [PATCH 6/9] arm64: dts: rockchip: add missing rk3568 cru phandles
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 devicetree@vger.kernel.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_081708_446781_0EE487ED 
X-CRM114-Status: GOOD (  30.06  )
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

T24gV2VkLCBKdWwgMjgsIDIwMjEgYXQgMTA6NDEgQU0gSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4gd3JvdGU6Cj4KPiBBbSBNaXR0d29jaCwgMjguIEp1bGkgMjAyMSwgMTY6MTg6NDkg
Q0VTVCBzY2hyaWViIFBldGVyIEdlaXM6Cj4gPiBPbiBXZWQsIEp1bCAyOCwgMjAyMSBhdCAxMDow
NiBBTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPiA+ID4KPiA+ID4g
SGkgUGV0ZXIsCj4gPiA+Cj4gPiA+IEFtIE1pdHR3b2NoLCAyOC4gSnVsaSAyMDIxLCAxNTo1NToz
MSBDRVNUIHNjaHJpZWIgUGV0ZXIgR2VpczoKPiA+ID4gPiBUaGUgZ3JmIGFuZCBwbXVncmYgcGhh
bmRsZXMgYXJlIG5lY2Vzc2FyeSBmb3IgdGhlIHBtdWNydSBhbmQgY3J1IHRvCj4gPiA+ID4gbW9k
aWZ5IGNsb2Nrcy4gQWRkIHRoZXNlIHBoYW5kbGVzIHRvIHBlcm1pdCBhZGp1c3RpbmcgdGhlIGNs
b2NrIHJhdGVzCj4gPiA+ID4gYW5kIG11eGVzLgo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1i
eTogUGV0ZXIgR2VpcyA8cGd3aXBlb3V0QGdtYWlsLmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAg
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NnguZHRzaSB8IDMgKysrCj4gPiA+ID4g
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPiA+ID4gPgo+ID4gPiA+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNpIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NnguZHRzaQo+ID4gPiA+IGluZGV4IDA5MDVmYWMwNzI2
YS4uOGJhMDUxNmVlZGQ4IDEwMDY0NAo+ID4gPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTZ4LmR0c2kKPiA+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU2eC5kdHNpCj4gPiA+ID4gQEAgLTIxOCw2ICsyMTgsOCBAQCBncmY6IHN5c2Nv
bkBmZGM2MDAwMCB7Cj4gPiA+ID4gICAgICAgcG11Y3J1OiBjbG9jay1jb250cm9sbGVyQGZkZDAw
MDAwIHsKPiA+ID4gPiAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTY4
LXBtdWNydSI7Cj4gPiA+ID4gICAgICAgICAgICAgICByZWcgPSA8MHgwIDB4ZmRkMDAwMDAgMHgw
IDB4MTAwMD47Cj4gPiA+ID4gKyAgICAgICAgICAgICByb2NrY2hpcCxncmYgPSA8JmdyZj47Cj4g
PiA+ID4gKyAgICAgICAgICAgICByb2NrY2hpcCxwbXVncmYgPSA8JnBtdWdyZj47Cj4gPiA+Cj4g
PiA+IEkgZG9uJ3QgdGhpbmsgdGhlIHBtdWNydSBuZWVkcyBib3RoIGFuZCBpbiBmYWN0IHRoZSBt
YWlubGluZQo+ID4gPiBjbG9jayBkcml2ZXIgc2hvdWxkIGp1c3QgcmVmZXJlbmNlIGl0cyBzcGVj
aWZpYyBncmYgYXQgYWxsLCBpLmUuCj4gPiA+ICAgICAgICAgcG11Y3J1IC0+IHBtdWdyZiAodmlh
IHRoZSByb2NrY2hpcCxncmYgaGFuZGxlKQo+ID4gPiAgICAgICAgIGNydSAtPiBncmYKPiA+ID4K
PiA+ID4gSSd2ZSBub3Qgc2VlbiBhbnl0aGluZyBicmVha2luZyB0aGlzIHNjb3BlIHNvIGZhci4K
PiA+Cj4gPiBJIHRob3VnaHQgdGhlIHNhbWUgdGhpbmcgYXMgd2VsbCwgYnV0IGZvciBzb21lIHJl
YXNvbiB0aGUgZHJpdmVyCj4gPiByZWZ1c2VzIHRvIGFwcGx5IGFzc2lnbmVkLWNsb2NrcyB0byB0
aGUgcGxscyB1bmxlc3MgdGhlc2UgYXJlIGFsbAo+ID4gcHJlc2VudC4KPiA+IElmIHRoZSBkcml2
ZXIgY2FuIGdldCB0aGVzZSBhc3NpZ25tZW50cyBhdXRvbWF0aWNhbGx5IGV2ZW50dWFsbHksCj4g
PiBwZXJoYXBzIGl0J3MgYSBsb2FkaW5nIG9yZGVyIGlzc3VlPwo+ID4KPiA+IFRoaW5raW5nIGFi
b3V0IGl0LCBpdCdzIHByb2JhYmx5IHRoZSBncmYgYW5kIHBtdWdyZiBoYXZlbid0IHByb2JlZAo+
ID4gd2hlbiB0aGUgZHJpdmVyIGlzIGF0dGVtcHRpbmcgdG8gYXNzaWduIHRoZXNlLCBhbmQgdHlp
bmcgdGhlbSB0b2dldGhlcgo+ID4gZm9yY2VzIHRoZSBwcm9iZSB0byBoYXBwZW4gZmlyc3QuCj4K
PiB0aG91Z2ggbm90aGluZyByZWZlcmVuY2VzIHRoZSByZWd1bGFyIGdyZiBmcm9tIHRoZSBwbXVj
cnUgSSB0aGluay4KPgo+IEkuZS4gdGhlIHBtdWNydSBQTEwgcmVhZCB0aGVpciBsb2NrIHN0YXRl
IGZyb20gUkszNTY4X1BNVV9NT0RFX0NPTgo+Cj4gVGhlIHJrMzU2OCByZXVzZXMgdGhlIHBsbF9y
azMzMjgtdHlwZSB3aGljaCBpbiB0dXJuIGlzIGEgbW9kaWZpZWQgcGxsX3JrMzAzNgo+IGFuZCB1
c2VzIHRoZWlyIG9wcy4gV2hpY2ggaW4gdHVybiBtZWFucyB0aGUgcGxsIHNob3VsZG4ndCBhY2Nl
c3MgdGhlIEdSRiBhdAo+IGFsbCwgYXMgaXQgdXNlcyB0aGUgcGxsJ3Mgb3duIHJlZ2lzdGVyIHRv
IGNoZWNrIHRoZSBsb2NrZWQgc3RhdGUuCj4KPiBDYW4geW91IHRyeSB0byBjaGFuZ2UgY2xrLXBs
bC5jIGZyb20KPgo+ICAgICAgICAgc3dpdGNoIChwbGxfdHlwZSkgewo+ICAgICAgICAgY2FzZSBw
bGxfcmszMDM2Ogo+ICAgICAgICAgY2FzZSBwbGxfcmszMzI4Ogo+ICAgICAgICAgICAgICAgICBp
ZiAoIXBsbC0+cmF0ZV90YWJsZSB8fCBJU19FUlIoY3R4LT5ncmYpKQo+ICAgICAgICAgICAgICAg
ICAgICAgICAgIGluaXQub3BzID0gJnJvY2tjaGlwX3JrMzAzNl9wbGxfY2xrX25vcmF0ZV9vcHM7
Cj4gLi4uCj4gdG8KPiAgICAgICAgIHN3aXRjaCAocGxsX3R5cGUpIHsKPiAgICAgICAgIGNhc2Ug
cGxsX3JrMzAzNjoKPiAgICAgICAgIGNhc2UgcGxsX3JrMzMyODoKPiAgICAgICAgICAgICAgICAg
aWYgKCFwbGwtPnJhdGVfdGFibGUpCj4gICAgICAgICAgICAgICAgICAgICAgICAgaW5pdC5vcHMg
PSAmcm9ja2NoaXBfcmszMDM2X3BsbF9jbGtfbm9yYXRlX29wczsKPgo+IHNpbWlsYXIgdG8gcmsz
Mzk5PwoKVGhhbmtzLCBJJ2xsIHRlc3QgdGhpcyEKCj4KPiBIZWlrbwo+Cj4gPiA+ID4gICAgICAg
ICAgICAgICAjY2xvY2stY2VsbHMgPSA8MT47Cj4gPiA+ID4gICAgICAgICAgICAgICAjcmVzZXQt
Y2VsbHMgPSA8MT47Cj4gPiA+ID4gICAgICAgfTsKPiA+ID4gPiBAQCAtMjI1LDYgKzIyNyw3IEBA
IHBtdWNydTogY2xvY2stY29udHJvbGxlckBmZGQwMDAwMCB7Cj4gPiA+ID4gICAgICAgY3J1OiBj
bG9jay1jb250cm9sbGVyQGZkZDIwMDAwIHsKPiA+ID4gPiAgICAgICAgICAgICAgIGNvbXBhdGli
bGUgPSAicm9ja2NoaXAscmszNTY4LWNydSI7Cj4gPiA+ID4gICAgICAgICAgICAgICByZWcgPSA8
MHgwIDB4ZmRkMjAwMDAgMHgwIDB4MTAwMD47Cj4gPiA+ID4gKyAgICAgICAgICAgICByb2NrY2hp
cCxncmYgPSA8JmdyZj47Cj4gPiA+ID4gICAgICAgICAgICAgICAjY2xvY2stY2VsbHMgPSA8MT47
Cj4gPiA+ID4gICAgICAgICAgICAgICAjcmVzZXQtY2VsbHMgPSA8MT47Cj4gPiA+ID4gICAgICAg
fTsKPiA+ID4gPgo+ID4gPgo+ID4gPgo+ID4gPgo+ID4gPgo+ID4KPgo+Cj4KPgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
