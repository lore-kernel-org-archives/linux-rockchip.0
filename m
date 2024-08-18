Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D48AC52D7C
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Aug 2024 18:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3k6Fm/dB1d9KxGeibE6K49gxXV3h/4KDML+sKpLFE7E=; b=wM8qh/M1GPrd9P
	A10xVik1k1XCrVIO5GnCXbeE1Qq9PWvVabAc5cnYRBC+2X0nQRd01Nmyr5WX3V8PRTlc4k/tg/ttb
	8g1sMGMNTvCXDwgHQ2xY4rO0PI4mUMh7Max51jig/vfPg3XZwMBysamOhGYcJBoYVemwdxyg7e8ZL
	gX3kK/iI3b1BqOBQ9sjs2HqzJYy+AS5ofFvdYE9r3RATzq34WFA31RXktuyfXSKx28lJRY0aFatXO
	lPyXHrDpxEABY0vY3IZSnhhx4V/z66MtcKok6GHn6hGI4JOfzCZ6YsuwUqvQV5/ltI8Xhb34TEbr9
	vhpSNBlRMu56F/Fn05Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfl3k-0000000H1Ud-3JZ2;
	Sun, 18 Aug 2024 18:55:24 +0000
Received: from mail-vk1-xa33.google.com ([2607:f8b0:4864:20::a33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfl3h-0000000H1TW-0WMi;
	Sun, 18 Aug 2024 18:55:23 +0000
Received: by mail-vk1-xa33.google.com with SMTP id 71dfb90a1353d-4f51981b1beso1203806e0c.2;
        Sun, 18 Aug 2024 11:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724007319; x=1724612119; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AkBZ2h3iZ+EDA0daVELGPM/RkHd4UmsNjGPdeD3JG/c=;
        b=JpYXR5zU/+jhtkHL58r+HPmfjdJO3rNON3ylgzUzNcgCgioe4Y0jJtieXDxO2pjxgU
         hyoSx2spHlMzkSU3qQMU66HkjM0kJDpoe+GfeLUpuXZ9AeD4sSjN8tjhTTG64xFzJiOp
         U6WtX9kL0UmNhoftcqVGA6ilAHMWzeegb4uEGqVhrj+wcsXriHu34Dvp4Il8x3c3eb41
         ubNhQxDO0bHaTp2L8ftVvSgJr+qGXbEnQKuXWYka7Re97lFNys8bhikBJFRZAkfoQ7x2
         AUcTJmV2BBdw9q1OFvWmVICASB1dWIvtCZ4jE3/Hth0c4Kv/3Jyec9CMgC+bJxauJwQp
         H19A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724007319; x=1724612119;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AkBZ2h3iZ+EDA0daVELGPM/RkHd4UmsNjGPdeD3JG/c=;
        b=lz942/Z4BLiticMB9BQoRMGrod54jRUKVcbM9UG8egTXOVqxkgaa0jMxNzRBz0uZ2I
         993rw1WhaSPeZUeiGTwyM1e9VhBXznpegYJUTsOCw7UUfLS1yhtYNhaXlIMF2vCijlJ9
         SRqHaHfiKTpIpe1d7VRenFjkrp7C+alTnWrPn/HhmFON9cJGklv8nxnYE+Vb4kLIOXL+
         egjy0DPts8WMgE0wZho+8aRfMFGd77khnd7IjznNll1xT8FXrDsaQHBMGARxKItOk/Ph
         uRQl7IV/BvTYepp6bMoiJiQGDVO3J+W70PS0gbcmBUtuU9Skzf1abYShT/yok917rrrV
         MM+Q==
X-Forwarded-Encrypted: i=1; AJvYcCX5iGrQpCwXr360+2EWaQNpOGz9/bUlA283UF0k013lbXhf97X07JhVqdhO0VpT3jwFam6iqOjbcgHFdcZTK1F+@lists.infradead.org
X-Gm-Message-State: AOJu0YxbafioPX2rTH41M82OjYYM1CrslSxljtO3V4zH1dmpoI3AqHii
	h4zORyIu4xt+7dFhdRtZ6Xu5BALZt9jRom1VSEnr9j5bejojyDjS1RXoXyOtODAQuFR3p4Bhhqi
	x0BaNrHmMIE0p2LCUe2h663IkaOE=
X-Google-Smtp-Source: AGHT+IFZcpIY2jJOe8nKCi4fbnzwuApcj7YtlLR/l2dWkzI35yiS0NekFFlrICVUkru2Zj1GA1KAO2SuPef0fE7RkrA=
X-Received: by 2002:a05:6122:3094:b0:4f6:ae65:1e10 with SMTP id
 71dfb90a1353d-4fc6c5f0eaemr11007678e0c.4.1724007319530; Sun, 18 Aug 2024
 11:55:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAAMcf8Dts3=6CxNCLZBvXsdFHpaOs9mL2NJ8TMPU5+duray6-g@mail.gmail.com>
 <d35a5c5216ee3d0321c725aea61e0326@manjaro.org>
In-Reply-To: <d35a5c5216ee3d0321c725aea61e0326@manjaro.org>
From: Vicente Bergas <vicencb@gmail.com>
Date: Sun, 18 Aug 2024 20:55:08 +0200
Message-ID: <CAAMcf8CFED71FKUBpRy+FZNf8XKim1fuxW1C+ErZQqLsaWm1yQ@mail.gmail.com>
Subject: Re: [BUG] Rockchip SPI: Runtime PM usage count underflow!
To: Dragan Simic <dsimic@manjaro.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-spi@vger.kernel.org, 
	Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240818_115521_186594_17F912E1 
X-CRM114-Status: GOOD (  14.15  )
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

T24gU3VuLCBBdWcgMTgsIDIwMjQgYXQgODoyNuKAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1h
bmphcm8ub3JnPiB3cm90ZToKPgo+IEhlbGxvIFZpbmNlbnRlLAo+Cj4gT24gMjAyNC0wOC0xOCAy
MDoxMywgVmljZW50ZSBCZXJnYXMgd3JvdGU6Cj4gPiBpIGFtIGEgdXNlciBvZiB0aGUgQ09ORklH
X1NQSV9TUElERVYgZGV2aWNlLgo+ID4gSXQgc3RvcHBlZCB3b3JraW5nIGJldHdlZW4gNi44IGFu
ZCA2LjEwLjUuCj4gPiBUaGUgU1BJIGJ1cyBpdHNlbGYgcmVwb3J0cyBubyBlcnJvcnMgdG8gdXNl
cnNwYWNlLCBidXQgbm8gZGV2aWNlcwo+ID4gYXBwZWFyIGNvbm5lY3RlZCB0byB0aGUgYnVzLgo+
ID4gVGhlIHBsYXRmb3JtIHVzZWQgaXMgUkszMzI4Lgo+ID4gVGhlIG9ubHkgc3BpLXJlbGF0ZWQg
bWVzc2FnZSBpbiBkbWVzZyBpczoKPiA+IHJvY2tjaGlwLXNwaSBmZjE5MDAwMC5zcGk6IFJ1bnRp
bWUgUE0gdXNhZ2UgY291bnQgdW5kZXJmbG93IQo+Cj4gSSdtIHdvcmtpbmcgb24gYSByZWxhdGVk
IHBhdGNoLiAgQ291bGQgeW91LCBwbGVhc2UsIGRlc2NyaWJlIHlvdXIKPiB1c2UgY2FzZSBmb3Ig
dGhlIHNwaWRldiBkcml2ZXIsIGkuZS4gd2hhdCBib2FyZCBhcmUgeW91IHVzaW5nIGl0IG9uLAo+
IGFuZCBmb3Igd2hhdCBwdXJwb3NlPwoKVGhlIGJvYXJkIGlzIFJPQ0s2NCBhbmQgdGhlIHB1cnBv
c2UgaXMgdG8gdXBkYXRlIGFsbCB0aGUgc29mdHdhcmUgdGhhdApib2FyZCBydW5zLCB3aGljaCBp
cyBzdG9yZWQgb24gdGhlIFNQSSBOT1IgZmxhc2ggb25ib2FyZC4KCkkgaGF2ZSBub3QgdGVzdGVk
IHRoaXMga2VybmVsIHZlcnNpb24gb24gUkszMzk5LCBidXQgaXQgbWF5IGFsc28KYWZmZWN0IHRo
YXQgb3RoZXIgdXNlIGNhc2U6Cmh0dHBzOi8vZ2l0bGFiLmNvbS92aWNlbmNiL2tldmluYm9vdAoK
Ti5CLjogTXkgbmFtZSBpcyBWaWNlbnRlLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
