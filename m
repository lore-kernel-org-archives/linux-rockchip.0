Return-Path: <SRS0=scLn=JI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0C22C433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 17:58:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6AA7B610A7
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 17:58:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6AA7B610A7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jHDn94iNpKrrK93DsxVOArHAKe1i0htJR1p2v76NxjU=; b=Pi4Ly3CkT7ajVFhlt48dYaAZS
	7BohcKP96/m+Mdc7DHlD2omWBhtb89c/CNyh1rSp8zbO3RfbqMq6qhXT3C5eqLzPDc6y1kGbYrrzH
	kalaTzh7Hq9SR4cJydLmoktVJ+8lnEkzsR6jj2N7WcvepMWpY3ifmcIracx1cvsgArKfDXRCtCTrl
	a8U+2xjUFAyX5leugya9UAlBElq+hE2Ijv95zdnV/wi6qvd0O7n/zZcm/LHcG+B7X/mcLnX1qULrc
	AlkLOhejV9PiGrPIQHCoYBkXmlB1jtu8lc4JZICQagGLbmfoiiqy4N2oH8iHWG2u2did+ms1XfWUw
	ZGeZb1Fag==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVeMG-004sD2-6W; Sun, 11 Apr 2021 17:58:52 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVeMD-004sCi-Kp
 for linux-rockchip@desiato.infradead.org; Sun, 11 Apr 2021 17:58:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-ID:Content-Description;
 bh=3DDCybzO29d1mi7MkAlI+MHdu6EXtztxR3XyGpabuzc=; b=iCbwrd29tIanIV3yOAf0QRGhhE
 m7TklHxDcXxpp1SiAUjBJqr/Lx3zrowDmMxEbg9uT9OWVPb7NmyDPUF4sHcwiOhgh6ffxDy8DTdek
 zNbFR8BbJdaeF1rpEhpec4/FylXYzExa14/Zhvnrqf380IhY9Os47OHgU8wphzklbW1HzNzMZz+V5
 sCtt55uYXb8QpRK7Kc/T0NAxe88wwfDxgBYPDl6EmKaTuJOWo7SSXuYkiCIWZRavjARWRTkljgD8b
 p2+bDZqEgLh/EaAqkqExDkE1CdM550vYZ1At/yf31eBKP4oJPguInwfUfbEvpT7yfBOGy9Y0g1U9b
 Am30lGmQ==;
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVeMA-005d9i-Hl
 for linux-rockchip@lists.infradead.org; Sun, 11 Apr 2021 17:58:48 +0000
Received: by mail-ed1-x52f.google.com with SMTP id x4so12359624edd.2
 for <linux-rockchip@lists.infradead.org>; Sun, 11 Apr 2021 10:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3DDCybzO29d1mi7MkAlI+MHdu6EXtztxR3XyGpabuzc=;
 b=mL+YCbdm07+DijtP+F7faKeS3BIjRlH4rFPiYUjtWiij2e8XZa+28V7EYgOeHtyULl
 ZoC0uq4PAOFwtQyqbTKgrV+qKwtIFRwF5lBJRTLpJVgtfCHKYN5ChkzbGqRBmNzYD+QT
 xcMZ+e+bAvDrMg4CjW41ZbPfTARWgJr3KL94qlo/moGR0k38R+IlYIn3tj68U6jTD+yd
 O+xOiXKIfSbrqpkS60EhpkE4I58xjtfsANhVjEftBQNxt5bRvTQ7iDyuG5Ls9Ma+dTLn
 hn09Vy3E+JalNR06gTlM7lJYTidxd6t62b2PJ8vBtIzjuOh8allFd6LegjDKZA/upzJn
 By6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3DDCybzO29d1mi7MkAlI+MHdu6EXtztxR3XyGpabuzc=;
 b=lpqr0qxm7rKon9gfNe6EbEbyYTjtsZBPZifXcybX3icOZ1mSH7Tt2XKbD589Q6LTwq
 pEBIo1Dz7pM6yxsTg2bGlvIa3JmfQPrPQY7n/0i5ovWLSjY6w5MKt9ScVfLCRsW0Pqpi
 eKV0xQr+cWMQpRQiudBcLPPqiVKmu5d0Lt1PlDYMeh4dsmj9i2Y5AoBlUM+OsnQdlLsk
 dHF9WT5yuPsTEmbPBY2MmU6GdXmlxJ5eQWmoctRMFZyqOz++lyoa79XwpiZInj7SgKnH
 K2LCBReOg7vPSJZzfqG2THQWSXFl39By2CMXROP0lOORWWrbfFymEVcVUJAK0EMwHtSE
 D3eQ==
X-Gm-Message-State: AOAM530EZClLGIqtYv7bL0KpgnyT88doGyQVz+Q+trqJo0scVyYLZuxr
 mxtINM9MWMI3T6O//7WhxF4MN9VGDzWvhTEt+qAFcQ==
X-Google-Smtp-Source: ABdhPJx0wLPSDEzis/809CZGAiecB3Npfoz6bNO1zTPvKX0ti3jySaq8ZHIHK6ywYmJK46uSpOXHAVjkbKVGxIQj3Tk=
X-Received: by 2002:a05:6402:1013:: with SMTP id
 c19mr26186315edu.213.1618163922543; 
 Sun, 11 Apr 2021 10:58:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210411133030.1663936-1-pgwipeout@gmail.com>
 <20210411133030.1663936-4-pgwipeout@gmail.com>
 <5308a59c-29e9-75a4-2c9a-4aeb3d37bf6e@gmail.com> <3591437.LM0AJKV5NW@diego>
In-Reply-To: <3591437.LM0AJKV5NW@diego>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Sun, 11 Apr 2021 14:58:29 -0300
Message-ID: <CAAEAJfDBLfeRVt3=2jcPS05Tm0t5NWeSAV4EX=acPry_L3L1vQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/7] gpio: separate gpio driver from pinctrl-rockchip
 driver
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, Jianqun Xu <jay.xu@rock-chips.com>,
 huangtao@rock-chips.com, 
 kever.yang@rock-chips.com, Linus Walleij <linus.walleij@linaro.org>, 
 Johan Jonker <jbx6244@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_105846_784871_CA752496 
X-CRM114-Status: GOOD (  14.91  )
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

SGkgSm9oYW4sCgpPbiBTdW4sIDExIEFwciAyMDIxIGF0IDE0OjU3LCBIZWlrbyBTdMO8Ym5lciA8
aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPgo+IEhpIEpvaGFuLAo+Cj4gQW0gU29ubnRhZywgMTEu
IEFwcmlsIDIwMjEsIDE5OjUxOjUyIENFU1Qgc2NocmllYiBKb2hhbiBKb25rZXI6Cj4gPiBIaSwK
PiA+Cj4gPiBXaGVuIEkgY2hlY2sgInJvY2tjaGlwLGdwaW8tYmFuayIgd2l0aCBZQU1MIGl0IHR1
cm5zIG91dCB0aGF0Cj4gPiByazMyODgtdmV5cm9uLVhYWCBoYXMgJ2dwaW8tbGluZS1uYW1lcycg
YXMgJ2V4dHJhJyBwcm9wZXJ0eS4KPiA+IEl0IGlzIG5vdCBkZWZpbmVkIGluIHRoZSAicm9ja2No
aXAscGluY3RybC50eHQiIGRvY3VtZW50LCBidXQgaW4KPiA+IH4vLmxvY2FsL2xpYi9weXRob24z
LjUvc2l0ZS1wYWNrYWdlcy9kdHNjaGVtYS9zY2hlbWFzL2dwaW8vZ3Bpby55YW1sCj4gPgo+ID4g
V2hlcmUgaXMgdGhhdCBpbiB1c2U/Cj4gPiBJbiB0aGlzIGRyaXZlciBvciBleHRlcm5hbD8KPiA+
IENhbiBpdCBiZSByZW1vdmVkIGZyb20gbWFpbmxpbmUgZHRzPwo+Cj4gZ3Bpby1saW5lLW5hbWVz
IGdldHMgZGVmaW5lZCBpbiBkZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vZ3Bpby50eHQKPiB3aGlj
aCBpc24ndCBjb252ZXJ0ZWQgdG8geWFtbCB5ZXQ6Cj4KCk9uIHRvcCBvZiB3aGF0IEhlaWtvIHNh
eXMsIGZlZWwgZnJlZSB0byBjb252ZXJ0CkRvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9ncGlvL2dwaW8udHh0IHRvIFlBTUwgOi0pCgpUaGFua3MhCkV6ZXF1aWVsCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
