Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F5F2C54735
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 10:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ROX9s0ex16u5u95CcebsboxBnxLJrVcCOZ8vOFbyIz4=; b=m5Cp9+lBMfYFMt
	lzpyQB8Wkj/OtmuaDOCfdOXgfI/AhIZDbv1tuEoDXHs3/5YVu5hnDvnMGMn1w3w7R8BRFEbWYYkaQ
	cHgM5OhCGc+zXrORqqWlhfgVfaNPuO3CamO8M7730yWSMDt94YuKQIVU3ejxrqYNLl9y1opU2usak
	0TxlMMHyQGwFVXT89vAQ6/tLVinG/iqR3ZuTM06eH/mD4B+7SeTFrQ3cJY0/yGiO1d3obTfYxQkRY
	wyMXON2XYndMEYUlVGa+NtXGXZVAS8NtC13ohodx9iAUjmvbd4Pe4F4Lqv5diCPynLMsE68deAXv8
	FcC7n+fxEET1r18GhZ+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitfI-0000000ArEQ-1FJ0;
	Tue, 27 Aug 2024 10:43:08 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitfF-0000000ArCi-0VM8
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Aug 2024 10:43:07 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-533461323cdso6029770e87.2
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Aug 2024 03:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724755383; x=1725360183; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FnLt9/LO6ulBf9zc2mLaP/d0MK1kJN47AXH4YBILWws=;
        b=ZriOTER8yTiid6T8kpQXOBaHF9yrzSbPMVdL4HxDfVh8rsqiqffXI5tM2NpeHtGCUg
         9z2XGvR1gN1HYnNcLO9JiuXnAlarCUHEc50JST6sWSUYwwDWK+64pzRGispsVexT9BQX
         /0POTdQNqhZzLku3+LHQRCjwTb7O3tnCQL++m/xAm5QgX8qg9IoLVMYJaMuNb+1Wgezx
         qAEMGKVUjQ0RZjlXl/3wk6jzTDiNLnFfcYpiT8vLX3W/uYERMZ99zioXoGpWvZEwfBCD
         GIOXTWvqc411s5W13EaH4dAnbXLioeC8H6hgXNtOfNaw38DuT1OcMStuiU9543/Uh41d
         Rw3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724755383; x=1725360183;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FnLt9/LO6ulBf9zc2mLaP/d0MK1kJN47AXH4YBILWws=;
        b=vbGB/k+2/QVlhBpHfVW3Qv/1qDPap0JPnqLbpYuqHDrRgcqXXLDZQ0pF0Q2oyMYgUR
         Crp/6owBBjYpfaV+4sohN5QVannLUk50N7Zc9zP1DB62HhKKtdMHqnC2/35jxrekRW/u
         syT33HZsqA2IvInOYczFEOXfmef+bYpldQEl8bELIcj6yMOuJqZKEgJ6HVUFdaIyOfYY
         a7EJzHqN/jU5qKiOWUbQsdwnzcOeVGpdOIBtPuKy+eSHhPKGiWYxp4zONOLM8MYkz0w0
         856JoNhYYxRp3JBkmAxbDZ0wx4LUCUjoxn4+esDd8O4kruIFpOTQU5xKgg4TDjBz4/W0
         6kNQ==
X-Forwarded-Encrypted: i=1; AJvYcCUE0vyBE0Xel7qZG751Isr4c/ZRs/xasu/rdI2ZUH4Hk5L3XL23SKa+O76rHiKKnrYrkIXPo/eEDQJMtmEtvA==@lists.infradead.org
X-Gm-Message-State: AOJu0YySaqd4ymHUpqm5lrBlE5NFBb9Y9SimTsLmCGjFdO0hgNWm9/0/
	agYxBQ2oz/eXKn2RzC2cV8fCCTWodvOJoaMNzUe2cN5L5OBKT/pj
X-Google-Smtp-Source: AGHT+IHJoowfTo3BzAiixI9BeTSOnN8y5d9t4T6eMG3EDA5EuMLkbA4hvPh9ggnLiyk4qhwofBz60g==
X-Received: by 2002:a05:6512:e9d:b0:533:47ca:974f with SMTP id 2adb3069b0e04-5343883a0e6mr7044377e87.27.1724755382429;
        Tue, 27 Aug 2024 03:43:02 -0700 (PDT)
Received: from smtpclient.apple (89-73-96-21.dynamic.chello.pl. [89.73.96.21])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5334ea36bedsm1744096e87.90.2024.08.27.03.43.01
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Aug 2024 03:43:02 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3776.700.51\))
Subject: Re: [PATCH 0/5] VOP Support for rk3576
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20240827103211.3132728-1-andyshrk@163.com>
Date: Tue, 27 Aug 2024 12:42:49 +0200
Cc: detlev.casanova@collabora.com,
 Heiko Stuebner <heiko@sntech.de>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Sandy Huang <hjc@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 sjoerd@collabora.com,
 Andy Yan <andy.yan@rock-chips.com>
Message-Id: <64099F5F-214F-416B-907A-B1154B911555@gmail.com>
References: <20240827103211.3132728-1-andyshrk@163.com>
To: Andy Yan <andyshrk@163.com>
X-Mailer: Apple Mail (2.3776.700.51)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_034305_166769_A8073E09 
X-CRM114-Status: GOOD (  14.20  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEFuZHkgWWFuIDxhbmR5c2hya0AxNjMuY29t
PiB3IGRuaXUgMjcuMDguMjAyNCwgbyBnb2R6LiAxMjozMjoKPiAKPiBGcm9tOiBBbmR5IFlhbiA8
YW5keS55YW5Acm9jay1jaGlwcy5jb20+Cj4gCj4gCj4gVGhhbmtzIGZvciB0aGUgYmFzaWMgd29y
ayBmcm9tIENvbGxhYm9yYSwgSSBjYW4gYnJpbmd1cCBhIEhETUkKPiBkaXNwbGF5IG91dCBvbiBy
azM1NzYuCj4gCj4gVGhpcyBwYXRjaCBzZXJpZXMgYXJlIHN0aWxsIGluIGEgdmVyeSBlYXJseSBz
dGFnZSwgc29tZSBhcmNoaXRlY3R1cmFsCj4gYWRqdXN0bWVudHMgYW5kIG1vcmUgc2VsZiB0ZXN0
IGFyZSBuZWVkZWQsICBJIHBsYW4gdG8gYWRkIHNvbWUgU09DCj4gc3BlY2lmaWMgY2FsbGJhY2tz
IGluIG5leHQgdmVyc2lvbi4KPiBJJ20gc2VuZGluZyBpdCBvdXQgYXQgdGhpcyBtb21lbnQganVz
dCB3YW50IHRvIGZhY2lsaXRhdGUgc29tZSBwZW9wbGUKPiB3aG8gYXJlIGxvb2tpbmcgZm9yd2Fy
ZCB0byBkb2luZyBlYXJseSB0cnkuCj4gCj4gVGhlIGhkbWkgZGVwZW5kcyBvbiBXSVAgcGF0Y2gg
ZnJvbSBDcmlzdGlhblswXQo+IAoKQW5keSwKCklzIGl0IG1ha2Ugc2Vuc2UgdG8gdXNlIHRoaXMg
c2VyaWVzIGp1c3QgX2FzIGd1aWRlbGluZV8gdG8gYWRkIHZlcnkgYmFzaWMgc3VwcG9ydCBmb3Ig
MzUyOCB2b3AzPwoKQ3VycmVudGx5IHdpdGggMzUyOCBpIGdvdCBzdGF0ZSB3aGVyZSBoZG1pIHBo
eSBkcml2ZXMgY29ycmVjdCBtb2RlIGJ1dCBzY3JlZW4gaXMgYmxhY2sgKGFzIG5vIHZvcDMgY29y
cmVjdCBzdXBwb3J0IHRvIGRyaXZlIHdvcmtpbmcgZHdfaGRtaSkKCklmIHlvdSB3aWxsIGhpbnQg
bWUgd2hhdCBuZWVkcyB0byBiZSBjaGFuZ2VkIGluIHlvdXJzIDM1NzYgdm9wMiBzZXJpZXMgdG8g
Z2V0IGJhc2ljIHZvcDMgd29ya2luZyAtIGkgY2FuIHBsYXkgd2l0aCB0aGlzIG9uIG15IHR3byAz
NTI4IGRldmljZXPigKYuCih3ZSBjYW4gc2tpcCBhbGwgZmFuY3kgdm9wMyBmZWF0dXJlczsgaXQg
d2lsbCBiZSBlaG91Z2ggdG8gc2VlIHByb21wdCArIGJhc2ljIGNvb3BlcmF0aW9uIHdpdGggMzUy
OCBtYWxpIGdwdSkKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
