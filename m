Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 497F2D10C06
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Oct 2024 20:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+49aZmMhEj+IgW7W1gtT0PzFWbvZ6b1UVGlaljDDeSQ=; b=deaXpY7AK5SQhU
	DOwHXcp1vSk4BrI1utGIwYHLAig7w6yqAEO/Up4zMUTv9GzIizkefvovI8VJXRq40UWY46lOoHayS
	DBij8wuxjIKcAZTjmx67U5abXFrpqcb5a59PGWQenfPEFlg0fM806M/sSULsacgM9lurBO3sRlO3f
	M5L+ASLVrnb9nmsffzuhOEFlpmdihALGFsD2b8NWt7GxOZWkrtpHsHxMAhhseMcCa/1yd9CgE+W/R
	9lteueL5pKmOaWyCtGjDIsbpjKl6e29wwQfzpZAAbpZzK3s+hTPmnJxGADwkq/IMpa20dIDjvKSHn
	nQ/1naIpq78DPCZy2PQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4nmN-00000007EWL-0O0v;
	Sat, 26 Oct 2024 20:52:59 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4na5-00000007DEH-0X9o
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Oct 2024 20:40:18 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4315eeb2601so40680875e9.2
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Oct 2024 13:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729975215; x=1730580015; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+U12laiwpKijtonpm2rJqfAmcV+KpNPmjWh/aXo9eE0=;
        b=mmDndX7ZdvyokO9Mga/HhHex76AP6dPyS3F7X+ZejblYhOF1HKBZdO87z+RD1zknkb
         iJnEbgNmxcBUSJwi2isMIhLXmHf9VgNpHDholXanKZb4D4k7Uwne4BkL3fQ3UzZIY6JR
         azdVLYYUham9b5AolYyttRUFD9Z5pVgAJQRuSaHXAtTxJuHb3QK9JItgkwIuYEHHDjqp
         jIC23DXvI5FuKrsQa5EMQH1EzGKsDuqfvwsFkRVHcPN+iI8wZE+Ls6nnIUw1F8bp3T6i
         +0xj7DwkwakH8/m7EwOV7RFNIe/5h89WGeAESVDOHHSOnmWQO6iJC2S5rJN7DPiyDRoh
         OLOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729975215; x=1730580015;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+U12laiwpKijtonpm2rJqfAmcV+KpNPmjWh/aXo9eE0=;
        b=VHpyTLFsrkuA3m8pQXpOE7cqmF1aPD0oDjDp7ElF0D6KVxYLvUO4A+0B/Erwzg1xvl
         HZbpbxSO3xmPXvS5ULB+C1SYefxsVQ8eE+EOwwzQoRAUoOd08BHo3CFF7LCbvRuHzEBw
         TFFocQhcO4VU+S+Zye0R8P9e4qE416jI5lJXy2G2rI9KWAVkXWoiUkKF56V8Ci8pMuQM
         9XLtdwyX+dMkuNPSSqMGaqkC1Ki3csVniERMPiN8+ebqzkeAaCdVSa6XoTaqfe/7hWGz
         Th4uk8VD6RHJR2pcrf0PKe+36KW9OX9LxTtNvN8CnyfIYT322agTiKOE/U+w7Xsuf9IK
         XTQQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbZGYCjptP0IqDk8kSv3t1F8Yi/+MFSCEWC4DVmnQfB9riIJaSkVZv9uZOnMkxRbxZumdPscIMN4a2IqV2Uw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyJs5b7t4fL/tixq8MhQSKuhuqA8CTPgDXjmzmLMOZkPHK1CHm3
	BI66qrNPXvtJU3fXalXQbCRKL8tNmCcRFSi19n9vkZbQiAdeNIw69pa+H6mD+KVskkybCFmDAd9
	UXzn7dbqXS3p2A+zQmT5OHk0rfns=
X-Google-Smtp-Source: AGHT+IHRL5LVmnQ6hUYh5tUvOqGgGPH3UWjWBf3AU/uB6dKyuo9fgvzdQ3lFYLG9eUffEbrD20D0NCSX7bZWV8X664w=
X-Received: by 2002:a5d:4106:0:b0:37d:612c:5e43 with SMTP id
 ffacd0b85a97d-3806101335amr3457930f8f.0.1729975215215; Sat, 26 Oct 2024
 13:40:15 -0700 (PDT)
MIME-Version: 1.0
References: <20241026100310.52679-1-honyuenkwun@gmail.com> <20241026100310.52679-10-honyuenkwun@gmail.com>
In-Reply-To: <20241026100310.52679-10-honyuenkwun@gmail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Sat, 26 Oct 2024 15:40:04 -0500
Message-ID: <CALWfF7KRwBYOwZqTivpLrd6W45UHXX3CAixs-AMZTB13jWsapg@mail.gmail.com>
Subject: Re: [PATCH 09/15] arm64: dts: rockchip: add lower USB3 port to opi5max
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org, 
	Ondrej Jirman <megi@xff.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241026_134017_193175_2A5C0DB8 
X-CRM114-Status: GOOD (  11.56  )
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

T24gU2F0LCBPY3QgMjYsIDIwMjQgYXQgNTowM+KAr0FNIEppbW15IEhvbiA8aG9ueXVlbmt3dW5A
Z21haWwuY29tPiB3cm90ZToKPgo+IEVuYWJsZSBmdWxsIHN1cHBvcnQgKFhIQ0kpIGZvciB0aGUg
bG93ZXIgVVNCMyBwb3J0IGZyb20gT3JhbmdlIFBpIDUgTWF4Lgo+djAKPiB0aGUgdmNjNXYwX3Vz
YjMwIHJlZ3VsYXRvciBzaGFyZXMgdGhlIHNhbWUgZW5hYmxlIGdwaW8gcGluIGFzIHRoZQo+IHZj
YzV2MF91c2IyMCByZWd1bGF0b3IuCgoKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OC1vcmFuZ2VwaS01LW1heC5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LW1heC5kdHMKPiBAQCAtMTExLDYgKzExMSw4IEBA
IHZjYzV2MF9zeXM6IHZjYzV2MC1zeXMtcmVndWxhdG9yIHsKPiAgICAgICAgIH07Cj4KPiAgICAg
ICAgIC8qIFJlcHJlc2VudHMgdGhlIHZjYzV2MF91c2IyMCBpbiB0aGUgc2NoZW1hdGljICovCj4g
KyAgICAgICAvKiBBbHNvIHJlcHJlc2VudHMgdGhlIHZjYzV2MF91c2IzMCBpbiB0aGUgc2NoZW1h
dGljLAo+ICsgICAgICAgICAgYm90aCByZWd1bGF0b3JzIHNoYXJlIHRoZSBzYW1lIGVuYWJsZSBn
cGlvICovCj4gICAgICAgICB2Y2M1djBfaG9zdDogdmNjNXYwLWhvc3QtcmVndWxhdG9yIHsKPiAg
ICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ICAgICAgICAg
ICAgICAgICBlbmFibGUtYWN0aXZlLWhpZ2g7CgpJcyB0aGVyZSBhIGJldHRlciB3YXkgdG8gcmVw
cmVzZW50IHRoZSB0d28gVVNCIGhvc3QgcmVndWxhdG9ycz8gSW4gdGhlCnNjaGVtYXRpYyBbMV0g
cGFnZSAxNCwgdGhlcmUncyB0d28gcmVndWxhdG9ycyB2Y2M1djBfdXNiMjAgYW5kCnZjYzV2MF91
c2IzMCwgaG93ZXZlciB0aGV5IGJvdGggdXNlIFVTQl9IT1NUX1BXUkVOIGFzIHRoZSBFTiBwaW4u
CgpJbiB0aGUgY2FzZSBvZiB0aGUgT1BJNVBsdXMgWzJdIHBhZ2UgMTYsIGl0IHVzZXMgYSBkaWZm
ZXJlbnQgRU4gcGluCmZvciB2Y2M1djBfdXNiMzAuIEhvd2V2ZXIsIGluIHRoZSBtYWlubGluZSBP
UEk1UGx1cywgaXQgbGVmdAp2Y2M1djBfdXNiMzAgcmVndWxhdG9yIG91dCBvZiB0aGUgZHRzIFsz
XS4KClsxXSBodHRwOi8vd3d3Lm9yYW5nZXBpLm9yZy9odG1sL2hhcmRXYXJlL2NvbXB1dGVyQW5k
TWljcm9jb250cm9sbGVycy9zZXJ2aWNlLWFuZC1zdXBwb3J0L09yYW5nZS1QaS01LU1heC5odG1s
ClsyXSBodHRwOi8vd3d3Lm9yYW5nZXBpLm9yZy9odG1sL2hhcmRXYXJlL2NvbXB1dGVyQW5kTWlj
cm9jb250cm9sbGVycy9zZXJ2aWNlLWFuZC1zdXBwb3J0L09yYW5nZS1QaS01LXBsdXMuaHRtbApb
M10gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFs
ZHMvbGludXguZ2l0L3RyZWUvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtb3Jh
bmdlcGktNS1wbHVzLmR0cyNuMjA5CgpKaW1teQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
