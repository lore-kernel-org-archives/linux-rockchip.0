Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AAD1C10F1A
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 12:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WNH1xMoA7qzybe+iFdKO6RcK07JSrqtUF+3KyXMs2N0=; b=E0b9P+e0vGMmpX
	wy+h8jyPFYUtW47hds72nxd6gb6AupqwIRzyHbV2yct9Dwq+SYxkb2Uhgsx/901boGNGe8rqWclRg
	87+2bFotam8JSoHMOZfxq4rSVWHUJIO4y/5cNPbahJ/qgp44nqGiUvBsFAYierks1V1/lhcXTohnu
	TzOvY9RFmtMuzElMvttzi29zF0mlfjujK3VqWHU+4+fu0GvFxSMZa+HqLOb7QoCax+4tMGhQDnPUS
	NViCgzUNNeMr8Fe6U8JY0VYg/SmXlU898x3aT7yXwGG/6K/07momm1vXq23VprolQ70ENVTV0i+yD
	VC8Sfl8oc46k6i8Prgeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s537e-00000001T6E-0bwa;
	Thu, 09 May 2024 12:43:42 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s537a-00000001T5F-0MB3;
	Thu, 09 May 2024 12:43:39 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-41b7a26326eso5946715e9.3;
        Thu, 09 May 2024 05:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715258616; x=1715863416; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ukFRa6jd0YhZA7RQLCPnJfFHsXtdSwr8V5mOexEjdho=;
        b=ijmW+48i+aVUB7wp1vc5yyrAOvboZS0+atlZQooPv69HCN2qesGgpxRoyqMMb6fZ8Y
         VinkLSoneeLCRVqH/z4fq+4WDzIxaosSSuboMekOYu6MKrG8gfnuaEvWMA9N8d17UzTs
         jSgd1q6H6mNjx+8upEGpsOaYjRAdMPobvlqrQBJL3zeLpmuBwB2TjK+jj8S25TnfrQnR
         ReJPkjMKOwudyS028fLiPeLZCK4UEZTfK1xtQNmFIJ5xtKpIn+AfxE4JZQOIl82EK2KQ
         0ZM7YziddIthRmBr20RTimgokp4Gt5UuehstBMcJqKLkc6/wdxbWflezg8J5xrVy7Xm4
         AGUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715258616; x=1715863416;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ukFRa6jd0YhZA7RQLCPnJfFHsXtdSwr8V5mOexEjdho=;
        b=dkTVFaXcTNA79y7FHL2sVjL1ne1OKBgF86hLAbMSJO02bVxpgYxAY+UzNl3O/9P2M+
         agETbhfkIop1Cdgcv5Xl1HkOiSl0vdSxIPkqt02uZdSBHr/K/Y4UiB2s8FN7u5BGDQS7
         iYyg7JIEQbX7cVv5TVd6y1OCvsTQv/P+d9/VHJI9Y4XRhcasJSZxue1f2IjN+c9pAQ2J
         TgX0OR13yFZtIs3I+9N88Y7wgaEtv0ekA1flyo5e2+hqPSw7DKP/YAny8hu72HY++5b3
         D8tfkBvC2+ncnji6y1ms6HS5FQV2g/Mle3bRoTOXtN4HCBqpsYl+ugvj+tThGWzF2SIy
         TKUw==
X-Forwarded-Encrypted: i=1; AJvYcCUYXv0Lz9MKmG7iggLvSEe6cYF86WZsqAK3/Aa5ngnkdKk6aPnGEpHWeRIvKt+gem3AW1Jho7GRrMjjyUQKNqarmR6MlwlejInNKRWgvnQRT2FdeZG0TbDqAmo0Mefym82ch6mtu2Cc1pj+WGb+Yk3EUYnjR3Covdc=
X-Gm-Message-State: AOJu0YyHAjEpx31ATA4gLwwGH01lLUb8Vi5WLvHFvOAO0oMpiSu8e5XF
	tB/UxDkBZbKB8+mT9kP7j5aP9i2q+9SJfrffr9hmHQmiUYXZFzI=
X-Google-Smtp-Source: AGHT+IH91edNyT90V4bTzKolAoCvVxJlY9gxXvUn7JsOUYnFiQrJLSLCJeZJDn8SANfleGSnxvbfFw==
X-Received: by 2002:a05:600c:450c:b0:418:fb6f:5f59 with SMTP id 5b1f17b1804b1-41f71cc25a8mr45229895e9.2.1715258616089;
        Thu, 09 May 2024 05:43:36 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:b44:d8c3:6fa8:c46f? ([2a02:810b:f40:4600:b44:d8c3:6fa8:c46f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41f87b26675sm59904325e9.2.2024.05.09.05.43.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 May 2024 05:43:35 -0700 (PDT)
Message-ID: <1190cfb6-e2d1-4910-ad57-f7566343ff19@gmail.com>
Date: Thu, 9 May 2024 14:43:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/7] Add DSI support for RK3128
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 sebastian.reichel@collabora.com, Sandy Huang <hjc@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Maxime Ripard <mripard@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
References: <20240509120715.86694-1-knaerzche@gmail.com>
 <38423821.XM6RcZxFsP@diego>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <38423821.XM6RcZxFsP@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_054338_147100_C737537E 
X-CRM114-Status: GOOD (  22.37  )
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

SGkgSGVpa28KCkFtIDA5LjA1LjI0IHVtIDE0OjIxIHNjaHJpZWIgSGVpa28gU3TDvGJuZXI6Cj4g
SGkgQWxleCwKPgo+IEFtIERvbm5lcnN0YWcsIDkuIE1haSAyMDI0LCAxNDowNzowOCBDRVNUIHNj
aHJpZWIgQWxleCBCZWU6Cj4+IFRoaXMgc2VyaWVzIGFpbXMgdG8gYWRkIHN1cHBvcnQgZm9yIHRo
ZSBEZXNpZ25XYXJlIE1JUEkgRFNJIGNvbnRyb2xsZXIgYW5kCj4+IHRoZSBJbm5vc2xpY29uIEQt
UEhZIGZvdW5kIGluIFJLMzEyOCBTb0NzLiBUaGUgY29kZSBhZGRpdGlvbnMgYXJlIHJhdGhlcgo+
PiB0aW55OiBJdCBvbmx5IG5lZWQgc29tZSBjb2RlIGluIHRoZSBSb2NrY2hpcCBkdy1taXBpLWRz
aSBnbHVlIGxheWVyIGZvcgo+PiB0aGlzIFNvQywgYWRkIHN1cHBvcnQgZm9yIGFuIGFkZGl0aW9u
YWwgY2xvY2sgYW5kIGRvIHNvbWUgY2hhbmdlcyBpbiB0aGUKPj4gU29DJ3MgY2xvY2sgZHJpdmVy
LiBTdXBwb3J0IGZvciB0aGUgcGh5IHdhcyBhbHJlYWR5IGFkZGVkIHdoZW4gdGhlCj4+IElubm9z
aWxpY29uIEQtUEhZIGRyaXZlciB3YXMgaW5pdGlhbGx5IHN1Ym1pdHRlZC4gSSB0ZXN0ZWQgaXQg
d2l0aCBhCj4+IDgwMHgxMjgwIERTSSBwYW5lbCB3aGVyZSBhbGwgNCBsYW5lcyB0aGF0IGFyZSBz
dXBwb3J0ZWQgYXJlIHVzZWQuCj4+Cj4+IGNoYW5nZXMgaW4gdjI6Cj4+ICAgIFRvIGltcHJvdmUg
cG93ZXItZWZmaWNpZW5jeSB3aGVuIHRoZSBEU0kgY29udHJvbGxlciBpcyBub3QgaW4gdXNlLCBJ
Cj4+ICAgIGRyb3BwZWQgdGhlIHBhdGNoIHdoaWNoIG1hZGUgaGNsa192aW9faDJwIGEgY3JpdGlj
YWwgY2xvY2sgYW5kIGluc3RlYWQKPj4gICAgYWRkZWQgc3VwcG9ydCBmb3IgYW4gQUhCIGNsb2Nr
IHRvIHRoZSBEU0kgY29udHJvbGxlciBkcml2ZXIgYW5kIHVwZGF0ZWQKPj4gICAgdGhlIGJpbmRp
bmdzIGFuZCB0aGUgYWRkaXRpb24gdG8gdGhlIFNvQyBEVCBhY2NvcmRpbmdseS4KPiBUaGUgbmFt
aW5nIGFscmVhZHkgc3VnZ2VzdHMgdGhhdCBoY2xrX3Zpb19oMnAgaXMgbm90IGEgY2xvY2stcGFy
dCBvZgo+IHRoZSBhY3R1YWwgZHNpIGNvbnRyb2xsZXIsIGJ1dCBtb3JlIGFuIGludGVybmFsIHRo
aW5nIGluc2lkZSB0aGUgY2xvY2sKPiBjb250cm9sbGVyLgo+Cj4gQXQgbGVhc3QgbmFtaW5nIGFu
ZCBwZXJjZWl2ZWQgZnVuY3Rpb25hbGl0eSB3b3VsZCBzdWdnZXN0IGEgY2hhaW4gb2YKPiAJaGNs
a192aW8gLT4gaGNsa192aW9faDJwIC0+IHBjbGtfbWlwaQpJIHBlcnNvbmFsbHkgd291bGRuJ3Qg
Z2l2ZSB0byBtdWNoIG9uIG5hbWluZyB3aGVuIGl0IGNvbWVzIHRvIFJvY2tjaGlwCkNSVXMuIEFj
dHVhbGx5IGxvb2tpbmcgYXQgIkZpZy4gMi01IENoaXAgQ2xvY2sgQXJjaGl0ZWN0dXJlIERpYWdy
YW0gNCIgb2YKUkszMTJ4IGl0czoKCgouLi4gLT4gaGNsa192aW8KCiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgLT4gaGNsa19oMnAgKGNsb2NrIGluIHF1ZXN0aW9uKQogwqDC
oCDCoMKgwqDCoCDCoCDCoCDCoCDCoCDCoMKgIC0+IHBjbGtfbWlwaSAoRFNJIEFQQiBjbG9jaykK
IMKgwqAgwqDCoMKgwqAgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLT4gaGNsa19yZ2EKIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtPiBoY2xrX3ZvcAogwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIC4uLi4KCkFsc28gdGhlcmUgaXMgbm8gb3RoZXIgZGlzcGxh
eSBvdXRwdXQgcGF0aCAoSERNSSwgTFZEUykgd2hpY2ggcmVxdWlyZXMgdGhpcwpjbG9jayB0byBi
ZSBlbmFibGVkLiBUaGV5IGFsbCB3b3JrIHdoZW4gaXQncyBkaXNhYmxlZC4gVGhhdCByZWFsbHkg
bWFrZXMgbWUKdGhpbmsgaXQncyBqdXN0IHRoZSBBSEIgY2xvY2sgbGluZSBmb3IgdGhlIERTSSBj
b250cm9sbGVyLiBNYXliZSBBbmR5IGNhbgpzaGFyZSBzb21lIGRldGFpbHM/CgpBbGV4Cgo+IElu
IGFueSBjYXNlLCBJIHJlYWxseSBkb24ndCBzZWUgaGNsa192aW9faDJwIHRvIGJlIGluIHRoZSBy
ZWFsbSBvZiB0aGUKPiBhY3R1YWwgRFNJIGNvbnRyb2xsZXIsIGJ1dCBtb3JlIGEgcGFydCBvZiBj
bG9jay1jb250cm9sbGVyIC8gaW50ZXJjb25uZWN0Lgo+IFNpbWlsYXIgdG8gdGhlIE5JVSBjbG9j
a3MgZm9yIHRoZSBpbnRlcmNvbm5lY3QuCj4KPiByazM1ODggYWN0dWFsbHkgdHJpZXMgdG8gaW1w
bGVtZW50IHRoaXMgYWxyZWFkeSBhbmQgd2hpbGUgdGhlCj4gZ2F0ZS1saW5rIGNsb2NrcyBhcmUg
ZGVzY3JpYmVkIGFzICJyZWNlbnQiLCBJIHRoaW5rIHRoaXMgZGVmaW5pdGx5IHRoZSBzYW1lCj4g
Y29uY2VwdCB1c2VkIGEgbW9zdC9hbGwgb2xkZXIgUm9ja2NoaXAgU29DcywganVzdCBub2JvZHkg
Y2FyZWQgYWJvdXQgdGhhdAo+IHRpbGwgbm93IDstKSBbMF0gLgo+Cj4gU28gVEw7RFIgSSdkIHJl
YWxseSBwcmVmZXIgdG8gbm90IGxlYWsgQ1JVLWRldGFpbHMgaW50byB0aGUgRFNJIGNvbnRyb2xs
ZXIuCj4KPgo+IEhlaWtvCj4KPiBbMF0gV2hpY2ggcmVtaW5kcyBtZSB0aGF0IEkgc2hvdWxkIGxv
b2sgYXQgU2ViYXN0aWFuJ3MgbWFrZSBHQVRFLUxJTksKPiBhY3R1YWxseS13b3JrLXBhdGNoLgo+
Cj4KPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
