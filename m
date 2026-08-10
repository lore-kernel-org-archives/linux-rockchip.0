Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 504CFC5AD55
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Aug 2026 20:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=du1XGe/zxWiVCEwer6A4x8l8PcoPtU9BUywl6pMaMGM=; b=EI/zGpdWEVb/uy
	SaBCN0u0WjD+b40zjLMM9OUzQ4Fzf6hgi+lKtnWl4XLydCeFvqbiGMhmOdYrAeR+0cLU1xPOs8R/+
	+0nqa9NUrE4L64Eq0UMXQKQ6xOgyG6H6+oh0Yo2Od9NolHxJRccn8H4XVOKCYyMwJbuPKqiPgaTEg
	+doZUnnKuZAXMDpYwV45PphdRFejX9iSNw7FGc9KscF4RllLzedXkzsih/FF0vyt/FnbdsSlet39z
	/QJsPfJKRAc1wswx0PXvbLKp1UOHMx027NxgobMbnWvIs1d4Nq0dW6plsRnEmNdDrFf38W1H7lugz
	R6ATKQpHZfoj6dxiw7Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtWIm-0000000Co3X-1XXa;
	Mon, 10 Aug 2026 20:08:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtWIj-0000000Co2m-0b8j
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Aug 2026 20:08:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9640D600BB
	for <linux-rockchip@lists.infradead.org>; Mon, 10 Aug 2026 20:08:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F8B11F01558
	for <linux-rockchip@lists.infradead.org>; Mon, 10 Aug 2026 20:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786392528;
	bh=PVxB+HpF5gJwn2MewfiHQ8qVkVDyA4ChZQAvP9r8du0=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=iPdlCCN1WHTnrcp4qPCqZCeN22izSXVTan9/YjPJthQrocMAP9W+RrvsB2pUbj7G+
	 oumeICBSdrpNvAS909YhYiPabCdMcYvyWCXXsW6zPPJ5Ewq+h1cthK//m9a4CFjwof
	 KjnvVTm+MidK7yw+mJOlN89Hu0bMJR/SrMdhNry1B12zgkZgDkhrXHVCOYVhWLcLaO
	 4yd2h2RlyVAmRlHahaOlf2xMoYS3C1r8jHu1ByyOrg5exuLpbfL2AAjpPxfV4NF91I
	 +4k/j8+aug8l14E5/obNdCxyhoLVGAJllAxbJsCIUXpjm9nrUrupRbOAc/Un0HA3d6
	 7XxJiIGK8f++w==
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5b01cb18515so2343256e87.2
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Aug 2026 13:08:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Rq76PRAAAaOP3Lnx013FyxQj7Jj8IBEpm/TlLQZyGT61VeXcqoG8sM+oKgVo60OkB1HaiP83nPq87n4S5shKQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzZV8uQteoaT7xrgSsPL5FLY3mOZQ82WdpyeDoRle6zXGiAmVWC
	ZzdCGBdMtu2WKdlAE1+xe+0ICf/hWs45+u9T0q7G6q4DNMJsc4zcTvmYiN0au7AV99XUVI8ppHl
	5PlM4KChkFKCVnXVy5FLly+A13u8T4pw=
X-Received: by 2002:a05:6512:668d:20b0:5b0:23b4:be97 with SMTP id
 2adb3069b0e04-5b2f4b801a6mr3693256e87.6.1786392527084; Mon, 10 Aug 2026
 13:08:47 -0700 (PDT)
MIME-Version: 1.0
References: <20260729132736.3807082-1-sjg@chromium.org> <20260729072727.v3.4.0af20e702c540f54a3d1694654b158a9b783d68e@changeid>
In-Reply-To: <20260729072727.v3.4.0af20e702c540f54a3d1694654b158a9b783d68e@changeid>
From: Linus Walleij <linusw@kernel.org>
Date: Mon, 10 Aug 2026 22:08:34 +0200
X-Gmail-Original-Message-ID: <CAD++jLmXtsWNdJ3ecPcpnSHK9E00fQSUmv5r1ooCC9n_zp91pA@mail.gmail.com>
X-Gm-Features: AUfX_mxsREooqobH0O-veo6ClRCAIrzdMTMqoFk0qwAXfbPSfoYfYy7nEvygW94
Message-ID: <CAD++jLmXtsWNdJ3ecPcpnSHK9E00fQSUmv5r1ooCC9n_zp91pA@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] pinctrl: rockchip: Add RV1106 pinctrl support
To: Simon Glass <sjg@chromium.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	devicetree@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	linux-rockchip@lists.infradead.org, Jeffy Chen <jeffy.chen@rock-chips.com>, 
	huang lin <hl@rock-chips.com>, linux-kernel@vger.kernel.org
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

T24gV2VkLCBKdWwgMjksIDIwMjYgYXQgMzozMOKAr1BNIFNpbW9uIEdsYXNzIDxzamdAY2hyb21p
dW0ub3JnPiB3cm90ZToKCj4gQWRkIHBpbmN0cmwgc3VwcG9ydCBmb3IgdGhlIFJvY2tjaGlwIFJW
MTEwNiwgYmFzZWQgb24gdGhlIHZlbmRvcgo+IGtlcm5lbCBpbiB0aGUgTHVja2ZveCBQaWNvIFNE
SyBbMV0gYXQgY29tbWl0IDgyNGI4MTdmOCAoYSBMaW51eAo+IDUuMTAuMTYwIGtlcm5lbCB0cmVl
KS4gRWFjaCBHUElPIGJhbmsgaGFzIGl0cyBvd24gSU8gY29udHJvbCAoSU9DKQo+IHJlZ2lzdGVy
IGJsb2NrLCByZWZlcmVuY2VkIGJ5IHRoZSByb2NrY2hpcCxncmYgcGhhbmRsZSBvZiB0aGUgYmFu
awo+IG5vZGU7IHRoZSByZWdpc3RlciBvZmZzZXRzIGFyZSByZWxhdGl2ZSB0byB0aGUgYmFuaydz
IG93biBibG9jay4gVGhlCj4gZHJpdmUgc3RyZW5ndGggdXNlcyB0aGUgUkszNTY4LXN0eWxlIGV4
cG9uZW50aWFsIGVuY29kaW5nIGFuZCBvbmx5Cj4gcGlucyAwLTYgb2YgR1BJTzAgaGF2ZSBkcml2
ZS1zdHJlbmd0aCByZWdpc3RlcnMuCj4KPiBUaGUgUlYxMTAzIGlzIGEgcGFja2FnZSB2YXJpYW50
IG9mIHRoZSBSVjExMDYgd2l0aCBmZXdlciBwaW5zIGFuZCB1c2VzCj4gdGhlIHNhbWUgcGluIGNv
bnRyb2xsZXIuCj4KPiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL0x1Y2tmb3hURUNIL2x1Y2tmb3gt
cGljbwo+Cj4gU2lnbmVkLW9mZi1ieTogU2ltb24gR2xhc3MgPHNqZ0BjaHJvbWl1bS5vcmc+Cj4g
UmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgpQYXRjaCBhcHBs
aWVkIQoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
