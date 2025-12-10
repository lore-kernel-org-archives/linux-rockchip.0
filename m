Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90C81D2CE17
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Dec 2025 06:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gn/5RW74v/ZQQ0hif9d++51E1wgMs9RY7cpx6GEm8HY=; b=pgyNE6AcJWZ13o
	0WJZNPOKEpQDYRYYgQnyur8QLWFB7mOjeoShA4JgWx5lWgPW/8a2ZjyDe4YtD0+J9RblMhqjCfxbF
	92W2iqf9qCOPozfO/NTkxWmPnaTkjDZ+ubFXa1sd2GRuujbjm2sxrDNQsv43JEgIttP1UGNNlpGh1
	FVKtulQrpZEkIOpOHFCIdWZi8TBZDwLXsTAuJsTsF92u+baT6+1Zn97SLV3pWHowxOM/gCdRS02t7
	wZNxu06WRXWxVvsSkxfo8p1wpnz7rNX/RppyqQzHjya6LQe1vwHpuQ2mxSD1cI5SK5+04G26nvvcA
	j58IsrvaYCOAHPK7zfwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTE2H-0000000FBMm-06bk;
	Wed, 10 Dec 2025 06:50:53 +0000
Received: from mail-yx1-xb12a.google.com ([2607:f8b0:4864:20::b12a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTE2E-0000000FBM6-1gaj
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Dec 2025 06:50:51 +0000
Received: by mail-yx1-xb12a.google.com with SMTP id 956f58d0204a3-642fcb38f35so5377060d50.1
        for <linux-rockchip@lists.infradead.org>; Tue, 09 Dec 2025 22:50:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1765349449; x=1765954249; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e6/Xc856dVnZFQ/9F8I90IBNHI2pEc8W4VcGHN3v5jw=;
        b=hsv3hNLqtiMAZt+hQz5ga3CqnWX4eFfk38V1SSAhzqDHHSJzMQSBmNyF/BXKrSFUcE
         KIXG8qOGvw5GJoujlZwgpZKG+/ovCAYC/DdGOSz+f3bO75deuiqPC5DE6sWm8gprLujv
         PGshw8Zz6402eu+Xjiqwea7QHxsJa+pSblKRy/pqa7MdJdQ5VVRLVPH97TSWAanDT0zt
         FNNnoSryJAg0v3P/iNPyF7ORW/waFO3aJGBVJoO+Qf9UjZhBnTaVFeZHk9BLqSi2Hnc3
         kmk71ZEgh2Kr6X9DFZA3C65RG7w0VrrUmudEP5Wl+w7+MMTmWqWK6FLlEsOtCfXicOvo
         AKbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765349449; x=1765954249;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=e6/Xc856dVnZFQ/9F8I90IBNHI2pEc8W4VcGHN3v5jw=;
        b=tSj4DlHS7yfmzP+X/rx7ZywMzM61JY6F1AjGRnT8j1UaPWgmRaGw4LLZBvfrYr4DGf
         cFc8VbwS6dOgKGvFTZEDe2xwdSUMSYzET/UbZwI0LNz9LWopAuPRAFa3NyqzA3u+pYDj
         1mXRk2xBDxLEW7qMDRcu7ZG87tNijo1cBoWGpgDghJT/jXNMhMlBbak38p9eAGV8hYtP
         p/VdhTeH8TZsdL+pgJb3Vzk2WTSzSC4p+bpKdggpQnviVp93gtURTYdmwyYQn0pO7gux
         G0aHoLmypmAQgg7St5M/s/tI6gaf3F4LTnJ6EYcXP80xiDu9sldyErtWDxgIGb+B2zAw
         pTqw==
X-Forwarded-Encrypted: i=1; AJvYcCVsE3nzX6M9bdcs+t1u1sIs7tszR5jnJAjTluoQKUqdQPugbasT/wHeGtWOqD1T957lZT3Z03hDDWZed4obMw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzk7XUuixEkklqleVOTZjlDvsWPnCM/mM8/kXmuI8D+YQDpQrvA
	xO8UrYlyyiDWQ7nconR39Deq8PLBjHOaIj3cgiMZp7My7xBeijJ2loJWlh4Ad0WQbQBxHDoPGwR
	1rDelcf0=
X-Gm-Gg: AY/fxX7i10rR5GICiL8UB7/6ETeMLCKsTgATwa17gfBb5dRylOTUAvSb2K0nAez7LaV
	xEuBMf9iq5SMb+6290ie9Xu/FKL5745UUJmtXdEGsW8LlYOU/V9BYvNoKv+ndvydPC/VMkX/x3D
	nysfUrjXYfZgyAsPkhKwE2YbDz/fKaicoHPTmRUvBxjtrC4Uz8PHp4CB2agq79v1bdukQMq1h+s
	RTYe7ITlk2t+Rvx0HsHa5DsORfF/8xWBGcNPx7DP6eTKuNogvuw/KJNQys9CylUXgtfygqJ1SZc
	SHggNkWBo16yMzTHzBe04oRoQs6rYN5+GZYxiGqp2mJy7tWxtL1HZ0EulqN8LFGE3WGTGDtx1zi
	Dh1iWIaf+NRYcy9rM9B2z/W9KWVFykCkbj00M8CttnnKU+JORcDvgQsyLNejKkVqcjIdD1BUJw5
	i4Wzt3QsOOgjjb+o5CFZx41dyttyeYIhZR+9yq3LM+b13JqWP8MDEGYg==
X-Google-Smtp-Source: AGHT+IHBefmDiclEe0GQCtcbZD6CFEujs+Bai5J61qR7bvku8R9fYFHqIEFLK1uuiThVeIDIaTFo4g==
X-Received: by 2002:a53:d012:0:b0:63f:9fda:e7f7 with SMTP id 956f58d0204a3-6446eb3b86fmr1029845d50.53.1765349449287;
        Tue, 09 Dec 2025 22:50:49 -0800 (PST)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com. [209.85.128.180])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78c3a6d889esm42599067b3.25.2025.12.09.22.50.48
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Dec 2025 22:50:48 -0800 (PST)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-78a712cfbc0so72023467b3.1
        for <linux-rockchip@lists.infradead.org>; Tue, 09 Dec 2025 22:50:48 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUIxnMBRLq/bBUKa24J+QWbm2s4NGnyztBYPe5qISGSbveR/LzT5kMovaaIgthqv+uziiyn2tRNlFLAb1DTlw==@lists.infradead.org
X-Received: by 2002:a05:690c:3508:b0:787:fb60:f021 with SMTP id
 00721157ae682-78c9d706f7emr13066887b3.4.1765349448147; Tue, 09 Dec 2025
 22:50:48 -0800 (PST)
MIME-Version: 1.0
References: <0b20d760-ad4f-41c0-b733-39db10d6cc41@cherry.de>
 <77685900-2c34-49b8-8c7e-14718841ef17@rock-chips.com> <fa82d11f-ce11-4feb-bdb4-c31d360a2a62@rock-chips.com>
 <CAAObsKDYLXVf1GdYUNeaOya+pWD4jTOEf55ouXAL9iM_kWCcMw@mail.gmail.com> <75166475-d6a8-45b8-8092-f31d292d4206@rock-chips.com>
In-Reply-To: <75166475-d6a8-45b8-8092-f31d292d4206@rock-chips.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 10 Dec 2025 07:50:36 +0100
X-Gmail-Original-Message-ID: <CAAObsKABYQnw9rUfxwTS-yiQSoH9rdxZ_ffUBtp2H3tMJqMb7w@mail.gmail.com>
X-Gm-Features: AQt7F2p53s9xIk3APN2FpJ1uFAy8tAWuNCMsBMdjBwpL5IMqSHDOS32N56bYPQY
Message-ID: <CAAObsKABYQnw9rUfxwTS-yiQSoH9rdxZ_ffUBtp2H3tMJqMb7w@mail.gmail.com>
Subject: Re: Issues with DRM_ACCEL_ROCKET (Oops, power-domain, probe-ordering)
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Quentin Schulz <quentin.schulz@cherry.de>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Heiko Stuebner <heiko@sntech.de>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_225050_647249_60CC0D59 
X-CRM114-Status: GOOD (  16.88  )
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

T24gVHVlLCBEZWMgOSwgMjAyNSBhdCAxMDozMeKAr0FNIENoYW95aSBDaGVuIDxjaGFveWkuY2hl
bkByb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiBIZWxsbyBUb21ldSwKPgo+IE9uIDEyLzkvMjAy
NSAyOjU1IFBNLCBUb21ldSBWaXpvc28gd3JvdGU6Cj4gPiBPbiBUdWUsIERlYyAyLCAyMDI1IGF0
IDg6MDDigK9BTSBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+IHdyb3Rl
Ogo+Cj4gWy4uLl0KPgo+ID4KPiA+IFRoaXMgbmVlZCB3YXMgcXVlc3Rpb25lZCBkdXJpbmcgdGhl
IHJldmlldyBwcm9jZXNzLCBhbmQgZHVyaW5nIG15Cj4gPiBzdHJlc3MgdGVzdGluZyBJIGRpZG4n
dCBmaW5kIGEgbmVlZCBmb3IgY29yZSAwIHRvIGJlIHRyZWF0ZWQKPiA+IHNwZWNpYWxseS4gU28g
aXQgd2FzIGNvbnNpZGVyZWQgdW5uZWVkZWQgY29tcGxleGl0eSBhbmQgdGhlIGNvZGUgd2FzCj4g
PiBkcm9wcGVkLgo+ID4KPgo+IE9oLCBJIGp1c3Qgbm90aWNlZCB0aGF0IHRoZSBjb21taXQgY29t
bWVudCBpbiB0aGUgZGV2aWNldHJlZSBzdGlsbAo+IGNvbnRhaW5zIGEgcmVsZXZhbnQgZGVzY3Jp
cHRpb24uCj4KPiA+IE15IHRlc3RpbmcgaW52b2x2ZXMgcnVubmluZyB0aGUgc3VwcG9ydGVkIG1v
ZGVscyBhcyBhIHdob2xlLCBhbmQgYWxzbwo+ID4gdGhlaXIgaW5kaXZpZHVhbCBvcGVyYXRpb25z
IGFzIGluZGl2aWR1YWwgdGVzdHMuIEkgcnVuIHRoZW0gaW4gOAo+ID4gcGFyYWxsZWwgcHJvY2Vz
c2VzLCBpbiBiYXRjaGVzIHNvIHdlIGhhdmUgY29udGludW91cyBicmluZyB1cCBhbmQgZG93bgo+
ID4gb2YgY2xpZW50cy4KPiA+Cj4gPiBJJ20gYSBiaXQgc3VycHJpc2VkIHRoYXQgdGhhdCB0ZXN0
aW5nIHdvcmtlZCBzdGFibHkgYnV0IHdlIGhhdmUgc3RpbGwKPiA+IGZhaWx1cmVzIGluIHNvbWUg
c2V0dXBzLgo+Cj4gQ291bGQgeW91IHBsZWFzZSBkZXNjcmliZSB0aGUgZmFpbHVyZXMgdGhhdCBz
dGlsbCBleGlzdD8gVGhhbmsgeW91LgoKSSB3YXMgcmVmZXJyaW5nIHRvIHRoZSBvbmVzIHRoYXQg
UXVlbnRpbiByZXBvcnRlZCB3aGVuIHN0YXJ0aW5nIHRoaXMgdGhyZWFkLgoKUmVnYXJkcywKClRv
bWV1CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
