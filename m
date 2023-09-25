Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69D50CE7A97
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Sep 2023 09:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZnEOH0kTkd4s76QWj142mkh0U16qLPben1J4rX8XUwo=; b=hX5UBiibG7EE5x
	HYmRorynCv9oEdonMEMurCyT2jE50PeS7ZNetyrk/0po1pUnw6R21F2FfJ2efDm2NvFs4ro0xBz+E
	x+dInD+bFckF0Nr1zK/Y1c7UDQ6I20ZFeaU72NGgJvx3ENGGGi7fBQ0nGA5MpLwxWYLnK2YvTiqYo
	VbUdon5g9w9k56mnLBlxm/IFx6rieWollPIwPr+2jsMrcE6ktV4XcnsacMn9rVc/AhJEkHKen47bo
	PJ9Sb9wAut9UTnTFyziYLiha+MnkSRabR0WkpK7EnNfwARuCkAOEfIyK0keLhBn1OY2ZNlx8xcoD9
	c8P+UhHbrWRQvRurTiQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkiMt-00DvLb-1o;
	Mon, 25 Sep 2023 09:59:07 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkiMq-00DvJH-2B
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Sep 2023 09:59:06 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-533d6a8d6b6so3357417a12.2
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Sep 2023 02:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695635933; x=1696240733; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=07uVGcYaT587O+lJP2m3ZC4n8yo7xprZQQOPVOh74lw=;
        b=Y/1KEFiIZ5Uxe6aTQn1Sw3mnT8OJxfEu90GKMkpsq7QnJ2oV4afSfG3XriDfg08ojg
         XdFgqHzoBqadFO1ptC/VDaUFjrOJ1GH0i2NEFKYrUeM8ImTAZFr3xfVINMkffn9KvvFk
         5ttHEqSE1/IU9GzQdsohMOoEPby/V8LBsKTWJoUxEMYkMKQ5ggGQmbVIq25dw9Wp17r1
         MOXwzDDI3oBMYwv2fCZysOMBuacNDnNDmn9dS+ECpKLWMoUoIvbXzTOIOEr/H8m/i6fe
         SeSli6B/PfMb75hXQaFK95rb9g0qPbuGjfPXx9+1ad+LYR7tW+ah1srYahNzv55SJhgp
         wNlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695635933; x=1696240733;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=07uVGcYaT587O+lJP2m3ZC4n8yo7xprZQQOPVOh74lw=;
        b=EiezX6o7O0iBb3Q9hA3VWM2uB7giSIG7uGLoaL96UxvpjK3q5pAKVO2HoldyHLJ6DO
         X5pEXCn6zrEM5IkyW7eDKMZUPypellIL90+Ywyz/gmSh5eyVx5RkbkMWQotDPgYXfwXf
         mJ7EynHKe0RVtLwcfqP7gSxj3fDUQoBvftoTb5I6w5ovBw56z7JyzhofS4P3TfazodRJ
         6H/+yPrzeUa6kc8hSa5VFIy6z94egEv88d0y40/Jc0QEu4pWxPwrkvWMhKSOV0AkYCZx
         bZ0mZCPuSE8Y9xbGXCRg3yGCB+4P2MEGAP4MYhyERvtrEtGkdUR3vhpGD6X+lkgamaWS
         Fkew==
X-Gm-Message-State: AOJu0YzbJj9OVwJ7PkdSRb5BZbthhc0BFL2IJssnYMriQ14K4UD4PC5F
	o8Jvv5/lN+vWTr/oN3usqBzIww==
X-Google-Smtp-Source: AGHT+IGSfyahZeZWFSCp2lS84BASF/3XwkdnTR8ykM/qYp0D0Ky7td4khxNtqawySDMtRTwzWoBeZw==
X-Received: by 2002:a17:907:2cc1:b0:9a1:f10d:9746 with SMTP id hg1-20020a1709072cc100b009a1f10d9746mr5022065ejc.20.1695635933026;
        Mon, 25 Sep 2023 02:58:53 -0700 (PDT)
Received: from [192.168.101.165] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id k3-20020a17090646c300b009ae57888718sm6040535ejs.207.2023.09.25.02.58.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Sep 2023 02:58:52 -0700 (PDT)
Message-ID: <311837de-5acb-4b5b-b64d-9bdc1403a087@linaro.org>
Date: Mon, 25 Sep 2023 11:58:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/40] soc: Convert to platform remove callback returning
 void
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Joel Stanley <joel@jms.id.au>, Li Yang <leoyang.li@nxp.com>,
 Herve Codina <herve.codina@bootlin.com>, Qiang Zhao <qiang.zhao@nxp.com>,
 Hitomi Hasegawa <hasegawa-hitomi@fujitsu.com>,
 Huisong Li <lihuisong@huawei.com>, Krzysztof Halasa <khalasa@piap.pl>,
 Karol Gugala <kgugala@antmicro.com>, Mateusz Holenko
 <mholenko@antmicro.com>, Gabriel Somlo <gsomlo@gmail.com>,
 Yinbo Zhu <zhuyinbo@loongson.cn>, Matthias Brugger <matthias.bgg@gmail.com>,
 Conor Dooley <conor.dooley@microchip.com>,
 Daire McNamara <daire.mcnamara@microchip.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Sumit Gupta <sumitg@nvidia.com>,
 Shang XiaoJing <shangxiaojing@huawei.com>,
 Muhammad Usama Anjum <usama.anjum@collabora.com>,
 Rob Herring <robh@kernel.org>, Nishanth Menon <nm@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Michal Simek <michal.simek@amd.com>
Cc: Andrew Jeffery <andrew@aj.id.au>, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Zev Weiss <zev@bewilderbeest.net>,
 linuxppc-dev@lists.ozlabs.org, loongarch@lists.linux.dev,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-mediatek@lists.infradead.org, linux-riscv@lists.infradead.org,
 zhang songyi <zhang.songyi@zte.com.cn>, Lubomir Rintel <lkundrak@v3.sk>,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Alim Akhtar <alim.akhtar@samsung.com>, linux-samsung-soc@vger.kernel.org,
 Nick Alcock <nick.alcock@oracle.com>,
 Yang Yingliang <yangyingliang@huawei.com>, linux-tegra@vger.kernel.org,
 linux-pm@vger.kernel.org, Ruan Jinjie <ruanjinjie@huawei.com>,
 kernel@pengutronix.de
References: <20230925095532.1984344-1-u.kleine-koenig@pengutronix.de>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20230925095532.1984344-1-u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230925_025904_717720_287AA3D1 
X-CRM114-Status: UNSURE (   9.67  )
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

T24gMjUuMDkuMjAyMyAxMTo1NCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gSGVsbG8sCj4g
Cj4gdGhpcyBzZXJpZXMgY29udmVydHMgYWxsIHBsYXRmb3JtIGRyaXZlcnMgYmVsb3cgZHJpdmVy
cy9zb2MgdG8gdXNlCj4gLnJlbW92ZV9uZXcoKS4gVGhlIG1vdGl2YXRpb24gaXMgdG8gZ2V0IHJp
ZCBvZiBhbiBpbnRlZ2VyIHJldHVybiBjb2RlCj4gdGhhdCBpcyAobW9zdGx5KSBpZ25vcmVkIGJ5
IHRoZSBwbGF0Zm9ybSBkcml2ZXIgY29yZSBhbmQgZXJyb3IgcHJvbmUgb24KPiB0aGUgZHJpdmVy
IHNpZGUuCj4gCj4gU2VlIGNvbW1pdCA1YzVhNzY4MGU2N2IgKCJwbGF0Zm9ybTogUHJvdmlkZSBh
IHJlbW92ZSBjYWxsYmFjayB0aGF0Cj4gcmV0dXJucyBubyB2YWx1ZSIpIGZvciBhbiBleHRlbmRl
ZCBleHBsYW5hdGlvbiBhbmQgdGhlIGV2ZW50dWFsIGdvYWwuCj4KQWNrZWQtYnk6IEtvbnJhZCBE
eWJjaW8gPGtvbnJhZC5keWJjaW9AbGluYXJvLm9yZz4gIyBxY29tCgpLb25yYWQKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
