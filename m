Return-Path: <SRS0=esWy=OW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69891C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Oct 2021 21:33:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ED06B6162E
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Oct 2021 21:33:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org ED06B6162E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rammhold.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YU9rGS2fQZiZlho7dTDKzXxgMkS4HISO7B26ZWTpZA4=; b=k2Rl6BD/5CtsKa
	PysswkHpOU54ZTKOaicRzCNxREgMJVDqkpFY9tuqRJR89uimfik2CuhGb5HJeRNroKvirCMfUFqRW
	ZikESv/b6H+wkQub04e8DYLfyJ6FLNbsLUaDfHUWGzAbUolEmXLIp5ts9h8gCsKcYLG5pK79scjyg
	cLa3AXMyXaTo4Q8y5Jm9A/gh0/9/4aj9yzZ9M0KM6e/BJoR14FXpZ6MhnmQ9hEKzNKBSxBdv9Cykg
	LSyTUvqhCbSxMuab7eU8erqbVDvKU9FQRLdNbJJPeX3RekG/2CfBY8KOsgadNDzotsmxHxUkVaRgq
	R81Oh6uCdVMIzKJi+BPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWmdH-002ms5-Dw; Sat, 02 Oct 2021 21:33:23 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWmd3-002mqq-SU
 for linux-rockchip@lists.infradead.org; Sat, 02 Oct 2021 21:33:12 +0000
Received: by mail-wm1-x32d.google.com with SMTP id p21so139194wmq.1
 for <linux-rockchip@lists.infradead.org>; Sat, 02 Oct 2021 14:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rammhold-de.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=F8UDpjnQBldDuJU6rmGvahmZPDxt2kePCnSKQd7HXG4=;
 b=mO6R2I6M03AiFu8in1neOBOyhQC4wruqS8jIb65NFHgVyDhLfLEGsWSRSEMdg8Lxf+
 w1HsRqLxbRFSVT+NDYnQ9Xz4WYTD+ZhVraUIRhb1CdMc55vaUK/zyYHEis2XBY/DB7e0
 DHYprqwdAXeL6K/qKRDC/a9t/reNtRCUCxe8EiofTTJ53GVCRio+sH4/E5FlumZrM2v+
 HP3DNTEZSfIzNWZ9Yq/nbKq8xGm3tWhbhHQIxXvkYVJ+/DXoowuhHDxWLHfduLdfapMx
 5/EURzEBLVRUlsAv8629USZEncKnVb0VBcfrZh/tXqb+x/UCSVgX+XW100m2F6gOzfU4
 gwlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=F8UDpjnQBldDuJU6rmGvahmZPDxt2kePCnSKQd7HXG4=;
 b=USxZEL9zfclLayYEWiGP7Vk+5IU9gGhnShfZLs1JxDXyNpeoRdo0CedQUXg/a+IPfh
 18uM9Vcbalk3sOagvFBSb+071f6/Q+/7xCjfmcFqaWa42VdVOhNYMEeOw5A2qz1/UI1y
 uy2HrVBFedQakC/kzK/qJu42cNC7s+xM30oLAUnFnXrD9KSZwdMNX5MWz03QDmRyenh3
 3ofUCvgNGnzEiJHKzpMrCHTIBFOmkjLBTc09jtUdRqDf2E3csWsXpwiyOTmwo+0APzLa
 5HV9zUdap6BAcgr0G07eFOooBKj2yJB35UsQE3/YvEhLGx/bcRELL5xmmlcY/e3mZ2Nw
 VMag==
X-Gm-Message-State: AOAM533SE5nveZXlY36ZwTWCt157B+hwkEdoYal1uSVeWz+KY6xNCS/4
 RTPwzG6Xc2gzWp8gT/J6xOdNTg==
X-Google-Smtp-Source: ABdhPJzJ8VTihT1Ur7aTqVIXTAXPkfuDMOgeW55F8CPfPRDayvZ86vq/Z0sKuqHwd3ApU5byeI4PDg==
X-Received: by 2002:a05:600c:358d:: with SMTP id
 p13mr10979016wmq.71.1633210387458; 
 Sat, 02 Oct 2021 14:33:07 -0700 (PDT)
Received: from localhost ([2a00:e67:5c9:a:5621:d377:9a16:5c6c])
 by smtp.gmail.com with ESMTPSA id d8sm2449356wrz.84.2021.10.02.14.33.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Oct 2021 14:33:06 -0700 (PDT)
Date: Sat, 2 Oct 2021 23:33:03 +0200
From: Andreas Rammhold <andreas@rammhold.de>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 netdev@vger.kernel.org, Punit Agrawal <punitagrawal@gmail.com>,
 linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, davem@davemloft.net,
 peppe.cavallaro@st.com, alexandre.torgue@foss.st.com,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH] net: stmmac: dwmac-rk: Fix ethernet on rk3399 based
 devices
Message-ID: <20211002213303.bofdao6ar7wvodka@wrt>
References: <20210929135049.3426058-1-punitagrawal@gmail.com>
 <12744188.XEzkDOsqEc@diego>
 <20211001160238.4335a83d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211001160238.4335a83d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211002_143310_021746_CBC9A1EA 
X-CRM114-Status: GOOD (  15.14  )
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

T24gMTY6MDIgMDEuMTAuMjEsIEpha3ViIEtpY2luc2tpIHdyb3RlOgo+IE9uIFdlZCwgMjkgU2Vw
IDIwMjEgMjM6MDI6MzUgKzAyMDAgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gPiBBbSBNaXR0d29j
aCwgMjkuIFNlcHRlbWJlciAyMDIxLCAxNTo1MDo0OSBDRVNUIHNjaHJpZWIgUHVuaXQgQWdyYXdh
bDoKPiA+ID4gQ29tbWl0IDJkMjZmNmUzOWFmYiAoIm5ldDogc3RtbWFjOiBkd21hYy1yazogZml4
IHVuYmFsYW5jZWQgcG1fcnVudGltZV9lbmFibGUgd2FybmluZ3MiKQo+ID4gPiB3aGlsZSBnZXR0
aW5nIHJpZCBvZiBhIHJ1bnRpbWUgUE0gd2FybmluZyBlbmRlZCB1cCBicmVha2luZyBldGhlcm5l
dAo+ID4gPiBvbiByazMzOTkgYmFzZWQgZGV2aWNlcy4gQnkgZHJvcHBpbmcgYW4gZXh0cmEgcmVm
ZXJlbmNlIHRvIHRoZSBkZXZpY2UsCj4gPiA+IHRoZSBjb21taXQgZW5kcyB1cCBlbmFibGluZyBz
dXNwZW5kIC8gcmVzdW1lIG9mIHRoZSBldGhlcm5ldCBkZXZpY2UgLQo+ID4gPiB3aGljaCBhcHBl
YXJzIHRvIGJlIGJyb2tlbi4KPiA+ID4gCj4gPiA+IFdoaWxlIHRoZSBpc3N1ZSB3aXRoIHJ1bnRp
bWUgcG0gaXMgYmVpbmcgaW52ZXN0aWdhdGVkLCBwYXJ0aWFsbHkKPiA+ID4gcmV2ZXJ0IGNvbW1p
dCAyZDI2ZjZlMzlhZmIgdG8gcmVzdG9yZSB0aGUgbmV0d29yayBvbiByazMzOTkuCj4gPiA+IAo+
ID4gPiBGaXhlczogMmQyNmY2ZTM5YWZiICgibmV0OiBzdG1tYWM6IGR3bWFjLXJrOiBmaXggdW5i
YWxhbmNlZCBwbV9ydW50aW1lX2VuYWJsZSB3YXJuaW5ncyIpCj4gPiA+IFN1Z2dlc3RlZC1ieTog
SGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiA+ID4gU2lnbmVkLW9mZi1ieTogUHVu
aXQgQWdyYXdhbCA8cHVuaXRhZ3Jhd2FsQGdtYWlsLmNvbT4KPiA+ID4gQ2M6IE1pY2hhZWwgUmll
c2NoIDxtaWNoYWVsLnJpZXNjaEB3b2xmdmlzaW9uLm5ldD4gIAo+ID4gCj4gPiBPbiBhIHJrMzM5
OS1wdW1hIHdoaWNoIGhhcyB0aGUgZGVzY3JpYmVkIGlzc3VlLAo+ID4gVGVzdGVkLWJ5OiBIZWlr
byBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+IAo+IEFwcGxpZWQsIHRoYW5rcyEKClRoaXMg
YWxzbyBmaXhlZCB0aGUgaXNzdWUgb24gYSBSb2NrUGk0LgoKV2lsbCBhbnkgb2YgeW91IHN1Ym1p
dCB0aGlzIHRvIHRoZSBzdGFibGUga2VybmVscyAoYXMgdGhpcyBicm9rZSB3aXRoaW4KMy4xMyBm
b3IgbWUpIG9yIHNoYWxsIEkgZG8gdGhhdD8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
