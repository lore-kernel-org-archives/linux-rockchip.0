Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 789F4C10F1A
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Apr 2024 17:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ynyYjlcDjVGxJy944C7Nx3cEOfSTE70YYrpvrurh7ps=; b=wIxzY+KXTslhWd
	JVfw9Xak5/HMZUy4OphvLMvMpQ4U16VCFW1Pko89mUpTiEvfH2d3z/zt+XnGYqW1WnyR2rEnW2KmE
	tpkG6rG0lNBazU4rh3cFILM32mvb2mMg34jetgHX51s0c1j0/1y/HS3Tjc4RuFVa0k2R5fD3Hhmhw
	X/HM1iz3E/IIm9sVISVbA9qhfVU2/wE+qfzwCcvhOm9DiPiRE4MP4vLdwuLwBwy0CgetcVPBmUqWX
	uSUzhNj/jR2hM8cbRKHOztvxMtvTi33viXVqqpSykXFZM4CUpg+ZBGUE5V8//z6jgYMwk7DJe1Rnp
	wrdGZ9TP47d/Ao3jCvUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s18MW-00000000PFW-0WNs;
	Sun, 28 Apr 2024 17:30:52 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s18MR-00000000PDZ-3jKe;
	Sun, 28 Apr 2024 17:30:49 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-5e8470c1cb7so2511506a12.2;
        Sun, 28 Apr 2024 10:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714325442; x=1714930242; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6C4iC5ro3NJyO5M+1IwRkJQ4c+Kk2vhMSEHiWNEkb7A=;
        b=Yw8kGvPcJmCQR10uLFnFof58EqopPbgzi0uIzAPhtatJvXZgxFuAgm43OQro8Hi0Xt
         Wy5GjHlrA3Jp30Mhee3f592XJwCZElHuJHaCbEL+124/INNXO34IzNM9D0JhZKY7cSzf
         A8dhUIxEKLTuuLj2B+olv7PTeZ/aeDm1YL2+7e94rfyUrJx85QyNAxUZ87j8Hy1gr7AY
         FgNEtP7LUp/bYARpr1E9aJ5YJtfvmbu+pQqJK7z0/LVwcEsu26VGn1D5T3lkaLbPYOl8
         /d8qScaUoMCgcfFPT65+o5uHoVXETEopuDE35FSnsnaX5PYoqM3PzYw4TZfzzKrNdJ6f
         1D8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714325442; x=1714930242;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6C4iC5ro3NJyO5M+1IwRkJQ4c+Kk2vhMSEHiWNEkb7A=;
        b=H71fCieRmVeCdZWavoN+hHC2GQSfLvK8OAbXVxjvQQrtZ5v/axkeWhB/40JAqLxozh
         RdK7eKySxKYrAsgUp40uOdi+BdlZvITnv5x7U8H22pQ48BQt0qT91Al8Tw+gWJMIuoa1
         aTNvRdbk6aD2Kexgq5lndf+0nZnu0EPQyeLfQmzA+qxLg0eN4++UKQiwZtdq4wWwNsA/
         SiyIA2i2Gn2hoe+wCikeXKi5PDnCozjcKsfwipA8AK8wPHNepIH3lTBPWu8HqN4VncNH
         /Ijx/S4NTAjEzbnaamOwUeh2Lk2gCCTqUWZ7wuYOU/B6i6+M0EBUamYo8UfcZbA8qbs1
         E7bA==
X-Forwarded-Encrypted: i=1; AJvYcCV0YgksUsnZbP7HDI746EuIhp6DBH02QERH6C5eQtsgWDxvaKJo9DbaGmKAQmFdFLRzFjIL647JrFELrrtiYioBx6IAxG8ymWDJfdUrQiDShtmB7zx53o2kKlQeL5kIIgBvyeaTJAoobAJInWEoj4R30rJ4RToFTcU=
X-Gm-Message-State: AOJu0YwmPCC7qrVQ6fMDr/PcXpZbwXrqK+geqSTfJHKd409WEC7WkPIZ
	Xe8aBfGZIAhusEIYaERgNR13OTRmdlrG143rFW3iTUuM0a/vSBmJ
X-Google-Smtp-Source: AGHT+IEAHcZT2hqdPXrUrD9utnViKm/pFwS+gPtcpridRGIUu3is+jGvfjVMNz/1yOUWrCv/AUnT2A==
X-Received: by 2002:a05:6a20:430c:b0:1a7:73ed:7f8d with SMTP id h12-20020a056a20430c00b001a773ed7f8dmr6549978pzk.38.1714325442453;
        Sun, 28 Apr 2024 10:30:42 -0700 (PDT)
Received: from toyko-2.5 ([45.32.55.39])
        by smtp.gmail.com with ESMTPSA id b186-20020a62cfc3000000b006ecf56cb55fsm19089266pfg.96.2024.04.28.10.30.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Apr 2024 10:30:42 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: heiko@sntech.de
Cc: andy.yan@rock-chips.com,
	conor+dt@kernel.org,
	cristian.ciocaltea@collabora.com,
	devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	ezequiel@vanguardiasur.com.ar,
	frattaroli.nicolas@gmail.com,
	iommu@lists.linux.dev,
	joro@8bytes.org,
	krzysztof.kozlowski+dt@linaro.org,
	linkmauve@linkmauve.fr,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	macromorgan@hotmail.com,
	mchehab@kernel.org,
	nicolas@ndufresne.ca,
	p.zabel@pengutronix.de,
	robh@kernel.org,
	robin.murphy@arm.com,
	sebastian.reichel@collabora.com,
	shreeya.patel@collabora.com,
	sigmaris@gmail.com,
	will@kernel.org
Subject: Re: [PATCH v4 0/2] Enable JPEG encoding on rk3588
Date: Mon, 29 Apr 2024 01:29:19 +0800
Message-Id: <20240428172919.691602-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <3784322.QJadu78ljV@diego>
References: <3784322.QJadu78ljV@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240428_103047_940421_5E8CE8D7 
X-CRM114-Status: UNSURE (   9.46  )
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

SGkgSGVpa28sCgpPbiBTdW4sIDI4IEFwciAyMDI0IDE5OjAxOjM4ICswMjAwLCBIZWlrbyBTdMO8
Ym5lciB3cm90ZToKPnRoZSBiYXNpYyBwcm9ibGVtIGlzIHRoYXQgZXhwb3NpbmcgbXVsdGlwbGUg
anBlZyBlbmNvZGVycyB3b3VsZCByZXF1aXJlCj51c2Vyc3BhY2UgdG8gZG8gdGhlIHNjaGVkdWxp
bmcuIFdoaWNoIGlzIGJhZC4KPkkuZS4gYWxsIHVzZXJzcGFjZSBwcm9ncmFtbXMgd291bGQgbmVl
ZCB0byBrbm93IHRoZSBleGlzdGVuY2Ugb2YKPmFsbCBqcGVnIGVuY29kZXJzIGFuZCB0aGVuIHNv
bWVob3cgbmVnb3RpYXRlIGhvdyB0byB1c2UgYWxsIG9mIHRoZW0KPm1vc3QgZWZmaWNpZW50bHku
Cj4KPlRoaW5rIG11bHRpcGxlIGRpZmZlcmVudCBwcm9ncmFtcyB0aGF0IHdvdWxkIG5lZWQgdG8g
bmVnb3RpYXRlIHRvCj5zcHJlYWQgYWNyb3NzIGFsbCBvZiB0aGVtIGluIHRoZSBiZXN0IHdheS4K
Pgo+RG9pbmcgdGhpcyBpbiB0aGUga2VybmVsLCB3ZSBqdXN0IGV4cG9zZSBvbmUgZW5jb2RlciAo
YW5kIHF1ZXVlKSBhbGwKPnByb2dyYW1zIHdvdWxkIGp1c3QgcGlsZSBvbnRvIHRoYXQgb25lIGVu
Y29kZXIgYW5kIHRoZSBrZXJuZWwgdGhlbgo+d291bGQgYmUgb24gdGhlIGhvb2sgdG8gZG8gdGhl
IHNjaGVkdWxpbmcgLSB3aGljaCB0aGUga2VybmVsIGNhbiBkbwo+YmV0dGVyICh3aXRoIHJlbGV2
YW50IGNvZGUgaW1wbGVtZW50ZWQpCgpZZWFoIGxldCBrZXJuZWwgZG8gdGhlIHNjaGVkdWxpbmcg
aXMgaW5kZWVkIGJldHRlci4gQW5kIEknbSBoYXBweSB0bwpoZWFyIHRoaXMgbWV0aG9kLgoKU28g
SSB3aWxsIGtlZXAgdGhlIHZwdSBhdCBmZWI1MDAwMCB3aXRoIGpwZWcgZW5kb2RlciBkaXNhYmxl
ZCB1bnRpbAptdWx0aSBlbmNvZGVyIHNjaGVkdWxpbmcgaXMgaW1wbGVtZW50ZWQuCgpCZXN0IHJl
Z2FyZHMsCkppYW5mZW5nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
