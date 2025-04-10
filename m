Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E587C3601E
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Apr 2025 12:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GA37yV/nBAI+iiaUrnhRfXdNPaUxaxg9x06iz2/bawg=; b=yUEm7oXSDFtLFY
	Dd9GwmwgXVHQJmT6QgRBV5TxvkN+TadnCkGZVrc/bgJOeCifAsEF6ujSbkYG8rg79nMiwsZe6xDYq
	AmuZXSDLfY/3+8hqdT+8+ocIiSMDN2ucaCRFoYWmMgpzP/5JrWBfymV322aXVL5u/qyvUGxWXSkmu
	Pz9W2rP/UI6h5Tzvr4h9s55us4v8YPGLBlR4Iz4EseKn6l6e0SP5sUYmumG0/Bbhk1x/citvDSsFz
	XWdUQldlRxO3Kvg3xuqn6QXsZQQicGRs5XOVjQ9LmCJzs8Z0gaoeC1TzgAzEfItFHllPiOe31rNHw
	Mh3y2QM5w7eCn6PSZuMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2rH5-0000000AY3A-1r5l;
	Thu, 10 Apr 2025 12:44:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2r8l-0000000AWP1-3JsH
	for linux-rockchip@bombadil.infradead.org;
	Thu, 10 Apr 2025 12:36:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=iQ0j7wMSGTmXUuOHtflR052mxHlsC9aOf5SK3WIqsvY=; b=p3rrCQJD8oujmGg3eF7s+ibVxj
	9q1jRDEu6ex7YkdHynkbR2MNtV179d14328REIaVCu+TNPbSqRpxV0yM5ZSMogPyXALGvg4JByy80
	2oEOMWl/EWxeJYl0iQckTcfFAQoGuiO3IDLPrrPXKqIVtjUn7VVxuVcRCeMsz4f2fZT9slgiqZHkS
	puBxFITVZmtdAkNIqbY4yVmjFe3s0kl6VsVm1tYYq/hVoJ7omd3BpNI47E/flpETBW5NFiqAWbzBz
	VtRXcqXHHn6N1Z6f/AB5URS0WoWTLKjHwePcBKbIHkjxV1NUAjfh8gG+xT9tjYXhI8y0cF3K8K2jg
	7GKT8mbw==;
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u2r8i-00000008oeE-22MM
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Apr 2025 12:36:18 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-3913958ebf2so651299f8f.3
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Apr 2025 05:36:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744288574; x=1744893374; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iQ0j7wMSGTmXUuOHtflR052mxHlsC9aOf5SK3WIqsvY=;
        b=dmQ9O9beqXDsWaPeGT1oTG472KbdbTYygmfBsFn0sXBMvOy5Cee8FwRk01FYoyINjt
         Cq78AV65o8x+F0vN4Xg7vPxB7sZp7akBzuM+cFwJIWaA2EDBgDd8EhqtAumQ18IC5Jcz
         Ox+qu0e6o5VpECmmUM9suJEue3tH4Zu5giSVQpjbiBy7UnUcR4Oz/kaNiBbeERppKk2G
         y76kn3pUyK70pt0d3MF8XscCdzTpiaeK1fUN7OCcgdCzWuvaPOmqZRgUgkOpsEbXmJVn
         Ojp7LTqoAVo0W9FxkvN9QlwXpp/r1LJ68PdxEyIpdfbWPvULyIpFiWqoJ1qCXy5f/EGM
         zd/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744288574; x=1744893374;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iQ0j7wMSGTmXUuOHtflR052mxHlsC9aOf5SK3WIqsvY=;
        b=MPm2SbxfZmiM2bwChIDUIRxBoFG7FNEligudprbSHlaF6S+RJjlTuPs+XEwOyVkni4
         sSMqcBJI4AClFhYlqco4TdVZLgrBWeqNFgfaMQaha4L+hIPhYCkKwBAU+uJ9h2QvNPhx
         mOsgM54sqm0YRFYgbgBAOCPWaeKc4LdUZb7p+IM8iODL4YgpO3Y1GRmltSmeU9J0/MG6
         s1n19w5rMG3sDrykSQYu86wC2MG7MiedEI3x2cQfZriktC+mnLkxHNHW0klWyvvlwMYy
         h7UDN1yKq2C3b4eFQB+mmfNF40SfdunxRMRqLrKYUDEsl1/A/UyrrNxzOa9R0WmRzlk9
         lkPg==
X-Forwarded-Encrypted: i=1; AJvYcCVDPdLnVbZcawJHLYet9nHCVbtnehT6hSOS7RE2Rv0hcM76aD3LorUDPPgOBY+IFA2+gmF05+DGMQhWE60irQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5jxo8OH0dWb2fXgsh6yLgP9GWGBqWZjUr4Io6ozUsiY96BWjb
	4Rk4oBE4pYl/6jJS97mpR+d+P88Xx50MPrf7QqV7n7naOCxMDNeVMZA4wQqkQIk=
X-Gm-Gg: ASbGncuNouqh3mpUONfVhoZ9MI4rpHpvSdE0LJ5g+F64XB/XBjOF5lEKlP11rSJkrwY
	4R70RDkcD+lDNz2aG5fLYh8rbW3v5bx56QzPmRpM0XvM34kNgsoTjOB6Crh5M3ArpBlCOhG9C2M
	XccICSnmhihL1rk4N2FdmYqu8lF6xt0gAgAYS7zR48PUHSTDKYRGRcG8Th4/75vVJgXY8zH1d68
	5KIruTahKdZxhFqpqC+cutXl9QlNwH7Vx3rBJJcZgO77bXGEfFNgV3lbGH9nYUvAvxPF/RX/AAa
	X/njNcYO8STqyC6no5dewX6Zl9R/WugaJ88vXRY8qojLfmUwSnNnK/jeNQPttAd1PcZYIiZluKf
	55qJp2PmOd5PKjg==
X-Google-Smtp-Source: AGHT+IFetWy1yp/dwylC0fW3Xc3rkEsOkh6f7DWozfmMsr0xNplY7KcWpRd6urR6Mieq6r6/8yNM9w==
X-Received: by 2002:a05:6000:4285:b0:39a:c80b:8283 with SMTP id ffacd0b85a97d-39d8f498980mr2285415f8f.31.1744288573720;
        Thu, 10 Apr 2025 05:36:13 -0700 (PDT)
Received: from [192.168.69.238] (88-187-86-199.subs.proxad.net. [88.187.86.199])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39d893fdf8fsm4624182f8f.91.2025.04.10.05.36.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Apr 2025 05:36:13 -0700 (PDT)
Message-ID: <17b9ff87-899e-44ca-b902-ab965cff0879@linaro.org>
Date: Thu, 10 Apr 2025 14:36:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/19] arm64: dts: broadcom: bcm2712: Use "l2-cache" for
 L2 cache node names
To: "Rob Herring (Arm)" <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, "Rafael J. Wysocki"
 <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, zhouyanjie@wanyeetech.com,
 Conor Dooley <conor@kernel.org>, Nicolas Ferre
 <nicolas.ferre@microchip.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-mips@vger.kernel.org,
 imx@lists.linux.dev, linux-rockchip@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-renesas-soc@vger.kernel.org
References: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
 <20250403-dt-cpu-schema-v1-2-076be7171a85@kernel.org>
Content-Language: en-US
From: =?UTF-8?Q?Philippe_Mathieu-Daud=C3=A9?= <philmd@linaro.org>
In-Reply-To: <20250403-dt-cpu-schema-v1-2-076be7171a85@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_133616_744436_6E5BDFA4 
X-CRM114-Status: UNSURE (   9.15  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gNC80LzI1IDA0OjU5LCBSb2IgSGVycmluZyAoQXJtKSB3cm90ZToKPiBUaGVyZSdzIG5vIG5l
ZWQgaW5jbHVkZSB0aGUgQ1BVIG51bWJlciBpbiB0aGUgTDIgY2FjaGUgbm9kZSBuYW1lcyBhcwo+
IHRoZSBuYW1lcyBhcmUgbG9jYWwgdG8gdGhlIENQVSBub2Rlcy4gVGhlIGRvY3VtZW50ZWQgbm9k
ZSBuYW1lIGlzCj4gYWxzbyBqdXN0ICJsMi1jYWNoZSIuCj4gCj4gU2lnbmVkLW9mZi1ieTogUm9i
IEhlcnJpbmcgKEFybSkgPHJvYmhAa2VybmVsLm9yZz4KPiAtLS0KPiAgIGFyY2gvYXJtNjQvYm9v
dC9kdHMvYnJvYWRjb20vYmNtMjcxMi5kdHNpIHwgOCArKysrLS0tLQo+ICAgMSBmaWxlIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKClJldmlld2VkLWJ5OiBQaGlsaXBw
ZSBNYXRoaWV1LURhdWTDqSA8cGhpbG1kQGxpbmFyby5vcmc+CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
