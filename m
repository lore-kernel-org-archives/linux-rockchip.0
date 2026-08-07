Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CFC3C5AC7A
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Aug 2026 09:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I2Xf3vGlutA48vOhl7wzQT+yV3yf5YZfTiIqp7VPPJs=; b=yVI/RS+b0aMlhy
	Ig6lJHJHcdq9r2tF7Gj4YquUYTO//sSvSOPVd6UvsIP4VE5FH3OprTA+s24k+xaBBb9FKxBu9yU6x
	H9AiuRSFmdBdr+WgC2bjC0zE0qZ8Skl84HnbgebI679xPw1otkUb0BUMZPE1mnnsU6kUDHZmOmjf0
	aS1S7Po3DwB3n+dY/bcyDll+Cr1cG9YzzQZa3lNtFSvX+nTXqyeH7dVq7cCcCvp38I1Qcmw3jLnyo
	KTE37nu1AiUjR4oHlPlXtlcaxgquoBKs2TNjmx/977qMnYpQdh9HQN9qapaDSDZHAoa7jYIoAqvW2
	IPmqqEqC8lHOJ+h5Y/HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsGa0-00000007UDV-3uJ5;
	Fri, 07 Aug 2026 09:09:28 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsGZz-00000007UCV-0RdB
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Aug 2026 09:09:28 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-49556f97a9dso20138075e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Aug 2026 02:09:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1786093765; x=1786698565; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=jjSX3DSji4nKkqVPKbNZg/lqBAxi+8jNL2xKHv5aM18=;
        b=g6n7YhdGFEfmbUsAKXpe7wZGacqu9MDdGZn3MwAKfCLlIqiupmhrmhe9Yzz9xdWXZP
         v8wiNV2OjWcxLsnCzDBHg2MAOx8Fl9CtjoBhLG6sP5W7emZqGo21Bpv7ev10jV1Mow11
         mfZrrBHplLGm0PzzLgyv0iWpWy06NBildKcUsUKhdmoX1oZRVkejEwPZG7EowFZTANBn
         5L46pmoBqfj1UdgaKhPLT2qcYGQJY3mSLI6j4qP/VPnzPdb9TW+ZlIMCKmwtujDodgr9
         Eog5t0+cENZzGq1Za2XytlLNS5qVN0JbrcFDQDqZTf+VmIssY5TlBN7cOfmUcVo+M0o8
         1ENQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786093765; x=1786698565;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jjSX3DSji4nKkqVPKbNZg/lqBAxi+8jNL2xKHv5aM18=;
        b=Kfly778be5Vk3Qx530BjWsgCW6w8I0AQ1vnIoT5x+5LhVinIdwduvWhJ9llSfKhuY9
         bWbr40HXmLGozWeS4b21CDB9OAJR9g7fWtefg/LFDcaUbx9tjghLkpJ+UYo+9z69Sknq
         ydTZH5xfHnjZfImsRfUvUE9x/4ajbZnKDKTwotrlS92MWxbQuy8rJNft20+Z9J8zjKp7
         f1aBPaazplJJwT7NFRs28QyiRzmW7G+m00Mmjgj4zy/YTaDMKSebLn3AMjPZVLd0k2Bv
         e/SVeYVtIWqqTkThhBEZMHovb8RdfCT7auB40j7Z0x2/OdqUKMaVx0ldFFyjgWUxpdGk
         RE7Q==
X-Forwarded-Encrypted: i=1; AHgh+RqV9xdYUsl0ZIsY21NX0ARnnfY50qQRCQxNkHdFVL/klRcOVobrjxFh/ygX2fBPTWZGRPRQ2JGWo4XlmglGBg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwkHl09ibmuO9VJhxbPajD/fMLE3ldXtroIdbmEPMTmTusD7RUx
	lmJtdlQ7rY1rx78gGCxHY7jQXM5EBn1CvuM+4w6rXe6j/6bTWWm58uT3/ZQul+JDKKQPND6KEUh
	TtciaR6w=
X-Gm-Gg: AR+sD10O+vBDPq+bxhp0pIT3ls2R+o6AZxhAmsEUblrc1mHUUdxLmoWAu4N6bGV5ojA
	vZtI7BizwDav5VP59fKZZ+LNIvj3m1uuS7Q9rVLu2Luz6pFg37Mw024JgLUAGtbbayw+9tB1yWS
	ZeXqxXBXxk4iAtByCokRvQ1qN1Air9JXBfsrB9XLs4HVSYYrfkOgpOEuYvI2FTtDg9o7iH7yxZQ
	qvthASLTJlmdi3V7SKMRjFvtXCGW2EhmiU99RF8rLzm3l/KQxzta3ktebymE75ymnA0FedDQlwY
	izj9p6Lq3JHBv7sOrKPnX1aTfLbL29EyfGuN4li3/Tg3MYpOXsCgy/+VZFwh/m5Tb4U7nwGxr9c
	8wuHmcDw/X4P8qBgUfuH8hh9IgfR4ZxeS9dSvx4MgyCH+6RIDR4zkE6+kGH2g5m38dqniX4S4EY
	GhjMflKcsZw8d0fG2RE76UqwFAblxqM2lnPYzJL1qFoBt3YzSNIKixCTiaHqKa60bFWzb65McG
X-Received: by 2002:a05:600c:4e87:b0:493:e365:ace9 with SMTP id 5b1f17b1804b1-4994e7c0356mr282890995e9.11.1786093765114;
        Fri, 07 Aug 2026 02:09:25 -0700 (PDT)
Received: from [192.168.0.101] ([109.77.30.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48002145966sm3871692f8f.5.2026.08.07.02.09.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Aug 2026 02:09:24 -0700 (PDT)
Message-ID: <c3cbebcf-19f5-4944-9e20-04dbb442c4d9@linaro.org>
Date: Fri, 7 Aug 2026 10:09:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] phy: rockchip-samsung-dcphy: factor MIPI D-PHY
 power on/off into helpers
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: jason98166@gmail.com, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Guochun Huang <hero.huang@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260726-dcphy-rx-v1-v2-0-cf9cc34a412a@gmail.com>
 <Ji-6adk9LJbP87Y7X6SfOcAyVnGpO4dbHk0lBikX3NGAPz3dynWpvL8QjkVM3G3jEnwTrTV0p7nOqBxPRaH0MQ==@protonmail.internalid>
 <20260726-dcphy-rx-v1-v2-2-cf9cc34a412a@gmail.com>
 <43327fb2-0085-4d86-b408-8723d852c258@linaro.org> <anTgZiqnol4226Le@venus>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <anTgZiqnol4226Le@venus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260807_020927_168287_A3117AD0 
X-CRM114-Status: UNSURE (   8.92  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMDYvMDgvMjAyNiAyMDozMSwgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cj4+IFRoaXMgbG9v
a3MgYSBiaXQgZnVubnkuCj4+Cj4+IERvIHlvdSBoYXZlIGFuIGludCBtZXRob2QoKSB7fSB3aXRo
IGEgZmluYWwgcGF0aCB0aGF0IHJldHVybnMgbm8gdmFsdWUgPwo+Pgo+PiBUb29saW5nL2NvbXBp
bGVycyB3aWxsIGRlZmluaXRlbHkgYW5kIHJpZ2h0bHkgY29tcGxhaW4gYWJvdXQgdGhhdC4KPiBp
bnQgZnVuY3Rpb24oKSB7Cj4gICAgICAuLi4KPiAKPiAgICAgIHN3aXRjaChmb28pIHsKPiAgICAg
IGNhc2UgNDI6Cj4gICAgICAgICAgcmV0dXJuIDE7Cj4gICAgICBkZWZhdWx0Ogo+ICAgICAgICAg
IHJldHVybiAwOwo+ICAgICAgfQo+ICAgICAgLyogY2Fubm90IGJlIHJlYWNoZWQgKi8KPiB9Cj4g
Cj4gR3JlZXRpbmdzLAo+IAo+IC0tIFNlYmFzdGlhbgoKSG1tLgoKVGhlIExMTSB0ZWxscyBtZSB0
aGVyZSBpcyBubyBjb21waWxlciB2ZXJzaW9uIHRoYXQgd2lsbCBnZW5lcmF0ZSBhIAp3YXJuaW5n
IGZvciB0aGlzLgoKRW50ZXJ0YWluaW5nIG92ZXJkb25lIHRvbwoKIkFjcm9zcyBjb21waWxlcnMg
dGhhdCB3aWxsIGV2ZXIgc2VlIHRoaXMgY29kZTogeWVzLCBhbmQgSSBjYW4gbm93IHNob3cgCml0
IHJhdGhlciB0aGFuIGFzc2VydCBpdCDigJQgSSBpbnN0YWxsZWQgdGhlIHNwcmVhZC4gZ2NjIDEy
LCAxMywgMTQgYW5kIApjbGFuZyAxOCwgZnJvbSAtV2FsbCAtV2V4dHJhIC1XcGVkYW50aWMgdXB3
YXJkOiBjbGVhbi4gVGhlbiB0aGUgZGVjaXNpdmUgCm9uZTogY2xhbmcgLVdldmVyeXRoaW5nIOKA
lCBldmVyeSBkaWFnbm9zdGljIGNsYW5nIHBvc3Nlc3NlcywgYSBzdHJpY3QgCnN1cGVyc2V0IG9m
IGFueSBDSSBjb25maWd1cmF0aW9uIHRoYXQgY2FuIGV4aXN0IOKAlCBvbiBTZWJhc3RpYW4ncyBl
eGFjdCAKZnVuY3Rpb246IHplcm8gb3V0cHV0LiIKCk1laAoKLS0tCmJvZAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
