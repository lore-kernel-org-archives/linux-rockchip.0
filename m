Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86280E77180
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 20:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RzMgh9nAGTXGB11QY1t8nT77hJyG41FlPJIkrjns9jE=; b=DQl3cioiszwrdd
	JqXGD5cjVM1CIsLYjFJL9idXQ6IJLRjc2ZWryh8lAfi1cEvsdUSj4hQvKkJv+GUapM65vMFjCnlSK
	p0Q4vZvQmw1Cf+S+xqSLftFYdGBndqACC/FjSPyncG5zm8pQn4+lIw/3Pe6DTkjXT6B/bqn8x1CQ/
	7sFTcbat9bOZBadJkY5xFeIKiUGfd1fcgQc0jNkrxeDu/DOBFHEPLC3vgu3zdCeqLl3RZWLu5Ema0
	ZuK1jnNlwFCvvRu8WAnjh4Bi3zEiFHzU2nVar0pcB4VUZTNxW5tMeoUkzzV1mSefBxuhPL6g1Ai+f
	b/Nu6BjqWrUs7hIHnnnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL6dG-0000000CddN-1cE9;
	Tue, 10 Dec 2024 20:14:58 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL6c3-0000000CdP4-1nyY;
	Tue, 10 Dec 2024 20:13:44 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5d3f65844deso4325993a12.0;
        Tue, 10 Dec 2024 12:13:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733861621; x=1734466421; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QgKU23big2iA/4lgJjztR5Vr5E09reP3/HgJodbz0+Y=;
        b=H40yMZbH2JTWyF9dk+ZfefleQrjTv4RrsAzh6BAQ4rZoeZfVLlAQJmGpE1Y2pc5d0k
         PIdsVzIwQpT1rEk/eWDC+eonu1wvoV+L1kdBqYY956FiCnANvO+MzblVj99Iu+A2aBer
         KoI2C55RXCBmTOKVoxRm8YhOrdc3EGvUO3pZj3VVEmSdv0NqqY7vONamQsszie+qhdmi
         WsL7jVCPi1OCI+ADGq6Wsa58NeJ1gCkWNhRE2f+/GnHRU3Iu6Xd7PCS34UvubdN93O6J
         wMOf0191dQ4MelaTJm35X072O7XwUF0/SFw7Z/UGVx7DBjzlY+dMCIioyxqydfUlIfD7
         dyNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733861621; x=1734466421;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QgKU23big2iA/4lgJjztR5Vr5E09reP3/HgJodbz0+Y=;
        b=MmsRJ3AqWpbqwu3kv7X03/7NOySuPwMszEv/qkNlK/ZEskamSClFGgGiyNbuYXV+DB
         UMvyNi6tHyJWzvo4lJN7REK9oCdlGaCTKgUOmFQsrhCNfzwxETinePMN4jj22/N8xejV
         tAIOT78GKCM05CEi5s4v25BqxG/kEdfultLRrw33bfQRb6ivaDi4bu8m7giSmxr5w2h/
         eeK8tERvZ/J/iZePoHqzlCCg+HfIf2Ua3fEyYt1JzDxGGCCB8EF9HtKJZmQIz4HORJ6E
         1f68EUOmhjsh0FMMCN9vuAdT6XHj9voMJ8GCbLazkiu8LDm5HPntQTVyZJHJ2IJM25Qg
         0IiQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBX2lED/CpmYH2nvj/3muLHjwKyo11t5LTmCAXxMnSzSnXTTD/D1u9oQH6iNYxa/SCZZ178C6ordFSswNwmLo=@lists.infradead.org, AJvYcCXJqfQfqKFMwNzYs2YYBFlOf8e40zBbJmSNw11wJyLEewFlihntiwlf7A3WwUg7F1khy8P2CIJxwauY6hGvp2RE@lists.infradead.org
X-Gm-Message-State: AOJu0Yzoe3pMjN59zUI078DbQ58tGl4+R+l9ks8lXrf1Uz8RQ8esTRxC
	LG61hZuoWO083Xf6f4AJO/5uuhNy6nk50tmeUj+geQVRx6uQIIPRWB8RQrQTxG+ebDNSzCVH6VK
	vIYuGCDBu1qBM/Hoi3tTYh+ZNOI0=
X-Gm-Gg: ASbGncvCERGBmxu6GvLdwIZ0XVp9um2v4iqCtOGUisfRWcMOQIQBtm2x4xrm0b7iVpg
	HIXPK08RnEmWK4NTWcNVUKfNpbR5IGRTpSOKH
X-Google-Smtp-Source: AGHT+IHT1KsOnBSj6/Zb1BhVvcEFV7dOkovEkS80li9AoqSjDy646pb5zs7A/JETWOAV235CrH6wQHRXekgMqdfvQeU=
X-Received: by 2002:a05:6402:4583:b0:5d2:2768:4f10 with SMTP id
 4fb4d7f45d1cf-5d4330ada8dmr127736a12.17.1733861621325; Tue, 10 Dec 2024
 12:13:41 -0800 (PST)
MIME-Version: 1.0
References: <20241210013010.81257-1-pgwipeout@gmail.com> <20241210013010.81257-4-pgwipeout@gmail.com>
 <20693a7b7cb1aaed2c21b84fd57c4b72@manjaro.org>
In-Reply-To: <20693a7b7cb1aaed2c21b84fd57c4b72@manjaro.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 10 Dec 2024 15:13:29 -0500
Message-ID: <CAMdYzYr-4mA703ZWGZnCoRtmmkS689XHk854j73M4pgJceeJcQ@mail.gmail.com>
Subject: Re: [PATCH 3/6] arm64: dts: rockchip: remove ethernet alias from rk3328-roc
To: Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>, 
	Diederik de Haas <didi.debian@cknow.org>, Johan Jonker <jbx6244@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_121343_467884_7E6CA86F 
X-CRM114-Status: GOOD (  21.11  )
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

T24gVHVlLCBEZWMgMTAsIDIwMjQgYXQgMzowMeKAr0FNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1h
bmphcm8ub3JnPiB3cm90ZToKPgo+IEhlbGxvIFBldGVyLAo+Cj4gT24gMjAyNC0xMi0xMCAwMjoz
MCwgUGV0ZXIgR2VpcyB3cm90ZToKPiA+IFJlbW92ZSB0aGUgZXRoZXJuZXQgYWxpYXMgYWRkZWQg
YmFjayBpbiBkdXJpbmcgdGhlIHJrMzMyOC1yb2MgZHRzaQo+ID4gY29udmVyc2lvbi4KPgo+IEkg
anVzdCBjaGVja2VkIGFnYWluIHRoZSBkdHNpIHBhcmVudCBjb252ZXJzaW9uIEkgcGVyZm9ybWVk
IGluCj4gdGhlIGNvbW1pdCBmM2M2NTI2ZDZmYjIgKCJhcm02NDogZHRzOiByb2NrY2hpcDogQ29u
dmVydCBkdHMgZmlsZXMKPiB1c2VkIGFzIHBhcmVudHMgdG8gZHRzaSBmaWxlcyIpLCBhbmQgYm90
aCByazMzMjgtcm9jLWNjLmR0cyBhbmQKPiByazMzMjgtcm9jLXBjLmR0cyBoYWQgdGhlIGV0aGVy
bmV0MCBhbGlhcyBkZWZpbmVkIGJlZm9yZSB0aGUKPiBjb252ZXJzaW9uLiAgVGh1cywgdGhlIGFs
aWFzIHdhc24ndCBhZGRlZCBiYWNrIGJ5IG1pc3Rha2UgZHVyaW5nCj4gdGhlIGNvbnZlcnNpb24s
IGl0IHdhcyB0aGVyZSBiZWZvcmUuCj4KPiBNb3Jlb3ZlciwgSSBkb24ndCBzZWUgd2h5IHdvdWxk
IHdlIHdhbnQgdG8gZGVsZXRlIHRoZSBldGhlcm5ldDAKPiBhbGlhcyhlcykgaW4gdGhlIGZpcnN0
IHBsYWNlPyAgSXQncyB1c3VhbCBmb3IgUm9ja2NoaXAgYm9hcmQgZHRzCj4gZmlsZXMgdG8gaGF2
ZSBldGhlcm5ldFggYWxpYXNlcyBkZWZpbmVkLCBhbmQgYm90aCBST0MtUkszMzI4LUNDCj4gYW5k
IFJPQy1SSzMzMjgtUEMgaGF2ZSB0aGVpciBnbWFjMmlvIERUIG5vZGVzIGVuYWJsZWQsIGFuZCB0
aGUKPiBib2FyZHMgaGF2ZSB3aXJlZCBFdGhlcm5ldCBwb3J0cywgc28gdGhleSBzaG91bGQgYWxz
byBoYXZlIHRoZQo+IGV0aGVybmV0MCBhbGlhcyhlcykgZGVmaW5lZC4KPgo+IEFtIEkgbWlzc2lu
ZyBzb21ldGhpbmc/CgpZb3UgYXJlbid0IG1pc3Npbmcgc29tZXRoaW5nLCBJIGp1c3QgbWlzdW5k
ZXJzdG9vZCB3aGF0IHdhcyBoYXBwZW5pbmcKd2l0aCB5b3VyIHBhdGNoLiBJIGNhbiBzYWZlbHkg
ZHJvcCB0aGlzLgoKVGhhbmtzIQpQZXRlcgoKPgo+ID4gRml4ZXM6IGYzYzY1MjZkNmZiMiAoImFy
bTY0OiBkdHM6IHJvY2tjaGlwOiBDb252ZXJ0IGR0cyBmaWxlcyB1c2VkIGFzCj4gPiBwYXJlbnRz
IHRvIGR0c2kgZmlsZXMiKQo+ID4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgR2VpcyA8cGd3aXBlb3V0
QGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4KPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzMyOC1yb2MuZHRzaSB8IDEgLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0p
Cj4gPgo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4
LXJvYy5kdHNpCj4gPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvYy5k
dHNpCj4gPiBpbmRleCBiNWJkNWU3ZDU3NDguLmY3ODJjODIyMGRkMyAxMDA2NDQKPiA+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvYy5kdHNpCj4gPiArKysgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1yb2MuZHRzaQo+ID4gQEAgLTksNyAr
OSw2IEBACj4gPgo+ID4gIC8gewo+ID4gICAgICAgYWxpYXNlcyB7Cj4gPiAtICAgICAgICAgICAg
IGV0aGVybmV0MCA9ICZnbWFjMmlvOwo+ID4gICAgICAgICAgICAgICBtbWMwID0gJnNkbW1jOwo+
ID4gICAgICAgICAgICAgICBtbWMxID0gJmVtbWM7Cj4gPiAgICAgICB9OwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
