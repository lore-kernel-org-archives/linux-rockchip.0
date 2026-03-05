Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC0DEF3092A
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Mar 2026 10:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lc02IJTOHrXbyTxLew26BUTKvAICLmR7wEmk15kdJQ0=; b=U0+YyAP+Y0zzDn
	zfErpBMlBqB8rEZoCRtLU2tA9uDZ8YHFogNQrAZCxisM8dpheSnNt+81LQzmOCMdf0gM8JwIvywoD
	WCIbTvBfcGHnUZYKhGeF525+71qYo9hBzz2Bf7Cvtrj2c1cCeE1FrJcVtgxQ/bXQjklKDleuP+b3C
	eBFFoJqBwe1NH0Ty0+mseDFiTtoBMgtCI+Hmnk6E+RL/SPK4Wp/7ozRQdZKUyox090c45gG9qbbjV
	pmvHnAIIgR0ohVJ21BoxGLx7Wn55u/DwfSRCg8oYri5djfzsoGAxvIhsVsnkBQ2mEGG3T8KVQ7xMV
	8eEk+QKma4AclTjCxkvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5XI-00000001Umu-0hjM;
	Thu, 05 Mar 2026 10:02:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5XE-00000001Uf0-3HdZ
	for linux-rockchip@bombadil.infradead.org;
	Thu, 05 Mar 2026 10:02:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=PLN3jU+WSp15lmHsKDg7F21c9tIpGoZokDbnzqxSsGE=; b=VqrQ+vEETWVjwsmTqMOoM0R/05
	0++YbyPv/Peg/tnmVj/skMvrv4MJDKI1yuQ0w+r8c97bdIaO6MkH0fFRoU02CnccFGhlulegymU6m
	x7hE2tA82SXF5V+o0d7Ckowi8Vah1rGMxOW+LyhV9GSDUjpOHcbj7KalmOZCj+mJPR1R3TKcaVd/a
	8tBZHJAd6sGmo2tJZykMuI85OtWA6MckQTlPEupE+AOPQY6I+5n2OeHmgkQNdw8rjTpDL2tpgoLrV
	yDkXBxqOHnxvTpgwE7kq2vkyQZ8p21fAVxCgDxJZeAYQpvJ6prMH/8Y1L89A7FpIxFmItaiIAV3Qz
	eGFDzv6g==;
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5XB-00000006QKg-3DqO
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Mar 2026 10:02:23 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-483a233819aso77125955e9.3
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Mar 2026 02:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772704940; x=1773309740; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PLN3jU+WSp15lmHsKDg7F21c9tIpGoZokDbnzqxSsGE=;
        b=UHBNqox5xeZikJqSm8QmS4wtXg1G38GZ+PnBAuzXRfRytdhe5a9idPZRkDlMQMFIPm
         Z+tywU4A9mo1vQlCT7EHhr0lXuE+DxX3kO56uXUZjmrVyPAWLDPHkWhqM7tlbZkFfZBK
         Fcy9V9t+/+hJoBaNgY7crLL/e6jiDBQ6vdTmpm5tDvJWWJqflC0cJ/p33VTpjUzZVE8q
         syoPYCwmCMZNQS2uY9hRwhnnC0tg0XJNy7hlpgIHVLVUp6gU0yoZsJiY797OpZU9PcUW
         5ZsD0ZypA/wKnI8Sb6fvAX6XKifNWe8lJGh2+fbgXMTOKtdklOTZLC7wDnPWvicmb+Cq
         oTeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772704940; x=1773309740;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PLN3jU+WSp15lmHsKDg7F21c9tIpGoZokDbnzqxSsGE=;
        b=OMLUcmOybA+rcqAeYBNrCmg8P+kq22LB5erLnIGEoaGFAzv1HiVm+zpEPxXyGNf31r
         ciQsWKVQlWfkbtYUUz3CsLEb5wDrtsXgAQwgXASfDziCmOEZ/XL8SMJ4m0H0B7Ez8fYD
         /LBiecsPCwikKWnL5Fc1Q+RLTGS6XtRFa9nHmVj+5Zsc8ND8R5LZWJWpu92ThfVwDztE
         cF9A9BHtjdGJdemaK71fJT74j//HbmvmUuwBmhWK3i4bZ92ioR1Zue3Tc6S4RXSS55P1
         l1lm7AxGDa0iWxzeikl7mNWol1to8DJOr2XD2KncXJZ5Cy9l6NC5hH2yWYFcaycT+Hjx
         88vA==
X-Forwarded-Encrypted: i=1; AJvYcCUdz/2ORucQVTwfkAuhwKKirf95mMSUd5W3+cBJ+BLsIaFgwSCpkikuu00PoU7tWk2jJQSLMhNMtXXqmuyyNQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwOIJ7F/uxz9PhV6639rZM+zNyjiiWE6oEI0k0b1/MfBviVB6gO
	LNK68/s1xcetEDL1UHZSni4No6sRWBOMW79//rft85frthFXZwlUweJXkZtxBpqS/+E=
X-Gm-Gg: ATEYQzxeWmFjJTRoive5lrJHv0+I72Y6i5AVC+zRc2hUf6eywGoIq3AR0QInfigoG4W
	X6WCb2oCLz7+UAjlfQWzy1KIbdIGJWP3jsJKcAfr9qZ4N2rtrC46IdzHa53wC+ABEeiMCXNjEBm
	2bABCXh70OQxcX3VpClHT2jnyMzirW2XWGiO1eqYKAdKyHBB0TJ1m2ndGG7GOtFZ8rFD5gp0m3V
	N6rC/BvmG3gs2nELBkhMt/OdJ73172hrPJxfyhapECNc0dCCn1RipqNaue7wbqQQ39QcXwzC+Ax
	7rNLJEcBJwBOjqhx0bCc8ISve+adn5ZNMWGVgGINO4EY2+WlAvgToEHf6eIWBUJWQd10MSRoBUz
	d6t80Y6BRWL3FTKgVRJHE77rZO57hrHDUpwLl2VfQZ4zaiE/9frEd3/gEXU5XExQN1RbgNFAGBH
	3Pj9ZXYHsDF8lECAKTYBmsMy34/CVA
X-Received: by 2002:a05:600c:a07:b0:47f:b737:5ce0 with SMTP id 5b1f17b1804b1-4851988f31dmr86977045e9.23.1772704939633;
        Thu, 05 Mar 2026 02:02:19 -0800 (PST)
Received: from salami.lan ([212.129.84.244])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851fade9fdsm59453655e9.4.2026.03.05.02.02.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 02:02:19 -0800 (PST)
Message-ID: <030737fd255a49288349f06e8c1217a126ea9081.camel@linaro.org>
Subject: Re: [PATCH phy-next 05/22] phy: add <linux/pm_runtime.h> where
 missing
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>, linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, 	dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, 	linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, 	linux-can@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-ide@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org,
 netdev@vger.kernel.org, 	spacemit@lists.linux.dev,
 UNGLinuxDriver@microchip.com, Peter Griffin	 <peter.griffin@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>, Geert Uytterhoeven
 <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Heiko
 Stuebner <heiko@sntech.de>
Date: Thu, 05 Mar 2026 10:02:16 +0000
In-Reply-To: <20260304175735.2660419-6-vladimir.oltean@nxp.com>
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
	 <20260304175735.2660419-6-vladimir.oltean@nxp.com>
User-Agent: Evolution 3.56.2-8 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_100221_980239_69268BED 
X-CRM114-Status: UNSURE (   8.33  )
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

T24gV2VkLCAyMDI2LTAzLTA0IGF0IDE5OjU3ICswMjAwLCBWbGFkaW1pciBPbHRlYW4gd3JvdGU6
Cj4gSXQgYXBwZWFycyB0aGF0IHRoZSBwaHktbWFwcGhvbmUtbWRtNjYwMCwgcGh5LXFjb20tc25w
cy1mZW10by12MiwKPiBwaHktcmNhci1nZW4zLXBjaWUsIHI4YTc3OWYwLWV0aGVyLXNlcmRlcyBh
bmQgcGh5LXJvY2tjaGlwLXR5cGVjIGRyaXZlcnMKPiBjYWxsIHJ1bnRpbWUgUE0gb3BlcmF0aW9u
cyB3aXRob3V0IGluY2x1ZGluZyB0aGUgcHJvcGVyIGhlYWRlci4KPiAKPiBUaGlzIHdhcyBwcm92
aWRlZCBieSA8bGludXgvcGh5L3BoeS5oPiBidXQgbm8gZnVuY3Rpb24gZXhwb3J0ZWQgYnkgdGhp
cwo+IGhlYWRlciBkaXJlY3RseSBuZWVkcyBpdC4gU28gd2UgbmVlZCB0byBkcm9wIGl0IGZyb20g
dGhlcmUsIGFuZCBmaXggdXAKPiBkcml2ZXJzIHRoYXQgdXNlZCB0byBkZXBlbmQgb24gdGhhdC4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBWbGFkaW1pciBPbHRlYW4gPHZsYWRpbWlyLm9sdGVhbkBueHAu
Y29tPgoKPiDCoGRyaXZlcnMvcGh5L3BoeS1nb29nbGUtdXNiLmPCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfCAxICsKCkZvciBHb29nbGU6ClJldmlld2VkLWJ5OiBBbmRyw6kg
RHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
