Return-Path: <SRS0=REIB=OY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1FC8EC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Oct 2021 12:06:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E4E7D613A2
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Oct 2021 12:06:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E4E7D613A2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rEbdfjHTJa8dSHAvmmWhWiA5BmQsfzBysUKTQmNExWI=; b=Wh14TQHEOVuhwz
	Tjrk5bqsh6tZVIbnvZ4LMDXyo6XUprbhg2iaoE7W3Ue8I+koCguz2S+KzGWd3y/NvXlC6uXKFOdsp
	7qYx926K1OXI+4m9afxV8a5gl7NK/j3y6BDNvn3mOop0MveqUoLlwjV38xh41/QA9idCjNKdIq3Ju
	EF2jpU7gK8LfaBfcdrbpMMW067gFhmmb/31shE7aMTCpycb/JpfpGZWDZvNGf59unrJyFxnbY4ZcP
	s2YBcnQjOcAGpin2WRyZMpMadPRYcBD1BPO8rgD1InU33GTqElb3ana+UStXPFfQcG3oJcpYGyxiB
	PxGvzag6oYqJAI7E7pmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXMje-006MP3-LS; Mon, 04 Oct 2021 12:06:22 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXMjZ-006MLz-KQ; Mon, 04 Oct 2021 12:06:21 +0000
Received: by mail-pj1-x1031.google.com with SMTP id
 on12-20020a17090b1d0c00b001997c60aa29so7217162pjb.1; 
 Mon, 04 Oct 2021 05:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=WcogweAVLTrIN04rrhEeTekXTpfk+1n7tDhYxqZpBuA=;
 b=mMLpMzzogxwRDIg/wN7qg34fV9mBis7EQLWTl6Gzml4R3nNYBF1ZTVw5hLCvUac/Yb
 q0Ofz5Zu7V9Yh39LuasvwKJZhwYTO4lCDYoEOsnSJkWHbHuzS/5k9BRVNb+CSqLVdYU7
 FSPGzGTQOYvuloxeIgSKZJ9/XF+8whbW3OCgtpt7g+NjsRPM3Fmd7Ewud232klZ9bLsY
 ySJKkvbbbH94zZyXJsHbNreftfqvW+ilbBr49VbPueqy8q9ysp2cE1heI8hrI4SbO/o8
 LH6U5x7Xtzv5WbRJe2uhNiDIDYNBjeBFx5FuO5ZzSHvZLEf0G5C+SWiOCo+ic3D6dqks
 zbkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=WcogweAVLTrIN04rrhEeTekXTpfk+1n7tDhYxqZpBuA=;
 b=PZG9ThF/zcEx1CH63Oa7L/yNj+ZKVXR+dbDm3AZcG4HwNkjBI1r32ALYFvNF7fO/9V
 Ea70MkXko2py7Uf6Rx26706Pq3GXVlym86J6/6EP9TDG+19wgnV+p8hVNbDjCg+DnNQ9
 RSRvRc9li81tVcnd9qdZPwaKu4yqrFXHaUDXsRNBhVOYgmGgM8o+6NeNg4/J4SpGM/Sw
 RkNZyfL1Ljyd13upz3Qb1aag6rTMGDpsl9pKplsX3FSCTeNfIFLBUCvyNNJtUuaE9DvT
 azjBKk9xLai+90syvGjhO9ueLwXR0VrQSE1nIaLJLQdZOmMXyzPN86rvfuEWJq+rdLK3
 NtuA==
X-Gm-Message-State: AOAM5318ahPc5beqkIsYczwnhdUGDRq826k+Tpri7mETDNjDeXGBE4zE
 HGQ5O0okVOuuvkSniyXGz7sH3SKzFzT6uw==
X-Google-Smtp-Source: ABdhPJz1oc5M5VRmTqleIcETJMQ8el0V/OzP/JOb2W60UjMw+YIKbDmOtWgIU5o4Jh3PWjR168vOsw==
X-Received: by 2002:a17:90a:ab90:: with SMTP id
 n16mr29728436pjq.157.1633349175589; 
 Mon, 04 Oct 2021 05:06:15 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id fh3sm15469299pjb.8.2021.10.04.05.06.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Oct 2021 05:06:14 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: Andreas Rammhold <andreas@rammhold.de>
Cc: Jakub Kicinski <kuba@kernel.org>,  Heiko =?utf-8?Q?St=C3=BCbner?=
 <heiko@sntech.de>,
 netdev@vger.kernel.org,  linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,  davem@davemloft.net,
 peppe.cavallaro@st.com,  alexandre.torgue@foss.st.com,  Michael Riesch
 <michael.riesch@wolfvision.net>
Subject: Re: [PATCH] net: stmmac: dwmac-rk: Fix ethernet on rk3399 based
 devices
References: <20210929135049.3426058-1-punitagrawal@gmail.com>
 <12744188.XEzkDOsqEc@diego>
 <20211001160238.4335a83d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20211002213303.bofdao6ar7wvodka@wrt>
 <20211002172056.76c6c2d9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20211003004103.6jdl2v6udxgl5ivx@wrt>
Date: Mon, 04 Oct 2021 21:06:12 +0900
In-Reply-To: <20211003004103.6jdl2v6udxgl5ivx@wrt> (Andreas Rammhold's message
 of "Sun, 3 Oct 2021 02:41:03 +0200")
Message-ID: <87h7dx2dvv.fsf@stealth>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_050617_720257_FD989C99 
X-CRM114-Status: GOOD (  17.37  )
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

QW5kcmVhcyBSYW1taG9sZCA8YW5kcmVhc0ByYW1taG9sZC5kZT4gd3JpdGVzOgoKPiBPbiAxNzoy
MCAwMi4xMC4yMSwgSmFrdWIgS2ljaW5za2kgd3JvdGU6Cj4+IE9uIFNhdCwgMiBPY3QgMjAyMSAy
MzozMzowMyArMDIwMCBBbmRyZWFzIFJhbW1ob2xkIHdyb3RlOgo+PiA+IE9uIDE2OjAyIDAxLjEw
LjIxLCBKYWt1YiBLaWNpbnNraSB3cm90ZToKPj4gPiA+IE9uIFdlZCwgMjkgU2VwIDIwMjEgMjM6
MDI6MzUgKzAyMDAgSGVpa28gU3TDvGJuZXIgd3JvdGU6ICAKPj4gPiA+ID4gT24gYSByazMzOTkt
cHVtYSB3aGljaCBoYXMgdGhlIGRlc2NyaWJlZCBpc3N1ZSwKPj4gPiA+ID4gVGVzdGVkLWJ5OiBI
ZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiAgCj4+ID4gPiAKPj4gPiA+IEFwcGxpZWQs
IHRoYW5rcyEgIAo+PiA+IAo+PiA+IFRoaXMgYWxzbyBmaXhlZCB0aGUgaXNzdWUgb24gYSBSb2Nr
UGk0Lgo+PiA+IAo+PiA+IFdpbGwgYW55IG9mIHlvdSBzdWJtaXQgdGhpcyB0byB0aGUgc3RhYmxl
IGtlcm5lbHMgKGFzIHRoaXMgYnJva2Ugd2l0aGluCj4+ID4gMy4xMyBmb3IgbWUpIG9yIHNoYWxs
IEkgZG8gdGhhdD8KPj4gCj4+IEkgd29uJ3QuIFRoZSBwYXRjaCBzaG91bGQgYmUgaW4gTGludXMn
cyB0cmVlIGluIGFyb3VuZCAxIHdlZWsgLSBhdCB3aGljaAo+PiBwb2ludCBhbnlvbmUgY2FuIHJl
cXVlc3QgdGhlIGJhY2twb3J0Lgo+PiAKPj4gVGhhdCBzYWlkLCBhcyB5b3UgcHJvYmFibHkga25v
dywgNC40IGlzIHRoZSBvbGRlc3QgYWN0aXZlIHN0YWJsZSBicmFuY2gsCj4+IHRoZSBzaGlwIGhh
cyBzYWlsZWQgZm9yIGFueXRoaW5nIDMueC4KPgo+IEkgYW0gc29ycnkuIEkgbWVhbnQgNS4xMy4K
CkFGQUlDVCwgMmQyNmY2ZTM5YWZiICgibmV0OiBzdG1tYWM6IGR3bWFjLXJrOiBmaXggdW5iYWxh
bmNlZApwbV9ydW50aW1lX2VuYWJsZSB3YXJuaW5ncyIpIGlzIG5vdCBpbiA1LjEzIHN0YWJsZS4K
CkVpdGhlciB5b3UncmUgbm90IHVzaW5nIHRoZSBzdGFibGUga2VybmVsIG9yIHRoZXJlJ3MgYW5v
dGhlciBpc3N1ZQpicmVha2luZyB0aGluZ3Mgb24gdGhlIFJvY2tQaTQuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
