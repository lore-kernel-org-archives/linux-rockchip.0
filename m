Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 153B4C2A074
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Jan 2026 11:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ccg2QZc4Voxl8vC6Dm5TPNwJzepT36gxFkHlMwqi/Wg=; b=HbPn3fzN+SsGA2
	fEXE7wO5SN4yNovV0HTjYvWJHepJHP00fG2FMWKp0eaop7ZnooKYD/Z/YTc0cO8GgUw3gP/9KbSTv
	Fy+jwuANNv73m7I15eP0RnpqmD3WhSxn57mqTxFfHV7g+48nMsSc+DUeamGkYOXtgihTKh5D8zpNy
	Dh3OIrTJk0hr2sGPmmR4m/gPlIJSnQBnIojXt3i+aw07YcLs4IlWyBkG+UsD3oEVWouOtnTnAjXO5
	O9TIQROo9fmYYJdte8IwpX/w0S9fGDz9ju5CLvo0GqV0oXg28idrght7QllaLAL5x8i8wP4QNzNFa
	DGNa55KIh8jExQ1/GomQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcMar-0000000ACkW-20MX;
	Sun, 04 Jan 2026 11:48:21 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcMap-0000000ACk5-3Yzs
	for linux-rockchip@lists.infradead.org;
	Sun, 04 Jan 2026 11:48:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5338D6011E
	for <linux-rockchip@lists.infradead.org>; Sun,  4 Jan 2026 11:48:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08C4FC19424
	for <linux-rockchip@lists.infradead.org>; Sun,  4 Jan 2026 11:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767527297;
	bh=I0lPw9M6IVwRkDiioixB1o0oDbNxBQ4cmgrqp3BqxJ0=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=VTRDI2LV3o0jW3eDCcz3JGlJcAzoTiTJMtQRDQjjL0QcvH/P06AhyP0iDs3E12a08
	 1bfxjFMZZ3CmHsPe1cS9LIXwtY+ZCnVpEbsNrpdOO0s4po/T41MHkk83TlaAGXCXW3
	 kit3OGb+YURbF08TywxCta/NnVWdLxoo2Z3s3rPpew2oo7FhFw/4buvHAyAQp8S64V
	 2UVye59DCf76EBcO+U/qZmAgqFV8OyXJ0uLCj+r7/AS+AudNccgN01p3zQQup9XHEy
	 K+d+idy47k6m7FfYb7fpEOkWSMUWCcznJUpsByww7zU6XLXZCqVl53Ardig/2qjCd8
	 enQA+A6xY/khg==
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-78f89501423so10891437b3.1
        for <linux-rockchip@lists.infradead.org>; Sun, 04 Jan 2026 03:48:16 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVbC+YuaLP/M6DnIpJSAwykoCahsvG5gi0nRLMfbL+wqylv12QG4UoGNsLTUHEraFj8vKVPeBNQUZrun40ZXQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxG5l2mepFwmespJtcu1beOI23ExSWTJFTYH1Ud5K7UDZdrOPrr
	qL8B2Wqf0ibvXT2pjb62oX3/yvaQtwp1chrOp2sDfVGuimXW5ROzHgbNRj+L1+7UVQE7dw6bHQ9
	0zY6C69cb4kUzKK++7ici169Rnoi8AJY=
X-Google-Smtp-Source: AGHT+IEH4Sm8WJaFK+x+RlCyRzWOrDqAadQrajL3EXv2yzCn2zhpj2YARFH+oUXmFDV1NIRkB+W/xitiP829rCgCnRg=
X-Received: by 2002:a05:690e:4189:b0:645:559f:d7dd with SMTP id
 956f58d0204a3-646e3398ac1mr3243278d50.14.1767527296406; Sun, 04 Jan 2026
 03:48:16 -0800 (PST)
MIME-Version: 1.0
References: <20251227114957.3287944-1-ye.zhang@rock-chips.com> <20251227114957.3287944-6-ye.zhang@rock-chips.com>
In-Reply-To: <20251227114957.3287944-6-ye.zhang@rock-chips.com>
From: Linus Walleij <linusw@kernel.org>
Date: Sun, 4 Jan 2026 12:48:04 +0100
X-Gmail-Original-Message-ID: <CAD++jL=fri43Q1XbMJoOUeoWJw9RwMDJLjcjO8zSbyHb7z+Dzg@mail.gmail.com>
X-Gm-Features: AQt7F2oTWlXUXjidoWo77Ak7o32fHRY2YlKW0oxaqrPEmcpXVDJKxEyAH8MVM9k
Message-ID: <CAD++jL=fri43Q1XbMJoOUeoWJw9RwMDJLjcjO8zSbyHb7z+Dzg@mail.gmail.com>
Subject: Re: [PATCH v4 5/7] dt-bindings: pinctrl: rockchip: Add rk3506 rmio support
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	tao.huang@rock-chips.com
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

T24gU2F0LCBEZWMgMjcsIDIwMjUgYXQgMTI6NTXigK9QTSBZZSBaaGFuZyA8eWUuemhhbmdAcm9j
ay1jaGlwcy5jb20+IHdyb3RlOgoKPiArICAgICAgcm9ja2NoaXAscm1pby1waW5zOgo+ICsgICAg
ICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQzMi1tYXRyaXgK
PiArICAgICAgICBtaW5JdGVtczogMQo+ICsgICAgICAgIGl0ZW1zOgo+ICsgICAgICAgICAgaXRl
bXM6Cj4gKyAgICAgICAgICAgIC0gbWluaW11bTogMAo+ICsgICAgICAgICAgICAgIGRlc2NyaXB0
aW9uOiBSTUlPIElEIChDb250cm9sbGVyIGluZGV4KQo+ICsgICAgICAgICAgICAtIG1pbmltdW06
IDAKPiArICAgICAgICAgICAgICBkZXNjcmlwdGlvbjogUGluIGluZGV4IHdpdGhpbiB0aGUgUk1J
TyBjb250cm9sbGVyCj4gKyAgICAgICAgICAgIC0gbWluaW11bTogMAo+ICsgICAgICAgICAgICAg
IGRlc2NyaXB0aW9uOiBGdW5jdGlvbiBNdXggSUQKPiArICAgICAgICBkZXNjcmlwdGlvbjoKPiAr
ICAgICAgICAgIENvbmZpZ3VyYXRpb24gZm9yIHRoZSBSb2NrY2hpcCBNYXRyaXggSS9PIChSTUlP
KSBibG9jay4gVGhlIGZvcm1hdAo+ICsgICAgICAgICAgaXMgPHJtaW9faWQgcGluX2lkIGZ1bmN0
aW9uX2lkPi4gVGhpcyBhY3RzIGFzIGEgc2Vjb25kYXJ5IG11eGluZwo+ICsgICAgICAgICAgbGF5
ZXIgd2hlbiB0aGUgcHJpbWFyeSAncm9ja2NoaXAscGlucycgbXV4IGlzIHNldCB0byB0aGUgUk1J
Two+ICsgICAgICAgICAgZnVuY3Rpb24uCgpJIHRoaW5rIHRoaXMgc2hvdWxkIGp1c3QgdXNlIHRo
ZSBzdGFuZGFyZCBwaW5tdXggPSA8PjsgcHJvcGVydHkKd2l0aCBzb21lIHNoaWZ0aW5nIGFuZCBt
YXNraW5nLgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
