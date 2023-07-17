Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DA7CEB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jul 2023 12:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WkcOqcjPuwsbQ2zpRfjOJc22bXuw3AuVss64qkE5dng=; b=ud3P6GT/c0unOM
	7weetkucBU5EY8tAnsqenhBeG5AJaiizOVGGiH7/5cRhLNSJbJAd+QoGZtFXAnmGTmEcv1FSo7oOD
	4RyllbD05ig8PtYWNAoYbnb+KtfWw+PXVEyxu24GsCio2dJ1L6hiimGVHW6pabtcez0cIRl6bntiw
	WXL8IyFr8/nW/PAdyY1JCIVI+478nnET5jvPg28r7JT12pEjMK47NBG+kPGVVlYaZpgcUJgTpRkyM
	XCbcWqe1CFeQz7jjaEozIAGslutoiPSbLJmZ06BmtKjJTr2B1NCIUxVMEMjUeLKa1vNQ/4NVXR4u/
	dVQ3oOMx8PgN0j72i+sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLN6s-003xXT-0H;
	Mon, 17 Jul 2023 12:13:50 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLN6e-003xUM-0m;
	Mon, 17 Jul 2023 12:13:44 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-666eec46206so4556483b3a.3;
        Mon, 17 Jul 2023 05:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689596013; x=1692188013;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=t7mGkEFG/BBY8i1FxVeGw7e6gM5cItBSc8cgFSjGd4w=;
        b=YfPGG9my9lEnguT2SNwXZKvSdi8mAM5GSP34OK/6lDn5JVemYBY6UY3iEhQB4+HSwU
         TFWJThPRrBJdSOifFr7KXTit991XI1d4B3i6+2Vl9zcShrZ9U8uMRi2/ONcAsJob1Xob
         WieQJrPcwUK3zgSfNhMMbxwItgXdKOBsf3xiF0NphmBNS9wDDCJvvkvJPANQO9EjgC+v
         6fs+N6RbnLLX2PUdX3gocyQWmBa7vdSuAHON6JuStezrnottWN3UihHJvO/kJOtAmr9w
         PRZIwH14FoH+CpVb1O3e5yl7SyeorI1v55pQ37Y98ey1h0ZTH0pAMBTOyymFgEFLfjEC
         XqLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689596013; x=1692188013;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t7mGkEFG/BBY8i1FxVeGw7e6gM5cItBSc8cgFSjGd4w=;
        b=RinYQTMoCg13JG/BeX7r/QaiQx872+CsKG23h+wfTWg7iJITUqU1+VW0xIF4bvUtAT
         gepnsIcbRyoG/KHJp4f32RLvU7SLfoU3xkTdhIRR6YHDOwDkAThYDkO+rZwWDFeCXplm
         yqrC/TbZvx4MA1P1JmoGrD2wZZ0EQkIedqzXtXAmNnCQJCL0qAAwPGqLCZheDtZ9lGy8
         xG+iMQiu5Lf9w+QrAto7wR4H8D99wzKjoo0KGuPcMLstSgmj8O2UwJfOUp+0ZUKFKIzs
         OrExT03yC3sIl/nbmI+klh7QNj3Oln1a4HL2MqtRsX3BoTj0pl/uh8MMxM+9TxlYzDc6
         Ys9g==
X-Gm-Message-State: ABy/qLZMq5MV/7Qd7Ia/nUfOeMKUi4r9SgTwP8VTruGI50rEUW7Y2av+
	7PhRMAia0fhGJsVEoGQNlrM=
X-Google-Smtp-Source: APBJJlGj0lHYpLdbzSreLZstrO6fHiwNc5WkCSTSq3H+UhbbRMa8JtFWuzafHld+wv5ysTDXEkvFTw==
X-Received: by 2002:a05:6a00:1353:b0:682:537f:2cb8 with SMTP id k19-20020a056a00135300b00682537f2cb8mr15587596pfu.26.1689596013188;
        Mon, 17 Jul 2023 05:13:33 -0700 (PDT)
Received: from zephyrusG14 ([103.251.210.195])
        by smtp.gmail.com with ESMTPSA id x17-20020aa79191000000b0067738f65039sm11782892pfa.83.2023.07.17.05.13.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jul 2023 05:13:32 -0700 (PDT)
Date: Mon, 17 Jul 2023 17:43:25 +0530
From: Yogesh Hegde <yogi.kernel@gmail.com>
To: Vincent Legoll <vincent.legoll@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-kernel-mentees@lists.linuxfoundation.org,
	skhan@linuxfoundation.org, ivan.orlov0322@gmail.com
Subject: Re: [PATCH] arm64: dts: rockchip: Fix Wifi/Bluetooth on ROCK Pi 4
 boards
Message-ID: <ZLUwZTy3Opx/gdIf@zephyrusG14>
References: <ZLO450xOIQ29VoBT@zephyrusG14>
 <CAEwRq=rUXpFpkrfKyCG8Eede10cCeo6V3RCDxv0McWA_g9t0CA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEwRq=rUXpFpkrfKyCG8Eede10cCeo6V3RCDxv0McWA_g9t0CA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230717_051336_993275_546E094E 
X-CRM114-Status: GOOD (  10.39  )
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

SGkgVmluY2VudCwKT24gU3VuLCBKdWwgMTYsIDIwMjMgYXQgMDM6NTM6MjJQTSArMDAwMCwgVmlu
Y2VudCBMZWdvbGwgd3JvdGU6Cj4gSGVsbG8sCj4gCj4gT24gU3VuLCBKdWwgMTYsIDIwMjMgYXQg
OTozMuKAr0FNIFlvZ2VzaCBIZWdkZSA8eW9naS5rZXJuZWxAZ21haWwuY29tPiB3cm90ZToKPiA+
IENvbW1pdCBmNDcxYjFiMmRiMDggKCJhcm02NDogZHRzOiByb2NrY2hpcDogRml4IEJsdWV0b290
aAo+ID4gb24gUk9DSyBQaSA0IGJvYXJkcyIpIGludHJvZHVjZWQgYSBwcm9ibGVtIHdpdGggdGhl
IGNsb2NrIGNvbmZpZ3VyYXRpb24uCj4gCj4gTWF5YmUgeW91IHNob3VsZCBhZGQgYSAiRml4ZXM6
IiB0YWcuCj4gTG9vayBhdDoKPiBEb2N1bWVudGF0aW9uL3Byb2Nlc3Mvc3VibWl0dGluZy1wYXRj
aGVzLnJzdAo+IGZvciBkZXRhaWxzLgpUaGFua3MgZm9yIHRha2luZyB0aGUgdGltZSB0byByZXZp
ZXcgYW5kIHByb3ZpZGUgZmVlZGJhY2sgb24gdGhlIHBhdGNoLiAKSSB3aWxsIHNlbmQgYSB2MiB3
aXRoIHRoZSAiRml4ZXM6IiB0YWcuIAoKVGhhbmtzICYgUmVnYXJkcyAKLS0gWW9nZXNoCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
