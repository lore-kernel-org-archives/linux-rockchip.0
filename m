Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ED41E98E0F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Feb 2026 09:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWl4Hs6bS2w8FXY0x5d9N8kv/jwnK7BwkHjeZNrP5ik=; b=qjJsxPzyuu7lj6
	FD41DYW5AKuutXf44QK0IHeRnqOKWlQvC6AFsQDyZi6b+8FwgC3TY4X5SQNAU/z//niLendKFdVmI
	viO8npfdy6mrJiPeu1Hobf4LCS/VMP8wGSSfS1/K7ypQopL5hRW2/++3hZS5AWwFpVB9KYYciH8rV
	Zlgt80H+AEOpjU6q/uR2OLhpsZvH2rf8DD489nNv9YXgc05ldlAXQ0NvajLALdxoCKXqYtu75Y0pE
	w1R+OrRzuFn1MXOWoeNlSJewZg1uXuJcDMM2bgBRpl2lwUMZDNTIHgqiuDjQrC+O0nnO23yc4V0SD
	axVx5EvPGZ7nirF9aLXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSIv-0000000HXe6-0h0U;
	Mon, 23 Feb 2026 09:32:37 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSIt-0000000HXdl-3y0A
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Feb 2026 09:32:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 4977860053
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Feb 2026 09:32:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EED2FC19424
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Feb 2026 09:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771839155;
	bh=cngIQbZO92VV5oupWtvE2wurBsxtAghBhTKaVB7S7Ng=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ghPNo3/wLIdV/qYlTYawL22yje1RYPYa+29IxX1xRaZV7tMTU1110ymMWIiiUuJd2
	 HPrdm0T4AnZWJYxqblUQ6EZP82hTuhbMIdxRCTLuUokqipNJPo3pMPv/jrABkOqY+/
	 4jjgBz+T6CLVK08/AqFI7eu6tMLatlzfZLLlsLxsyX/PuL/UPyrT0z0HW8YddUDGSI
	 o1/B7zglNAeZoqnadocBgBCIJ9vKbFUaTSbzmq0j8B1UKDxzRYCcDkKzi60NipHm7L
	 ewhnq2dpoiPdxge7ptX8dTrNJ3eNFNG3sHQkelSsuxYKhhHs9wEBt/bOwVXxaZNw7E
	 UXDtQ9WRgqAhQ==
Received: by mail-yx1-f45.google.com with SMTP id 956f58d0204a3-64ad62a294bso3485177d50.1
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Feb 2026 01:32:34 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUI2xI4V+O5YgIyaAfE1BjuFi7UBKTSotJ1l/S2a60EW7JStxllugYw8tf/f9p2EH5AkG/et94xrb3W3C0B3w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwITk8vIhtSb1lRMb3n9ytRLbiDws/oRhN1iVUPYaGeEB6RABpt
	M0oJxOKus+CUfFkA1Tjdy7lc3JhRqQ48mJMREMig21/q0cr9d/XZB/dM+zqEs/kbiRbj74Feq3g
	rhfzwpLIuJ4W+Q8dzcEH6vwh1rgYAqk4=
X-Received: by 2002:a53:ac94:0:b0:64a:d479:bfbd with SMTP id
 956f58d0204a3-64c786d48c1mr6733873d50.7.1771839154347; Mon, 23 Feb 2026
 01:32:34 -0800 (PST)
MIME-Version: 1.0
References: <20260207130642.2833312-1-festevam@gmail.com>
In-Reply-To: <20260207130642.2833312-1-festevam@gmail.com>
From: Linus Walleij <linusw@kernel.org>
Date: Mon, 23 Feb 2026 10:32:23 +0100
X-Gmail-Original-Message-ID: <CAD++jLmbh1EPp0uS0OmTm9mV5EBFXvc824ZVeOi5G05xfVuerQ@mail.gmail.com>
X-Gm-Features: AaiRm5123L_WFuOuxJnAzHGVVCf8Egt4yfi355MBArKk0mXsl3VBUvpMEMxcSIg
Message-ID: <CAD++jLmbh1EPp0uS0OmTm9mV5EBFXvc824ZVeOi5G05xfVuerQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: rockchip: Add RV1103B compatible
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, jonas@kwiboo.se, 
	Fabio Estevam <festevam@nabladev.com>
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

T24gU2F0LCBGZWIgNywgMjAyNiBhdCAyOjA24oCvUE0gRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1A
Z21haWwuY29tPiB3cm90ZToKCj4gRnJvbTogRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1AbmFibGFk
ZXYuY29tPgo+Cj4gRG9jdW1lbnQgdGhlIGNvbXBhdGlibGUgc3RyaW5nIGZvciB0aGUgUlYxMTAz
QiBTb0MuCj4KPiBTaWduZWQtb2ZmLWJ5OiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBuYWJsYWRl
di5jb20+CgpQYXRjaCBhcHBsaWVkIGFsb25nIHdpdGggMi8yIQoKWW91cnMsCkxpbnVzIFdhbGxl
aWoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
