Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28B52C44512
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jul 2026 00:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CWcrOjIS/ICgw1e9ZMuLuJ2Yvk1JOYiOw+jKNclf6d8=; b=Awm6dv9xxQhsx1
	1qxxjoDMNN57oy42SififsBFxIRHJij+7YsE1PdTlxcXTb5J1Kto4+WT2PKxb0Cv+gheXi4bB/XrW
	/7th7YCHfFa9rXsisIAr4CKUKMt24m5JXAqREpyaf2bpF5jfrl456nFV8OxQJbjxXK4R0Ti9R5An7
	QRD2fQBLjkPARezQbNPpW7knNh7OdzdGRmS+fBMbCEgFChhr1DzF/Iw11nctqK1mxrsMJT5FR1IVr
	f//RYmMq9K9s1s5S6WqdPr2FZfilxPZP66y+IdkAw/3leP9jtilPdePfcHnjQSuNyOc65l8rXUH5H
	qCxPn0+UGMLvNTX0HptQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkWWR-00000000qWK-0Z4J;
	Fri, 17 Jul 2026 00:33:47 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkWWP-00000000qVZ-01Qx
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Jul 2026 00:33:46 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-38e071ed6aeso3905934a91.0
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jul 2026 17:33:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784248424; cv=none;
        d=google.com; s=arc-20260327;
        b=jSnNqNQkUi1sWzy460HWXPKW8cSgnoxGV4GaWCiOSDf4MfdL/98QziOhYCMn0sPrYd
         ITYHDiBK9xTCjMeYUP3CzCKFD72cOs8zAX8Xb+1Cbp6V9c12Aw2OL7hQHFCuo1AcjBzI
         TA8YzJBTFaQ8EEsAP+M65LttsjCtyRI6sXU7xQYVurPO++nkNNgPvot3U4aKzKL2CL1R
         FHXSVs+aOiCysk/D6Bs3lPlFTwzgjeTfPGwIljAjdV4tAQQSHKkTSFlllWd5sSV5pvAV
         tmEO21N7Y4+KLsNlFtz8XdQx1p/EZjDaQ3FJYIF748S1QmgIktOHkAiTOe1Po0CxfpXJ
         Rd/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=GYt/lHq8fxyWDC5MQiFoHKcGrExGcWIv14OV+CbVOn8=;
        fh=kUvt+IL26P/Vn89oeP7R5W7IMdW/YP7pAt3sKuBfksM=;
        b=Dnnw9eqiAVODCCpTLGic7891v3S1OitDiuUbUZyk50xBoETCir9mvwjkP3myHhV846
         bKnFLcLpRXkHwtTayvjC+g5nmhP3Nxie+XEA5sHAk6su/36N5TNinxBMnyaArjJsGqkJ
         Qalx/h6Zt2CBj9qkwnY07xtQ6Hy6GtLLMHlCt/RLyWAMYq1ih0urMvxtsTqE7KvnNBSD
         95xd+kiUhofKbMd9qkPtodSiGBsyPTC++8XU8uiPvHbQNqSp1HIfGa1120KEDcuPgIIo
         p6THOnFoWpsP6rp5yEfAjnqgQa5ehrHVuGda/yy/FMb3rPXXRERHAgJswr+3p/7TUEjQ
         Wuog==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784248424; x=1784853224; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=GYt/lHq8fxyWDC5MQiFoHKcGrExGcWIv14OV+CbVOn8=;
        b=MYdRr7wgMiTGyR9s4i8unJNqUmJ1eNDdcY/CqtSq8kZFGBLnVpEauKpATq260kDagx
         /jtG+olm1Ep0Sh4I+AE6/FU4UXGn9mSuQwc3AZBGjUGFhjwo9s9gPzOeDzyXen7zURng
         UB6AF6J9FQqbFwMBs3pDwBvaTi5DaFtfqHNcLYaVBkdvhcxN4pW1I4zxei+zMGjp2C1H
         PmMYODVm2pe+srn/qrXU7P6sIsrFmgA/H35XeJljPbgHefL43iPEDf1Xa4n+cTzULCtZ
         FIBz4rGy02eHZnWxsjwtp/wDU9twCr83ypJvrzXxapihsaCo/6irNxPkG2pkWjk/bwBt
         uFJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784248424; x=1784853224;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GYt/lHq8fxyWDC5MQiFoHKcGrExGcWIv14OV+CbVOn8=;
        b=RVd1wjcKp4MLmxqxqSVd7IgTKTyCZksONeJexu8Z1zGSDGuwHVLE7ZqqyAM4OtGLE3
         aqe8SA1rqLTeKG8565nI2XB6JuLAiBQiwiyEXI4UQs4R93dhrDyg82sYLneDBieOO36C
         3/VgZqcp0zie4pvIvpz249HZ18G3goHaeCNdeW3TOOM2Zru5spPhnS1kYZ/oXV4KuL8I
         d8v3KWtHrjLHM1MeqE2FHJfLHfggWPOJE52Ubib6GGOncOY5FELVlmM6DM2HMKJbzu0F
         b3IMoongT92oMlv8IDSCRKhcdmcrPbSIfNzHk5xIOmzmudtvdkEalEgxUhVTTwxsghYO
         zbRw==
X-Gm-Message-State: AOJu0Yw6lhMWKIR1bzD3aJUa/P6hA8u1liv0s+gWYjGrfRNScOhXNAbz
	2y2oLjZKZJkEyhFtUN/4qeEP7CCMBCEvU68EwWoKTSo3ywCIS21EAsEzWtk6T3Zswufd6ZOZtCi
	qvntpaSGuR2lZ4WKzB0WZiGmc3Yc07IVPgEVt
X-Gm-Gg: AfdE7clFn1eCibV8D5vKhEFWlKLEel+1J77iAdhaDkR9HVWd2AuqCym0tPeSzcZo6eP
	0kzSuWsAkRIM19+jt4e53ZM1x4er6S/BY6AQbVhdCMPsbpPwF7BG91WRInQLkrX9XB21ff01s9f
	nCPYiFYCsCKUGAB/2rxmwQTSWNcGeQ0ezhiZCvUEdP6wYtFQ0YDTp1DFdGoIoHd38/9p8el0f/I
	yd1oS4XbDxOMz3mUATxb7xScHARTu3Vn54m3v8bkOjBbsYu2zi729bXvcvw3w==
X-Received: by 2002:a17:90b:2b4f:b0:38d:e28e:a625 with SMTP id
 98e67ed59e1d1-38e4b476e3amr294443a91.16.1784248423668; Thu, 16 Jul 2026
 17:33:43 -0700 (PDT)
MIME-Version: 1.0
References: <CANf5e8YTxDsMdqOd02ht4J2qUU8rTV6pC3L36J6XC5pOAOpHRw@mail.gmail.com>
 <613614f5-30d7-443a-954c-31685044f6c2@rock-chips.com>
In-Reply-To: <613614f5-30d7-443a-954c-31685044f6c2@rock-chips.com>
From: Dave Jones <s.dave.jones@gmail.com>
Date: Fri, 17 Jul 2026 08:33:31 +0800
X-Gm-Features: AUfX_mwO2gfjcUYGDid8HPi8dMUYxfeS99qmyIbZJP1QcM6ClboZC__hSJD5SAI
Message-ID: <CANf5e8YEZnrbDgxNEtzM7bScZCvi=C9Ezn0E2Gbi9g=_hn2d0w@mail.gmail.com>
Subject: Re: eDP support for RK3568
To: Damon Ding <damon.ding@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_173345_049006_E40156D9 
X-CRM114-Status: GOOD (  15.59  )
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

T24gVGh1LCBKdWwgMTYsIDIwMjYgYXQgOToyOeKAr0FNIERhbW9uIERpbmcgd3JvdGU6Cj4KPiBI
aSBEYXZlLAo+Cj4gT24gNy8xMi8yMDI2IDEyOjIxIEFNLCBEYXZlIEpvbmVzIHdyb3RlOgo+ID4g
SGksCj4gPgo+ID4gQXMgZmFyIGFzIEkga25vdywgdGhlIG1haW5saW5lIGtlcm5lbCBjdXJyZW50
bHkgc3VwcG9ydHMgZURQIG9uIHRoZQo+ID4gUkszNTg4IGFuZCBSSzM1NzYsIGJ1dCBub3Qgb24g
dGhlIFJLMzU2OC4KPiA+Cj4gPiBIYXMgYW55b25lIGFkZGVkIGVEUCBzdXBwb3J0IGZvciB0aGUg
UkszNTY4IHlldD8KPiA+Cj4KPiBBcyBvZiBub3csIG1haW5saW5lIGtlcm5lbCBkb2VzIG5vdCB5
ZXQgaGF2ZSBlRFAgc3VwcG9ydCBmb3IgUkszNTY4Lgo+Cj4gSW1wbGVtZW50aW5nIGVEUCBzdXBw
b3J0IGZvciB0aGlzIHBsYXRmb3JtIHVwc3RyZWFtIGlzIG9uZSBvZiBteQo+IG5lYXItdGVybSBw
bGFucywgYW5kIEkgd2lsbCB3b3JrIG9uIHRoZSByZWxldmFudCBwYXRjaGVzIHdoZW4gdGltZSBw
ZXJtaXRzLgoKVGhhdCdzIGdyZWF0LCBnbGFkIHRvIGhlYXIgdGhlIG5ld3MuIElmIHRoZXJlIGFy
ZSBhbnkgcGF0Y2hlcyB0aGF0IG5lZWQKdGVzdGluZywgSSdkIGJlIGhhcHB5IHRvIGhlbHAuIFRo
YW5rcy4KCj4gQmVzdCByZWdhcmRzLAo+IERhbW9uCgpSZWdhcmRzLApEYXZlCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
