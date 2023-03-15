Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F93DC7618B
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 23:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+pAepe1uBz0VZgQR55kcaO9ccHU6FfRc8IeGPzNuQU=; b=v5W2gcLKiGx80t
	sDbteePCaYkeS1O5sgJ3MvT28GDKtQBrGvMsRaz+/tWlDV6zP0EhlpCTLIwUFBOqfmOsOKDdaK2pi
	X8+VU9ZOHfMKP5uuNUek4aRt2BOxOxxOuypayOcfYxd0pITwo+DQF7rOwUz41wDVv0xG82IIlCS2C
	4OOhuXiu4nG4Vr/PKobOEHFr5s9jiX46MFgPr1tmtYrnDh1TEfjXmcVSLC2wUNY6yr7tnl+fjQHer
	lrxThSQnMB+L8puWbSgzokadLk4W0FNZmKj8KqQ5i1xE5bj6o4OylIt3A1TavS1MOPzPVQFDiuxsO
	6RtgqM6Br0bw3YLlEfFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcaxK-00ElpW-1t;
	Wed, 15 Mar 2023 23:54:54 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcaxG-00EloK-10;
	Wed, 15 Mar 2023 23:54:51 +0000
Received: by mail-wm1-x32c.google.com with SMTP id az3-20020a05600c600300b003ed2920d585so2065545wmb.2;
        Wed, 15 Mar 2023 16:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678924485;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VaBC8VbXPeoS4Rhzpa1x7rfgBVJkXDyo8VEwCQbyxgY=;
        b=KRagSc0q5Ts39y9KYANs228UbpMEAjveR9gsU9dG9HY8+V2/OSekEJS2J0bBDWqyVI
         l7vrGExr1bsZS2sN3M22EavsRQXv8z0w+06kcWBwV1K1ES3hh8VoY7R6h9nGa63Aarjk
         7SNLTfoPpTsveVczJ/vHV2/QVzUlEm+UqlHh5V0yta61BCbZl9gaZnUohhAKjgfggFAV
         dzLElYqNNkatAF0S87bOvVOTFcqwtyIHhm3AiXvY0JVxGjag6Nu8+evXFwT65Jn83ILF
         qczmuwbUwdluhSfZGcYSssriD0qoLBboM+8+Avfua94OrP4sefDHExsW+DGrL68NFzuK
         tvoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678924485;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VaBC8VbXPeoS4Rhzpa1x7rfgBVJkXDyo8VEwCQbyxgY=;
        b=HyOG8A/PmWe5PP3prmyum1iOHQAfOmB8Gv+WRxACPERGnZKk5nXfxVLKbHMfPbOcIm
         dnv0gu/+ZN6GZW+SccKges57HVvbH6xdCN7RVbduUAZDHHJK4PiNJd6ArsX46NXaHYxQ
         CQSad+hUTPL5ib7+BnPz/taM/0UQCZFlie7E0cJ7QBiWE0+CvV7OFBSp0uRsD+WrmmW0
         5eUrSJXnWfwzZqqnoZVRhzUze0wDxC3xvDazF/Vairhc4zCDTZR2md04BA4zhE/SgqjB
         OaYuiXRR/4wZpgADFgV7no7lYIeCo0TWCXTntMDnhmKbrnENI4fxFdk9ERyg5BOhcc9J
         ipAQ==
X-Gm-Message-State: AO0yUKXNgomwTDqo+HS8W7vocYbvEzzbTwjP8zEbQKqFYxTGPptOwbp6
	LQcsus6NVyxfvIs1arKrn5yC1dZRe1/l8nW2Tcg=
X-Google-Smtp-Source: AK7set9KWyqo4l8uXCJJtkj2AlRPkIOnFBuxBmSkyLnEZIV4Mw+VWV8nkO0wKXUaQZ0aClFi8oLMzH7dSRAdQenQRqs=
X-Received: by 2002:a05:600c:5114:b0:3ea:8ed9:8e4b with SMTP id
 o20-20020a05600c511400b003ea8ed98e4bmr5590816wms.6.1678924485358; Wed, 15 Mar
 2023 16:54:45 -0700 (PDT)
MIME-Version: 1.0
References: <20230315160228.2362-1-cnsztl@gmail.com> <20230315160228.2362-6-cnsztl@gmail.com>
In-Reply-To: <20230315160228.2362-6-cnsztl@gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Wed, 15 Mar 2023 16:54:18 -0700
Message-ID: <CA+E=qVcL1PNMcJ5M1zHQhZNpajxLJWWGQoXYeLER+OmV5Qz33A@mail.gmail.com>
Subject: Re: [PATCH 5/5] arm64: dts: rockchip: enable rk809 audio codec on the
 NanoPi R5 series
To: Tianling Shen <cnsztl@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Jagan Teki <jagan@amarulasolutions.com>, Peter Geis <pgwipeout@gmail.com>, 
	Andy Yan <andyshrk@163.com>, Brian Norris <briannorris@chromium.org>, 
	Chris Morgan <macromorgan@hotmail.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Andrew Lunn <andrew@lunn.ch>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Maya Matuszczyk <maccraft123mc@gmail.com>, 
	Andrew Powers-Holmes <aholmes@omnom.net>, Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_165450_369625_048C1A6E 
X-CRM114-Status: GOOD (  10.89  )
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

T24gV2VkLCBNYXIgMTUsIDIwMjMgYXQgOTowM+KAr0FNIFRpYW5saW5nIFNoZW4gPGNuc3p0bEBn
bWFpbC5jb20+IHdyb3RlOgoKSGkgVGlhbmxpbmcsCgo+ICsgICAgICAgcms4MDktc291bmQgewoK
VGhlcmUgaXMgbm8gYXVkaW8gamFjayBvbiBteSBSNVMsIHNlZSBbMV0gYW5kIEkgZG9uJ3Qgc2Vl
IGl0IG9uIFI1QwplaXRoZXIsIHNlZSBbMl0uIEkgZG9uJ3Qgc2VlIGF1ZGlvIG91dHB1dCBvbiB0
aGUgcGluIGhlYWRlciBlaXRoZXIuCkhvdyBpcyBpdCBzdXBwb3NlZCB0byB3b3JrPwoKPiArICAg
ICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJzaW1wbGUtYXVkaW8tY2FyZCI7Cj4gKyAgICAgICAg
ICAgICAgIHNpbXBsZS1hdWRpby1jYXJkLGZvcm1hdCA9ICJpMnMiOwo+ICsgICAgICAgICAgICAg
ICBzaW1wbGUtYXVkaW8tY2FyZCxuYW1lID0gIkFuYWxvZyBSSzgwOSI7Cj4gKyAgICAgICAgICAg
ICAgIHNpbXBsZS1hdWRpby1jYXJkLG1jbGstZnMgPSA8MjU2PjsKPiArCj4gKyAgICAgICAgICAg
ICAgIHNpbXBsZS1hdWRpby1jYXJkLGNwdSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgc291
bmQtZGFpID0gPCZpMnMxXzhjaD47Cj4gKyAgICAgICAgICAgICAgIH07Cj4gKwo+ICsgICAgICAg
ICAgICAgICBzaW1wbGUtYXVkaW8tY2FyZCxjb2RlYyB7Cj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgc291bmQtZGFpID0gPCZyazgwOT47CgpJdCBsb29rcyBsaWtlIHJrODA5IGRvZXNuJ3QgaGF2
ZSAjc291bmQtZGFpLWNlbGxzIHByb3BlcnR5IGFuZCBpdApyZXN1bHRzIGluIGEgd2FybmluZzoK
CmFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LW5hbm9waS1yNXMuZHRzaTo0OC4y
Ny01MC41OgpXYXJuaW5nIChzb3VuZF9kYWlfcHJvcGVydHkpOiAvcms4MDktc291bmQvc2ltcGxl
LWF1ZGlvLWNhcmQsY29kZWM6Ck1pc3NpbmcgcHJvcGVydHkgJyNzb3VuZC1kYWktY2VsbHMnIGlu
IG5vZGUgL2kyY0BmZGQ0MDAwMC9wbWljQDIwIG9yCmJhZCBwaGFuZGxlIChyZWZlcnJlZCBmcm9t
IHNvdW5kLWRhaVswXSkKClJlZ2FyZHMsClZhc2lseQoKWzFdIGh0dHBzOi8vd2lraS5mcmllbmRs
eWVsZWMuY29tL3dpa2kvaW5kZXgucGhwL05hbm9QaV9SNVMKWzJdIGh0dHBzOi8vd2lraS5mcmll
bmRseWVsZWMuY29tL3dpa2kvaW5kZXgucGhwL05hbm9QaV9SNUMKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
