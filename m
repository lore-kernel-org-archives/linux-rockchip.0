Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F5EFCF2590
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 03:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eOl3aURkFp0SIki5QBPXqMm2WJpyWgUroNr/uos3Axo=; b=WdbOVc+DufQmC+
	ZIZO4b2sFFtEewQSXK4qJYzk+MuexLDrGJ6FCD3kPdOFgExyo5AgOVe1szR0R0qNJCXIg/0bUb7cL
	9K0QsmqFOz3Tl1s1XFWAmNCsXePMLwRoYe1ZUVBq15CJYBZ0jZ3jj8IoT/8kOJEPHq+s3SN7ei6lP
	abUy5/5Jz2Drn3ccKDcUKAN+czyu9g6Oa2gumBZHi81uuEKEvurZu3M/0y+FxyknreTguXF+CiFa8
	P9fo2EUArJdOKs13KY5JiW6+poA69d3wheb1MyBsiK73saQVj8r/f3csQIY9SK9xxNdHilu334sVB
	XiKVu6mmAuHisGh8msSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Byt-00000003dSi-3Yv1;
	Mon, 14 Oct 2024 03:42:51 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0BxU-00000003dH4-1nt6;
	Mon, 14 Oct 2024 03:41:26 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-37d495d217bso3337950f8f.0;
        Sun, 13 Oct 2024 20:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728877282; x=1729482082; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mELz8a8zfTbhzWj4Dc9TOqu9NWONfm+X3dBjyrOSck4=;
        b=Pi5zr0x+nP/g1rQBjxgAu7CM0wZw6t6PSYiej60xZHp1dbPu65M1tr3uE/e0zGDmL2
         zjiwdrs/UaDqXm/79xxqpyfKXc32ESWp82IZAmgLNuQINBeHLQoQ5ec4Zt1EjL3tAeUX
         k+f6wPAxAHi/DRfT8d1dUBSfs6kKyX/ik0rMrgpl7R4mVGmc/5DsEiyC7mx83YyuuK61
         njexteyHyfs28lrUVPPw8sKLW19GQBfSRTpbwEUx/vc+b3tuibm1pRLk9olwQ7rwd3fd
         VKl74U/EZz3DXF/MoRp41ZqZ0VEnhVe2J1bFPtG4eGtOJxgnKIGRJOh8z9JQOaz7f6lg
         af7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728877282; x=1729482082;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mELz8a8zfTbhzWj4Dc9TOqu9NWONfm+X3dBjyrOSck4=;
        b=iC1yu/2p7+XkDfQ3s6+vlb9clnXgzqbaB0TzXbRDQslXxjOYCmfNc5gXIcDFZ3ylL8
         fSUyM4GAIDg7I3ZelkRV9VW/M5P89S7ylIDsPPy0H/lXxVPxIwZWYXNv4K+3b/fteoqu
         C5z973T3in0WJlH1HkFdAEyqoCIsAenXjBhAsoV9SYnAJudYV3toPJm/MY8g8mCBsn6x
         WogLx8KDhGbGWzy3kd+lkMHUr8aIdXWZSejbFnznGVVHP3r7cliIdL+8WMJbuIy0WHq9
         Np95cWSNQKABLe98VpUycQlJT6cMtZWbhabWEAZGyo8/3DoA0J7M9FUMHb//xa11xiX5
         75Fg==
X-Forwarded-Encrypted: i=1; AJvYcCUe5Z9Rj4rAGooVdf+ojHJOttuT40wnZYMjQnlnKcOHhEncRV6esePqfChV/4sXzOOIAchPNY/kykkJHQB40QvX@lists.infradead.org, AJvYcCVi3Iow8boysMFejve6M45EUDFPHaLVcVN5YIJ1XQ59lAglF3b8q+6lWOB0LDZiswfwHOl10n4NSQv7IFZ4n3w=@lists.infradead.org
X-Gm-Message-State: AOJu0YwQ0wKoa9oLA7z/hvwDRX69u6PAvE8Zi/MX0/L3Lzov2F2vdv0e
	/ghKO0zJTStk/TFYVNeHBH/t58PvY0oBgx7pJe4XDyJsjW7CNXej82pU9anri7DJtSMh1n7+aE7
	64cac38S2ra8lmA9VqY1b8zZMllU=
X-Google-Smtp-Source: AGHT+IEuZXkrca6rIsUVQwVU97haNonzhsHAqe8u5lA+PAFqgXiPP+0kQTUchcBTz53mVNKJeYrFkQei/keoHkeSEYo=
X-Received: by 2002:adf:b359:0:b0:37d:4c40:699 with SMTP id
 ffacd0b85a97d-37d5ff25593mr6606983f8f.5.1728877281830; Sun, 13 Oct 2024
 20:41:21 -0700 (PDT)
MIME-Version: 1.0
References: <20241013213305.310844-1-cenk.uluisik@googlemail.com> <20241013213305.310844-2-cenk.uluisik@googlemail.com>
In-Reply-To: <20241013213305.310844-2-cenk.uluisik@googlemail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Sun, 13 Oct 2024 22:41:10 -0500
Message-ID: <CALWfF7+nek6S--Cfq51QE-vSTnnENkbzgGiQkH7RQyjXeUpC-Q@mail.gmail.com>
Subject: Re: [PATCH V3 2/2] dt-bindings: arm: rockchip: Add Orange Pi 5b
To: Cenk Uluisik <cenk.uluisik@googlemail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Chris Morgan <macromorgan@hotmail.com>, Dragan Simic <dsimic@manjaro.org>, 
	Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>, Andy Yan <andyshrk@163.com>, 
	Jagan Teki <jagan@edgeble.ai>, Michael Riesch <michael.riesch@wolfvision.net>, 
	Jing Luo <jing@jing.rocks>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241013_204124_494769_D47D6543 
X-CRM114-Status: GOOD (  11.79  )
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

T24gU3VuLCBPY3QgMTMsIDIwMjQgYXQgNDozM+KAr1BNIENlbmsgVWx1aXNpawo8Y2Vuay51bHVp
c2lrQGdvb2dsZW1haWwuY29tPiB3cm90ZToKPgo+IFRoaXMgY29tbWl0IGFkZHMgdGhlIFh1bmxv
bmcgT3JhbmdlIFBpIDViIGVudHJ5IHRvIHRoZSBkZXZpY2UgdHJlZQo+IGJpbmRpbmdzIGluc2lk
ZSB0aGUgRG9jdW1lbnRhdGlvbiBmb2xkZXIuIEkga25vdyB5b3Ugc2FpZCBJCj4gc2hvdWxkIGV4
dGVuZCB0aGUgT3JhbmdlIFBpIDUgb25lIHdpdGggYW4gZW51bSwgYnV0IEkgbWFkZSBhIHdob2xl
IG5ldwo+IGVudHJ5LCBiZWNhdXNlIGxvb2tpbmcgYXQgYWxsIHRoZSBvdGhlciBlbnRyaWVzLCB0
aGV5IGFsc28gY3JlYXRlIG5ldwo+IGVudHJpZXMgaW4gYSBjYXNlICJsaWtlIHRoaXMiLiBJIGhv
cGUgdGhpcyBpcyBva2F5LCBvciBtYXliZSBJIG1pc3VuZGVyc3RhbmQgc29tZXRoaW5nLgo+IFRo
YW5rIHlvdSBpbiBhZHZhbmNlLgo+CgpBbiBleGFtcGxlIG9mIHVzaW5nIGFuIGVudW0gaXMgdGhl
IE5hbm9QaSBSNiBib2FyZHMKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tl
cm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sP2g9djYuMTEjbjI0MQoKPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
