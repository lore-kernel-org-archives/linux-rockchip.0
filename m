Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7E5AC3DA60
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 16:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lItkd29ep4nH7+D+tkYdqRCTcw9B07yA2ie2v+kIIIs=; b=s0oPoSDMCLtSev
	3nuVb001KT6e0LTxxacPOxg6O3w12epfC77vua0frwj5bZaJ5j5ztC0JLqlF71vEKEHJrsa1B1OnA
	e4TFeqZ66QfMsww+8y54UPSSUY/3VM3zSwaeu5LXs0HNBSjOGRdBFiPtuvREymVfYReSHaZrbaGLw
	lzhyNvYWpZNnOJ6wGIvSIOhxMdbSKnOwy01bVjMdpzLZa/zNUqYl7QVyJWkFmc+p9DsQGrsy+8Eam
	RWJXW9oz/i/3wv5eOJHo2iRAh/u5CXEm0Qbx2fvej1L+huOe02P8CPZ8hmcJ9p0F28E9LcC9zRCvt
	GnqPQgNQGr0ghA0HyRNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU7nY-0000000EOIh-3voU;
	Wed, 17 Jul 2024 16:46:36 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU7nD-0000000EOEb-0CdM;
	Wed, 17 Jul 2024 16:46:16 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2ee844bb5d7so11043991fa.0;
        Wed, 17 Jul 2024 09:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721234773; x=1721839573; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2S0ab5SdmVZu6CHXw0oDlN+TBmAuaYsarb+i1qS+Q+I=;
        b=mdhTezMLUPqkP6mnjr+RQpt3Q8zU+P4fbRwZXjuKeOMpLGROYYpaor2PbAaydf95EW
         6wxomCV+sGTjVo0xL1MftzO9Y3PrvE04kor7IeZfNzvOwnNy3AHlAIWXrEINq+YitHWU
         XEmzVOpcLyi35K3vsVXwsNaeWfFf9x3LRsYUoCTD9QwceX5aFiOMHgmfHVyxf3HuA3sJ
         pGE+n55aB2RdOIeVen9KX2k1JozhsjnRZ6Ejb6KZXm3Kb5kOjJxZIGYsxDH1vc1/GLa1
         4eYhYMDIN7yrLZYkWjlc4l4LNkFPQNRSoI5J+AGLhKfmdVKqxIl4xjyOrGcRh86e25Y7
         AbRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721234773; x=1721839573;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2S0ab5SdmVZu6CHXw0oDlN+TBmAuaYsarb+i1qS+Q+I=;
        b=DsAISshvMacs2YFnXvtwSu1tmOXTp7vTTUtRf3/sm0DSoVSPVE63H5P9j6Ys3nro1H
         pA1TCf3P/NhsTrrz0bq+0iubNPC9676rbY0w86nnRf3TMkCJjJRxecYBskJoEVWXd1B8
         NlrUXK8fdnM2sp/g2NaWKzElcprX4PnQiq3AMzrc02TwL7jdLI5PnyeGqMdYitDYwKdp
         wTYUJlNeOsvplXH9PZAo5ldXi4+UAmwYmKB7oEVX5Uo7nHwmEQBNU6W9HLs9O0QFCI4s
         xyPkxRqLsO/QlSmXUjQZjwC9l4DhWkG7M969QYemXw0vSvyYiQjfufiCgtbEgly6U4gg
         boJg==
X-Forwarded-Encrypted: i=1; AJvYcCV0Z5ZhHU8e+Davx3qc7KT6xs+52WBRNnxYo0jp1JFkEGuEmlvhtiu8LJVyeah2TGY/ZO5YI1ABwcIzFaB1xzo=@lists.infradead.org, AJvYcCXHwRWpLTs0a3gUqGKCJ8G1V6T78QqN3TYe13MlHkOzaJpaESZCOOrxSHckLAOnD4KcqNNTP7mwWKuK7Igam+5g@lists.infradead.org
X-Gm-Message-State: AOJu0YzKJnSIiUQqf1ptMGzkROPkSad438EROzXh4H/DClunbzXRTpqh
	UZOYJ1e2NmuMp1xBvaT8skz5l1FgdZUlzS2FAkcrdctODxR1UxR/M7AmbjFvbiCY8kKkWwamWrG
	rr5d5s/c8sLBCRcyVJIQlEj6Yv2k=
X-Google-Smtp-Source: AGHT+IHoe46620+UsVuITlGPh3/c/KNcEkZ5F6Uq8F7R6XszLx9r5KYDXHcT2MQwJr48RLgG03dD62MwkhoqroWKBWc=
X-Received: by 2002:a2e:6e15:0:b0:2ec:4399:9bfc with SMTP id
 38308e7fff4ca-2ef05997667mr23791fa.0.1721234772478; Wed, 17 Jul 2024 09:46:12
 -0700 (PDT)
MIME-Version: 1.0
References: <20240717-anvil-ashy-544e80a1317c@spud> <20240717-parrot-malt-83cc04bf6b36@spud>
In-Reply-To: <20240717-parrot-malt-83cc04bf6b36@spud>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 17 Jul 2024 13:46:00 -0300
Message-ID: <CAOMZO5DuwjQxMG4dT-_HcLjA_4U-+B2kR8FW1580RFiHcxo6OQ@mail.gmail.com>
Subject: Re: [PATCH v1 2/4] ARM: dts: rockchip: remove unlikly-to-exist DAC
 from elgin-r1
To: Conor Dooley <conor@kernel.org>
Cc: linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>, 
	Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Huacai Chen <chenhuacai@kernel.org>, WANG Xuerui <kernel@xen0n.name>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	imx@lists.linux.dev, loongarch@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_094615_107570_EBF8B559 
X-CRM114-Status: GOOD (  10.74  )
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

T24gV2VkLCBKdWwgMTcsIDIwMjQgYXQgNjozOOKAr0FNIENvbm9yIERvb2xleSA8Y29ub3JAa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4KPiBGcm9tOiBDb25vciBEb29sZXkgPGNvbm9yLmRvb2xleUBtaWNy
b2NoaXAuY29tPgo+Cj4gVGhlIFJvaG0gZGgyMjI4ZnYgKHJlYWxseSB0aGUgYmgyMjI4ZnYsIHRo
ZSBjb21wYXRpYmxlIGluIHRoZSBrZXJuZWwgaGFzCj4gYSB0eXBvKSBkb2VzIG5vdCBzdXBwb3J0
IGZyZXF1ZW5jaWVzIGFib3ZlIDEwIE1Ieiwgbm9yIHBlciB0aGUKPiBkYXRhc2hlZXQgYXBwZWFy
IHRvIHVzZSBlaXRoZXIgQ1BPTCBvciBDUEhBLiBJIHN1c3BlY3QgdGhhdCB0aGlzCj4gZGV2aWNl
dHJlZSBpcyBhYnVzaW5nIHRoZSBjb21wYXRpYmxlIGluIG9yZGVyIHRvIGJpbmQgdGhlIHNwaWRl
diBkcml2ZXIKPiBpbiBMaW51eC4gUHJldGVuZGluZyB0byBoYXZlIGRldmljZXMgb24gYSBib2Fy
ZCBmb3IgdGhpcyBwdXJwb3NlIGlzIG5vdAo+IGFjY2VwdGFibGUsIHNvIHJlbW92ZSBpdC4KCklu
IHRoZSBTdWJqZWN0OiBzL3VubGlrbHkvdW5saWtlbHkKClJldmlld2VkLWJ5OiBGYWJpbyBFc3Rl
dmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
