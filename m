Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2D43C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jan 2022 14:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A+HPSO+IFsgR4Zyw1G4IF5nfykGjcIpqZ1ImNTRZtgc=; b=OQEUs5i550xcr+
	9MPSxs2iOQyYFMosWXOC8ema/HLcYlF4e9BsOLMSutOz0igNcbkVuoDCRQnHDI8/qkxUeng8glN6+
	AL1DMfKAP2mKqrbXpw2kcPMuNd30rOwbQ2rRGe3ch5AV7IpmBtXhRVW/rIu+eL68sVEW40BtsZgvX
	NS9Xy9J8nt+HomZESP8CqEDX8fxWpHWAZVMQJf4WmO0OgDUtCptkfO3W0nb+70AW0EEuzTJGYDEcX
	Lnti1KT+drw7np/aq6XQ3/wisyVVf5/8XdGgtEJEazEGym9LTUE/G25uXsJPp1xLA+mHsyk5/BvDE
	CEsPlaj4OzEob/1pGr+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9SlG-00F9On-Rv; Mon, 17 Jan 2022 14:13:30 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9Sl3-00F9Lc-KG; Mon, 17 Jan 2022 14:13:19 +0000
Received: by mail-lf1-x130.google.com with SMTP id x11so32365065lfa.2;
 Mon, 17 Jan 2022 06:13:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=NhWmdpO0ww12Y4vGwaeCuxcyowg2Z3CLJR7KOrNG8jk=;
 b=QmoQI9Z8TXMYgST+9tYxQ6hfHkjTRGgRV9hmU/MUre5kRFxbz4VB51FguhUf5PG910
 Gt03+vL27lp+A1Q9dIy+RhFF5pEW4pXkULI4f5OCDNwQj9m7F39JVV8gXaAyEubSQxte
 GqxxZ9nni3WyXzQuKvyziB/6ROMxPZn6FncT7W3LhgVDiSolkq8k5KR4lwPJUghslBW8
 wBqX0Ld1ZAmOsb4zMXohNEhEzhmmiw1TpdV8Jpf8VOIqQekO3Y0JiuzxJVJk285dejA0
 lJUqtIFXClBOmqzkqibUXZQ0mNFB6cJrw6ZA14cD1lQbXQHjoStH9FZxxoGSgMXkZWgX
 WdOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=NhWmdpO0ww12Y4vGwaeCuxcyowg2Z3CLJR7KOrNG8jk=;
 b=6pGc24ZIOoNpWBWO9hr4fuTLuJs8iGaSHPYYHoAhyDwrqlex61xQroEX5/tjwFStxd
 PQnL7rM+6gUp61XziSaZnLB7sAaZC5l+GSWnnpwXTNbuHCUYK8l4E/E1upQqMRmEgRr9
 kwdk4WBjnWIgVNwTcaJ5wwhsaN45fhUD+2wUHFKqCn1BFTFR0FYySuKI56d4nKowGHaH
 DWBRwu6qOpFpinER31Nt5RmUrYb851jsT8+tA9vXQt6oqWnB3QtCAdx0CEOtFmMjZQBP
 pEoZOwv2zk22rjeaPnN2I1I3t1Qasxvarg/mQPwpN5qX5TySDQ38la49Oz13e2UIe0ZV
 fYKA==
X-Gm-Message-State: AOAM531eweMCQpctVYtGHe8rOlLGAsZIgrStB/kXQHXMnzE7XoX468+r
 cFudmawdGXAkKC6X2SLzyQY=
X-Google-Smtp-Source: ABdhPJwlvEDpJUX3yDmk/G4z41azN6dgu1AcVgv8oPnyCIDyWNIHaVUS0GSW0lzwe6J1yfDX2JcS2g==
X-Received: by 2002:a05:6512:606:: with SMTP id
 b6mr16460100lfe.396.1642428795695; 
 Mon, 17 Jan 2022 06:13:15 -0800 (PST)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245])
 by smtp.gmail.com with ESMTPSA id r9sm484433lfi.38.2022.01.17.06.13.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jan 2022 06:13:15 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH 5/9] arm64: dts: rockchip: add rk3568 tsadc nodes
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CAMdYzYo2gkNvNYjU9_kc4cTwNBFU+kg3bRwaS3yCCAsMdo-Tow@mail.gmail.com>
Date: Mon, 17 Jan 2022 15:13:14 +0100
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Message-Id: <E3AA167E-1E40-45CD-8CBB-3EB280856604@gmail.com>
References: <20210728135534.703028-1-pgwipeout@gmail.com>
 <20210728135534.703028-6-pgwipeout@gmail.com>
 <C3AE0A81-A829-4241-A65E-EB28825E3C33@gmail.com>
 <CAMdYzYo2gkNvNYjU9_kc4cTwNBFU+kg3bRwaS3yCCAsMdo-Tow@mail.gmail.com>
To: Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_061317_690467_3328C263 
X-CRM114-Status: GOOD (  11.22  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFp
bC5jb20+IHcgZG5pdSAxNy4wMS4yMDIyLCBvIGdvZHouIDE0OjQ5Ogo+IAo+PiAKPj4gUGV0ZXIs
Cj4+IAo+PiBJJ20gdHJ5aW5nIHRvIHVzZSB0aGlzIHNlcmllcyB0byBnZXQgdGhlcm1hbCBvbiBy
azM1NjYgYmFzZWQgdHZib3ggKHg5Ni14NikuCj4+IERyaXZlciBsb2FkcyBidXQgaSdtIGdldHRp
bmcgZm9sbG93aW5nIGVycm9yOgo+PiAKPj4gWyAgMTMyLjg3Mzk3OV0gcm9ja2NoaXAtdGhlcm1h
bCBmZTcxMDAwMC50c2FkYzogZmFpbGVkIHRvIHJlZ2lzdGVyIHNlbnNvciAwOiAtNTE3Cj4+IFsg
IDEzMi44NzQ2NTBdIHJvY2tjaGlwLXRoZXJtYWwgZmU3MTAwMDAudHNhZGM6IGZhaWxlZCB0byBy
ZWdpc3RlciBzZW5zb3JbMF0gOiBlcnJvciA9IC01MTcKPj4gCj4+IE1heWJlIHlvdSBoYXZlIHNv
bWUgaGludHMgaGVyZT8KPiAKPiBFcnJvciAtNTE3IG1lYW5zIC1FUFJPQkVfREVGRVIsIGEgZGV2
aWNlIGl0IHJlbGllcyBvbiBoYXNuJ3QgcHJvYmVkLgo+IFRTQURDIGRvZXNuJ3QgZGlyZWN0bHkg
cmVseSBvbiBhbnl0aGluZyB0aGF0IHNob3VsZG4ndCBhbHJlYWR5IGJlCj4gZW5hYmxlZC4gKFBp
bmN0cmwsIGNsb2NrcywgYW5kIGdyZiBhbGwgYnJlYWsgYSBsb3QgbW9yZSB0aGFuIHRzYWRjIGlm
Cj4gZGlzYWJsZWQpCj4gRG9lcyB5b3VyIGtlcm5lbCBjb25maWcgaGF2ZSBhbGwgb2YgdGhlIHJv
Y2tjaGlwIGVsZW1lbnRzIGVuYWJsZWQ/Cj4gCgpQZXRlciwKRm9yIHN1cmUgSSBjYW4ndCBzYXkg
J3llcycgd2l0aCAxMDAlIGNvbmZpZGVuY2UuCkknbSB0cnlpbmcgZG8gbXkgYmVzdCBmb3Igcmsz
NTY2IChjdXJyZW50bHkgaGF2ZSB3b3JraW5nOiBTRC9FdGgvSERNSS9Tb3VuZC9VU0IycG9ydDAv
QlQpLgoKTWF5YmUgeW91IG1heSBwb2ludCBtZSBwbHMgZm9yIGdvb2QgcmVmZXJlbmNlIG9mIHJr
MzU2eCBkZWZjb25maWc/CgpidHc6IGEgYml0IG9mICBjb250ZXh0OgpJbiBteSBhcHBsaWNhdGlv
biAoaHR0cHM6Ly9naXRodWIuY29tL3dhcnBtZS9taW5pbXl0aDIpIGkgaGF2ZSB0YXJnZXQgdG8g
aGF2ZSBzaW5nbGUgT1MgYmluYXJ5IGZvciBhbGwgc3VwcG9ydGVkIEFsbHdpbm5lci9BbWxvZ2lj
L1JvY2tjaGlwL0Jyb2FkY29tIGRldmljZXMuCkJ5IHRoaXMga2VybmVsIGNvbmZpZyBpJ20gdXNp
bmcgaXMgcGFpbmZ1bGx5IGFzc2VtYmxlZCB0byBoYXZlIG1pbmltYWwgd29ya2luZyBrZXJuZWwg
Zm9yIGFsbCB0YXJnZXRzLgpJdCdzIGEgcGFpbmZ1bCByb2FkLi4uLmJ1dCBzdGlsbCB3YW50IHRv
IGdvIHRoaXMgcm91dGUgZm9yOiBtaW5pbWFsIGltYWdlIHNpemU7IHNob3J0ZXN0IGJ1aWxkIHRp
bWUgJiBvbmUtZm9yLWFsbCBiaW5hcnkuCm15IGN1cnJlbnQgY29uZmlnOiBodHRwczovL2dpdGh1
Yi5jb20vd2FycG1lL21pbmlteXRoMi9ibG9iL21hc3Rlci9zY3JpcHQva2VybmVsL2xpbnV4LTUu
MTYvZmlsZXMvbGludXgtNS4xNi1hcm02NC1hcm12OC5jb25maWcKCmJ0dzI6IGZvciByazM1NjYg
aSdtIHVzaW5nIG1ham9yaXR5IG9mIHlvdXIgcGF0Y2hlcyEgCkdyZWF0IHdvcmsgb2YgeW91IQog
CgoKICAKCgogCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
