Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD696C3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 15:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zLocVQjixt2NubeoUJrKQs5RxmRGj0IB5S+AOhWxcwk=; b=H+/ZbO35BIPTLg
	pHFPdeXUP1EJohG05DlOFOKRa7OgA0dxsEi4qvLljNMJecVJ8pSx3w7LEmRaIUkD0d5sCsxjjAFWn
	KlxYPrqWkDH9Tcvr3dH7T08alhDS056TcItfOvESChVttnBYawy69JI5rpTklvoNdvdWzMjTl+68q
	ZSgbqtsuFIDdyU0GnpXrcwZQpNSW3yhSBUyT+T2xDSAI/cGdKiq+/hADd8cpXO/UB85iHsoTfr/XW
	HAkmINypcnvJPVLSUAExbcsqFhsMl5Ed9ZLn7ze1UhKFGs8266S++SiNhQ8/1+fLVtdI7/1mUDNF+
	2uk9U6qjyyOY4boLdohg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU6fw-0000000EDjb-3BI9;
	Wed, 17 Jul 2024 15:34:40 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU6fa-0000000EDeQ-2zoO;
	Wed, 17 Jul 2024 15:34:20 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2ee8cccf2bbso8699451fa.3;
        Wed, 17 Jul 2024 08:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721230456; x=1721835256; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t4iPvhXVa3AMcXzBfJFgYS6s3OmUCR4MVqbnPIR6/kI=;
        b=cl9R06u4Ce+XJ3xRe+fPQN7CecOe24UurNVN+SL7OgzkLrSKp2dMXWxx3wqfsOQfcX
         jjMl7jT0iZ5CBy0Zp6m2s7OrqDqjWdTZRspKV4BrJIWGXHRcT2sqVaKIbv16SrFs7dJl
         ANVRozyB8E7m/OlxfzrKc5TMSZSqT5XpV0KFwl67xZECfaYLrrE6rXhI7dd2eb0xiSvh
         boS1MFFfZDXXQwD7vkNb1VAVV9u5xe4KIi/Z0LIM6W5dlwM1pqAPt13jUBoM0d2I1VLa
         l2x7hH1ImtykAGtCX5G7HTHj2WpFTHwyI+Dv8bPr4/q3CcAYnC5VHL6En1krynfJsKBI
         yGfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721230456; x=1721835256;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t4iPvhXVa3AMcXzBfJFgYS6s3OmUCR4MVqbnPIR6/kI=;
        b=mSdb59CwwH0+zcjiXrjWxgXfBGfXmuo2s/55TK8KXZPQT9UczNbwfZMC2xY7WAmhyb
         lZhE0chmWRBy2k4rkryR1OQpuky0/Mi3+resWyu3AXz0mDVvkXZAkNh5UoBm106CjC5q
         QnKx3yxY8/0Sv8gUdxiq0d/LUrmVNv1XA/lJdLaAe8qdCcoue2kDbbJJ3DwgGs9HbSH6
         Bzw1czgnhduwtJ+6tE+KMoUDUxRcPI+UVZnJAUVCQbn/pIu0efZ462c9YaorBtE9ayGK
         sxXwbUGakrYSGOEG8FM0gD6tn61f4nSSgeiFS01DXAM42BnL2uK+ak2d3A2yhZ4sErKF
         Ncxw==
X-Forwarded-Encrypted: i=1; AJvYcCVaIHgOAmSxGxGlpJHkk4Rf5FUjpyaIdTbMDkwxd5V/5MFZz5EXxZpFbSNJC1lBlyB+pVTwbT8Lcy1YoYQiRdPZEm0hNge+itcC/IYzn/eVBT5Y11OQ3Bxhm/lFxa2uwcPwXva9iQYfkTA9zJaAgX6oolzdSgR+0KI=
X-Gm-Message-State: AOJu0YwilFfYorn8yiK2rUU+ztF78CZIfZwD6PshyAnuIG3z6UQOtYHG
	+BSbEGYz9eax9Y+P88ra5fozWJWr5lqT4O4qB9r6JRuI2ukcXBUlbY9EBU3+Kyk3kjyJe0vuXxR
	ZMneK73LXkxNepGSXXk+mas25hJ8=
X-Google-Smtp-Source: AGHT+IFmkkq4f7VL86QzMTkqfkn1QPaCGg45UGmOuWB0BRvqpLJXZaINMT+NvWxqF4p/9Ea4jzkHPBRHbM/d6SY4tmE=
X-Received: by 2002:a2e:9b0b:0:b0:2ec:4ed6:f4a with SMTP id
 38308e7fff4ca-2eefd1521d2mr8120191fa.5.1721230455575; Wed, 17 Jul 2024
 08:34:15 -0700 (PDT)
MIME-Version: 1.0
References: <20240717-anvil-ashy-544e80a1317c@spud> <20240717-parrot-malt-83cc04bf6b36@spud>
 <3870188.FjKLVJYuhi@diego> <CAP9ODKrpKDY91AFDYj7s++kU+=CSLw=F9mXyLZ621Mqq-8S6bw@mail.gmail.com>
In-Reply-To: <CAP9ODKrpKDY91AFDYj7s++kU+=CSLw=F9mXyLZ621Mqq-8S6bw@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 17 Jul 2024 12:34:03 -0300
Message-ID: <CAOMZO5C7JknQaftquRWDetLs4W0CHMvs5PiJWBLyo0G1oo4rCA@mail.gmail.com>
Subject: Re: [PATCH v1 2/4] ARM: dts: rockchip: remove unlikly-to-exist DAC
 from elgin-r1
To: Otavio Salvador <otavio.salvador@ossystems.com.br>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	linux-kernel@vger.kernel.org, Conor Dooley <conor@kernel.org>, 
	Otavio Salvador <otavio@ossystems.com.br>, Conor Dooley <conor.dooley@microchip.com>, 
	Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Huacai Chen <chenhuacai@kernel.org>, 
	WANG Xuerui <kernel@xen0n.name>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	imx@lists.linux.dev, loongarch@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_083418_776283_93C629C4 
X-CRM114-Status: UNSURE (   7.37  )
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

T24gV2VkLCBKdWwgMTcsIDIwMjQgYXQgMTE6MzjigK9BTSBPdGF2aW8gU2FsdmFkb3IKPG90YXZp
by5zYWx2YWRvckBvc3N5c3RlbXMuY29tLmJyPiB3cm90ZToKCj4gQEZhYmlvIEVzdGV2YW0gY2Fu
IHlvdSBjaGVjayB0aGlzIHBhdGNoPwoKQ29ycmVjdCwgdGhlIHJ2MTEwOC1lbGdpbi1yMS5kdHMg
Ym9hcmQgZG9lcyBub3QgY29udGFpbiB0aGUgREFDLgoKVGhlcmUgaXMgYW4gTENEIGNvbnRyb2xs
ZWQgdmlhIHNwaWRldiB0aG91Z2guCgpDb25vciwKCklmIHNwaWRldiBpcyBuZWVkZWQsIHdoYXQg
aXMgdGhlIHJlY29tbWVuZGVkIHdheSB0byBkZXNjcmliZSBpdCBpbiB0aGUKZGV2aWNldHJlZT8K
ClRoYW5rcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
