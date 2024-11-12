Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05DE5D597A4
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Nov 2024 21:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FYkI+dUJq2VxHEZ+Q4TSn4Oa3bvoCKcjCdG3K0yQCaU=; b=z742/9XS7L1opa
	VNHHRjQCUPsrtvJ72/gyVuda1iwMQE+nzqV6XB9jkWwqYDbca5XPwz4VEHaOVRZV+whsStHSV6T+l
	44tPWFQQdZz56v3YWa0BxQqguVxZlCld9sQf1ByPKQT8qjzvvuQ/zNNzUo6ku4WdBt5RHTzp3Egy7
	f5TxsMXhSgVuF+E1Q5YPGgimeI/hqxH0qUoJ1aFcXrDznvBTykgeC7FTcwGECDZdzs1JdwfFpi6CJ
	m95kfeO3fdx+xzt9wqX8yloKDWJj3aAPxkSoETVkwuIzmgv2gy5QFw6oq3csI+z4sdqoaL8wMxNNC
	y8cVWab9V4WSRh1qkAfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAy66-00000004xPw-1p4l;
	Tue, 12 Nov 2024 21:06:50 +0000
Received: from mail-pf1-f176.google.com ([209.85.210.176])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAy4I-00000004x9P-0rKS;
	Tue, 12 Nov 2024 21:04:59 +0000
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-720d14c8dbfso5879721b3a.0;
        Tue, 12 Nov 2024 13:04:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731445496; x=1732050296;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/CvDHNQkFyG+LMIK7/fleVlgZZt4uzRHNtjY9nOElHs=;
        b=OwTApPvR26O+8Q8g2hJhgrDyXm63WUIjhRraX+iehKt76n3WWujoU9XxHrUW1Ft2K0
         XC64/e7Wsui+u0dCOPzKtYMg6ITi790Kg7wBFp3aMRr5DeC5TtPe0/PPaAC90fiwCD0d
         rjGyz/DFexBzxckBS5pLxrbdPFmhWf1Z6CywBiV23bPFxgvc4wHOC1Xhpkl+f7g0h3A3
         LTphR7lEId7XdYpJgkw0ydAk4arXR6OBZ+noY51rrbSu6r9bCzJe91l0DpZYeGZhUhRh
         9NUnhCF/MRt9y7PONPsQb8zZveI1/2joskws0svD7FUqNFZGyj9OrmGtBb5p2l9L1Rwt
         g9hA==
X-Forwarded-Encrypted: i=1; AJvYcCU4kFgNnzd+atWfJG51cyl48oiYnzvWRt2TIgimQvf1q6muMoYlimgtx7IvrnIms+caZdhJHLice9+2N/7bN/+j@lists.infradead.org, AJvYcCX1u5pqd/WZcTy4739P8bxHtELnEhNOddDFuP0SUPphQ84IAdtMjSQOGP0e12QtrzBSf6ZuwT9XR0GicWLYFPw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyReteWU5mNLqgd9I2Ooi//Bpw9Z3nH9qQCqj+q5w07VMYatEdE
	2rCQr/SsHRQfH9b+r6OzcfQUAffMZf8xv6Y3aQMHSy9T9UbXAi4Aw5cYXPYr
X-Google-Smtp-Source: AGHT+IFOuU/TQlMio4yVrADj0Xo6GL6esFiLgxG17xv4+8pItPCYSkpLx245g8m7kGunK3GyRHnLPg==
X-Received: by 2002:a05:6a00:22c6:b0:71e:67e7:1a4c with SMTP id d2e1a72fcca58-724579bced5mr795729b3a.12.1731445495024;
        Tue, 12 Nov 2024 13:04:55 -0800 (PST)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com. [209.85.214.172])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72407a18d8csm12139132b3a.149.2024.11.12.13.04.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2024 13:04:54 -0800 (PST)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-20e576dbc42so65537295ad.0;
        Tue, 12 Nov 2024 13:04:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVVJTfP458cxd7mcaTilfYkPBKukUbHNJHhIXZiU1iDFnDdS38Au+BERWwRqNkv4K4ZSPx79CFh6FqffX3zcuB1@lists.infradead.org, AJvYcCWqxyAS8jlqbR6Qifb93AB4G8txxhXB1yn2Cp0g6kxhMgpaYBy8jBXMAOBrBD7ZI+mVvrom7qYZ/8jOLvqu2dQ=@lists.infradead.org
X-Received: by 2002:a17:90b:524e:b0:2e2:d859:1603 with SMTP id
 98e67ed59e1d1-2e9f2d5c5a7mr421987a91.25.1731445494243; Tue, 12 Nov 2024
 13:04:54 -0800 (PST)
MIME-Version: 1.0
References: <20241111181807.13211-1-tszucs@linux.com> <20241111181807.13211-4-tszucs@linux.com>
 <4ba81dfa-f276-4e05-b46b-92f50dbcfcc4@kwiboo.se> <CA+GksrJLpeU8x-kjR1Ng3ySf+giiufCsJuBssng9qoX1PjAunA@mail.gmail.com>
 <9330ebb370780c001fd2aaee49aec9e8@manjaro.org>
In-Reply-To: <9330ebb370780c001fd2aaee49aec9e8@manjaro.org>
From: =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@linux.com>
Date: Tue, 12 Nov 2024 22:04:43 +0100
X-Gmail-Original-Message-ID: <CA+GksrJjDPve29Vh7ZFhM+JFp058xmXZAPeuLuFth7v=JeiH2w@mail.gmail.com>
Message-ID: <CA+GksrJjDPve29Vh7ZFhM+JFp058xmXZAPeuLuFth7v=JeiH2w@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Enable UART8 on rock-3b
To: Dragan Simic <dsimic@manjaro.org>
Cc: =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@linux.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, Chukun Pan <amadeus@jmu.edu.cn>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_130458_266630_1DC7C33A 
X-CRM114-Status: GOOD (  14.88  )
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

SGkgRHJhZ2FuLAoKT24gVHVlLCBOb3YgMTIsIDIwMjQgYXQgNDowN+KAr1BNIERyYWdhbiBTaW1p
YyA8ZHNpbWljQG1hbmphcm8ub3JnPiB3cm90ZToKPiBQbGVhc2UgY29ycmVjdCBtZSBpZiBJJ20g
d3JvbmcsIGJ1dCBpc24ndCB0aGlzIFVBUlQgc3VwcG9zZWQgdG8gYmUKPiB1c2VkIGZvciB0aGUg
Qmx1ZXRvb3RoIHBhcnQgb2YgYW4gU0RJTyBXaUZpICsgQmx1ZXRvb3RoIG1vZHVsZSwgaW4KPiBm
b3JtIG9mIGEgbm9uLXN0YW5kYXJkIE0uMiBtb2R1bGUgdGhhdCBSYWR4YSBzZWxscz8KClVBUlQ4
IGlzIHN1cHBvc2VkIHRvIGJlIHVzZWQgZm9yIGFueSByYWRpbyBtb2R1bGUgY29ubmVjdGVkIHRv
IHRoZSBNMkUKY29ubmVjdG9yLgpJdCB3aWxsIHR5cGljYWxseSBiZSByZXNwb25zaWJsZSBmb3Ig
Qmx1ZXRvb3RoIG9yIEJMRSBidXQgaXQgY291bGQgYmUKODAyLjE1LjQgb3Igd2hhdGV2ZXIuIElu
IGFueSBjYXNlLCBhbGwgd2FudGluZyB0byB1c2UgaXQgd2lsbCBuZWVkIHRoZQp1YXJ0OCBub2Rl
IGVuYWJsZWQuCgo+Cj4gV2l0aCB0aGF0IGluIG1pbmQsIEkgc2VlIHZlcnkgbGl0dGxlIHNlbnNl
IGluIGp1c3QgZW5hYmxpbmcgdGhlIFVBUlQsCj4gd2l0aG91dCBkZWZpbmluZyB0aGUgZW50aXJl
IEJsdWV0b290aCBpbnRlcmZhY2UsIHdoaWNoIEFGQUlLIHByb2R1Y2VzCgpEZWZpbmluZyBhIGJs
dWV0b290aCBub2RlIHdvdWxkIGhhcmR3aXJlIGlkaW9zeW5jcmFzaWVzIG9mIGEgZ2l2ZW4KcmFk
aW8gbW9kdWxlJ3MgQmx1ZXRvb3RoIGNvcmUuIFN1cmUgeW91IGNvdWxkIGFkZCBhIHNsZWVwIGNs
b2NrLCBhbGwKa2luZCBvZiBzaWRlYmFuZCBzaWduYWxzIGZvciB3YWtldXBzLCByZXNldCwgcG93
ZXIgZG93biwgZXRjLiBCdXQgaGV5LApzb21lIHdpbGwgdXNlIHRoZW0sIHNvbWUgd29uJ3QuIEkg
dGhpbmsgaXQncyB1bmRlc2lyYWJsZSBhbmQKdW5uZWNlc3NhcnkuIFlvdSBjYW4gaGNpYXR0YWNo
IGZyb20gaGVyZSBhbmQgbW9zdCB3aWxsIHdvcmsganVzdCBsaWtlCnRoYXQuIFRpZ2h0ZXIgaW50
ZWdyYXRpb24gb3IgYW55dGhpbmcgc3BlY2lhbCwgbW9kdWxlIHNwZWNpZmljIG9uIHRvcApzaG91
bGQgYmUgaGFuZGxlZCBpbmRpdmlkaWFsbHksIG9uIGEgY2FzZS1ieS1jYXNlIGJhc2lzLiBUaGlz
IGlzIGEgZGV2CmJvYXJkIGFmdGVyIGFsbC4gSSBzYXkgdHJpY2sgb2YgYWxsIHRyYWRlcy4KCj4g
bmFzdHkgbG9va2luZyBlcnJvciBtZXNzYWdlcyBpbiB0aGUga2VybmVsIGxvZyB3aGVuIHRoZXJl
J3MgYWN0dWFsbHkKPiBub3RoaW5nIGNvbm5lY3RlZCB0byB0aGUgVUFSVC4KCk15IGRtZXNnIGlz
IGNsZWFuIGFzIGEgd2hpc3RsZQpyb290QHJvY2stM2I6fiMgZG1lc2cgfCBncmVwIC1FICdmZTZj
MDAwMHx0dHlTMCcKWyAgICAwLjM0NDgxOF0gZmU2YzAwMDAuc2VyaWFsOiB0dHlTMCBhdCBNTUlP
IDB4ZmU2YzAwMDAgKGlycSA9IDI2LApiYXNlX2JhdWQgPSAxNTAwMDAwKSBpcyBhIDE2NTUwQQpX
aGF0IGtpbmQgb2YgbmFzdHkgZXJyb3JzIGRvIHlvdSByZWNhbGw/CgpLaW5kIHJlZ2FyZHMsClRh
bWFzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
