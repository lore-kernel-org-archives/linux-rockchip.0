Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A689C433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 15:00:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E7CD860FDA
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 15:00:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E7CD860FDA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h19hzS2jQw+P+SB5paF1fWIWqyKumsyYgp1+WJvgeow=; b=I9RJNjKirRY6n4gdv+kOm5Ylq
	PQwgF87C8XmIy7tj6YmGXIeLKQ5GMMCJehQ54FciejGqQqlmtnxKQ2jsiPDJUIZ9Km8sNpQzRZX9F
	1IqzZ3fpNS2Xda+myq0JfLbmgq2mn0LesCGbPalm6m3hPOkfDxg011ZD9at/9ctUR8kjW7SDywAXf
	PrIVmrUkLORyF5bD1+QfP3vPtoOVacAt3TENYmd/HI44l9RMj2KFe68fLEewPz13tydE9BnW0/8Gh
	NZuJy0Fw7I88zLrjaZ9eTg4QW0GP5X0cFuYYTETV+HwOEhlIHraBgmnT0f4xNHl1wYvppc/lY3GMm
	Im5RtXPMw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVy3I-0071Ro-Gq; Mon, 12 Apr 2021 15:00:36 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVy3G-0071Rf-C8
 for linux-rockchip@desiato.infradead.org; Mon, 12 Apr 2021 15:00:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-ID:Content-Description;
 bh=v3JYVjiR9jKtJWTD4qDuq5dNX3ZUXCnHfWel/PniC+E=; b=kTofO8WJWysoy4PchZtynRFQxq
 e+zMmDjoIMNvq2qTXWd6cs5MvxuUUqTBeeqFnaTAx+Pkiugk1GSgEb8nlx0ppz9W3sZbhvIoOOP02
 5ijmTPKckC2PH3+t/U1R8DmuUvIEoTdeOBzYEfq8Y7uczyCaYrXA46H0Vewyn7rZcAOrU+WMwLTly
 ccyXpZ6LjyzBCvzJySchnGqBBlSNhlQpdvkt+UG6wiUiMilYyh1KvpHU7XdSa6nIKrbpnPT9fa8ZU
 4AASRJdBm5L6bJUL3OnbUQaPzrJvjnXcym9vUmgxylT1fWnLNwl/yz2j8Bk+4myYSctsUAX7+EhkG
 jHDsbsyA==;
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVy3D-006KL5-Ta
 for linux-rockchip@lists.infradead.org; Mon, 12 Apr 2021 15:00:33 +0000
Received: by mail-qk1-x736.google.com with SMTP id c4so14055298qkg.3
 for <linux-rockchip@lists.infradead.org>; Mon, 12 Apr 2021 08:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=v3JYVjiR9jKtJWTD4qDuq5dNX3ZUXCnHfWel/PniC+E=;
 b=OHigbybxgOy3Whva2GwM//+ZXDCFvHJKIVPZFH8P6d1Fjr5xoMPRS8PfKupK31ybSS
 Aph7ezi1wQ5cR7LC0uuuKRSfP2ISSh53/1Gp13ly99zG2oXt01Fza4prU2bQ4JtA0Cwv
 L+PagGDkzLS4OxWFI+9A2fCuiNIFRLKdqm1D3pb80HY94M9l1w2pe3eaZODblGWZiEvh
 Be7BXNjXrIWq4PdhNkAfWKSB7LXjMthXqLpo/mhMC0mZjwe3ordmdcBh1dagrXOQm+uh
 33njOSrDGNy815H8fws9ZcmKfCj+CRAD02D3dbfLFj5npw892bWr5b5+ys8rk9Q++Umc
 nd2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=v3JYVjiR9jKtJWTD4qDuq5dNX3ZUXCnHfWel/PniC+E=;
 b=MZmhFyEPUjKy3Oi1lqJj/sXAK+agxg3qm022R0nBq49rMQ4lyswxjMyRyNPWWadK08
 ZXXEUU3KG//dFaMXFdfUvsvm4QcX9m8IUaD5/mzNeTjfCR+kK5l39f7J+iPKZmUebMFV
 AkIDioeIomN8RSq5QKY5FUXiPxA0M0TKC2HQBkwbqMOQIP3iD5UJc8yIaQjlcnIMKppL
 rW++qMDcx6DJwfUhAkPBQXqIa+q01u4t34fhxHVTSjFHo9TQPNUrVH6qPBidHOi3Lhqm
 vpV/q8pY5sQKMSPJZKQG8RazU8uSMnrkdDfzggSXmdoX0deoSZRAXKhNurNUX8jlQdYz
 VZqQ==
X-Gm-Message-State: AOAM530eqNSRzbfKfpSVqpkQUGq4UZ1p+DQY+zD0BhLudGvpjIL7FYfq
 JOumWufeFxJhvE6K/WEscw7vnNfBk0Sk8IhPsIU=
X-Google-Smtp-Source: ABdhPJy2/7lrVDwSC8uTtwUP/kGE41NTdnm+JG3cZiyCk4tOCrsXU83sgAVjBBG+qaUts5DLorUWzpiDYWwuBcswQPU=
X-Received: by 2002:a37:8346:: with SMTP id f67mr14706760qkd.94.1618239629721; 
 Mon, 12 Apr 2021 08:00:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210411133030.1663936-1-pgwipeout@gmail.com>
 <CAHp75Ve=1EbJ1qOjnTLKOwvv-UKLfxMHS-UUp=ET0zoJ9fV=ng@mail.gmail.com>
 <2004066.IobQ9Gjlxr@diego>
 <CAHp75VdWES51UPiKayYZ15Mr7pS-Aaz51hKNFmyhbv2JqwPwPA@mail.gmail.com>
In-Reply-To: <CAHp75VdWES51UPiKayYZ15Mr7pS-Aaz51hKNFmyhbv2JqwPwPA@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 12 Apr 2021 11:00:18 -0400
Message-ID: <CAMdYzYrSwLd7zAo840VvQNs48ki1kwS2LdL+N96aVKrmrMRWbw@mail.gmail.com>
Subject: Re: [PATCH v2 0/7] gpio-rockchip driver
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Jianqun Xu <jay.xu@rock-chips.com>, Tao Huang <huangtao@rock-chips.com>, 
 Kever Yang <kever.yang@rock-chips.com>,
 Linus Walleij <linus.walleij@linaro.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_080031_980582_AD580B14 
X-CRM114-Status: GOOD (  17.81  )
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

T24gTW9uLCBBcHIgMTIsIDIwMjEgYXQgOTozNCBBTSBBbmR5IFNoZXZjaGVua28KPGFuZHkuc2hl
dmNoZW5rb0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gTW9uLCBBcHIgMTIsIDIwMjEgYXQgNDoz
MCBQTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPiA+IEFtIE1vbnRh
ZywgMTIuIEFwcmlsIDIwMjEsIDE0OjEzOjM3IENFU1Qgc2NocmllYiBBbmR5IFNoZXZjaGVua286
Cj4gPiA+IE9uIFN1biwgQXByIDExLCAyMDIxIGF0IDQ6MzUgUE0gUGV0ZXIgR2VpcyA8cGd3aXBl
b3V0QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+ID4KPiA+ID4gPiBTZXBhcmF0ZSBncGlvIGRyaXZl
ciBmcm9tIHBpbmN0cmwgZHJpdmVyLCBhbmQgc3VwcG9ydCB2MiBjb250cm9sbGVyLgo+ID4gPiA+
Cj4gPiA+ID4gVGVzdGVkIG9uIHJrMzU2Ni1xdWFydHo2NCBwcm90b3R5cGUgYm9hcmQuCj4gPiA+
Cj4gPiA+IENhbiB5b3UgZ2l2ZSBhIGJpdCBtb3JlIGNvbnRleHQ/Cj4gPiA+IFVzdWFsbHkgc2Vw
YXJhdGlvbiBtZWFucyB0aGF0IGhhcmR3YXJlIGlzIHJlcHJlc2VudGVkIGJ5IHR3byBkaWZmZXJl
bnQKPiA+ID4gSVAgYmxvY2tzIHRoYXQgYXJlIChhbG1vc3QpIGluZGVwZW5kZW50IHRvIGVhY2gg
b3RoZXIuIFdhcyBpdCB0aGUgY2FzZQo+ID4gPiBvbiB0aGUgb3JpZ2luYWwgcGxhdGZvcm1zPyBE
byB5b3UgaGF2ZSBkaWZmZXJlbnQgcGluIGNvbnRyb2xsZXIgKG9yCj4gPiA+IGl0J3MgYWJzZW50
IGNvbXBsZXRlbHkpIG9uIHNvbWUgbmV3IC8gb2xkIHBsYXRmb3JtPwo+ID4KPiA+IFRoZXkgYXJl
IHNlcGFyYXRlIG9uIGFsbCBSb2NrY2hpcCBTb0NzLgo+ID4KPiA+IEkuZS4gdGhlIHBpbmNvbmZp
ZyAobXV4aW5nLCBwdWxscywgZXRjKSBpcyBkb25lIHZpYSBzb21lIHJlZ2lzdGVycyBpbnNpZGUK
PiA+IHRoZSAiR2VuZXJhbCBSZWdpc3RlciBGaWxlcyIgW2FyZWEgZm9yIG1pc2MgcmVnaXN0ZXJz
XQo+ID4gYW5kIGNvbnRyb2wgZm9yIHRoZSBncGlvIGZ1bmN0aW9uYWxpdHkgaXMgZG9uZSBpbiBz
ZXBhcmF0ZSBibG9ja3MKPiA+IGZvciBlYWNoIGJhbmsuCj4gPgo+ID4gTHVtcGluZyB0aGF0IHN0
dWZmIHRvZ2V0aGVyIGludG8gb25lIGRyaXZlciwgd2FzIGEgZGVzaWduLW1pc3Rha2UKPiA+IGZy
b20geW91bmdlci1tZSBiYWNrIGluIDIwMTMgOy0pCj4KPiBUaGFua3MhCj4KPiBUbyB0aGUgc3Vi
bWl0dGVyOiBKdXN0IGZvciB0aGUgZnV0dXJlLCBwbGVhc2UgZWxhYm9yYXRlIHN1Y2ggdGhpbmdz
IGluCj4gdGhlIGNvdmVyIGxldHRlci4KCkFwb2xvZ2llcywgSSBvbmx5IHJlYmFzZWQgdGhlIHdv
cmsgYW5kIHJldXNlZCB0aGUgb3JpZ2luYWwgY292ZXIgbGV0dGVyLgpJJ2xsIGtlZXAgdGhhdCBp
biBtaW5kIGlmIHRoaXMgc29ydCBvZiBzaXR1YXRpb24gYXJpc2VzIGFnYWluLgoKPgo+IC0tCj4g
V2l0aCBCZXN0IFJlZ2FyZHMsCj4gQW5keSBTaGV2Y2hlbmtvCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
