Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE916C87FCB
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Aug 2025 13:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3A+dpOLgEY34Sr0h8SV1CubCIzQkzFyIz4nudD17nM=; b=3Rt0BEbE9BssS3
	4b3/IC0Z/i4xgVFt4/19FGbZxm5MJZw09jCSPsopYB1u/D7DdG+Ioj1fE6vqubod1Vy4Rafq58QRY
	A/vQM0gN9d2dSIEAIipep/HjVEiPG8Dl6Z4VrGFttWxbHm7KacC9xDZCPbtc7PlmRReB/5YvKTemP
	S4wweAWNh/F+Uyrijndl0MZp2XN3KsWU6DbL+whDXwyyOeGBpyZ34S87bqEmWQyC2HMcs5brI9qp9
	rzFu4V8r5gD5CNkT9iUoze4RwK5on+/pDEmt2EXRavAitoJo7wMh5sXZ52tAeBYYCSxudqCmwekAh
	CAskgj0lU1QqwXOAsGcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujHPy-0000000CnLf-2loj;
	Tue, 05 Aug 2025 13:09:26 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujHNJ-0000000Cn4G-1tRL;
	Tue, 05 Aug 2025 13:06:42 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-af96d097df5so374750466b.3;
        Tue, 05 Aug 2025 06:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754399199; x=1755003999; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MAh02TkFyzgFFZr3oxHjXV6dZOI2X7cgUfbU3vh9k5M=;
        b=em8+1WRhmPZPt4Y66SvlRUXXZiC8eAzU8UIvI2ZX3kc3lQMC839NOXMKpftsQ7zRmx
         I4kIMZSqa4yxDGrM28akD5zc5bkprCMD1qWL7W9ezCrU+oFHsFEghEhU5hksSSaUHER8
         iBk41YJAg/uHLigAvRuoZVhuvybLi57lTqeI83VBxHg+d05fEsg2bUU5gDoRK0Cj9RUE
         M8RbxU76saHbxe2ImqItzf9blvD905PEMfIJdm4VlFvk33nG9S6ZjJMmjvkC15dVvIMT
         bGF81yEA1DTxeSETCcM2h5zQPFlR+gDM7arMPq84laNNkmkQsbZqw2WRV9FY/NucBUV/
         Pqrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754399199; x=1755003999;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MAh02TkFyzgFFZr3oxHjXV6dZOI2X7cgUfbU3vh9k5M=;
        b=TunhO/Ckb9aWRH/5Vw1uDUZdLR6R1bR9gj2wWeg8hWkcxf0YHr3bMisviSSa2ZNVzK
         /KLw1kWV4ZMFvmZZU52gATKgJRYEuAsN/S1P62abW3ZUoO+hnAcpiigoYIOSLG03kIXL
         4k+oTXte5fWX5zbn321VskPsVfE3QIR1CfA8/7MhCEJCxO4PcGpTXEVVTX4HtfLCTEdN
         xCWTz4az6Y9381Jbl4M6cwiY30+noVb2GZ/AArpxV9ElQpf8LvuixlpY6i8AKyIM8yM9
         Fjfgtxr7pool1qG6n4ZxAi7DR204obQP7S6ScY+b3wHMz8OT/yryCSV3+mFtn+C/RXwj
         cEXg==
X-Forwarded-Encrypted: i=1; AJvYcCUnYXvY1DibOrXLh5ShTuy64lhjgXX0WywtUdRtpteUb2UyKbaQgppWgO1TqOsdklEkRjEo7KyHBoZVR2BdziA=@lists.infradead.org, AJvYcCWgMjOItWwJm1TgWN1iuoPx3j7vr+zXZ0yECfKFUkRMvYhe0YuEpdCs4+bK0ewjbsalVKvoGWv2wyiTwfil2ilU@lists.infradead.org, AJvYcCWu6LnPxjN62XsOtlT9HG6esECOYMyMgkI1+b0N++AQTSLN3Myx9c7ZwGdlL2HQUfqzZTocbPkkFX8G8GruF3A=@lists.infradead.org
X-Gm-Message-State: AOJu0YwP61JizpLtx804Vo03LURnrRJfMNpjh5lLy4GYzGac9v0SXHkj
	Cgwm4dAiJzbLn9njhQBJjr6pMH43qL9os8NdCNgOrF8QDxk2xRCn+vQbVoAN7TeuIn+f36JYlCT
	roVN1M1UAI+W/WMWPBL99TWLPv8S2uj8=
X-Gm-Gg: ASbGncvPJ876qndu8ADDXEJ2tQLzYAatplUmhTDDqRHKssd0L+167AlBS80DCMlLc5p
	RVBzzjUy/j3QALkONs465qwLjJa/2n7ns/krJUh084F8ZmbrUpIkt+fkg4SXxQ2LBFdhgrzpxen
	IHXzMg/fEEUmHSTxyHxKyXp6eWWGi82Nw9ppXq7H/aqwAN0tzehUm5i+0Zfa3mLFefta4tavqwW
	YMVp+ST9Q==
X-Google-Smtp-Source: AGHT+IG+UhvnR8PgL0a0Zufs5S7y3V5pfr4M4F2QIupH8Wrp93UHwXEqXJVmQMM5LOZynRuY87KMSNBR1QBwOUx0aD8=
X-Received: by 2002:a17:907:6e8f:b0:af9:3a3a:227e with SMTP id
 a640c23a62f3a-af9401bb461mr1278298266b.38.1754399199235; Tue, 05 Aug 2025
 06:06:39 -0700 (PDT)
MIME-Version: 1.0
References: <pndectqm7te.a.out@axis.com>
In-Reply-To: <pndectqm7te.a.out@axis.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 5 Aug 2025 15:06:02 +0200
X-Gm-Features: Ac12FXzfhgsKY1Z4mDhPlXC5tTUlolIHxAiCVq_7VMItomP-88jysmgI3xJFCTw
Message-ID: <CAHp75VeGvgv6TAYRRtEySmESkjygW79ms-Yd64h08_+7JjJMJw@mail.gmail.com>
Subject: Re: [PATCH v2] iio: Remove error prints for devm_add_action_or_reset()
To: Waqar Hameed <waqar.hameed@axis.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Cosmin Tanislav <cosmin.tanislav@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Matteo Martelli <matteomartelli3@gmail.com>, Heiko Stuebner <heiko@sntech.de>, 
	Francesco Dolcini <francesco@dolcini.it>, 
	=?UTF-8?Q?Jo=C3=A3o_Paulo_Gon=C3=A7alves?= <jpaulo.silvagoncalves@gmail.com>, 
	Hugo Villeneuve <hvilleneuve@dimonoff.com>, Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>, 
	Mudit Sharma <muditsharma.info@gmail.com>, Gerald Loacker <gerald.loacker@wolfvision.net>, 
	Song Qiang <songqiang1304521@gmail.com>, Crt Mori <cmo@melexis.com>, kernel@axis.com, 
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_060641_492882_2BB0EE83 
X-CRM114-Status: GOOD (  10.61  )
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

T24gVHVlLCBBdWcgNSwgMjAyNSBhdCAxMTozM+KAr0FNIFdhcWFyIEhhbWVlZCA8d2FxYXIuaGFt
ZWVkQGF4aXMuY29tPiB3cm90ZToKPgo+IFdoZW4gYGRldm1fYWRkX2FjdGlvbl9vcl9yZXNldCgp
YCBmYWlscywgaXQgaXMgZHVlIHRvIGEgZmFpbGVkIG1lbW9yeQo+IGFsbG9jYXRpb24gYW5kIHdp
bGwgdGh1cyByZXR1cm4gYC1FTk9NRU1gLiBgZGV2X2Vycl9wcm9iZSgpYCBkb2Vzbid0IGRvCj4g
YW55dGhpbmcgd2hlbiBlcnJvciBpcyBgLUVOT01FTWAuIFRoZXJlZm9yZSwgcmVtb3ZlIHRoZSB1
c2VsZXNzIGNhbGwgdG8KPiBgZGV2X2Vycl9wcm9iZSgpYCB3aGVuIGBkZXZtX2FkZF9hY3Rpb25f
b3JfcmVzZXQoKWAgZmFpbHMsIGFuZCBqdXN0Cj4gcmV0dXJuIHRoZSB2YWx1ZSBpbnN0ZWFkLgoK
RXZlbiBtb3JlLCB0aGUgZGV2bSBoYXMgdHJhY2Vwb2ludHMgaW4gY2FzZSBzb21lYm9keSByZWFs
bHkgd2FudHMgdG8KaW52ZXN0aWdhdGUgZmFpbHVyZXMuCgpGdWxseSBpbiBzdXBwb3J0IG9mIHRo
aXMgY2hhbmdlLgpSZXZpZXdlZC1ieTogQW5keSBTaGV2Y2hlbmtvIDxhbmR5QGtlcm5lbC5vcmc+
CgotLSAKV2l0aCBCZXN0IFJlZ2FyZHMsCkFuZHkgU2hldmNoZW5rbwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
