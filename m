Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA725C7115D
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jun 2025 12:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1GZNYvqbO8n7f9fibqIejc2dmhtBBhGiPKnksiW3Ps8=; b=sjvzIuZEzupBFS
	DAOkeLNIAuAxK8Bmq336ti27GvXKWst5lVKCFyFMbZlpz16dGBkCRBXXpKV96pF0wqBE7Jz5MwjYW
	8AXmZoO/tuhQZYkPkGYimn0AcplbPGcm4rw6f8hOwEZKg1zNrAJ6jsZoi6cmFJvtWN8386sy8VC2/
	Q9LyBxmJUtC4hjvVheBXZGQUBBxWwm1AOzOlN0/ZIf4g9LxqK49q2aTNtd8kD8V9MgsNOoH0Gokbs
	zoQkMuDTvmEQsYz6/vDkvjTYeab53y0wcvVQ7ZGcuMLvZyIolCTvYf0D6qhNYPY3uyfjrIIj8SZso
	ZMlwdUP5ApLMGwoKNQfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSaTj-0000000FWnb-2QAy;
	Fri, 20 Jun 2025 12:04:19 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSa2d-0000000FTfe-0VkX;
	Fri, 20 Jun 2025 11:36:20 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-607cf70b00aso3110762a12.2;
        Fri, 20 Jun 2025 04:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750419377; x=1751024177; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PcgXI/SwiX/bwD34wkRIbcjhA4z+lQnGQOUOu85+vT8=;
        b=DSa7LVLU459+NKxKHHJQja4hJRQ0MVr5LWEsPoO4pI8gmLWs0aqC36gkUZQBK1AanA
         +XxVtP/FWdC/J/EktpK0/ezRI+pk9zaaTDReBUOSutjMZiPbgtb24CKUWIMtU6GQQImC
         VLMonKLg/awcXHCPYHIPm6HZMt2iRt8moI0zPqqwrDDGLqWRnh7TGzwrgToJDiauQH2C
         tr7jbLN0c2IadgLcfUDyjguxC9aCCiqUrbJcFjrvRf8haorGOwgc3X4YGHo/1nOLZWGI
         X75Ex4FvVBqEuWOR/pps85BXWTXeOwLCvmF0P0uAbMfW4y0n/XIrJQ4B9BAUxbTgT01e
         etyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750419377; x=1751024177;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PcgXI/SwiX/bwD34wkRIbcjhA4z+lQnGQOUOu85+vT8=;
        b=oF95SOWnZmFS0coDvsCasUZjb7H44bdAXmsU/FeV5CabDdd04kZ+k2Zbew1hb6T7eF
         xn+U64SpFYkDhq8N9Wz/LnIPkNsf4ezvvQtED77fF3d4R2+FcIiZtK54uysnOt0BhGp8
         UhZZ66OHJXdzNqjFkGIudjOH3Z4c6Cn++5Bu2wnc/TIrVCBMMUgX/wMvtVQtOyEJOBA4
         X+SJXX9T+IlnElyHkv+aGX5K7Ukf2AMtkHA2ktt/rzBTzRlMocfIZA145EsaJXJJPY5q
         Z3bVq+elOWdA9JB5RR5PmbiGhmEcAHBvL7QCfwWpgwSN4tDlyW9l2TZ+xZDOPeTwRQ1b
         jTLQ==
X-Forwarded-Encrypted: i=1; AJvYcCUs7LDpmhKl5OzCVOE0ENkrezV9srmOdtSuskraYIA/8Gqsy7nPA+g5pS5vgzKflD3qj7e4GalW9NUsDe5zzwXY@lists.infradead.org, AJvYcCWdQ5II2kx9WihoqLVcj7BXg/9nhlRRKLrtEQQeRrR1yE/XtGkvRwBgn8X5PGMbvT/18DvfE/p7LfEN6B8VYBA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx9c8EqIXbVG49icOR6alkeOVEbw9vzADBh5JwhoHZAqKDNrxbO
	o0zBwvAH5J2LBZa8mdf7bIBHlsugI/JwOCorcxDMj+1k0UUELI4S5R0O
X-Gm-Gg: ASbGncuuFkKcjuh1BbpW9KGd8YwUJy2N4bNeZ1kzd9Y5zsI5wY6tVm7RTgSC2bY/2XO
	nYezqpD4U+02VEJ0tBxZxq0dWkOc3s1H76j583B7TjJCLMyaUDYzd4lPffBqTBiJ+e2QQ0vDuCR
	3PCMkf4jifFw/VZcsLVOpU2K2VeIgjCm+RVyp4yYqQFIMIE7AE6/S2TFs1LPHGE3lIokbrptshv
	d89lF0i62FUA96kaPE3KFIj5vR0T6CImB+lEj0kRYRcQDTs328/paI/xf0gNaawjpHhJ/UYAKVZ
	mIoGbHbWTLrfy+8Ku6X7G6oqYFp89VnR/ygLcSSLVYQIZzyMe4Xm22Umc+c6coyqMELb82/a1sw
	zo331v4ZzqMez4iXVagpVbHrcN/g59nFotARD2KKX
X-Google-Smtp-Source: AGHT+IHBoM3zuM2+rcjourKLd9oqU11oDVF2zMJ82/RpbVFFdMzcRAVeWNOk+uMVQHC4Dg6qq0mMDA==
X-Received: by 2002:a05:6402:2749:b0:608:42f9:a5cb with SMTP id 4fb4d7f45d1cf-60a1cd314aemr2249040a12.10.1750419376882;
        Fri, 20 Jun 2025 04:36:16 -0700 (PDT)
Received: from localhost.localdomain (ip092042140082.rev.nessus.at. [92.42.140.82])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60a18504e95sm1302003a12.4.2025.06.20.04.36.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 04:36:16 -0700 (PDT)
From: Jakob Unterwurzacher <jakobunt@gmail.com>
X-Google-Original-From: Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>,
	Lukasz Czechowski <lukasz.czechowski@thaumatec.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Diederik de Haas <didi.debian@cknow.org>,
	Farouk Bouabid <farouk.bouabid@cherry.de>,
	Johan Jonker <jbx6244@gmail.com>
Cc: stable@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: use cs-gpios for spi1 on ringneck
Date: Fri, 20 Jun 2025 13:35:46 +0200
Message-Id: <20250620113549.2900285-1-jakob.unterwurzacher@cherry.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_043619_161499_FAAD3837 
X-CRM114-Status: GOOD (  15.44  )
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

RnJvbTogSmFrb2IgVW50ZXJ3dXJ6YWNoZXIgPGpha29iLnVudGVyd3VyemFjaGVyQGNoZXJyeS5k
ZT4KCkhhcmR3YXJlIENTIGhhcyBhIHZlcnkgc2xvdyByaXNlIHRpbWUgb2YgYWJvdXQgNnVzLApj
YXVzaW5nIHRyYW5zbWlzc2lvbiBlcnJvcnMgd2hlbiBDUyBkb2VzIG5vdCByZWFjaApoaWdoIGJl
dHdlZW4gdHJhbnNhY3Rpb24uCgpJdCBsb29rcyBsaWtlIGl0J3Mgbm90IGRyaXZlbiBhY3RpdmVs
eSB3aGVuIHRyYW5zaXRpb25pbmcKZnJvbSBsb3cgdG8gaGlnaCBidXQgc3dpdGNoZWQgdG8gaW5w
dXQsIHNvIG9ubHkgdGhlIENQVQpwdWxsLXVwIHB1bGxzIGl0IGhpZ2gsIHNsb3dseS4gVHJhbnNp
dGlvbnMgZnJvbSBoaWdoIHRvIGxvdwphcmUgZmFzdC4gT24gdGhlIG9zY2lsbG9zY29wZSwgQ1Mg
bG9va3MgbGlrZSBhbiBpcnJlZ3VsYXIgc2F3dG9vdGgKcGF0dGVybiBsaWtlIHRoaXM6CiAgICAg
ICAgICAgICAgICAgICAgICAgICBfX19fXwogICAgICAgICAgICAgIF4gICAgICAgICAvICAgICB8
CiAgICAgIF4gICAgICAvfCAgICAgICAgLyAgICAgIHwKICAgICAvfCAgICAgLyB8ICAgICAgIC8g
ICAgICAgfAogICAgLyB8ICAgIC8gIHwgICAgICAvICAgICAgICB8Cl9fXy8gIHxfX18vICAgfF9f
X19fLyAgICAgICAgIHxfX18KCldpdGggY3MtZ3Bpb3Mgd2UgaGF2ZSBhIENTIHJpc2UgdGltZSBv
ZiBhYm91dCAyMG5zLCBhcyBpdCBzaG91bGQgYmUsCmFuZCBDUyBsb29rcyByZWN0YW5ndWxhci4K
ClRoaXMgZml4ZXMgdGhlIGRhdGEgZXJyb3JzIHdoZW4gcnVubmluZyBhIGZsYXNoY3AgbG9vcCBh
Z2FpbnN0IGEKbTI1cDQwIHNwaSBmbGFzaC4KCldpdGggdGhlIFJvY2tjaGlwIDYuMSBrZXJuZWwg
d2Ugc2VlIHRoZSBzYW1lIHNsb3cgcmlzZSB0aW1lLCBidXQKZm9yIHNvbWUgcmVhc29uIENTIGlz
IGFsd2F5cyBoaWdoIGZvciBsb25nIGVub3VnaCB0byByZWFjaCBhIHNvbGlkCmhpZ2guCgpUaGUg
UkszMzk5IGFuZCBSSzM1ODggU29DcyB1c2UgdGhlIHNhbWUgU1BJIGRyaXZlciwgc28gd2UgYWxz
bwpjaGVja2VkIG91ciAiUHVtYSIgKFJLMzM5OSkgYW5kICJUaWdlciIgKFJLMzU4OCkgYm9hcmRz
LgpUaGV5IGRvIG5vdCBoYXZlIHRoaXMgcHJvYmxlbS4gSGFyZHdhcmUgQ1MgcmlzZSB0aW1lIGlz
IGdvb2QuCgpGaXhlczogYzQ4NGNmOTNmNjFiICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkZCBQ
WDMwLcK1UTcgKFJpbmduZWNrKSBTb00gd2l0aCBIYWlrb3UgYmFzZWJvYXJkIikKQ2M6IHN0YWJs
ZUB2Z2VyLmtlcm5lbC5vcmcKUmV2aWV3ZWQtYnk6IFF1ZW50aW4gU2NodWx6IDxxdWVudGluLnNj
aHVsekBjaGVycnkuZGU+ClNpZ25lZC1vZmYtYnk6IEpha29iIFVudGVyd3VyemFjaGVyIDxqYWtv
Yi51bnRlcnd1cnphY2hlckBjaGVycnkuZGU+Ci0tLQogLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3B4
MzAtcmluZ25lY2suZHRzaSAgICAgIHwgMjIgKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNo
YW5nZWQsIDIyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3B4MzAtcmluZ25lY2suZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcHgzMC1yaW5nbmVjay5kdHNpCmluZGV4IGFiMjMyZTVjN2FkNi4uZGNjNjJkZDliODk0IDEw
MDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtcmluZ25lY2suZHRz
aQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtcmluZ25lY2suZHRzaQpA
QCAtMzc5LDYgKzM3OSwxOCBAQCBwbWljX2ludDogcG1pYy1pbnQgewogCQkJCTwwIFJLX1BBNyBS
S19GVU5DX0dQSU8gJnBjZmdfcHVsbF91cD47CiAJCX07CiAJfTsKKworCXNwaTEgeworCQlzcGkx
X2NzbjBfZ3Bpbzogc3BpMS1jc24wLWdwaW8geworCQkJcm9ja2NoaXAscGlucyA9CisJCQkJPDMg
UktfUEIxIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3VwXzRtYT47CisJCX07CisKKwkJc3BpMV9j
c24xX2dwaW86IHNwaTEtY3NuMS1ncGlvIHsKKwkJCXJvY2tjaGlwLHBpbnMgPQorCQkJCTwzIFJL
X1BCMiBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF91cF80bWE+OworCQl9OworCX07CiB9OwogCiAm
cG11X2lvX2RvbWFpbnMgewpAQCAtMzk2LDYgKzQwOCwxNiBAQCAmc2RtbWMgewogCXZxbW1jLXN1
cHBseSA9IDwmdmNjaW9fc2Q+OwogfTsKIAorJnNwaTEgeworCS8qCisJICogSGFyZHdhcmUgQ1Mg
aGFzIGEgdmVyeSBzbG93IHJpc2UgdGltZSBvZiBhYm91dCA2dXMsCisJICogY2F1c2luZyB0cmFu
c21pc3Npb24gZXJyb3JzLgorCSAqIFdpdGggY3MtZ3Bpb3Mgd2UgaGF2ZSBhIHJpc2UgdGltZSBv
ZiBhYm91dCAyMG5zLgorCSAqLworCWNzLWdwaW9zID0gPCZncGlvMyBSS19QQjEgR1BJT19BQ1RJ
VkVfTE9XPiwgPCZncGlvMyBSS19QQjIgR1BJT19BQ1RJVkVfTE9XPjsKKwlwaW5jdHJsLTAgPSA8
JnNwaTFfY2xrICZzcGkxX2NzbjBfZ3BpbyAmc3BpMV9jc24xX2dwaW8gJnNwaTFfbWlzbyAmc3Bp
MV9tb3NpPjsKK307CisKICZ0c2FkYyB7CiAJc3RhdHVzID0gIm9rYXkiOwogfTsKLS0gCjIuMzku
NQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
