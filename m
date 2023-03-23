Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DE4DC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Mar 2023 12:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L4cLV/efVsdU5woj+K/NYUf8WCPN3VSVTBunXKEhAHs=; b=cch4uUmEGEgOTS
	MyAnkX9VUA2fUxOBs6rBPVCb1C6g9XmpFshV+Wqafa+HNiiNEHquD/IS/H8clhvp3JmmSo+0BArAL
	kswnCujB0MhsMiT0QAetAh7MUhlbHGuGgTqTb6QH5u2VzF0C2+w5dm4qlszH8U0nTbBNnm6De4TFm
	XmcSI094AZL9yniScQKF3/Gk8jP4HHTSkKjgLAoEJSrGbgIvFjIvJkS5SOfOnSOXll6qKSpcgkpFr
	xbkKpgQLbK/LXuBXxBqMG3uw90C4J6dYP8Uut8GIIOEuzWsxgG1hef6i9FdYQwQ9zeZKSLaK6Ypof
	sMWNuDYyPGJySQ0AOqJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfKIt-001xkp-1t;
	Thu, 23 Mar 2023 12:44:27 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfKIo-001xjm-36;
	Thu, 23 Mar 2023 12:44:24 +0000
Received: by mail-pg1-x536.google.com with SMTP id x37so12454077pga.1;
        Thu, 23 Mar 2023 05:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679575461;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WXmlvLRJ51Nle/Ky2eOAKThFkxJdMZbTvZ2YQbmyQz8=;
        b=SeyHkP0Cn/bQrStFgTFC2vHqvc601yVmm66VWV1gIpdTaIhV9QvrVxdOmjYVdqRJ8g
         GsUrO/AgBwaqBE6+cKNoggFxH61sGleodXOS2XFkipMsSnq/ri5cv20AdYc6STd8tI3E
         Y7siJY8+Ct8OP5pJaUZMmRXsdPzDwc0URaMfH5wcYkPdAsuWX/kBONeR5iil+c+wvqtY
         6Do1gAjUAAT5gPxUKRIizM6FuEL/kqmNeGme7U0Bw8+wAK8muZ8eC6/IxbV/QsahQqAg
         3lTi0G8MIoh5k17CWlvucqBpEEE1/QXnBFx9itVJwrW0/yobAZxefLDyXsyeTt1owhI5
         4ccA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679575461;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WXmlvLRJ51Nle/Ky2eOAKThFkxJdMZbTvZ2YQbmyQz8=;
        b=1hnC6My8sUfgR/WQ6O0NiUfBzPlCTRR+j9DrMFzyyY7/OBO7RiiOk/7O1zMBFRg6Vv
         u/184sKTVlV3toNvEuZ8L06NGsoGC5wIrTYRvhdZnjLSIRAWQlqHkepRGrHYoT6d0In3
         DEUc8B8elQIq0lHcyZKSlLa36aXIX5r5wD7FIJOETGulWDg5vJ9r/d0+ZAj0Cpg534bh
         5cb/BfanbxdWJZmQrJVx3D03qdsMEA6hIPCVHsSLsEv0aS8Z7uFnB9AsV6dNTxp7sl4c
         v5P4Dy0i0hJPXH0D/5+pxIdR9ZF/12nJI3o1ED/35cNdsAzP8fZuylPgutqCFgAVTLYq
         WsCw==
X-Gm-Message-State: AO0yUKW0HxlBsWxAhxqj+K5Srh/YQ8mGKNYT6K5nmMD8R2v/9NGqI3Fr
	6BeDbml5/Mg5B//8ZbrlfZTojj0yBZEfZZaOQuo=
X-Google-Smtp-Source: AK7set8U+DV6iePDNSCo7WZl7ClEPMTiCN56f3lUNNeKuIRHlLOKAKYh+bmi5nnLMW4QiYH3cSgfjHnAnoeD4pUcSZo=
X-Received: by 2002:a05:6a00:2b1:b0:626:23a1:7b8a with SMTP id
 q17-20020a056a0002b100b0062623a17b8amr3590611pfs.3.1679575461080; Thu, 23 Mar
 2023 05:44:21 -0700 (PDT)
MIME-Version: 1.0
References: <20230323123807.11882-1-cnsztl@gmail.com> <20230323123807.11882-2-cnsztl@gmail.com>
In-Reply-To: <20230323123807.11882-2-cnsztl@gmail.com>
From: Vincent Legoll <vincent.legoll@gmail.com>
Date: Thu, 23 Mar 2023 13:41:50 +0100
Message-ID: <CAEwRq=pwWrXAuHMBaWzZE7cxmVMGuX=eqi5Esjxpe-jPXWF+0w@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: Add doc for FriendlyARM NanoPi R2C
To: Tianling Shen <cnsztl@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Jagan Teki <jagan@amarulasolutions.com>, Andy Yan <andyshrk@163.com>, 
	Peter Geis <pgwipeout@gmail.com>, Brian Norris <briannorris@chromium.org>, 
	Chris Morgan <macromorgan@hotmail.com>, Andrew Lunn <andrew@lunn.ch>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Maya Matuszczyk <maccraft123mc@gmail.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_054423_041277_BB85BC3B 
X-CRM114-Status: UNSURE (   6.68  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8sCgpPbiBUaHUsIE1hciAyMywgMjAyMyBhdCAxOjM44oCvUE0gVGlhbmxpbmcgU2hlbiA8
Y25zenRsQGdtYWlsLmNvbT4gd3JvdGU6Cj4gLSAgICAgIC0gZGVzY3JpcHRpb246IEZyaWVuZGx5
RWxlYyBOYW5vUGkgUjJTCj4gKyAgICAgIC0gZGVzY3JpcHRpb246IEZyaWVuZGx5RWxlYyBOYW5v
UGkgUjJDL1MKCk1heWJlIGRvIGxpa2UgZm9yIHRoZSBmb2xsb3dpbmcgb25lOgoKPiAgICAgICAg
LSBkZXNjcmlwdGlvbjogRnJpZW5kbHlFbGVjIE5hbm9QaTQgc2VyaWVzIGJvYXJkcwoKLSBkZXNj
cmlwdGlvbjogRnJpZW5kbHlFbGVjIE5hbm9QaSBSMiBzZXJpZXMgYm9hcmRzCgpSZWdhcmRzCgot
LSAKVmluY2VudCBMZWdvbGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
