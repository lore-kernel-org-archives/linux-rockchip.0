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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C68BC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 15:21:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2AC7060C41
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 15:21:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2AC7060C41
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8iOS5MjuDHQIqAKUfpVXbc2H75mEgDdF7qfZilZM3U=; b=o9p4hfCQi8xc/x
	7rl09KPm9S9jXnE3deHS9+uFXqTAmFmPwWdLOKYqSyv2QJqAD2v4Cgt2JeXqPhsMpOinmAmtUlL2+
	phf6AmX/0RlaqUu5eR88r/XiHX44sXgkXRS7/XyW0qZt9DJbrvNjNZhrfRJmbFnwoW9wUXB8Ey13J
	J7hZcHa5c4LmjxVEKpoHmaL/JeS6EFSVj76cAFqA6OtCyvN9pmIqmalLXBllEgJHJGr8vhKSUBy8u
	x6mgSyb+thTzAxARHCvbVvdi7AxhYTLLwYT5VWeJxGAZ6G31DZd3ubknV7MSh6cP1EQble1QqbxMf
	SiHYrxvsTKfKRIjyeSaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8lNM-001Gpy-9Q; Wed, 28 Jul 2021 15:21:40 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8lM1-001GEz-Ak; Wed, 28 Jul 2021 15:20:18 +0000
Received: by mail-yb1-xb34.google.com with SMTP id j77so2584952ybj.3;
 Wed, 28 Jul 2021 08:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=C9e4N76VZyEvVhCoJ57+DYxJLCF2oxGdBxIJxV6PGVU=;
 b=CFgFbL44s+UPKBdiA2vhX8GjtA7RaAE2vpOFqAxLycDqjTP64RMRTWR7qrqUNYHiYq
 DL6eaVMJ1jwNsLi6mS7RhBy0UyU4TNoVwTVZ+uvWpCeCGdgTqkXlN9FePkQ0Lh4/aEBF
 JWPCx08mcGnGFnVtt3JIGHWEfBFeTlCRM1taZdRyyb81ehxgy1fJ9bdanexy8PtQgurQ
 1OMusjT7ycl/Eszzk8ah31ZIqsDCKTSzb/MUWN6oNALiYg+n7WU8IWwn1QKs/80qSAvi
 2+TOaMRuVwT+HCX+VDtiRj4Fl3mockQVaNT51tcgE0jFjIliUokh/9z548h1/JFkIOha
 +eMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=C9e4N76VZyEvVhCoJ57+DYxJLCF2oxGdBxIJxV6PGVU=;
 b=AkFRYm2Y7EUqa1Ve+K+ZdDnZyIJtCwuqfiQQp0bAFheEvRoBMxCySkY+Dkn1lJ6MTk
 VHgOyNRP5HR7tjlt/g8iuiMrxwSGONyEAxfoVBXc1yCm394OD5i88iUbB1jgLkit2dtd
 dv0wMIi6lGb8Gj9oimbFYaXFid4CWzRFUOxnr4tuTLt9TOJlRQKLTtF8HZLhxuriHWBh
 0NXsgiyHKQ1euV/fjMv7o3Q18fC8/YUN5wzcsmT8WFU7jdcU09lZ90aFyABT6QD5Lv5u
 J/5l1/ULMLszjknIe3ewLM2wrgkK68QMYtXFzZDwyfxF60rAF18Gnyc+UmZgSTav/nwJ
 nw1A==
X-Gm-Message-State: AOAM531liDRIq9LSt+Vpy0/3MzyvQ3kejJ8Z8H5q/RZLb8cGyWcEulRX
 TjJlenrpMTBrVhqnjMOL7/xfaVfUB4/xwoGLR5g=
X-Google-Smtp-Source: ABdhPJyU3e/C/5c1p9vu84o+w1Z8Xd+bdL5IDbjuLp5JPTUVvRN7Jgosu43o7A0ZYvayBICL1tceMp6z5a5uBGrDI4o=
X-Received: by 2002:a5b:303:: with SMTP id j3mr227992ybp.433.1627485616549;
 Wed, 28 Jul 2021 08:20:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210728122606.697619-1-pgwipeout@gmail.com>
 <20210728122606.697619-4-pgwipeout@gmail.com>
 <3733382.QJadu78ljV@diego>
In-Reply-To: <3733382.QJadu78ljV@diego>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 28 Jul 2021 11:20:03 -0400
Message-ID: <CAMdYzYpcqJHedu=xBBLC60j1wcFQ9zL1R73ahKy33RjUnw2xKA@mail.gmail.com>
Subject: Re: [RFC PATCH 3/9] dt-bindings: usb: generic-ohci: increase maximum
 clocks
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_082017_412058_3C44BE98 
X-CRM114-Status: GOOD (  20.73  )
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

T24gV2VkLCBKdWwgMjgsIDIwMjEgYXQgMTA6NTkgQU0gSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4gd3JvdGU6Cj4KPiBIaSBQZXRlciwKPgo+IEFtIE1pdHR3b2NoLCAyOC4gSnVsaSAy
MDIxLCAxNDoyNjowMCBDRVNUIHNjaHJpZWIgUGV0ZXIgR2VpczoKPiA+IFRoZSByazM1NjggZ2Vu
ZXJpYyBvaGNpIGNvbnRyb2xsZXIgaGFzIGZvdXIgY2xvY2tzLgo+ID4gSW5jcmVhc2UgdGhlIG1h
eGltdW0gY2xvY2tzIGluIHRoZSBkb2N1bWVudGF0aW9uIHRvIGFjY291bnQgZm9yIHRoaXMuCj4g
Pgo+ID4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgR2VpcyA8cGd3aXBlb3V0QGdtYWlsLmNvbT4KPiA+
IC0tLQo+ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvZ2VuZXJpYy1v
aGNpLnlhbWwgfCAyICstCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy91c2IvZ2VuZXJpYy1vaGNpLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvdXNiL2dlbmVyaWMtb2hjaS55YW1sCj4gPiBpbmRleCA1Njk3NzdhNzZjOTAuLjg1
MDk5NmU2ZjQ1MSAxMDA2NDQKPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy91c2IvZ2VuZXJpYy1vaGNpLnlhbWwKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy91c2IvZ2VuZXJpYy1vaGNpLnlhbWwKPiA+IEBAIC01OSw3ICs1OSw3IEBA
IHByb3BlcnRpZXM6Cj4gPgo+ID4gICAgY2xvY2tzOgo+ID4gICAgICBtaW5JdGVtczogMQo+ID4g
LSAgICBtYXhJdGVtczogMwo+ID4gKyAgICBtYXhJdGVtczogNAo+ID4gICAgICBkZXNjcmlwdGlv
bjogfAo+ID4gICAgICAgIEluIGNhc2UgdGhlIFJlbmVzYXMgUi1DYXIgR2VuMyBTb0NzOgo+ID4g
ICAgICAgICAgLSBpZiBhIGhvc3Qgb25seSBjaGFubmVsOiBmaXJzdCBjbG9jayBzaG91bGQgYmUg
aG9zdC4KPiA+Cj4KPiBJbiB0aGUgcGF0Y2ggYWRkaW5nIHRoZSB1c2Igbm9kZXMsIEkgc2VlIHRo
YXQgdGhpcyA0dGggY2xvY2sgcmVmZXJlbmNlcwo+IHRoZSBjbG9jayBnZW5lcmF0ZWQgaW5zaWRl
IHVzYnBoeSBpdHNlbGYuCj4KPiBEb2VzIHRoZSB1c2IgY29udHJvbGxlciBhY3R1YWxseSB1c2Ug
dGhhdCBvciBpcyB0aGlzIGp1c3QgYSB3YXkgdG8KPiBlbmFibGUgdGhlIHVzYnBoeSBjbG9jaywg
d2hpY2ggaW4gdGhhdCBjYXNlIHNob3VsZCBtYXliZSBqdXN0IGhhcHBlbgo+IG9uIHBoeS1wb3dl
ci1vbiBpbiB0aGUgcGh5IGRyaXZlcj8KCkknbGwgY2hlY2sgaWYgaXQgd29ya3Mgd2l0aG91dCBp
dC4KCj4KPgo+IEhlaWtvCj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
