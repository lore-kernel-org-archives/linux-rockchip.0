Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC017CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 18:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OEF7eAmg4vDdhErP3gkWB+KDpB7IemtYvpOZcCSMqzw=; b=gakEJiSBN5AaJj
	3sul+7dz+t1TJN800M4fC1M+JGGyyM9zz377MB1bXaPC+zx1wZouuOrkuzQvV8hD+ZNXPu0h27ovR
	1LpKE7O0ezfvsT83slFlvujg9s4sPOWR1cGHq7U8CoARABGCLxMVNYFvgQ3LN65iyVCnyTgN+WKMD
	vF6CdOyuBKH5KLg/5O42Bg7wLC3NSgGAIxZ0KfIDv/CB/rnzdytfdObLofeHMyDxgWHpi1y73a/SQ
	HbOGi5EFCmJLrwE+sLeexCXPZjWcPIevnKk77IDCehIoefAIjs/gznjfniwyrRbmGWwkS2Mh2bvOM
	g2OndlZp4z1CELd73SBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGhy4-0000000EDky-2arH;
	Wed, 05 Nov 2025 18:10:48 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGhy2-0000000EDkg-1fP8
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 18:10:47 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-429c7f4f8a2so683329f8f.0
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Nov 2025 10:10:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762366244; x=1762971044; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W2cvOAGe+F2dK5gNaDfMR5O2dctaqwiIHM84AdagJ10=;
        b=jk934UJPkaARrcAox+KyPFbXbe3e0xJlQJ+qng7qE9hggk7GrHpdAG7rarB4IxSoXf
         dYAny3ISpOktA5eqGXcXbfSNjsbvEZq8M8JymnxLPqcZ5lgGYGVRqC1w1N9YSwOvCff5
         rd85LJf2QNCwE1Y4Nzk+ojVAlWB+9LQmzI6NZMtvPnlZbyYmmYafPCV4hBFCTeEiR5GI
         gQ/yi7iDlYRMyOCPgjrISTbxG3NFwaqsWUeGm6AFRxOsmj8X79r+JL/dgK4Lvi91wFaA
         6KxMAdYKNdEgzbnuD1pSQTB6mZ24nCbT8kN6tRHoUdjSBEhg9AUEVgHkACfhkiDNjT7M
         G+sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762366244; x=1762971044;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=W2cvOAGe+F2dK5gNaDfMR5O2dctaqwiIHM84AdagJ10=;
        b=hfHsj/HVwNnvfy9WAx+mEOXdx8AL0tLaNPrvVgI1bHF0ErshdFcbHbagF38YVz942E
         n4NZ9N0jz+h2xWapXys7Km0kyk68dIIlRLS9dHFTq01HPsCetfPE69tYohTD7KeOF3J+
         QLgmDnCHmIjpYXsj8PcD4BvKJYoKg58HIpK/DR7UW5jkFozctlZ+GomNo2q6yEeat990
         6CQzvZ1EWs4yM24DQMdpE/i/mRvaxPuBvjQWIgbW8LZNwqGfE1o8jbCmjlDUkq4uQhlM
         VZ6EHde3bHyz6MXTy7xGifFrTAkyED9/oLY4mtldybwD2UVyKFFBIzjwzkSYk98soJc8
         Ht5w==
X-Forwarded-Encrypted: i=1; AJvYcCVLF2yq8oUDjgHsKuDlqlYto4OOlzdfeCg9P2aSiQI2mIq1+MOK1OYiNje3i0ZRS5xhQuUk/t5KxwPq+MSroA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwbCJ/Vt7vex37xkGDRJPwc6DTykKwtOPA9bnpp0SCSTovE8JBS
	sxm7uOxbloufpbN1DAScQhoGpeiDsrtZGhgGReXciNpnqPuUyGna1Ui6WcYXBLTrOetZI9rG/Q1
	VVUVzbi0/l+lB2Tg6E8plcjR9bz3huVo=
X-Gm-Gg: ASbGncsHJcM4PctepHk0nNpficVlUPUpPhL7sX17QD8Ji+yLSFFT7vV7h0WS1TeAU3Y
	jDGTQ9zj2x1xaPmMKUt7znWj1PQ69hRVIeTXknEbSIRi8gMo7hZF9OZZSpDvGAC3KRLQrjHA3Fx
	oRv71iyaU2WddIRD2SvPzwWs6WRqrF1lmhq/P9waHHu26ucplh44KiNOWKzH6+4UxWAfhSFkNje
	8LDwH+96h6s79EKIanY+/MjTtag0LLtqAnmIZYei1YMhH6nAbYBeYXtqXwXRB6iY7Ws0G0Lx1f8
	3LXX8/R7ioOKpxvx
X-Google-Smtp-Source: AGHT+IHBmNlJkVLW6W6vGyUKNDzuqwk9Tw/WLnn+OuOsgLY/0gfYST0CKvsNHbzGWWqOz26EQLad8Ac0ymabkNq+nc8=
X-Received: by 2002:a05:6000:1786:b0:407:d776:4434 with SMTP id
 ffacd0b85a97d-429eb1cf7aamr290281f8f.30.1762366243993; Wed, 05 Nov 2025
 10:10:43 -0800 (PST)
MIME-Version: 1.0
References: <20251105051335.17652-1-naoki@radxa.com>
In-Reply-To: <20251105051335.17652-1-naoki@radxa.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Wed, 5 Nov 2025 12:10:32 -0600
X-Gm-Features: AWmQ_bljnAguIYhdQMB55wotSkNGIpoYSWPuR_oG99N-Bkij5kJqZb1rkeRzrBU
Message-ID: <CALWfF7JsB-i4tgbPfMzrH92dCO-=EMkt7yY16dKzEPE-4RC58A@mail.gmail.com>
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, 
	kever.yang@rock-chips.com, i@next.chainsx.cn, quentin.schulz@cherry.de, 
	dsimic@manjaro.org, pbrobinson@gmail.com, amadeus@jmu.edu.cn, 
	jbx6244@gmail.com, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_101046_463146_A535A9F2 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
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

T24gVHVlLCBOb3YgNCwgMjAyNSBhdCAxMToxNOKAr1BNIEZVS0FVTUkgTmFva2kgPG5hb2tpQHJh
ZHhhLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHBhdGNoIHNlcmllcyBhZGQgc3VwcG9ydCBmb3IgdGhl
IFJhZHhhIENNNSBTb00gYW5kIElPIEJvYXJkLgo+Cj4gQ2hhbmdlcyBpbiB2NjoKPiAoUGF0Y2gg
MS8zKQo+IC0gRml4IGRlc2NyaXB0aW9uOyAiUmFkeGEgQ001IiBpcyB0aGUgY29ycmVjdCBuYW1l
Cj4gKFBhdGNoIDIvMykKPiAtIEZpeCAjaW5jbHVkZShzKQo+IC0gSW5jbHVkZSByazM1ODhzLmR0
c2kKPiAtIE1vdmUgYWxpYXMgZm9yIGdtYWMxIGZyb20gaW8gYm9hcmQgZHRzCgpJJ20gY3VyaW91
cyB3aHkgdGhlIGFsaWFzIHdhcyBtb3ZlZCB0byB0aGUgU29NPyBJZiB0aGUgY2FycmllciBib2Fy
ZApkb2VzIG5vdCBlbmFibGUgdGhlIGdtYWMxLCBzaG91bGRuJ3Qgd2UgbGVhdmUgb3V0IHRoZSBh
bGlhcz8KaS5lLiBmb3IgdGhlIGhhbmRoZWxkIHdpdGhvdXQgUko0NSBqYWNrIFsxXSwgaXQgd291
bGRuJ3Qgd2FudCB0aGUgYWxpYXMsIHJpZ2h0PwoKWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9TdG9u
ZWRFZGdlL1JldHJvLUxpdGUtQ001CgpKaW1teQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
