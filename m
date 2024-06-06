Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 498B5C27C52
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 10:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=186yci7cL5A6nAEK3WztWyJQdUiadOYds6kpzKph6xc=; b=EVbatkHC53SM2n
	rLzKF8hOgSGcRNusnlO6MioIF/Dt2hGnPuOkfV5CW5sA9LY24uBGi7JQZ/IG2ipSTm7QelPgYIbmn
	90d8tNmFyXbLajhHdMPxy4QfNnBvfHjXfcmYOxrekycRnPJIBBt8xrePRojb8YE05w8XE2LeX4hcB
	/kKn55rBnmGZUOjCLiU+YvEVopInyM1CL4VW3vkQTktie01YuxdPI7+CDZheLOcr9WsqMz5zyARw2
	ndyblDy0LCeF7yfNab0gowu73xOsggc9Ikowzd10woJ9ny2M96nD6g5WnuYeehYVw3b3yefUBJij+
	HGJTVijD2GoybvovC2jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFA7C-00000009LPY-0Kg4;
	Thu, 06 Jun 2024 10:13:02 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFA78-00000009LMe-1BZx;
	Thu, 06 Jun 2024 10:12:59 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2eaa80cb4d3so10701251fa.1;
        Thu, 06 Jun 2024 03:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717668776; x=1718273576; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VwwGGDviOkEqNMI4ZeyME6vD2otTizBZGZrZCysEeXs=;
        b=gDF6GGn42DXCRGTpnGx1mV4EdZyQc/ybmqt43sOex9uGntyH0dl/uTQHxvoP4yuWik
         cpOL0h8WlrcS3t7vqopfuAjN9mTv9bz8qOi7SCxpO/cGyGoxg3ZQGpgLduy4uaxq1jHg
         VaHsT3Hluq1NZM8sOLhfWJaj6kY0VTgIUBSPwPXVHBhr88Krp631FOBXcXLd1fNUgIJh
         chwae2eP/3UOr0sKBssDxCnkl6zEohO7/dnbMj3bBpbCekIxhPQRCO6V0IooBNMoDHdS
         Wnb3gICuOXHsLHLkBWakJbgkB3R+XZ4cW7dKkI//f8qTJJCO6v07CejRBrAlOynE7IXX
         Hf1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717668776; x=1718273576;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VwwGGDviOkEqNMI4ZeyME6vD2otTizBZGZrZCysEeXs=;
        b=Clvfp4hYjnXKH5PeWEWvGA6JgqfJcL8vAy6UNPBIWcYzhRLMr9eJIx13FGdk7xCQtI
         v3CUzUtiqYlOCsBZr+EE8SiYSxfnung9loig+FSBxzGG6OzatH/WHgZhHbnsIHGdA7/i
         WaKqsd1d48eQkbDTMw5+oL35lVapsdFKXlTK9BzrPi0MeYEzpJphPzf/iNV4qCec4hEr
         u5T1dMrA5eBbxBUpi2NsdJjXuC1VlGeXMQczzEDlWGdF7Nyhxs9VMlkFH8ZnQloLrEd0
         BwWdgQOwV3sHsqmfFmqbWC1PSKxVHLxr7CGXFi0iPg+ITIegCcnqoJwN3JJrAq3S2vSF
         KTRg==
X-Forwarded-Encrypted: i=1; AJvYcCVTJ7IzHkhcI9ozNgqWYURgUH4SHjtp0306hpzahIyVxz3lKR4D22Rqdv+xhc2HOwvwHI+ad1TPErxe3IifR45Qw7zfJFF45nG2QDi9fObpOikL0BE0ue3073YuvMiyZYXVplGVp/GIEJLAUrYjlJFJ3nXdqlQqoCY=
X-Gm-Message-State: AOJu0YzUCOnoNaFDz2DU3zgKfODTgA0xqaeEE2Ho1zBlJWAuqGKaZHUo
	RFGOmHyIxtJb1ecEtjaz3XTXpsayh4iHPDQxOYiB1iC2H2kkT4I=
X-Google-Smtp-Source: AGHT+IERDa7mrBB8yKBaPAZ+hETVUsn6IFbG49e1yW7WhBHVEIh7oLLq5qPqjNGKWMPo9qPJolTPeg==
X-Received: by 2002:a2e:a543:0:b0:2d8:5af9:90c5 with SMTP id 38308e7fff4ca-2eac7a68650mr46400261fa.39.1717668775339;
        Thu, 06 Jun 2024 03:12:55 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:7ad9:7718:9ddf:523c? ([2a02:810b:f40:4600:7ad9:7718:9ddf:523c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4215811d13esm48762385e9.24.2024.06.06.03.12.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jun 2024 03:12:55 -0700 (PDT)
Message-ID: <e379af59-a997-4774-96c1-33739b715ad1@gmail.com>
Date: Thu, 6 Jun 2024 12:12:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/5] Add SFC support for RK3128
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <20240605205209.232005-1-knaerzche@gmail.com>
 <20240605205209.232005-6-knaerzche@gmail.com>
 <fcff0181-b6de-4e47-b7ff-47baac061b3e@kernel.org> <7129744.aoefvbuG5b@diego>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <7129744.aoefvbuG5b@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_031258_415987_9470DBBD 
X-CRM114-Status: GOOD (  13.85  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sIEhpIEtyenlzenRvZiwKCkFtIDA2LjA2LjI0IHVtIDA5OjM3IHNjaHJpZWIgSGVp
a28gU3TDvGJuZXI6Cj4gQW0gRG9ubmVyc3RhZywgNi4gSnVuaSAyMDI0LCAwODo0MToxOSBDRVNU
IHNjaHJpZWIgS3J6eXN6dG9mIEtvemxvd3NraToKPj4gT24gMDUvMDYvMjAyNCAyMjo1MiwgQWxl
eCBCZWUgd3JvdGU6Cj4+PiBUaGlzIHNlcmllcyBhZGRzIHN1cHBvcnQgZm9yIHRoZSBTZXJpYWwg
Rmxhc2ggQ29udHJvbGxlciAoU0ZDKSBmb3VuZCBpbgo+Pj4gUkszMTI4IFNvQ3MuCj4+Pgo+Pj4g
QXMgd2l0aG91dCB1c2luZyBzb21lICJpZCBob2xlcyIgd2Ugd291bGQgcnVuIG91dCBjbG9jayBp
ZHMgaW4gdGhlIGJpbmRpbmcKPj4+IGFuZCB3b3VsZCBoYXZlIHRvIHRvdWNoIHRoZSBBQkksIEkg
YWRkZWQgcGF0Y2hlcyB3aGljaCByZW1vdmVzIHRoZQo+Pj4gQ0xLX05SX0NMS1MgbWFjcm8gYW5k
IHVzZXMgdGhlIHJlY2VudGx5IGludHJvZHVjZWQKPj4+IHJvY2tjaGlwX2Nsa19maW5kX21heF9j
bGtfaWQgaGVscGVyIGluc3RlYWQgdG8gZmluZCB0aGUgaGlnaGVzdCBjbG9jayBpZC4KPj4+Cj4+
PiBjaGFuZ2VzIHNpbmNlIHYxOgo+Pj4gICAtIGFkZGVkIHBhdGNoZXMgdG8gcmVtb3ZlIENMS19O
Ul9DTEtTIChDb25ub3IpCj4+Pgo+PiBEbyBub3QgYXR0YWNoICh0aHJlYWQpIHlvdXIgcGF0Y2hz
ZXRzIHRvIHNvbWUgb3RoZXIgdGhyZWFkcyAodW5yZWxhdGVkCj4+IG9yIG9sZGVyIHZlcnNpb25z
KS4gVGhpcyBidXJpZXMgdGhlbSBkZWVwIGluIHRoZSBtYWlsYm94IGFuZCBtaWdodAo+PiBpbnRl
cmZlcmUgd2l0aCBhcHBseWluZyBlbnRpcmUgc2V0cy4KPj4KPj4gWW91IHNlbnQgbm93IHYyIGlt
bWVkaWF0ZWx5IGFmdGVyLiBDb25mdXNlZC4KPiBpdCBsb29rcyBsaWtlIEFsZXggaGFkIHNvbWUg
bWFpbCB0cm91YmxlIHllc3RlcmRheS4KPgo+IFRoZSB0aHJlYWQgeW91IEFja2VkIHBhdGNoZXMg
aW4gYWN0dWFsbHkgaXMgdjIsIGp1c3QgbWlzc2luZyB0aGUgbGFiZWwuCj4KPiAtIG9yaWdpbmFs
IHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI0MDYwNTE3MjE1
NC4xOTMwNDctMS1rbmFlcnpjaGVAZ21haWwuY29tCj4KPiAtICJ1bmxhYmVsZWQiIHYyOiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI0MDYwNTIwNTIwOS4yMzIwMDUt
MS1rbmFlcnpjaGVAZ21haWwuY29tLwo+IC0gdGhpcyBhcyB2MiwgYnV0IGFzIHJlcGx5IHRvIHRo
ZSBwcmV2aW91cwo+IC0gcmVhbCB2MjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9j
a2NoaXAvMjAyNDA2MDUyMTAwNDkuMjMyMjg0LTEta25hZXJ6Y2hlQGdtYWlsLmNvbS8KPgo+IFRo
ZSBsYXN0IDMgYXJlIGlkZW50aWNhbCwganVzdCB0aGUgc2VuZGluZyBwcm9jZXNzIHdhcyBzb21l
aG93IGZ1bWJsZWQuClllcywgdGhhdCdzIHdoeSBJIHJlcGxpZWQgdG8gdGhlIGZpcnN0IG1lc3Nh
Z2UgaW4gdGhlIG1lc3NlZC11cCB0aHJlYWQKZXhwbGFpbmluZyBpdCBhIGJpdDoKaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvYWxsLzlkYTIyNDQzLWI1YzMtNGZiYy04Y2IwLWQ2YmViYWI1NWRhNEBn
bWFpbC5jb20vCkFueXdheTogVG8gbWFrZSBpdCBhIGJpdCBsZXNzIGNvbmZ1c2luZywgSSdsbCBz
ZW5kIHYzIHdpdGggS3J6eXN6dG9mJ3MgYWNrcwppbmNsdWRlZC4KCkFsZXgKPgo+CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
