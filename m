Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61AF6C021B8
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 08:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UxIHZsLW9E04xN8yk9cnXiLjTXXTjYndD4wKl778OWk=; b=J2bi4+QFjFptSD
	obVGL6JXpFTPfhTHJbW3gkf6Y4OdThOf/Xg7hQA8gfVunEeE6qfclSa9js7el3EctWDrBD6njGpO9
	JsP+pdHQ4r/9zMiqLJw5JcDMKsHZMXTRxq16uGIWWviQakwHkvHkpFnTZetsVFu+GPAbkX+mVhOu2
	bnItkmpzYk0819zoUfO2ioz52r2UwFDWJ4mmx1KyDQFDmz0dvJBJ5GfCPn4m99qhEz6+wX2dAzaM7
	8k//r3x1uGusPjTJm9PSzHsD6sJYIKTcqn4ZsGVjloXmG75TA3lPo86d3bEAbXwCbkPTHWcpYJcld
	HjyBDoPvZvf438sgs6TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpNIh-00000003ZGn-2lj5;
	Tue, 04 Mar 2025 08:06:51 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpN45-00000003WUJ-452q
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Mar 2025 07:51:47 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-54943bb8006so5869724e87.0
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Mar 2025 23:51:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741074704; x=1741679504; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pA6zLWQ+dYJkLtBz+wtBiNsIVYV44LsyhmBHfgcYN+Y=;
        b=U+RwhPbAWt9MyixSW68nN5tGNQwp6r/qGWYlFOTxJvTkJTN1FiLeYz2XQlOdB+n7Y3
         YxSXM9nkyXBkjX2c0oma87vfR+Xfi7lAPIP+jLJm5ZxSR57O7XKOhZJeaqvOA823sjCG
         s23kCAZPEjqb9ipjQBaX+S3YQGfDP5DX61ftAuxO5gGUufjNnkVeKmV6nbf9NR/2BKg+
         3CBsGz5Uru44L2WHBrxg1YBAC1AGCtbLFqyNp0DQ+1GucegpbY4gHrwzQDN9wKkpFJO4
         m/wy3ehfMXVAytGEhndXcOnfPPGPHdNL+iUU/a0XKHa4uBgFBTyPkRDuNioiEsft8p5p
         hQ7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741074704; x=1741679504;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pA6zLWQ+dYJkLtBz+wtBiNsIVYV44LsyhmBHfgcYN+Y=;
        b=q2vy9ZIx6bNIACxSicAlUR/pDcohYj7YcViPKiVG3l6OktbIqdxey7vePL/0ivaN7N
         rg/lwjYFiR7WxaCoZ5blynLJ4HZpEVr+WbkRV7Wg6qMpric/HSrh+3MXguaz45qBE1zO
         rJtVbZitVF4ok1HIev4VnnunhqAlYhGJ26Atpd4y8DkLFfckNzEtOWezFJFz6/5blZFc
         e6VSZt/Vqc/7WwejnQPvJtbSpfIs4dhNMpPlhenhTMxyWk8s2y52JIMELnmzIx8plrlv
         nKXNbxyjF3Y8Bhvmg8us0pPoa6dCV8jw366nC+ysd9II0LyFm5pRBIHq/iq0pSxc3P+J
         +Mgg==
X-Forwarded-Encrypted: i=1; AJvYcCU2k2dMjMCkuc8L5kp05oy09yn6unrWIl68OFQTqvHaaQb1/Cwq5Z62+7aa6bZ82Ys9iEG4etSG1mwEFLBv8Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yziye7GbWkVyDi+ETQ5v9yWf4wmCotRAf0Yq8hiWh6AwoHPDJAL
	QXV081VssE/3tj+uXgj0AJrSl/gCcJ29R8f34pNS4PzLx9e8LRf5rBtJGz5MQNTp0GZDDh12km/
	+5nSIwKX3+r/nu4AHURARG4JfQ625wpMP+NVjU1vQvzPhFRG/
X-Gm-Gg: ASbGncsrHQUwMxgAQCLQGaev569VoQrdp9Ll321C0oXvsYVQdKMATJKg4XjclYgTyTR
	Vuw3arYxAK7VQWhUCyj9eaEX7lsq2M66m44IgjrRHgnZ6z0i3wUS5pI8anuxzflXSWBOBy5K43C
	HpI/Yoo8/83lLoVYfFaP70fSYQVg==
X-Google-Smtp-Source: AGHT+IF2HnTvgALEagtidtwMTknG9FoykhqBphkMLjIu+urEhq+snaAKQPbxfAEiEdOYOfpEU/z8RIcNqZf0RTZQZA0=
X-Received: by 2002:a05:6512:1292:b0:545:c9d:ef26 with SMTP id
 2adb3069b0e04-5494c34fcd9mr5744703e87.46.1741074704091; Mon, 03 Mar 2025
 23:51:44 -0800 (PST)
MIME-Version: 1.0
References: <20250228064024.3200000-1-jonas@kwiboo.se>
In-Reply-To: <20250228064024.3200000-1-jonas@kwiboo.se>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 4 Mar 2025 08:51:32 +0100
X-Gm-Features: AQ5f1Jqk33uHsY5UV1F0bE-LoNlIC6DrZiXxoZsYoJWU763-1spk-ecprSEFCuY
Message-ID: <CACRpkdaELuU6XDKacOLsWAF8ncbudJ9Tp0jykAyf-NXRLjoSdw@mail.gmail.com>
Subject: Re: [PATCH 0/7] rockchip: Add support for leds and user button on
 Radxa E20C
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_235146_012846_B28EE1CD 
X-CRM114-Status: UNSURE (   9.78  )
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

SGkgSm9uYXMsCgpPbiBGcmksIEZlYiAyOCwgMjAyNSBhdCA3OjQw4oCvQU0gSm9uYXMgS2FybG1h
biA8am9uYXNAa3dpYm9vLnNlPiB3cm90ZToKCj4gICBkdC1iaW5kaW5nczogcGluY3RybDogQWRk
IHBpbmN0cmwgc3VwcG9ydCBmb3IgUkszNTI4Cj4gICBwaW5jdHJsOiByb2NrY2hpcDogQWRkIHN1
cHBvcnQgZm9yIFJLMzUyOAoKVGhlc2UgdHdvIHBhdGNoZXMgYXBwbGllZCB0byB0aGUgcGluY3Ry
bCB0cmVlLgoKUGxlYXNlIGZ1bm5lbCB0aGUgcmVzdCB0aHJvdWdoIHRoZSBTb0MgdHJlZSwgaXQg
c2VlbXMKaXQgc2hvdWxkIGFsbCBiZSBhYmxlIHRvIGdvIGluIG9ydGhvZ29uYWxseS4KCllvdXJz
LApMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
