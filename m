Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C08DC25B10
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 May 2024 14:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EncjeaJPLdyKvkGJkCbPM9Op+QycHEr8s1uQ7Jp/hnI=; b=rW1D5WLjUfs1Cs
	7vW/MR4y0CqchjHoLfBodot+4exKZzpr5nQ5awbUYvFQCvYmaHFkRRz5Q3jjUuwO3HTDbLPTkpI6H
	i8LJblNl3fStD4LY76nS5d7fQCHkzzeY5z6T9GtY/09kVZuXzh4SbBGPA+Aa4r2eDjXdzm6mpqcCj
	iM+Tvz3Oh7MjwWwJZs2YSFU4uigljCNXcczr4M6+r9B1huFRFyguMDB8oHZqqf4hykwjXm3DFWMoV
	pdnGjq8kEDUnRASQ23gGsgcDqlorxWdqHAaOynWy2au4ArjgqZ3vEUIgpE7A3Munx1vOv6vyX2VD2
	+HoXd5v4X97LjCgjDEEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s5RXB-00000005baC-3ZXN;
	Fri, 10 May 2024 14:47:41 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s5RX4-00000005bYv-2Sg4;
	Fri, 10 May 2024 14:47:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9AA7661F0F;
	Fri, 10 May 2024 14:47:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2FC5C113CC;
	Fri, 10 May 2024 14:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715352453;
	bh=TnctR5VIFK9cG6OWB0Ya5IbDIo4SYtggYGdcqptbWFs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Li9vp/TemlmLoGa4Drj5pMqrB9B/eOJ8kRGM9FJy8eKVlpYt0yEDycu79BLt8bMFT
	 ZSbJrlTAFYmLm9w61RoIGnFUvDguhCJau2YdBOb5EcLVMhWCnwh4cEu19HqGuLKtK8
	 CzbyV3grZA7zvPzYepKxWUGbRjq2KQy1z0B3BlX+mS5MeK+6L9pcbb/uVY00aaDU6l
	 jHJnij6hDeqdzK0/jSuDqeONHD6Vs66goJwDZqkYewjuzZq3cb9Qq5Bifmt9XexbtV
	 OwbO+e21a8eUDlmFFVhKpJUJlL80dRmtQm9j7CH0yKpqhDwOH42DOlLe0bciQ0xxT/
	 z7Z9Jf89ol4wg==
Date: Fri, 10 May 2024 15:47:26 +0100
From: Lee Jones <lee@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org
Subject: [GIT PULL] Immutable branch between MFD, Pinctrl and Regulator due
 for the v6.10 merge window
Message-ID: <20240510144726.GB6146@google.com>
References: <20240416161237.2500037-1-knaerzche@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240416161237.2500037-1-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240510_074734_713794_A6CA1C3E 
X-CRM114-Status: GOOD (  10.77  )
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

RW5qb3khCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IDRjZWNlNzY0OTY1MDIw
YzIyY2ZmNzY2NWIxOGEwMTIwMDYzNTkwOTU6CgogIExpbnV4IDYuOS1yYzEgKDIwMjQtMDMtMjQg
MTQ6MTA6MDUgLTA3MDApCgphcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoK
CiAgZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2xlZS9tZmQu
Z2l0IGliLW1mZC1waW5jdHJsLXJlZ3VsYXRvci12Ni4xMAoKZm9yIHlvdSB0byBmZXRjaCBjaGFu
Z2VzIHVwIHRvIDVlYjA2OGRhNzRhMGI0NDNmYjk5YTg5ZDllNTA2MjY5MTY0OWM0NzA6CgogIHJl
Z3VsYXRvcjogcms4MDg6IEFkZCBSSzgxNiBzdXBwb3J0ICgyMDI0LTA1LTAzIDA5OjE1OjM4ICsw
MTAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQpJbW11dGFibGUgYnJhbmNoIGJldHdlZW4gTUZELCBQaW5jdHJsIGFuZCBS
ZWd1bGF0b3IgZHVlIGZvciB0aGUgdjYuMTAgbWVyZ2Ugd2luZG93CgotLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkFsZXggQmVl
ICg1KToKICAgICAgZHQtYmluZGluZ3M6IG1mZDogQWRkIHJrODE2IGJpbmRpbmcKICAgICAgbWZk
OiByazh4eDogQWRkIFJLODE2IHN1cHBvcnQKICAgICAgcGluY3RybDogcms4MDU6IEFkZCByazgx
NiBwaW5jdHJsIHN1cHBvcnQKICAgICAgcmVndWxhdG9yOiByazgwODogU3VwcG9ydCBhcHBseV9i
aXQgZm9yIHJrODA4X3NldF9zdXNwZW5kX3ZvbHRhZ2VfcmFuZ2UKICAgICAgcmVndWxhdG9yOiBy
azgwODogQWRkIFJLODE2IHN1cHBvcnQKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvcm9j
a2NoaXAscms4MTYueWFtbCAgICB8IDI3NCArKysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMv
bWZkL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA0ICstCiBkcml2
ZXJzL21mZC9yazh4eC1jb3JlLmMgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDEwNCArKysr
KysrKwogZHJpdmVycy9tZmQvcms4eHgtaTJjLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCAgNDUgKysrLQogZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtcms4MDUuYyAgICAgICAgICAgICAg
ICAgICAgfCAgNjkgKysrKysrCiBkcml2ZXJzL3JlZ3VsYXRvci9yazgwOC1yZWd1bGF0b3IuYyAg
ICAgICAgICAgICAgICB8IDIxOCArKysrKysrKysrKysrKystCiBpbmNsdWRlL2xpbnV4L21mZC9y
azgwOC5oICAgICAgICAgICAgICAgICAgICAgICAgICB8IDE0NCArKysrKysrKysrKwogNyBmaWxl
cyBjaGFuZ2VkLCA4NTEgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3JvY2tjaGlwLHJr
ODE2LnlhbWwKCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
