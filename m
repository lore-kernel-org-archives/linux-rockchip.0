Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 543AAC27C52
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 19:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6ifpcNVnjeNCs8Lo+ED7bV9zKCl9nc5gAwKWWgqvFA=; b=UWWzQM2BbvvirX
	Ald6YG4nUd6iD2V2JRqqkEV2MCq92JoRgGfcUBxmLcuv5qHrIS0AwbD4q/N7pCBNeohnZL26yf/R/
	gYtSwNNMURuXQMXUNDRqwQkYUMRf0qmS7O4dzLRF5Qp+9nVCeOYFT8yez8DW84o6/TrsLaTjh9VZl
	u6ZPab1bQcEscN/LNACm0oJQ09QndqB5zXc81gGWvD/pGZvCFMqICdjCLzPG72D8eSK2hqEpFQRh/
	U0wblNjXkdZsfzOeZcGZBh9I9J8Ouqu5tTC3iZgdKd6d5jiIB+oHpQxcUuBOQB4WFE83neWOFjpNb
	fpD/nObwjLmpPZwevcaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEwmO-00000007NaL-1jjf;
	Wed, 05 Jun 2024 19:58:40 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEwmI-00000007NTW-3TIP;
	Wed, 05 Jun 2024 19:58:37 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-35dce610207so161874f8f.2;
        Wed, 05 Jun 2024 12:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717617510; x=1718222310; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pf8r5yLzRWnbsxS/Ko313LwbjIGVpyyp6EBPhDw6O18=;
        b=UsizM81Fivmdtfx7e64Saeqx8Q0ZqaqfI3qjmVBz/ktHDyF75hPQ88MxWGZE4wLoOY
         0y+fO9Og1tMKWpJebFf8CorjZHJZDiqlRBw0HBk056prxi4UzlVDfv2ViZ5IEi08Iv6s
         ku9sp24oQyBMrmT0BfMlFIUWsIY2oLjAV6L/EWu3iZCUI6OgPYZBDNM7WbhWuUIB4wLC
         jx/F16x+20TY3hO5xakk9xQ+1lWddRd976EZcE781CwbJf5afUFQIbhg6WccPNGFHIYE
         xAJMV5eFuBgpIj1F4KcTswsuQJQfx0K4wtB8bLDKmcJSrNf26jfejJI0pbS7nEYmMKEE
         ckcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717617510; x=1718222310;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pf8r5yLzRWnbsxS/Ko313LwbjIGVpyyp6EBPhDw6O18=;
        b=tPmPG+3g9pngp9T/bgBa2kOcELiFv0CLb/Fr79nzd3pDjqbQV8J4mIRcjLhb8XUWIj
         p6J3bYFuFgodf9ldU62W0/XeZAkSzbj1mNiSrOh71OixIOV4f+8tVqOsyWgoolzFNPyu
         0XZ2W+sVaipxz6vr1qIi+xSpwy3JQXoZVZaoWBUfkYEyInxXDA3XSwe5W2/ohmIVWtnc
         9Oarui/k4Od7qXPtHZvaSghfc7xKlsjROThFrf2UwNIRgQFPXOgUZ00SDIt/3C5xZiEB
         dfEMAj+flCBeCWDij+J9jT60+KC5quJZhAul7yIWgUO97WZwzmkE01YzWy23J9uM4J51
         FK/w==
X-Forwarded-Encrypted: i=1; AJvYcCWJs1UcjA/z0WSGHKkCl9KT7fwm6jm3uD1IdBrIyGy/Dp7FQ/oQch3xSg7Obyph+kQ2jpHj55tTFRYHNlZ72POGr4ly7rbEG1mddYLexGhotyWH85mtTzSgOFnxXq3WV0pz0kfmMgL7QOjm0wVzUd+NSuG1d48SXL8=
X-Gm-Message-State: AOJu0Yx0HHQwQSMo3Ta0GDx8eT+OumS84gg5IYQD5X2tHo3Y9BiXOUQW
	y5bC8qCieEeRcr8xB+xNzorlyOwP8IsbOu7bdsB8aMAadoEWAi2r
X-Google-Smtp-Source: AGHT+IFIRSDuYx9C8w8Mwft2Esuzx2rYHBnh1PEvECrLGF7NHqqpntJiuiOWp3KIW3ubAgGvnJx6DA==
X-Received: by 2002:a05:6000:dcf:b0:354:fcbf:f3c0 with SMTP id ffacd0b85a97d-35e8406decfmr2999235f8f.4.1717617509710;
        Wed, 05 Jun 2024 12:58:29 -0700 (PDT)
Received: from [192.168.0.9] (cm-83-97-153-254.telecable.es. [83.97.153.254])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35e0f97ba3csm15323756f8f.73.2024.06.05.12.58.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jun 2024 12:58:29 -0700 (PDT)
Message-ID: <02e22411-e22e-41f7-8bca-95c8ef5a4346@gmail.com>
Date: Wed, 5 Jun 2024 21:58:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/14] drm/bridge: synopsys: Add DW HDMI QP TX controller
 driver
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Algea Cao <algea.cao@rock-chips.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <20240601-b4-rk3588-bridge-upstream-v1-13-f6203753232b@collabora.com>
 <2554679.TLnPLrj5Ze@diego>
Content-Language: en-US
From: Luis de Arquer <ldearquer@gmail.com>
In-Reply-To: <2554679.TLnPLrj5Ze@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_125834_915572_B563435E 
X-CRM114-Status: UNSURE (   8.36  )
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

T24gNi81LzI0IDE2OjQ4LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBXaXRob3V0IHRoaXMgY2hh
bmdlLCBjb25uZWN0aW5nIHRvIGEgRFZJIGRpc3BsYXkgZG9lcyBub3Qgd29yaywgYW5kCj4gcmVh
ZGluZyB0aGUgRURJRCBlbmRzIGluIHRoZSAiaTJjIHJlYWQgZXJyb3IiIGJlbG93LgoKSSBoYWQg
YSBsb3Qgb2YgcHJvYmxlbXMgaW5pdGlhbGx5IHdpdGggdGhlIHZlbmRvciBkcml2ZXIgb24gbXkg
RFZJIApkaXNwbGF5LCBhbmQgYW0gYXdhcmUgdGhhdCBzZXZlcmFsIGNoYW5nZXMgd2VyZSByZXF1
aXJlZC4KCkhvd2V2ZXIsIEkgdGVzdGVkIENyaXN0aWFuIHBhdGNoIGFuZCB3b3JrZWQgZmluZS4g
QWxsIG1vZGVzIHdlcmUgCmFwcGFyZW50bHkgZGV0ZWN0ZWQgZnJvbSB0aGUgZGlzcGxheSBhbmQg
dGhleSBhbGwgd29ya2VkLiBCdXQgbWF5YmUgSSAKd2FzIGp1c3QgbHVja3kgYW5kIGl0IHdhcyB1
c2luZyBhIHNvbWVob3cgY2FjaGVkIHRhYmxlLCBJIGNhbid0IHNheS4KClRoaXMgaXMgYW4gQU9D
IERWSSBkaXNwbGF5IGZyb20gMjAxMSB3aXRoIGEgcGFzc2l2ZSBhZGFwdGVyLgoKCgpMdWlzCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
