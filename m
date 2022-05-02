Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D432C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 May 2022 12:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WbmJaFouv31IEYNh/hXqdgB8j3RsQp1hM2vXKZYGNxs=; b=zQmxerAeHbV7AQ
	+a0V/0JEoIUzk+yGABt+DrMjJMJ7mHx+Oc3tMNqzME0ulRSL7gzhZVq+N06wLHIwN/2ZVn1poKnw5
	40N+0atZ2JhlsbVCZTXwqDyGxD8P1dyP+IJ3Km+TEwbzYCoDAXcY1A8MK314jxlVtMgk/Md+KmkP/
	lO2Jv9Nor+egDsXOEsyhik0wiTWPQsCcuu6hMkgDh9f65TwX6pSlQBEuMbMfqIJ9WWpiXJ/+RUahP
	K2TMFe084oPIZI9O8RmzPhtIAstI1XJ+gmZO2y8ml9RNKxTKSwv88FhV3MedN3wpWc/Psc/fpljlp
	duPLoM4YYQ9/+Pmyz0eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlV34-0016cD-T9; Mon, 02 May 2022 12:21:06 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlV2t-0016XL-GZ
 for linux-rockchip@lists.infradead.org; Mon, 02 May 2022 12:20:57 +0000
Received: by mail-qk1-x735.google.com with SMTP id w3so3371956qkb.3
 for <linux-rockchip@lists.infradead.org>; Mon, 02 May 2022 05:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :content-transfer-encoding:user-agent:mime-version;
 bh=Fw3WDxeowbTLWz6Ru6lKfna8BJhR9uyUJgU4i6Lx6eE=;
 b=qazHzdbUqUY+JBu1L+Ghkx2BTsogAGkFnOfCjITzugw4bwFjFAMpAJeURp89Vky6/U
 Wq7NNkCMaTSrbP+3ogAErVWWIxYFqqYm+Jv9G8bZp4BmrqTTCEAZtyl3a4p+w5DGCTh4
 IECTzPPzm6l92yy6uxNjRJof9h9SyQVIefJ7gKeY0XV3znaycUFYZcOPUsxl2B3GjQl3
 JRvOynsTsnYdth7qlIWJwStg5aqAR1kGQ1O7D3CDlg6qUqjMVlvS/Nb14OCY+OKBrqGN
 RcAXOllGP+KY4GDsFM0yzL9RhybPRIXscxNdnS8zDVAs8qrhmqi+6dCKdsgOC5rEJvVP
 aovQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:content-transfer-encoding:user-agent:mime-version;
 bh=Fw3WDxeowbTLWz6Ru6lKfna8BJhR9uyUJgU4i6Lx6eE=;
 b=p+0lyDL4BVID+xzw+Ce91qKjz47lzeRJJepY4/+L3MrK2nwpPPvvqCwKFezIiVGVBy
 PuQvRQKdAtBTwIO0j2yjRFaG/yK0C+iwbmF2kZvx9EzHZlduD6CnrANBShAnfquv6Hq5
 V40s7a0zCE1rf59bZpCIFAIxpAWIfVM/HLCRiA2LTMuui72ltjmR9450qMD2jk60KMSs
 QTxc3JluTLiDK62IV3aU5Yt3Hy1mE1u78HKsImfpUxi6QYtNt1fL8meNM5kL0D7EQVIW
 MPS8xHGMx93iRPIXwIci0six0jDqAg3+sTlP1CH+LhK3z0i1x60Bqq5ZQ4FJTLsU3Yzx
 7QfA==
X-Gm-Message-State: AOAM531Y6h2oYwIdjKmaFy0oHu6Hn8p4USI1OZFs1UdzuwUi3piLGhNx
 kT1vpu1N4g2VPJxV2ZQbhdNqUA==
X-Google-Smtp-Source: ABdhPJxumv3g/uljydEcUe9WMgnkePrW46ByZPAaB9YOkcVTpD1uHYDXYtz9wtMJ8bQiOeA++8nw2g==
X-Received: by 2002:a05:620a:44c8:b0:69f:e71f:7a02 with SMTP id
 y8-20020a05620a44c800b0069fe71f7a02mr2463437qkp.253.1651494052548; 
 Mon, 02 May 2022 05:20:52 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168]) by smtp.gmail.com with ESMTPSA id
 d188-20020a379bc5000000b0069fc347ef5dsm4060820qke.74.2022.05.02.05.20.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 May 2022 05:20:51 -0700 (PDT)
Message-ID: <0414bb0816eef95961fe47de96f97f925d29228f.camel@ndufresne.ca>
Subject: Re: [PATCH 0/3] Enable JPEG Encoder on RK3566/RK3568
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Michael Grzeschik <mgr@pengutronix.de>, Nicolas Frattaroli
 <frattaroli.nicolas@gmail.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel
 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Peter Geis
 <pgwipeout@gmail.com>, Michael Riesch <michael.riesch@wolfvision.net>,
 Liang Chen <cl@rock-chips.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,  devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev, Kever Yang <kever.yang@rock-chips.com>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Date: Mon, 02 May 2022 08:20:50 -0400
In-Reply-To: <20220429232047.GG7671@pengutronix.de>
References: <20220427224438.335327-1-frattaroli.nicolas@gmail.com>
 <198ce3981ad15844627581f9519cab67ed2a81c1.camel@ndufresne.ca>
 <2438841.KJ31GcehEG@archbook> <20220429232047.GG7671@pengutronix.de>
User-Agent: Evolution 3.44.0 (3.44.0-1.fc36) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_052055_577482_3244EE63 
X-CRM114-Status: GOOD (  15.72  )
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

SGkgTWljaGFlbCwKCkxlIHNhbWVkaSAzMCBhdnJpbCAyMDIyIMOgIDAxOjIwICswMjAwLCBNaWNo
YWVsIEdyemVzY2hpayBhIMOpY3JpdMKgOgo+IFNpbmNlIHRoZSBSSzM1Njggc2VlbXMgdG8gZ2V0
IG1vcmUgYW5kIG1vcmUgb2YgYXR0ZW50aW9uIGF0IHRoZSBtb21lbnQKPiBJIHdvdWxkIGxpa2Ug
dG8gYXNrIGlmIHNvbWVib2R5IGlzIHBsYW5uaW5nIHRvIHdyaXRlIHN1cHBvcnQgdGhlIFJLVkVO
Qwo+IGluIG1haW5saW5lLiBUaGF0IGlzIHRoZSBWRVBVNTQwIGNvcmUgcmVmZXJlZCB0byBpbiB0
aGUgUkszNTY4IFRSTS4KPiAKPiBJIHdvdWxkIHN0YXJ0IHdpdGggdGhhdCBpbiB0aGUgbmV4dCB3
ZWVrcywgdGFraW5nIHRoZSBib290bGluIEgxIHN1cHBvcnQKPiBhcyBhbiByZWZlcmVuY2UgdG8g
aGFuZGxlIHRoZSByZXF1ZXN0X2FwaSBmb3IgdGhlIGVuY29kZXIgcGFydC4gV2hpY2ggaXMKPiBj
dXJyZW50bHkgY29tcGxldGVseSB1bnRvdWNoZWQgaW4gbWFpbmxpbmUgQUZBSUsuCgpJJ20gdmVy
eSBoYXBweSB0byBlYXIgeW91J2QgYmUgaW50ZXJlc3QgaW4gaGVscGluZyB3aXRoIHRoaXMuIEkn
bSBhZGRpbmcgQW5kcnplagppbiBDQywgYXMgaGUgc3RhcnRlZCBzb21lIGJhc2Ugd29yayB1c2lu
ZyBWUDggZW5jb2RlciBvbiBSSzMzOTkgKHNhbWUgSFcgZm91bmQKb24gb3RoZXIgUksgU29DKSB0
byBtYWtlIHRoaXMgcG9zc2libGUuIE5vdGUgdGhhdCB0aGVzZSBhcmUgYSBuZXcgdHlwZSBvZgpl
bmNvZGVycyBhbmQgYSBzcGVjaWZpY2F0aW9uIGlzIG5lZWRlZCB0byBlbnN1cmUgdGhleSBhbGwg
aGF2ZSBhIGNvaGVyZW50IHdvcmstCmZsb3cuIFRoZSBmaXJzdCBzdGVwIHdhcyBvYnZpb3VzbHkg
dG8gaGF2ZSB3b3JraW5nIHByb3RvdHlwZSwgQm9vdGxpbiBzdGFydGVkCndpdGggSDI2NCAoYnV0
IG5ldmVyIHBvc3RlZCBhbnl0aGluZyBvbiB0aGUgbWFpbGluZyBsaXN0KS4gSSdtIHVuZGVyIHRo
ZQppbXByZXNzaW9uIHRoZXkgaGF2ZSBhYmFuZG9uZWQgaXQuIEFuZHJ6ZWogaGF2ZSBkZWNpZGVk
IHRvIHVzZSBWUDggYXMgaXQgaXMKc2ltcGxlci4gVGhlIHByb3RvdHlwZSBzaG91bGQgaGVscCB1
bmRlcnN0YW5kIHRoZSBiYXNpYyBmbG93IG9mIGFuIGVuY29kZXIgYW5kCnByb2R1Y2UgYSBzcGVj
aWZpY2F0aW9uIGZvciB0aGlzLgoKRnJvbSB0aGVyZSwgdGhlICJlYXN5IiBwYXJ0IGlzIHRvIG1h
a2UgcGVyIGNvZGVjIGNvbnRyb2xzLCB0byBjb25maWd1cmUgdGhlCmVuY29kZXIuIERlbW9uc3Ry
YXRpbmcgZml4ZWQgUVAsIHRoaXMgaXMgYWJvdXQgd2VyZSBJIGJlbGlldmUgQm9vdGxpbiBzdG9w
cGVkLgpBbmQgSSBwZXJzb25hbGx5IGJlbGlldmUgc29tZSBPU1MgdXNlcmxhbmQgKG5vdCBqdXN0
IHRlc3RzKSB0aGF0IGNhbiBoYW5kbGUKbXVsdGlwbGUgcmVmZXJlbmNlLCBwZXJoYXBzIG1vcmUg
YWR2YW5jZSBHT1AgcGF0dGVybiBhbmQgc29tZSBiYXNpYyByYXRlIGNvbnRyb2wKd291bGQgaGVs
cCBidWlsZCBjb25maWRlbmNlIGluIHRoZSB1QVBJLiBMZXQgdXMga25vdyBob3cgd2UgY2FuIGhl
bHAsIHdlIHNob3VsZAphdm9pZCBkb2luZyB0aGUgc2FtZSB0aGluZywgYXMgdGhpcyBpcyBhbHJl
YWR5IHF1aXRlIGEgbGFyZ2UgcHJvamVjdCB0aGF0IGNhbgplYXNpbHkgdGFrZSBvdmVyIGEgeWVh
ciB0byBiZWNvbWUgbWFpbmxpbmUgcmVhZHkuCgpyZWdhcmRzLApOaWNvbGFzCgo+IAo+IFJlZ2Fy
ZHMsCj4gTWljaGFlbAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
