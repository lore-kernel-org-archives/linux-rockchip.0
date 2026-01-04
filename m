Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE5F1C2A06C
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Jan 2026 12:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pMHxU6QLCiCnJDD+7r8s5D5zhjiUeaNzZHyNPpskAd8=; b=AVtQS1zKHN5MCc
	I+ptkG2kmZxkEMQox23cbatT6hQIj+7F5REFlmeSZAXkBl5RwJaMhiZaJd40vsxeEHa+aTzU3tecc
	0+krAyEzwL+kbCmqJdLvgL6R90grVsiVWiqY9h2LYCWjvV4MkTGUqo6QcHcMpTmspUZcS3EEPOFda
	E16rt8rbIxwzh+DbBDV0GfeU1IMgbEiXmdKuhf48CLzpO/PLdndX9iYeqjG8ydC3hKnLPKJD0Zkjp
	CbYCV9u8PDI0EeeHesIdMaxPmLKjcqm6RB3dbFLhCZn9MuxwP9IuoHe/fgHzV72QVC4l4XHKGzPaw
	N+/yYRNV1+tSTpPeC3CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcMn3-0000000ADGy-0LyL;
	Sun, 04 Jan 2026 12:00:57 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcMmr-0000000ADGI-0g0G
	for linux-rockchip@lists.infradead.org;
	Sun, 04 Jan 2026 12:00:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8948B44316
	for <linux-rockchip@lists.infradead.org>; Sun,  4 Jan 2026 12:00:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FD08C2BC86
	for <linux-rockchip@lists.infradead.org>; Sun,  4 Jan 2026 12:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767528044;
	bh=gk/O5/8TMjlT+wpe3vNH+tG/DMBud2FXxDco5ugVk+8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=mlDVT1QiOwDEfe1eqQ3t6OAtcw1k0oy5smmcPpJ4kxyr3+q90ttSwWtdSKvvC5rS7
	 BokbEN7YBv4M3/G4kuBooAa6eOUJvf27Z24/bhQKA0Yx5pDwth4TKHxgt0OjSpWOyD
	 PcfTJmxk9AfHc6UzZGfLlnt5eMn1LrV0V6mcr/s1ugXv7JeAozXkzT4qtSqtAbyYBQ
	 EhXkfXN4TgMJu4SJkD1cfdmXLDzR40l8wzYdRfxi3OjcALbyyGpaW1klTct9AsBIoO
	 gk7JhzQZjJvL0vWK0SrJz2hGNtDsPdszNl0WA0W7ZEchgdYvFJHtitonLFOLkuoaZR
	 4S2nP3mbiffPg==
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-787d5555274so120707897b3.1
        for <linux-rockchip@lists.infradead.org>; Sun, 04 Jan 2026 04:00:44 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWteFgNekUXvfEQ6lE9D4CLt1RnbSo5P1atcK64+XeIaFPv6qEp/oEXvNkD7E39akJnhuBNgfbRYqRLNGTaOA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzlGhh7noYcPMuhebA/sv75QIqwF6Ix+w4MOJ4U/CWbETMk1JVO
	x55Fyb/iIm4lWZgoLQvsXDwF7B0p5c/mgFXwRrrJkzChnfwUjTqmcJVDGdK8VpEBjNwIyqFhCL2
	MUUGjvr+j8DIDWgBYUnbb3rQhM6D6vG8=
X-Google-Smtp-Source: AGHT+IHRIvO3ksa3QLYzzJfkSuNK3DEv4ik61urgIslLHNVqtp8kyS2NMIh1/AKMplqEBnEftxOF3QWj4wCPJzd1mUo=
X-Received: by 2002:a05:690c:3612:b0:781:64f:3132 with SMTP id
 00721157ae682-78fb409d56cmr309348707b3.64.1767528043622; Sun, 04 Jan 2026
 04:00:43 -0800 (PST)
MIME-Version: 1.0
References: <20251227114957.3287944-1-ye.zhang@rock-chips.com> <20251227114957.3287944-8-ye.zhang@rock-chips.com>
In-Reply-To: <20251227114957.3287944-8-ye.zhang@rock-chips.com>
From: Linus Walleij <linusw@kernel.org>
Date: Sun, 4 Jan 2026 13:00:32 +0100
X-Gmail-Original-Message-ID: <CAD++jLnKoOPCKRi9hvqqH54g1MYbGiK9r7pMi+3z6yHG43nGFQ@mail.gmail.com>
X-Gm-Features: AQt7F2rYDZXFYhSLsCcm698mZHPaUMrH9YKco-_ba-MTp1nPcf5WWSnYw7QDXME
Message-ID: <CAD++jLnKoOPCKRi9hvqqH54g1MYbGiK9r7pMi+3z6yHG43nGFQ@mail.gmail.com>
Subject: Re: [PATCH v4 7/7] ARM: dts: rockchip: rk3506: Add pinctrl and rmio
 dtsi for rk3506
To: Ye Zhang <ye.zhang@rock-chips.com>, Conor Dooley <conor+dt@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, tao.huang@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260104_040045_231510_CF1C7BBE 
X-CRM114-Status: GOOD (  10.00  )
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

SGkgWWUsCgp0aGFua3MgZm9yIHlvdXIgcGF0Y2ghCgpPbiBTYXQsIERlYyAyNywgMjAyNSBhdCAx
Mjo1NeKAr1BNIFllIFpoYW5nIDx5ZS56aGFuZ0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cgo+ICsm
cGluY3RybCB7Cj4gKyAgICAgICBybV9pbzAgewo+ICsgICAgICAgICAgICAgICAvb21pdC1pZi1u
by1yZWYvCj4gKyAgICAgICAgICAgICAgIHJtX2lvMF91YXJ0MV90eDogcm0taW8wLXVhcnQxLXR4
IHsKPiArICAgICAgICAgICAgICAgICAgICAgICByb2NrY2hpcCxwaW5zID0KPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIDwwIFJLX1BBMCA3ICZwY2ZnX3B1bGxfbm9uZT47Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgcm9ja2NoaXAscm1pby1waW5zID0KPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDwwIDAgMT47Cj4gKyAgICAgICAgICAgICAgIH07CgpUaGlzIGlz
IGp1c3QgYWRkaW5nIG1vcmUgYW5kIG1vcmUgIm5lY2Vzc2FyaWx5IGRpZmZlcmVudCIKcGlubXV4
IHRvIHRoZXNlIHBvb3IgRFRTIGZpbGVzLgoKSSB3b3VsZCBkbyB0aGlzOgoKJnBpbmN0cmwgewog
ICAgICBybV9pbzAgewogICAgICAgICAgICAgIHJtX2lvMF91YXJ0MV90eDogcm0taW8wLXVhcnQx
LXR4IHsKICAgICAgICAgICAgICAgICAgaW9tdXggewogICAgICAgICAgICAgICAgICAgICAgcGlu
bXV4ID0gIDwwPDwxNiB8IFJLX1BBMCA8PCA4IHwgNz47CiAgICAgICAgICAgICAgICAgICAgICBi
aWFzLWRpc2FibGU7CiAgICAgICAgICAgICAgICAgIH07CiAgICAgICAgICAgICAgICAgIHJtaW8g
ewogICAgICAgICAgICAgICAgICAgICAgcGlubXV4ID0gPDAgPDwgMTYgfCAwIDw8IDggPDwgfCAx
PjsKICAgICAgICAgICAgICAgICAgfTsKICAgICAgICAgICAgICB9OwoKSWYgdGhpcyByZXF1aXJl
cyBzb21lIGNoYW5nZXMgdG8gdGhlIGlvbXV4IGRyaXZlciB0byBoYW5kbGUgcGlubXV4ID0gPD47
CmFzIHdlbGwgYW5kIHNvbWUgY29kZSB0byBoYW5kbGUgc3Vibm9kZXMgZm9yIGVhY2ggcGluIGNv
bnRyb2xsZXIsCnRoYXQncyBmaW5lLiBJdCdzIGp1c3Qgd29yay4KCkkgbmVlZCB0aGUgRFQgYmlu
ZGluZ3MgbWFpbnRhaW5lcnMgd29yZCBvbiB0aGlzLCBlc3BlY2lhbGx5IENvbm9yCndobyBoYXMg
d29ya2VkIGEgYml0IG9uIHN0YW5kYXJkaXppbmcgcGluIGNvbnRyb2wgYmluZGluZ3MuCgpZb3Vy
cywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
