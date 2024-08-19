Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7041DC52D7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Aug 2024 08:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BuHhi7NfrQYbbzKg58mIRBFc6Bze1mDJI7Wu2CRGrUE=; b=HziBhRkyK/9LEK
	hC9ETdE2tAGA3wZmP2+sZSDmM/LN7JbVOGIORYLIePOUw/WeN+f9rzQoQxpXzN5UNrdduwYZKrztE
	0QFy7ERuyHUMjjCuoIMa3Z4d4QlEqzlrXxK6ccv/Uwot25cIk4UgjvQNuJz63CsAbn1JquuoP42ic
	c8qvBpE+PM6euz6sVuoqf1Qjd31yzeJyAGwiMYWBMhCpdSLB5i9p1bxEMcGDiZ3PeenYppc5D/iet
	ZP2xlogbyzauZaMKSpmBVxumBeSgxrr5vOAxyL38YQfUSPUGNEnV5GGaZgmz189l2jvlznvcOFsnG
	t4dBkWIsJRR8jpyna/GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfxgc-00000000lGH-2aGC;
	Mon, 19 Aug 2024 08:24:22 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfxfv-00000000l8j-0WTd
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Aug 2024 08:23:41 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-42817f1eb1fso32088375e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Aug 2024 01:23:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724055817; x=1724660617; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rFFRqaLMAKXLToOtJy9WdY/znvYXwwMfNOAODqDhSMo=;
        b=MrihmBYSEjBGWyg47ATZYsfmJ5e3MtZoLd2AUISjhIkJ9s3N1diMEnVsLU9o1vtx4J
         sZ8nFOKG3GUBWSFFwnyImUZCRmHrpcnMQZS0SfBnuKNAEOJpTa+WuBdmA1wo3YBvifAx
         aGaoLUXvu+WOMueuTIkL+LWraWBd/ToXeUCvQ190NCIRGz5c5QXVPJ1KV5BkpcWc6G7c
         awRPLFv1dTGXajFwWt94JsEsOiUkDtet7FsHOFYrNSxnJGpuyO5qcKP4/hpwdWpZum+1
         +8fkikoa8e1S7L5wyZdHIzO3HyDTL6A5v0lRkOWOEW9ajedxOZechl1vqX5PwqKGZzkb
         PdOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724055817; x=1724660617;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rFFRqaLMAKXLToOtJy9WdY/znvYXwwMfNOAODqDhSMo=;
        b=AsHCXnMS+IcOhJxgkUsWX2ApcdtcQO0uWfQuuJlQqE6OOJqLbzfSJhjcjxEav5w27j
         3tcnn23igZoH+mTTsKsBVr0tRzshr3Aoo24TO9eUQTnMcaoRDDZoLqaUPhNMdJXwvfJy
         Dwqcf/3F9ZMT3zm+MyzJhOL6oPZtsQ7u03imoOrYpvRkqFnpmBaw2GPf8Cih+SQLXLQx
         uvFkaAmyiMByOSG1wFiFeGHNfF2ejFeq+HfObqw8QqdE15Ix/CS+sRd0GNmxmKYMYfSU
         862yClCTXxUmJjeP4HVXUnBLmYLI3LiIxV7ueqLTmBzcAYOaAT+wS/2yQa0+tWAQc8Lh
         QbtA==
X-Forwarded-Encrypted: i=1; AJvYcCUf7GQEQrD92AHqpzR6uUJOulXM2rpXB3R01FDKGh375Qe+lIuCG/A4/UNKW5YrO0CZR0629g3g9JCSfvH7eY/QavIW70zgWMfnDyE/6q5aC0MP
X-Gm-Message-State: AOJu0Yz3IWuZFygZ32AwlHkyZ3c6Mfw/Ak9JlliLD3YXTxpxRKzl7kpc
	7idm0p1gYb2EIUdU4gY3K2p/d9vpbSq1nVUKHm/Lw+9iAni8Pk/BmZxpNgU30co=
X-Google-Smtp-Source: AGHT+IGoPJX5KFTVTFHk/jojp0D2SHIUTsj+jz5BCHm6YGSsPInqjdE4c5SgCunL7XSQeKL6rhKr8w==
X-Received: by 2002:a5d:5442:0:b0:371:8c79:73c1 with SMTP id ffacd0b85a97d-37194317aa2mr6963984f8f.2.1724055816248;
        Mon, 19 Aug 2024 01:23:36 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3719485e2b2sm7908066f8f.33.2024.08.19.01.23.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2024 01:23:35 -0700 (PDT)
Message-ID: <918bb9e4-02d9-4dca-bed2-28bb123bdc10@linaro.org>
Date: Mon, 19 Aug 2024 10:23:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/10] dt-bindings: timer: rockchip: Add rk3576 compatible
To: Detlev Casanova <detlev.casanova@collabora.com>,
 linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Andi Shyti <andi.shyti@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Lee Jones <lee@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Chris Morgan <macromorgan@hotmail.com>, Jonas Karlman <jonas@kwiboo.se>,
 Tim Lunn <tim@feathertop.org>, Muhammed Efe Cetin <efectn@protonmail.com>,
 Andy Yan <andyshrk@163.com>, Jagan Teki <jagan@edgeble.ai>,
 Dragan Simic <dsimic@manjaro.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shresth Prasad <shresthprasad7@gmail.com>, Ondrej Jirman <megi@xff.cz>,
 Weizhao Ouyang <weizhao.ouyang@arm.com>, Alexey Charkov <alchark@gmail.com>,
 Jimmy Hon <honyuenkwun@gmail.com>, Finley Xiao <finley.xiao@rock-chips.com>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-serial@vger.kernel.org, kernel@collabora.com
References: <20240802214612.434179-1-detlev.casanova@collabora.com>
 <20240802214612.434179-9-detlev.casanova@collabora.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20240802214612.434179-9-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_012339_184098_9334A6DC 
X-CRM114-Status: UNSURE (   6.52  )
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

T24gMDIvMDgvMjAyNCAyMzo0NSwgRGV0bGV2IENhc2Fub3ZhIHdyb3RlOgo+IEFkZCBjb21wYXRp
YmxlIHN0cmluZyBmb3IgUm9ja2NoaXAgUkszNTc2IHRpbWVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IERldGxldiBDYXNhbm92YSA8ZGV0bGV2LmNhc2Fub3ZhQGNvbGxhYm9yYS5jb20+CgpBcHBsaWVk
LCB0aGFua3MKCi0tIAo8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93
d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIu
Y29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJv
LWJsb2cvPiBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
