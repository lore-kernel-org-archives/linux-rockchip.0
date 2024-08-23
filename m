Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76EAAC5321D
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 15:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZ5e72Vk3SpCc7BmgNejmdW0MDCt1g0tyV3VkckidJ8=; b=ZIDaDxyEut4ZkE
	LX+8nb5EtixA1Pe1qVmmEznA0c7HSfw2s6/OXGW6dtWikKpuoIL6gea/B6t34k+cOs4yqGrYkihuy
	1HVKm5ySVIh82R59DXlWIs5iy91hFoG28cEMiqcXlsNx05PXzSZFqpInn3bjJY/xmjTGcF7ZvjsFg
	PUFthJDJAipeXiz/HyIvgl52dMpKh1dN1y1HRghY/tdU0AvXxMG38Ha91J971ExonT9lU08e/Zjfj
	Jbpa+xyJrl9wxjTZp7247rLVONtE8QAy9cVTypzZr54j9OtXWo59JT8PyyApu3GbcNf1q70/hju4P
	HqdRQbp2+b3+vArelQHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWXP-0000000HORU-2mFR;
	Fri, 23 Aug 2024 15:49:19 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWWJ-0000000HO72-1Xsq
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 15:48:12 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-533488ffaddso2752804e87.1
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Aug 2024 08:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724428089; x=1725032889; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LmPjT004Pu+b0lGXNhjt9mxzluLGxiZs+Qgq47unh9M=;
        b=SPDcI8YiHaGBL7BPVVfI0ImSTJ5htTfoa6alTAd+ZY3vQEwiCmMzCtTGh+42i83yDs
         2H27DCFzfrUSY7rl97jVzpzvtIb6k4HrNtGxbDoQJ4OMkwD1j98fWj35AkW+vxUvxv8I
         WaCMBaT9KQJnC/3OSCAgjaWTF5MMATE7dnydsEWIXAH/1VH1cDgereHLhuOdbs7dVvuU
         zbEvRVo3XBKpUP3GgC56bnjXiMDiuWPm5Yiop5ax+Hq7nHXMc8e/U4h5CsY6IPSA7z6k
         yYrH/jpT1YikNiv1qqaca3xC4mR/tV6iQmfaWLilOs3YeOy8Q2p18MJn/NvRwh+UO1s8
         cZGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724428089; x=1725032889;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LmPjT004Pu+b0lGXNhjt9mxzluLGxiZs+Qgq47unh9M=;
        b=tTTRQGe6Xhb17KSFlBsZLeCw0iXUcceBda7JBaB5WhIn8LI0CE4LU5IF44br/0x/0Z
         Yu02upACyBTwLrONUWPOEJVCJnVjI53DspobpWAE3crrC4dvWzASwsf01e1yf1h1GLnm
         Fr+0VhjIHeHxJh2HQygqSh9Vyt3ZUFtJIHbue+f0XPLzhCpIPiIYM4T9HYtLcLzqXA/U
         TRhT+hVAA6qLLAE4U8mAHD/GXEZjyakFuvgoXpAYu44ydEkd+hNiHG/2FAcqnmb1k7GI
         pOfR4Lu1XlNw+Z6Mi01ez8HnRvP8iEPByszAzE3Q0mZo+4FT40X3KTURV82jx2WL0fP9
         1S+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUnMkQSvNiDCFb9Xru133DUS7oBAF+eMzS3XzjpO+dwYqM8of4LfOCQ7bBbHAmfTuuTx4M0uqYF8HftF7Oapg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwLyPBl4rZLf4xEjnn79oZAIw2IPlDCdiTTJ+mf195+apCbL4yX
	LDj0DG/DcgNMlcRCAoB1nhZ94sWFEKSfzCNkF2ZdylauDmvZTPEvhw0EmXJtT3Ig2zb4KVJFv/P
	gh1PJvTxtHxGnk0rPY3wOfUpMxp85VDKSwCx+Qg==
X-Google-Smtp-Source: AGHT+IGPIsPltYDrMbENTRG8ZR5qzvz5WC80feYuFQqeN6sGzjfgHPtnsMGj6lpcAU4PIZVuuR1kVHhNrtGIoL9x7eA=
X-Received: by 2002:a05:6512:4016:b0:533:ad6:8119 with SMTP id
 2adb3069b0e04-534387786e0mr2117298e87.14.1724428089108; Fri, 23 Aug 2024
 08:48:09 -0700 (PDT)
MIME-Version: 1.0
References: <20240822195706.920567-1-detlev.casanova@collabora.com>
In-Reply-To: <20240822195706.920567-1-detlev.casanova@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Aug 2024 17:47:58 +0200
Message-ID: <CACRpkdZW+g4_szvMhuYXFHCjoekYKdux8s9u6zXkhDSDuF_i1A@mail.gmail.com>
Subject: Re: [PATCH v4 0/4] Add pinctrl support for rk3576
To: Detlev Casanova <detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_084811_518270_52ACC369 
X-CRM114-Status: GOOD (  11.50  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, Shresth Prasad <shresthprasad7@gmail.com>, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBBdWcgMjIsIDIwMjQgYXQgOTo1N+KAr1BNIERldGxldiBDYXNhbm92YQo8ZGV0bGV2
LmNhc2Fub3ZhQGNvbGxhYm9yYS5jb20+IHdyb3RlOgoKPiBBZGQgc3VwcG9ydCBmb3IgdGhlIHBp
bmN0cmwgY29yZSBvbiB0aGUgcmszNTc2IFNvQy4KPiBUaGUgcGF0Y2ggZnJvbSBkb3duc3RyZWFt
IGhhcyBiZWVuIHJlYmFzZWQuCj4KPiBUaGUgZ3JmIGRyaXZlciBpcyBhZGRlZCBzdXBwb3J0IGZv
ciB0aGUgcmszNTc2IGRlZmF1bHQgdmFsdWVzOgo+IC0gZW5hYmxlIGkzYyB3ZWFrcHVsbCBTVyBj
b250cm9sCj4gLSBkaXNhYmxlIGp0YWcgb24gc2RtbWMgSU8gbGluZXMKPgo+IENoYW5nZXMgc2lu
Y2UgdjM6Cj4gLSBTZXQgR1JGIGJpdHMgdGhyb3VnaCB0aGUgR1JGIGRyaXZlcgo+IC0gRHJvcCB0
aGUgcm9ja2NoaXAsc3lzLWdyZiBwaGFuZGxlCgpQYXRjaGVzIDMgJiA0IGFwcGxpZWQgdG8gdGhl
IHBpbmN0cmwgdHJlZSEKClRoYW5rcywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
