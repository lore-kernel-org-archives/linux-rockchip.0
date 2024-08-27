Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D717C5320E
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 07:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RwPKBf+6ayEijO4/YvblBYEp970udZTCF/rjlNi1h7Y=; b=B3rMtsHjUx6u76
	JDLJVuSrypUJEqFj24K3N+rl4/3+I9KNdy3bzgixPw7rGLoAQp51LBNPXmUCEBgBlRLqZA97LEQlz
	jTsKyNXVnvSf105GDgIxG90lWGrTbAgoCzP3s8q0MH/PDx3uSpmbObLhxoct20dkA8Orf3pJm7t5u
	f54CMPgbVIps46xgudraB06hW7w7m3Dt0Kd0lX6X4XPwnoY/h94/E6wY5sz+sgMB7LFvmicztO1pY
	+jQCwlBbV891a62HI34S8YVY28Q3KYEsNnxLEYEsTURDOQRx7tPJDYSDNrv89g4GIUnZbQ1etYnFx
	3miz9KZciJagWR0aDyzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sir40-0000000AJ7g-3BLj;
	Tue, 27 Aug 2024 07:56:28 +0000
Received: from mail-yb1-f182.google.com ([209.85.219.182])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sir3B-0000000AIy9-1sdM;
	Tue, 27 Aug 2024 07:55:38 +0000
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-e13e11b23faso5173320276.3;
        Tue, 27 Aug 2024 00:55:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724745336; x=1725350136;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P4JN30GN77x4NUy5z6yHPloDIcCANz9yHy+MUlnyZj4=;
        b=ftshvgMlRfyQVXlrip8wqQj17+nhTfLG92aBT8Y8InhEZX85FsbQEpHKoCdlW7vteZ
         t3t8w6u2jA+dQA+mWENAbZAmsp499P+SEzPW1hetrHBjwH3NOpYYnRefxZ6W/r8VaXdC
         L/ZXTKQpmKksVf3VQHo54fO/LiXD5AzYC8lafhGymXqi3TvbfmaA375c/5fxmhd4TQug
         c5BYUtTz6jD3q3GoDPVfDlEOZdv1dpVu2Sbr06XqO8a3bnJVe3uYWnSBOekemDAcXAwv
         CecxBqPiHcMpZhk3zOedbX2SLJxrWPrq3Fq2JNJutfObJ7BV8xN07z3KfSB+6ejSIJPW
         hL2Q==
X-Forwarded-Encrypted: i=1; AJvYcCVPP6IPPTyKj2kfR0IRKy6K6BM/5SxQgs7UmHEfbUYzhBsHEMbdlsH11s+6ZIOVCrSkoLw3MSrSN1tbATFnuOHA@lists.infradead.org, AJvYcCWVvmLPhmN/1KORnjFYTu5yz79Htbk2Auf0LXZVqHsy9+IoX1sbykox/tyV7NqOrcKK/yNod4Bk0u2CdmzaO1M=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1UBMHenwiSsp6kR1OeAfCUw/DWR/Jab5qpBq35m7kO32AeGF0
	XWz6+k5rEPkLM6SC7KqA/kaKIfvn8DDBQuLS2qZ4BOwhIYiNXawFyyl5tY+F
X-Google-Smtp-Source: AGHT+IG414kpq1inG7T+4O29sSsyBDk21oitZfyWqWSan5jYYXE8Qa0c0AqGVmPXPl2TAMCkITBq/w==
X-Received: by 2002:a05:6902:2183:b0:e13:e72e:89e8 with SMTP id 3f1490d57ef6-e17a83bc67emr15531566276.9.1724745335795;
        Tue, 27 Aug 2024 00:55:35 -0700 (PDT)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com. [209.85.128.177])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e178e680b1asm2335443276.58.2024.08.27.00.55.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2024 00:55:35 -0700 (PDT)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-6b5b65b1b9fso43531607b3.2;
        Tue, 27 Aug 2024 00:55:35 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXJM5Ey+EDj27EOWt4P79Ezbm4+YO8Fsxg/gTqbvUKTmm4ZEV9UDyRWTqVxOjXdIh5sohAW29/9UmEYcD21kec=@lists.infradead.org, AJvYcCXKBELs0yAzrvT8V/1oyHQkHDAXB2e8mzphb+0F9QXaB1ACLC1X+mi8YvcqYF2Trse6m/VE6jxChpJr64hXLHBZ@lists.infradead.org
X-Received: by 2002:a05:690c:d8c:b0:643:aef1:fb9d with SMTP id
 00721157ae682-6c624229802mr164962817b3.4.1724745335406; Tue, 27 Aug 2024
 00:55:35 -0700 (PDT)
MIME-Version: 1.0
References: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org> <20240823-cleanup-h-guard-pm-domain-v1-10-8320722eaf39@linaro.org>
In-Reply-To: <20240823-cleanup-h-guard-pm-domain-v1-10-8320722eaf39@linaro.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 27 Aug 2024 09:55:23 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXCPJz=bNZppMExGdhCdzuTVOV-EcvnkZfBYCGnT7A7ZA@mail.gmail.com>
Message-ID: <CAMuHMdXCPJz=bNZppMExGdhCdzuTVOV-EcvnkZfBYCGnT7A7ZA@mail.gmail.com>
Subject: Re: [PATCH 10/10] pmdomain: renesas: rcar-sysc: Use scoped device
 node handling to simplify error paths
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_005537_509251_0649F551 
X-CRM114-Status: GOOD (  20.11  )
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

SGkgS3J6eXN6dG9mLAoKT24gRnJpLCBBdWcgMjMsIDIwMjQgYXQgMjo1MeKAr1BNIEtyenlzenRv
ZiBLb3psb3dza2kKPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4gT2J0
YWluIHRoZSBkZXZpY2Ugbm9kZSByZWZlcmVuY2Ugd2l0aCBzY29wZWQvY2xlYW51cC5oIHRvIHJl
ZHVjZSBlcnJvcgo+IGhhbmRsaW5nIGFuZCBtYWtlIHRoZSBjb2RlIGEgYml0IHNpbXBsZXIuCj4K
PiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tp
QGxpbmFyby5vcmc+CgpUaGFua3MgZm9yIHlvdXIgcGF0Y2ghCgo+IC0tLSBhL2RyaXZlcnMvcG1k
b21haW4vcmVuZXNhcy9yY2FyLXN5c2MuYwo+ICsrKyBiL2RyaXZlcnMvcG1kb21haW4vcmVuZXNh
cy9yY2FyLXN5c2MuYwo+IEBAIC0zNDgsMTIgKzM0OSwxMiBAQCBzdGF0aWMgaW50IF9faW5pdCBy
Y2FyX3N5c2NfcGRfaW5pdCh2b2lkKQo+ICAgICAgICAgY29uc3Qgc3RydWN0IHJjYXJfc3lzY19p
bmZvICppbmZvOwo+ICAgICAgICAgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCAqbWF0Y2g7Cj4g
ICAgICAgICBzdHJ1Y3QgcmNhcl9wbV9kb21haW5zICpkb21haW5zOwo+IC0gICAgICAgc3RydWN0
IGRldmljZV9ub2RlICpucDsKPiAgICAgICAgIHZvaWQgX19pb21lbSAqYmFzZTsKPiAgICAgICAg
IHVuc2lnbmVkIGludCBpOwo+ICAgICAgICAgaW50IGVycm9yOwo+Cj4gLSAgICAgICBucCA9IG9m
X2ZpbmRfbWF0Y2hpbmdfbm9kZV9hbmRfbWF0Y2goTlVMTCwgcmNhcl9zeXNjX21hdGNoZXMsICZt
YXRjaCk7Cj4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wIF9fZnJlZShkZXZpY2Vfbm9k
ZSkgPQo+ICsgICAgICAgICAgICAgICBvZl9maW5kX21hdGNoaW5nX25vZGVfYW5kX21hdGNoKE5V
TEwsIHJjYXJfc3lzY19tYXRjaGVzLCAmbWF0Y2gpOwoKU2FtZSBjb21tZW50IGFzIG9uIFtQQVRD
SCA5LzEwXS4KCj4gICAgICAgICBpZiAoIW5wKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVO
T0RFVjsKPgoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVy
dAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25k
IGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMg
d2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJ
J20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21l
dGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVz
IFRvcnZhbGRzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
