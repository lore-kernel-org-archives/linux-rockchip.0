Return-Path: <SRS0=JMM0=ED=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFE46C388F7
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 15:56:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6B6DF247DD
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 15:56:20 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="aXsSGKS8";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TwZ57T8u"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6B6DF247DD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6CLzfM9Z6zxNnQECuJyCA0DsQzEMpHlzsUQuld00Ni4=; b=aXsSGKS8Jny5BuPQALcvFn9FI
	hxAvrQnVBgRVWmiWN42zegP5k0Qa/iRqVGeC7ZFsX+zTco75+8xEy1OhPL2PcOhouPhmD1xf3idRx
	cL+OPkplTvQhRAO3vtbbAeQiYhnUs2UJtKyW775osN+hfSBiYrfbyI1GEHTAZaL3xMqks5Q5cLIdy
	SnCRGNt1lfeP7tjD0UHDVNopIAp03w2bcfHRyQTCG/Tf1yG6RXktUG2p02Q8hCkERNwnR0eDTil7T
	aCJmTMKe/w6PsAXdoFGuFvjHk7jdGdV5H4ug+umIRamQSmz851iKOR4bFZiDVMqzbQ+SsCH1RZBml
	zch6/DikA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kXno7-0005Vg-3c; Wed, 28 Oct 2020 15:56:15 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXno4-0005V4-Pa
 for linux-rockchip@lists.infradead.org; Wed, 28 Oct 2020 15:56:13 +0000
Received: by mail-lf1-x144.google.com with SMTP id b1so8080493lfp.11
 for <linux-rockchip@lists.infradead.org>; Wed, 28 Oct 2020 08:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9BkbuooCI0n768ThkitRHsqLUEbJ24gP+vaNxySeBwg=;
 b=TwZ57T8uWrT4ee/xv/UgV3k0J2vKc/wFx+wAMvRH+1BeKLWw9B+aAvD6EoOb2d09M3
 HLpfUTNR0cl8bGSQqazyzH+h7wm/zmxdppXHPBlWoUyE++5DRLXId4KfPkc2edeAiGnw
 tE5ZN1XAk8u8luHR/85HHYLPttm5czRmV1mLTNr8V9LZIXo4QACn+wAzfNEX8RVeZ6MM
 9wosN8Gp1xgvn0k3XSP271BTNPZ0Q22yYhPoes8+L2RGZh/qPQWqN+tg8UPEGJPoCfQG
 hctS2jJjaaOo5TsSOl7RO99cfz+aBBxX911cwhmNon48DatwDTkBFqAvB1BrCTprdMlN
 jRKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9BkbuooCI0n768ThkitRHsqLUEbJ24gP+vaNxySeBwg=;
 b=j8YPqFYNM5HetzfxH7CdsMn6HYx5NeZESdahElbB72SC5qLkPIyh3Iyy/3wGiog8VA
 duwaFXXGl0/1Qwz7R9EzgcO96dG1/rbeL93Rdlv681aApyCMfo5NN4VxUi/ld5eFbtsH
 7I6BLbf++YSK5v5bAAMDihGE34oG84QHMTWfOBpQ4axlUjv0UPN1Zt8smldxy6UEi+rB
 /dF3Sdat36W5zu2StStzpEXqbHZ0OuaqgELG94GmpAkStwlRqsl/i8ggBrLZUu+D/MoH
 Xi/n4Clos8WGo2jlhNMR17JWN4SaeSKWMG79LcnbpsbwP5zo4ZyO4Y6eyFndUFM8ziwD
 rdVw==
X-Gm-Message-State: AOAM532PhBBYfOjPdIj7ehiZrmJyMNr89q3NeTr5gwv77TC06VTvTCtm
 Aw//JE8qA/jvIcgDzqte41Q89C9yjxDCRai2kzqCTA==
X-Google-Smtp-Source: ABdhPJz+I7dct3hsj2r3Rcpd2lCTcuG+4DjTAN0aWpDxsVhUB5wrskoZwb4MAaRrE7QQ17++h/GygH0kCBzUOuFkYcE=
X-Received: by 2002:ac2:50c1:: with SMTP id h1mr2824880lfm.333.1603900571005; 
 Wed, 28 Oct 2020 08:56:11 -0700 (PDT)
MIME-Version: 1.0
References: <20201013063731.3618-1-jay.xu@rock-chips.com>
 <34840448.7XeAIBGaoL@diego>
 <CACRpkdY8kRVJptQxCQNzbumjj-H+t-atJdguF39stukmiTfYyA@mail.gmail.com>
In-Reply-To: <CACRpkdY8kRVJptQxCQNzbumjj-H+t-atJdguF39stukmiTfYyA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 28 Oct 2020 16:56:00 +0100
Message-ID: <CACRpkdZuptedcF5c7fDY8VQBx5ubr9ROrbuRiCtj9eim0AKVMg@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] rockchip-pinctrl fixes
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201028_115613_107546_CC9E7BAC 
X-CRM114-Status: GOOD (  11.43  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Jianqun Xu <jay.xu@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBPY3QgMjgsIDIwMjAgYXQgNDo1NSBQTSBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxs
ZWlqQGxpbmFyby5vcmc+IHdyb3RlOgo+IE9uIFR1ZSwgT2N0IDEzLCAyMDIwIGF0IDEwOjIyIEFN
IEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+Cj4gPiA+IEppYW5xdW4g
WHUgKDMpOgo+ID4gPiAgIHBpbmN0cmw6IHJvY2tjaGlwOiBtYWtlIGRyaXZlciBiZSB0cmlzdGF0
ZSBtb2R1bGUKPiA+ID4gICBwaW5jdHJsOiByb2NrY2hpcDogZW5hYmxlIGdwaW8gcGNsayBmb3Ig
cm9ja2NoaXBfZ3Bpb190b19pcnEKPiA+ID4gICBwaW5jdHJsOiByb2NrY2hpcDogY3JlYXRlIGly
cSBtYXBwaW5nIGluIGdwaW9fdG9faXJxCj4gPgo+ID4gbG9va3MgZ29vZCB0byBnbyBhcyBmaXhl
cy4KPgo+IEkgcmVjb3JkIHRoYXQgYXMgQWNrZWQtYnkgOikKCkFoYSB0aGV5IGFyZSBhbHJlYWR5
IHJldmlld2VkLWJ5IGluIHRoZSBwYXRjaGVzLiBPSyB0aGVuLApzb3JyeSBmb3IgdGhlIGNvbmZ1
c2lvbi4KCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
