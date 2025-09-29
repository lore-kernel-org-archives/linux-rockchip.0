Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8923CCAC5B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Sep 2025 07:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RrEWRki1ky3JLtnvHr7uwjmZSRMdhNd8lsh3wlBlDrM=; b=OlIfqUB6nFLN3L
	tIQU5U1tShAJuKNVb5Hww9JNnHGs4hFTlMZ5E10UEaMHe77kbX0G2r+CueuAcTQOQs06PQpg3tE0G
	6VtdDZUbWsRH1MiuuJkrUf6y2j1PQNKHosd7NTgPJLKNfkM0DGVkGJjTZypMRbLts+4t/Tjf5oW1S
	Tgaku9Lmk4jrWv5bdBTxXpLlqoL4YryKYKC4AQPM+3yIywOoLt9A/ISUeri0hsdPH7aiEbr4/MSFx
	bOVqlHkZlfWk8S+GjMGD+fzgcjkkOncQwKXETOZE45LrzZEssiaY7evVg/+cbaZ7jj+6EAEk862tg
	79jNUDUK7nz1Vx/5mIqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38YL-00000001eYv-0DyT;
	Mon, 29 Sep 2025 07:44:09 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38YH-00000001eWr-1mjD
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Sep 2025 07:44:07 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-273a0aeed57so60281455ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Sep 2025 00:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759131844; x=1759736644; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4IugYQww6ZMP7fZxYkyvyMGRoB8H1RfKni966hm3Oic=;
        b=EtQGLl+bAupkfjFyn8+7Lm0eVQHhUnwIRt2BNQOGV+dXMMRFDsWA3eIhtuCOm34hUR
         /hFqnZGws4e+4YWbAKMfW9VcZY5tVEMweAfmdDJVovqkYT8mAEQRlKOcwgRTaJL0WHVJ
         Wy//SAMqCqnJIxQBg2P0DyWfaVSj//riSnqzGFcYkUjhCLKy8/uOZPuGDtK28lyti4+4
         brB/rGqGjxUCMFsSW2mRjdgBG/QXpVQR3VTTrcyWvxrEghD0lzXgWnhQkaEfkUfe+5in
         dFqsvbJCp753OT1+QUY2Splvi/56kylbXZfsavNxJQyETYty5XJpAndxNDPgj2NUiSrO
         uMlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759131844; x=1759736644;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4IugYQww6ZMP7fZxYkyvyMGRoB8H1RfKni966hm3Oic=;
        b=nSTwoBTQiuJDxawV7Q6i1UEw0LW1vgsdty1bT4f+zskMkJCLJKoe0FgygN+YaVnSW0
         +XBj0tlEUZnRwuR7Mg3X7LhX1rMPRxvSn3uaSg8g8Fu0k44ESahfSjdv/utlDt2ZMaaM
         QdjhvqmNz5BDJhNuYZCNqKUXh22TrXKJeMmX0TZKCM/WxL2d3N43RYEJ/lTZPDtpetlg
         R8eNe1xUej/BqpVjKqlncEwxvhy4a+2F8JMlVzV00WV3wwO2wU4qdXQ/wYNGgA6JDtYX
         5K+OzDe8CCusI2UdIEp6sKBnTKnVqj+dAHwZwZ1SAMjLfx9BjN4v64oljRd+Ri8uK5I0
         ycAg==
X-Forwarded-Encrypted: i=1; AJvYcCV7/7h/Biyut9dpS52lS8vDDEOiHjhqOkEz64LWneuBsQaud33K77k+bxrC4jASVFW07l1eeVL+SIF+vp/Cmw==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywpgh6vqd232gL75oTZCpzfP6uwUeqWdGrhBh3yYPPbMfwyaRkO
	OjNDqY+OLGxi6NJDsT42Kiq2lKK7h/lxmi02bf6b6CXWHg23MXttEYe9
X-Gm-Gg: ASbGncs3XYLo9jg7VGa9e+xC5CZiOVskG+lL4eQEHpd4p5JGiqc1bjCenIX7Ms2b7Yz
	a/PqZckZOuzlN6VB+fqXfAkDtMlJ9BOEiwEP5PR7guppHzLjlintsgWvtc07MkWW0jDyuEwy6ka
	LkVPr7IaMOG5F5YESAGyHQXU9n3hz3tC6XTfx8zZ3Bj0diuytDjDLcmmPidaxJjXiOSfNhb+mPy
	cfLT1WA8AbtmPxB9+wVcm6PKiZMsUryrY2y2Pr3RzUjIrIQ/AbgcKfmjPwhiqzsJlhbuCpl2SIl
	m2bWi7YkCQiRiDQmnWcYHgtgBgmq1uqnk3p0+/ej6vk//71zjNRkg4tAJV1J2teS7Y2Y1TIqZYH
	RyJXI1NufbDA4skKa3Kmx9ifbdenZgBksq4w5LySqGx+IOcrJTeczmPY0yQqn/MB2lBAWDHUcIL
	oO
X-Google-Smtp-Source: AGHT+IGYbzLtndPlp4Q3FPkBFfn1YLlMmp9JRJofGAotrhQINUZyvBL0AAPnW2NjXrzXu64Iv6JAsg==
X-Received: by 2002:a17:902:e84b:b0:269:8eba:e9b2 with SMTP id d9443c01a7336-27ed7222952mr159612065ad.29.1759131844132;
        Mon, 29 Sep 2025 00:44:04 -0700 (PDT)
Received: from [192.168.68.63] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66d3fe7sm123321985ad.7.2025.09.29.00.44.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 00:44:03 -0700 (PDT)
Message-ID: <b01ed528-8b29-4a6a-bdff-88f2e3b5dd2e@gmail.com>
Date: Mon, 29 Sep 2025 00:44:03 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] Upstreaming Pinephone Pro Patches
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ondrej Jirman <megi@xff.cz>, "Leonardo G. Trombetta" <lgtrombetta@gmx.com>
References: <20250921-ppp_light_accel_mag_vol-down-v3-0-7af6651f77e4@gmail.com>
 <53eabe34a310ea9c74315fa09a604e4a@manjaro.org>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <53eabe34a310ea9c74315fa09a604e4a@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_004405_487861_87A75B9D 
X-CRM114-Status: GOOD (  16.57  )
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

SGksCgoKPiBUaGFua3MgZm9yIHN1Ym1pdHRpbmcgdGhlc2UgcGF0Y2hlcy7CoCBIb3dldmVyLCBw
bGVhc2UgZXhwYW5kIHRoZSBwYXRjaAo+IGRlc2NyaXB0aW9ucywgYmVjYXVzZSB0aGVpciBjdXJy
ZW50IGZvcm1zIGFyZSB0b28gdGVyc2UgYW5kLCBhcyBzdWNoLAo+IHNpbXBseSBub3QgYWNjZXB0
YWJsZS7CoCBUaGlzIGFwcGxpZXMgdG8gYWxsIHBhdGNoZXMgaW4gdGhpcyBzZXJpZXMuCgpHb3Rj
aGEsIHdpbGwgZG8hIEkndmUgYWRkZWQgdGhlIHRlc3RpbmcgdGhhdCBJIGRpZC4gRnJvbSAKaHR0
cHM6Ly9kb2NzLmtlcm5lbC5vcmcvcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMuaHRtbAoKID4g
VGhlIHRleHQgc2hvdWxkIGJlIHdyaXR0ZW4gaW4gc3VjaCBkZXRhaWwgc28gdGhhdCB3aGVuIHJl
YWQgd2Vla3MsIAptb250aHMgb3IgZXZlbiB5ZWFycyBsYXRlciwgaXQgY2FuIGdpdmUgdGhlIHJl
YWRlciB0aGUgbmVlZGVkIGRldGFpbHMgdG8gCmdyYXNwIHRoZSByZWFzb25pbmcgZm9yIHdoeSB0
aGUgcGF0Y2ggd2FzIGNyZWF0ZWQuCgpJdCBmZWx0IGxpa2Ugc2F5aW5nIG1vcmUgdGhhbiAiYWRk
aW5nIHggc2Vuc29yIiBzZWVtZWQgbGlrZSBhZGRpbmcgZmx1ZmYgCnRvIG1lLCBzbyB0aGF0IGlz
IHdoeSBJIGtlcHQgaXQgc2hvcnQuIExldCBtZSBrbm93IGlmIHRoZXJlIGlzIHNvbWV0aGluZyAK
ZWxzZSBJIHNob3VsZCBhZGQgYmVzaWRlIHRoZSB0ZXN0cyBJIGhhdmUgZG9uZS4KCgo+IEknbSBh
bHNvIHVuZGVyIGltcHJlc3Npb24gdGhhdCB5b3UncmUgc3VibWl0dGluZyB0aGVzZSBwYXRjaGVz
IHVwc3RyZWFtCj4gYmxpbmRseSBhbmQgd2l0aG91dCByZXNlYXJjaGluZyB0aGUgcnVsZXMgdGhh
dCBhcHBseSB3ZWxsIGVub3VnaCwgd2hpY2gKPiBtYXkgbm90IGJlIHRoZSBiZXN0IHBvc3NpYmxl
IGFwcHJvYWNoLgoKU29ycnkhIEkndmUgcmVhZCBodHRwczovL2RvY3Mua2VybmVsLm9yZy9wcm9j
ZXNzL3N1Ym1pdHRpbmctcGF0Y2hlcy5odG1sIAphIGJ1bmNoIG9mIHRpbWVzIGR1cmluZyB0aGUg
eWVhcnMgSSBoYXZlIGNvbnRyaWJ1dGVkIHRvIHRoZSBMaW51eCBrZXJuZWwgCmFuZCBpbmV2aXRh
Ymx5IGZvcmdldCBzb21ldGhpbmcuIFBsZWFzZSBmZWVsIGZyZWUgdG8gdGVsbCBtZSB3aGF0IEkn
dmUgCmRvbmUgd3JvbmchIEkndmUgY29ycmVjdGVkIG15IG1pc3Rha2VzIGluIHY0IChhbmQgdW5k
b3VidGVkbHkgcHJvYmFibHkgCmludHJvZHVjZWQgbW9yZSwgYnV0IGZlZWwgZnJlZSB0byB0ZWxs
IG1lIHRoYXQgOykgKQoKCj4KPiBGaW5hbGx5LCBwbGVhc2UgcmVmcmFpbiB5b3Vyc2VsZiBmcm9t
IHNlbmRpbmcgbXVsdGlwbGUgdmVyc2lvbnMgb2YgdGhlCj4gc2FtZSBwYXRjaCBzZXJpZXMgaW4g
dGhlIHNhbWUgZGF5LsKgIERvaW5nIHNvIG1ha2VzIHJldmlld2luZyB0aGUgcGF0Y2hlcwo+IHVu
bmVjZXNzYXJpbHkgaGFyZC4gCgpTb3JyeSBhYm91dCB0aGF0IG9uY2UgYWdhaW4hIEknbSBtb3N0
bHkgYSBob2JieWlzdCB0aGF0IGxvdmVzIHdvcmtpbmcgb24gCkxpbnV4IG92ZXIgdGhlIHdlZWtl
bmQuIEkgd2FudGVkIHRvIGdldCBjb3JyZWN0IG15IG1pc3Rha2VzIHNvIHRoYXQgSSAKY2FuIGdl
dCByZXZpZXdzIG92ZXIgdGhlIHdlZWsuIEkgd2lzaCBsa21sIHVzZWQgYSBmb3JnZSwgc28gSSBk
aWRuJ3QgCmhhdmUgdG8gc3BhbSB5b3UsIGJ1dCBJIGRpZ3Jlc3MuIEkgd2lsbCBrZWVwIHRoaXMg
aW4gbWluZCBtb3ZpbmcgZm9yd2FyZC4KCgpSdWRyYWtzaGEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
