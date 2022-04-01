Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 998E1C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 12:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jWf7ZmQcI2kWxTlHSBGFwRbtZ65MVpHk1Ynkc9sEODw=; b=A7cZYnZFbLiCV6
	aoO1aQGJjajn7S86aBFKEZLehslwmE+3LoPT1fntz2fxTaGVdgbyZU4pUmArkUZusuKzhZHuyPQiS
	rWaRweaSQ1XJ4h0dkaNJka4aSPD6AJy3kGwWwgjzTghQA/6lU2e4WwneDY0aRwkMnCuwujc8q9oVc
	Cr73hH+S5XjNzfNo/wUVC4YkTnQ8fa2U0vD4iMinIkEEj4CEU4chosB0Y2WlKZJSxXzA7qDOrR86D
	Et7bHbVDHa30D/uSOQvkMW59xTGTS/gBeN/NeBzSJPikxNce9VgcfgHRuhEJQg4qso69G3MSsGeGy
	kJIb43LusMSztE/B1cFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naGmL-005fuJ-Lk; Fri, 01 Apr 2022 12:53:25 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naGmI-005fsz-PS; Fri, 01 Apr 2022 12:53:24 +0000
Received: by mail-lf1-x12c.google.com with SMTP id z12so4713072lfu.10;
 Fri, 01 Apr 2022 05:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=7nu5zI475wsuUxFB5uZqvOK31lUir62pBykPLjKXqpI=;
 b=mj/3g8GlwDJCedc6wEtcCOnv47S61n05MWOrLh2ietECkVriG7pgqIAqHb2gIjIlXw
 QRsRdNtAYPIGLdL7AmFylNZcMJUEgMM1GRH8D3BUQOZkDwjwD86sEVLbBVdx/HOkl6px
 wDkWD8qVlZyztGSAm7EeQBH9Uz/LRtf78qslUKOBiAUsH7BQjoJyxZ3GqOt17cjmvSyZ
 7YKRXwPtA0S+/YQX9QiWG+H2qMPv9bo1Q3mx72W4qxSqqY6pK2LLQWv7dLA3fh/LLG4J
 LTk7Oyh/T+/cWwQiW5VFHfmTMMKLJ+hbQa5g/MFL7pM2/mNv+f08pkDq6UWG20Ad9yJ1
 c9PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=7nu5zI475wsuUxFB5uZqvOK31lUir62pBykPLjKXqpI=;
 b=6uTu1PqxNjyx1QRjDWtuuVNm259F+dRei/P/jwa2R6AVQ+F6HhhMMUp436BeCfrfgZ
 U9xKdojiwBoZ5vPUvgBwYrDaOnM6FboEXnq3ay1JgUiLCw9aV762I9XBECj2mK+Xu8Kr
 zzEjASSjj+2TAYlrQ4Vtf+mO3WKGG1TNGW3Xmq8H+B47bNrN0karVNktUkjqeE8pymOw
 Bd0gGjq3lexPGuDsNIWB3LsXBE4Q5y6lmFYL2ew9fj8fVslm4qST7gWaZXHfemktGegB
 WkW8lizoftfd06jisg0fg+0n2VvKrqGv4IDFg/Sd7rj/wD1HKPzLjVE1ybBjMgoTS7ew
 f7Rg==
X-Gm-Message-State: AOAM530LvyREcxEN7NpsxKoUbzywe+RoizzY/FNCA6WdbArziYG+WLxp
 UoHtRZxcYTaXkSw6naTnidM=
X-Google-Smtp-Source: ABdhPJyA0lnGdyc1WpOVKGgPfRRkLN0vtE7+nk/JTferqMtqYbGrezl06U1FZ0zZ7T9LODJS3umrzw==
X-Received: by 2002:a05:6512:2214:b0:44a:348a:d6d with SMTP id
 h20-20020a056512221400b0044a348a0d6dmr13815105lfu.506.1648817600032; 
 Fri, 01 Apr 2022 05:53:20 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 a14-20020a05651c010e00b0024ae3080370sm26447ljb.88.2022.04.01.05.53.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 01 Apr 2022 05:53:19 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <041d7795-fdec-8e7d-a9ee-aa79c0faa6f3@rock-chips.com>
Date: Fri, 1 Apr 2022 14:53:16 +0200
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Message-Id: <5FFECDDD-711F-4D50-97A2-D8213B154245@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
 <20220330094556.GZ12181@pengutronix.de>
 <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
 <20220330102046.GA12181@pengutronix.de>
 <60601619-EF07-457B-91F2-64FEB598FEBE@gmail.com>
 <20220330192054.GA4012@pengutronix.de>
 <af8445e0-f4af-721b-709e-2eb7c488a8a4@rock-chips.com>
 <B7CD9D55-9F2D-42F4-9D04-17C6A5FEBB08@gmail.com>
 <622c8786-2c3f-13ff-66b7-ad9c8cb9425e@rock-chips.com>
 <041d7795-fdec-8e7d-a9ee-aa79c0faa6f3@rock-chips.com>
To: Andy Yan <andy.yan@rock-chips.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_055322_880525_66174163 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNo
aXBzLmNvbT4gdyBkbml1IDAxLjA0LjIwMjIsIG8gZ29kei4gMTQ6MDQ6Cj4gCj4gSGkgUGlvdHI6
Cj4gCj4gT24gNC8xLzIyIDA5OjUyLCBBbmR5IFlhbiB3cm90ZToKPiAKPiBQbHMgdXBkYXRlIHRo
ZSBuZXcgdm9wMl9kdW1wLnNoIHNjcmlwdHMgZnJvbSBnaXRodWIuIFRoZQo+IAo+IHByZXZpb3Vz
IHNjcmlwdHMgSSBnYXZlIHlvdSBoYXMgc29tZSBidWcuIHNvcnJ5Lgo+IAoKQW5keSwKClN1cmUu
IG5wLgpQbHMgZmluZCBkdW1wIHdpdGggY3VycmVudCB2b3AyX2R1bXAuc2gKaHR0cHM6Ly9wYXN0
ZWJpbi5jb20vQ3dWajBrdVgKCmJ0dzogdGhpcyBpcyB3aXRoIGxhdGVzdCBwYXRjaCBmcm9tIFNh
c2NoYToKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtYXJtLWtlcm5lbC8yMDIyMDMzMDA3
MjgyMi5HWDEyMTgxQHBlbmd1dHJvbml4LmRlLwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
