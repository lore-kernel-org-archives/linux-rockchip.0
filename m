Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED441E7718B
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Dec 2024 08:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ptVQmfYqeUPOIiXYMqlAp7b71dHSJsxLknrN+7F9tw=; b=QHLHisqawKXkvj
	JmFEqWQJ4iXVCpa4RruIVEYNLjIGPjODuV6x2Vrz+AOmUOhtL9K7JLIBN82UOkWN1tqOMmi7NM+Je
	MwGMfbHBcrYyPwptYV3nOJEB82v5c454mPjFBtDLdUc7tSiFT2S2OagoI+mtnf6beRIuT5tbCPwCL
	EIpCsKLb0IQ1RXFFE5VrvWtVdlZ3u87puZuUeUBmD+aixKyHCLDDKE0N2PNB4+PCt0ER9oSmbvuTA
	44ubbzPZsFXJpyCLRy1ROj/JLfaZ6PEkK2aitmS2MhIng/YAqAZaP8/7Vx4E8mc3B9L9urmDqDr+v
	guIwTd2mbKM/JZrwIvHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQMon-0000000DUEA-2Br1;
	Wed, 25 Dec 2024 08:32:37 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQMok-0000000DUCP-3gng
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Dec 2024 08:32:36 +0000
Received: by mail-qt1-x82a.google.com with SMTP id d75a77b69052e-467a0a6c9fcso76269241cf.3
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Dec 2024 00:32:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735115553; x=1735720353; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m1nEzKzP9fnaPc+6XguAwC3CAJwIrK5wz/gyjqcVyfA=;
        b=HZJcQOOwNbBZzhNoio2oefgA4NXZE6cRsXERxQkrGZfGZQ04iJujmG2O5gRO6wjv7D
         y/7uM/QWKtK3AB+ztZkWrPnGJ98YyBOIO2QAUbBkk8Y5JRElRWm/wVjq0NBIla1FjkJc
         zJ4Bkp1K1oszDIaC8YTlQcWLsS/B8/VdiBfEani0LNZlygkoLX1vu2fECTgzC7s6o18t
         KsRt/8WQVGsjMN/RG42bzGwGn0eWp8aG9yT9Yj73WWrJrk3vw0U8r4K2jEmcDnJsFMFo
         auSSd5hMDjpc3ynG5xztRZZkUCC3zz5BjMvmyiF2Xy3+wUhvcxp+RYtXlHRt9qQGeT8Z
         DKVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735115553; x=1735720353;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m1nEzKzP9fnaPc+6XguAwC3CAJwIrK5wz/gyjqcVyfA=;
        b=YvkGqLBJjEkCZc+0yP34nMEkphuHKPVJR+WEjOvrPKqImvfM3mA8P/UpyrRWx799hu
         /jkvJy2RuCB31Ciwhu7Jexh8Dw0VATLyP/Mmycy3qywGqEkfZ/kSKQfzvhe++sVrMve1
         A5DXfMPHrRu8nl0Ve8bOALYmlVRmIdRMjK9q+mgcZltftjiBBQcbWP0lLUxVwTyK0o4I
         vF1VM8gwUebKn0WXjBU3i/1GbqR+OMcMPJc+Z9rf5PD5NpDII/UcDE0nY6Rq/Vrx6a6C
         qrcdSG9hm2C1Luj+Bbff5SnU/QVzEh5VGCCmyqfqlXJ7xFO7WoSDzY2uubL5czbKpKFQ
         3a+A==
X-Forwarded-Encrypted: i=1; AJvYcCXeq+Z8KPvF7fGBIEXumPX7wR3hrfLBpdcMYk7cu35bNxmojq2Vj0HKiZeILxcVXVjio0IuLrO4P/vbUUrJSQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5vNOeer7KM4ANpY4cTR3cBkTPWvHcdrkgnsWx3Lle5Fv3W+06
	nSSPxXTpGndalFfVg2EHfpF1/kgLQ3V1jYHW0kqu0FaL28EB8XNnPndA5uWzZ5oEgRCXevr6xeu
	fcW9cCOcy3BVQ4aOeX1M4LXjIvH8=
X-Gm-Gg: ASbGnctC5A5EojyIeXNkRS2iv4AX7ZfcWJPEixKBNtwsflO7HxqXtSRY8q/cUzvmvFr
	muFrOl2CIdHO/vwGYnsF1gX24B2AWSMv0O/Ksec1QPnM4ogw9BF91pQawQjd3gFjp/3fD0Y0=
X-Google-Smtp-Source: AGHT+IEybtIn3hEEhjJmY/GfM4Hfr2cLLyij9gXsk/wv+yCVO3Ezi2W+Ire0e3/x7nHCQJu55UtQ6Qk7xp5EYcK5vNU=
X-Received: by 2002:a05:622a:1a28:b0:46a:3709:6780 with SMTP id
 d75a77b69052e-46a4a8dcbe6mr335774091cf.19.1735115553207; Wed, 25 Dec 2024
 00:32:33 -0800 (PST)
MIME-Version: 1.0
References: <20241224210912.2121-1-naoki@radxa.com>
In-Reply-To: <20241224210912.2121-1-naoki@radxa.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 25 Dec 2024 12:32:30 +0400
Message-ID: <CABjd4YxLnays9Ho0bDR0pTyz5Tjx3C=0U6bcRdQ8ntyu68VVGg@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Add Radxa ROCK 5B+ and rebase
 Radxa ROCK 5B
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, 
	liujianfeng1994@gmail.com, jonas@kwiboo.se, dmt.yashin@gmail.com, 
	sebastian.reichel@collabora.com, tim@feathertop.org, 
	kever.yang@rock-chips.com, marcin.juszkiewicz@linaro.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	michael.riesch@wolfvision.net, macromorgan@hotmail.com, krzk+dt@kernel.org, 
	dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241225_003234_943426_570DC4FE 
X-CRM114-Status: GOOD (  12.65  )
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

SGkgTmFva2ksCgpPbiBXZWQsIERlYyAyNSwgMjAyNCBhdCAxMjoyMuKAr1BNIEZVS0FVTUkgTmFv
a2kgPG5hb2tpQHJhZHhhLmNvbT4gd3JvdGU6Cj4KPiBUaGUgUmFkeGEgUk9DSyA1QisgaXMgYW4g
dXBncmFkZWQgdmVyc2lvbiBvZiB0aGUgUmFkeGEgUk9DSyA1Qi4KPgo+IFRoaXMgcGF0Y2ggc2Vy
aWVzIGludHJvZHVjZXMgYSBzaGFyZWQgLmR0c2kgdGhhdCBjYW4gYmUgdXNlZCBvbiB0aGUKPiBu
ZXcgUmFkeGEgUk9DSyA1QissIHRoZSBleGlzdGluZyBSYWR4YSBST0NLIDVCLCBhbmQgdGhlIHVw
Y29taW5nIFJhZHhhCj4gUk9DSyA1VC4KPgo+IFRoaXMgcGF0Y2ggc2VyaWVzIGluY2x1ZGVzICJh
cm02NDogZHRzOiByb2NrY2hpcDogQWRkIFVTQi1DIHN1cHBvcnQgdG8KPiBST0NLIDVCIiBieSBT
ZWJhc3RpYW4gUmVpY2hlbFsxXS4KPgo+IFsxXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3Jn
L3Byb2plY3QvbGludXgtcm9ja2NoaXAvcGF0Y2gvMjAyNDEyMTAxNjM2MTUuMTIwNTk0LTEtc2Vi
YXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbS8KPgo+IEZVS0FVTUkgTmFva2kgKDMpOgo+ICAg
ZHQtYmluZGluZ3M6IGFybTogcm9ja2NoaXA6IEFkZCBSYWR4YSBST0NLIDVCKwo+ICAgYXJtNjQ6
IGR0czogcm9ja2NoaXA6IEFkZCBSYWR4YSBST0NLIDVCKwo+ICAgYXJtNjQ6IGR0czogcm9ja2No
aXA6IENvbnZlcnQgUmFkeGEgUk9DSyA1QiB0byB1c2Ugc2hhcmVkIC5kdHNpCgpUaGlzIG9uZSBk
b2Vzbid0IGxvb2sgZXF1aXZhbGVudCB0byB0aGUgZXhpc3RpbmcgUk9DSyA1QiBkZXZpY2UgdHJl
ZQphZnRlciB5b3VyIGNoYW5nZXMgKEkndmUgbm90aWNlZCBpbiBwYXJ0aWN1bGFyIHRoYXQgZmFu
IGNvb2xpbmcgbGV2ZWxzCmFyZSBkaWZmZXJlbnQgLSBidXQgdGhhdCdzIGp1c3QgdGhlIHBhcnQg
SSByZW1lbWJlciB3ZWxsIHNpbmNlIEkKbW9kaWZpZWQgaXQgZWFybGllciwgdGhlcmUgbWlnaHQg
YmUgbW9yZSBkaWZmZXJlbmNlcykuCgpXb3VsZCB5b3UgbWluZCByZWFycmFuZ2luZyB0aGUgcGF0
Y2hlcyBzbyB0aGF0IHRoZSBzcGxpdCBvZiBST0NLIDVCCmR0cyBpbnRvIGEgY29tbW9uIC5kdHNp
IGFuZCBwZXItYm9hcmQgLmR0cyBhZGRpdGlvbnMgY291bGQgYmUgbWFkZQpvbmUtdG8tb25lIGVx
dWl2YWxlbnQgd2l0aG91dCBmdW5jdGlvbmFsIGNoYW5nZXMsIGFuZCB0aGVuIGFkZCBST0NLCjVC
KyBhbmQgYW55IG90aGVyIHJlcXVpcmVkIGNoYW5nZXMgb24gdG9wIG9mIHRoYXQ/CgpTZWUgd2hh
dCBEcmFnYW4gZGlkIHdoZXJlIGhlIHByZXBhcmVkIHBhcmVudCAuZHRzaSBmb3IgcGVyLXZhcmlh
bnQgT1BQcyBbMV0KClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC85
ZmZlZGMwZTJjYTdmMTY3ZDlkNzk1YjJhOGY0M2NiOWY1NmE2NTNiLjE3MTc5MjMzMDguZ2l0LmRz
aW1pY0BtYW5qYXJvLm9yZy8KCkJlc3QsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
