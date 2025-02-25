Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF377C021A4
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 01:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ws2lU2fgh322DIdQCHAzX0vIgvm9tBRPkmI+oFVDjCw=; b=fqnQDz/fArWAx0
	b33Ep6GE7hSZkWCAqX8qOkYQvWhxeraLLw1UZVJvJcNss6bbks5wHBGLSpvcKcrqNj/HD/RqBzL01
	o7SYgaWpmuWBxI+StQ5nkjaU+2zYZ3iwJu7/I04fGfP3TRSfI97ZBaYHqOTQq6NZKwfhbZ5ZH26kB
	Mdtq7Kfrbrljy7mFvDJFPH38nbA9cUTD5I6OJ3CuX89QHbuaxTyQ0//tEnxmeLpgldELJMk0/gj/S
	RTwIKCEgcVFH21eS5sO4PZ5n/9Als2soJvmA5pKk02HaBPzhHypEcfBg+wUbXEH7uXTp2Suk/wbBj
	+3ESgf3JO4DAU+n5O7NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmjxw-0000000FiwT-2UeL;
	Tue, 25 Feb 2025 01:42:32 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmjwg-0000000FijX-1v1n
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 01:41:15 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-5452efeb87aso5087446e87.3
        for <linux-rockchip@lists.infradead.org>; Mon, 24 Feb 2025 17:41:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1740447670; x=1741052470; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i4TOCMT9A63jLoOCD33qtnm1uXyI2TNmIj6w6+0Voco=;
        b=A0nC7tV8FwMSut0sbsHaqENe4kt0WlRvKTdFi2ftMqh9gAUmYD30CY4GVkP0+njmxH
         5C0UanakxGGE3szYBmmaPUOiwHGIWnz/eRIs8SKZfavz2fmRNH7++lFc4Vp9mJJsL5jr
         OqbcwZR9PU3m4jUfgo/fVZEByiV/Gh+p8KSgA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740447670; x=1741052470;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i4TOCMT9A63jLoOCD33qtnm1uXyI2TNmIj6w6+0Voco=;
        b=SmTz1DKHq0CvR7VjrATJGY/YsXIvkV1Rf6lFiFdaNyrSk8YN9nAKuRlhylV9DpywSB
         hT2NTN/NfYI+uNk2HgApNGD89Q1UwUyaTYp9XSJN1i/cFsUvAy5ULGbQd7GyX+atP6/c
         M03eEqBPEscoKYhx9SWrB2yg56hfROLGPW8CRPvFO6dHw72vIfpojWwupXSEWs/XA1e1
         FKd6c6EAYix0RNsnly2Ign7tC0k5owRUjASt4LH5jt56TroYnBxP11SZPColuBN4fcKR
         dAYA4+tISgKpW56JAf0ursrmrE6/ebXa+ju9xzBWo+IWca1MTd7l3/ud/TcykuS3pjAO
         8YSA==
X-Forwarded-Encrypted: i=1; AJvYcCVKfRPuuKqSKOlP7XjY+8aYeXxl8rwoEG337ArgMLCWn+4kLVF0Ud9i2Led+DsY7A8g81PsUjRqXtoxntKQgw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxO90FIFip84x0vSUto0HE+i7QqiCvbvQ6yeWmETxSjYuFRgcBd
	ce9qOXhP/UHbPniAYEwgqwZXK+p3sXE35FDO3LmW1cW9CScIqTyrypQS/kuO/11DAsO29XNVNCB
	JkA==
X-Gm-Gg: ASbGncvIeRdD8hiNuHH8jFZu7lDDCDDuXvSQhATawF1bOxsgnjnnFKeY0MdbcGzumIc
	pmKgSbh4xvoprzxzhyxH/ctPyrYmcCJI6rCegcuKbQMxmNsjCR3/qtFUEDNZ3WWJpZ701X66l3g
	cNO06RVnyghFE/6LvJ4WCElXZySq5tZVnHnZM70/KnKcOAFRMjBM9l4Sb6K9WOsgx4p0Thp9K9p
	HdngzmqlpPCh0zc/Wt7HbZDR9xB5DXx2EvXIKZWUhUid/oIRphzDl+tV5FySLXTpr3Ynyp99je3
	HZAXojlN4yqK8Agu28TSkLFagTNzH2bwxx9KaDBeZrQZEF7V+dKFmcnxL5qw1j9E8w==
X-Google-Smtp-Source: AGHT+IGQsg6tTLTOTmTzgVnKLQQI7JgoxX7u6eXDzKJfRiW9q0fMSpmlc6wlhrVPDXQPWXck9+Z1WQ==
X-Received: by 2002:a05:6512:e86:b0:545:3031:40aa with SMTP id 2adb3069b0e04-54838ee2c31mr5366522e87.9.1740447669588;
        Mon, 24 Feb 2025 17:41:09 -0800 (PST)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com. [209.85.167.46])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-548514f9e3fsm48050e87.217.2025.02.24.17.41.02
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2025 17:41:07 -0800 (PST)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5452efeb87aso5087337e87.3
        for <linux-rockchip@lists.infradead.org>; Mon, 24 Feb 2025 17:41:02 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXnePo+QjAZE4jSVfYC1SEwzUEGc0N6Ha0L/nKSoH7ml2QIE8qJaVtJE3USGYWajlA5D/Uipzq0o7kxOSh1mg==@lists.infradead.org
X-Received: by 2002:a05:6512:ac3:b0:545:f69:1d10 with SMTP id
 2adb3069b0e04-54838ee1c94mr5432801e87.8.1740447662279; Mon, 24 Feb 2025
 17:41:02 -0800 (PST)
MIME-Version: 1.0
References: <20250224081325.96724-1-damon.ding@rock-chips.com> <20250224081325.96724-5-damon.ding@rock-chips.com>
In-Reply-To: <20250224081325.96724-5-damon.ding@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 24 Feb 2025 17:40:49 -0800
X-Gmail-Original-Message-ID: <CAD=FV=X7iWOyAvdfRDyFA9kdr+utU_aAaJ5F7nAsaHp2fMQgVw@mail.gmail.com>
X-Gm-Features: AWEUYZlbdiIhJLMaGbE9FR34Ygo4r4AydhTgMaLe8qb8EcM7igmYbqK2w54Qn0U
Message-ID: <CAD=FV=X7iWOyAvdfRDyFA9kdr+utU_aAaJ5F7nAsaHp2fMQgVw@mail.gmail.com>
Subject: Re: [PATCH v7 04/15] drm/bridge: analogix_dp: Remove the unnecessary
 calls to clk_disable_unprepare() during probing
To: Damon Ding <damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250224_174114_491917_A2E98B72 
X-CRM114-Status: GOOD (  14.63  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, dmitry.baryshkov@linaro.org, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, linux-kernel@vger.kernel.org, boris.brezillon@collabora.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiBNb24sIEZlYiAyNCwgMjAyNSBhdCAxMjoxNOKAr0FNIERhbW9uIERpbmcgPGRhbW9u
LmRpbmdAcm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4gV2l0aCB0aGUgY29tbWl0IGYzNzk1MjMz
OWNjMiAoImRybS9icmlkZ2U6IGFuYWxvZ2l4X2RwOiBoYW5kbGUgY2xvY2sgdmlhCj4gcnVudGlt
ZSBQTSIpLCB0aGUgUE0gb3BlcmF0aW9ucyBjYW4gaGVscCBlbmFibGUvZGlzYWJsZSB0aGUgY2xv
Y2suIFRoZQo+IGVycl9kaXNhYmxlX2NsayBsYWJlbCBhbmQgY2xrX2Rpc2FibGVfdW5wcmVwYXJl
KCkgb3BlcmF0aW9ucyBhcmUgbm8KPiBsb25nZXIgbmVjZXNzYXJ5IGJlY2F1c2UgdGhlIGFuYWxv
Z2l4X2RwX3Jlc3VtZSgpIHdpbGwgbm90IGJlIGNhbGxlZAo+IGR1cmluZyBwcm9iaW5nLgo+Cj4g
Rml4ZXM6IGYzNzk1MjMzOWNjMiAoImRybS9icmlkZ2U6IGFuYWxvZ2l4X2RwOiBoYW5kbGUgY2xv
Y2sgdmlhIHJ1bnRpbWUgUE0iKQoKV2hlbiBwb3NzaWJsZSAiRml4ZXMiIHNob3VsZCBiZSBwdXNo
ZWQgdG8gdGhlIHN0YXJ0IG9mIHlvdXIgc2VyaWVzIHNvCml0J3Mgb2J2aW91cyB0aGV5IGhhdmUg
bm8gZGVwZW5kZW5jaWVzIHdoZW4gYmVpbmcgcGlja2VkIHRvIHN0YWJsZQprZXJuZWxzLiBUaGF0
IHNob3VsZCBiZSBwb3NzaWJsZSBoZXJlLgoKPiBTaWduZWQtb2ZmLWJ5OiBEYW1vbiBEaW5nIDxk
YW1vbi5kaW5nQHJvY2stY2hpcHMuY29tPgo+IC0tLQo+ICAuLi4vZ3B1L2RybS9icmlkZ2UvYW5h
bG9naXgvYW5hbG9naXhfZHBfY29yZS5jIHwgMTggKysrKystLS0tLS0tLS0tLS0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMKPiBpbmRl
eCBlMjNhZjY3NGQ5MWMuLmQ5ZGFmYjAzOGU3YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jCj4gQEAgLTE2MDgsMTAgKzE2
MDgsOCBAQCBhbmFsb2dpeF9kcF9wcm9iZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBhbmFs
b2dpeF9kcF9wbGF0X2RhdGEgKnBsYXRfZGF0YSkKPiAgICAgICAgIHJlcyA9IHBsYXRmb3JtX2dl
dF9yZXNvdXJjZShwZGV2LCBJT1JFU09VUkNFX01FTSwgMCk7Cj4KPiAgICAgICAgIGRwLT5yZWdf
YmFzZSA9IGRldm1faW9yZW1hcF9yZXNvdXJjZSgmcGRldi0+ZGV2LCByZXMpOwoKVGhlcmUgaXMg
YSBjb250ZXh0IGNvbmZsaWN0IHdoZW4gSSBhcHBseSB0byBkcm0tbWlzYy1uZXh0IGJlY2F1c2Ug
b2YKY29tbWl0IDQzYzAwZmIxYTUxOCAoImRybS9icmlkZ2U6IGFuYWxvZ2l4X2RwOiBVc2UKZGV2
bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlKCkiKS4gWW91IHByb2JhYmx5IHNob3VsZCByZWJh
c2UgYW5kCnJlLWFwcGx5LgoKQXNpZGUgZnJvbSB0aGUgY29udGV4dCBjb25mbGljdCwgdGhpcyBs
b29rcyBncmVhdCB0byBtZToKClN1Z2dlc3RlZC1ieTogRG91Z2xhcyBBbmRlcnNvbiA8ZGlhbmRl
cnNAY2hyb21pdW0ub3JnPgpSZXZpZXdlZC1ieTogRG91Z2xhcyBBbmRlcnNvbiA8ZGlhbmRlcnNA
Y2hyb21pdW0ub3JnPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
