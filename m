Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90322CFC293
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 11:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fRdxELxPLZmpXm8FVsTKDvQN57AxvmRAsbVYs5bVzLU=; b=pe20+T0XGdxock
	GUHeIiY13fKmfM65DZHXKxb1cWwQdx2/MooRG0IUIla3P/+o+StLczFWQ4rJb+CEXsuy7XYBaIcum
	+Fz1a+j9y6hqbyi8l8u6/aovvhazQYlHQ1cm4onKIEJB5zf5YohKXArQlbIxytK+g+dYPkF0Ggnj9
	h8f1VKbCWik8cCXMyhv274Cu6Sk2H4HIbiWKNwSYNDCtEbl3BZk7+JUqeTD977uXo/ERSnNKNEFVW
	Jq5SbWKRbvS4vAYw5VEhwBB1X0qF4oGwxyCduSqpsZbGi2wpaqq33isrNB+0Ei2MuVA8y7b8ZF1Ro
	yCQ4YGfKCqTqS7dQLYeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0g2m-000000084zv-4AO9;
	Tue, 15 Oct 2024 11:48:52 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0g1L-000000084kZ-2lYe;
	Tue, 15 Oct 2024 11:47:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B64795C4B3B;
	Tue, 15 Oct 2024 11:47:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 867ADC4CEC6;
	Tue, 15 Oct 2024 11:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728992842;
	bh=YPbiicurnH1dDhqb6FYnrHy2d2a+IagWqrjbCs+mflM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Z2P4o4Dufu4e2X8yqYcxKbC0bLxAhhO91HdiyF7wF7Vz4cth8k0KHFxlE3sKnHmvz
	 qzaAfVsLtBT8vEMI34Dcn5R38mtldxxC0jpBE00ANwemaoSHL/VFZC2YvxnB0J2XSA
	 fxQgP6N9T+c1/kuwh1Qj3X/Vkj4DS6Fr958ngz7ClzewG4lItuXBLfRwQNg9jthWah
	 A2lbd1p83UHKZXUalReRiiiHkIkfZzIF5PXicf9C5Rak/dol2pStaY+OVTHXgtbBex
	 G7En1VyNL4HMT52sML1mrt15NeaMXNTu3vAQkBm6NfZBHbWarlhImn/PSjm8kF4yp2
	 q3c9gJc8GXXeA==
From: Lee Jones <lee@kernel.org>
To: linux-kernel@vger.kernel.org, Dragan Simic <dsimic@manjaro.org>
Cc: lee@kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, 
 Diederik de Haas <didi.debian@cknow.org>
In-Reply-To: <08d4e88974c205eba124086ce156622e2e4cdc20.1728397516.git.dsimic@manjaro.org>
References: <08d4e88974c205eba124086ce156622e2e4cdc20.1728397516.git.dsimic@manjaro.org>
Subject: Re: (subset) [PATCH] mfd: rk8xx-core: Check
 "system-power-controller" first
Message-Id: <172899284126.514208.13664393546425275514.b4-ty@kernel.org>
Date: Tue, 15 Oct 2024 12:47:21 +0100
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_044723_766174_3B0108BC 
X-CRM114-Status: UNSURE (   5.80  )
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

T24gVHVlLCAwOCBPY3QgMjAyNCAxNjozMDoxMCArMDIwMCwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+
IENvbW1pdCA5NjE3NDhiYjE1NTUgKCJkdC1iaW5kaW5nczogbWZkOiByazh4eDogRGVwcmVjYXRl
IHJvY2tjaGlwLHN5c3RlbS0KPiBwb3dlci1jb250cm9sbGVyIikgbWFkZSB0aGUgcHJvcGVydHkg
InJvY2tjaGlwLHN5c3RlbS1wb3dlci1jb250cm9sbGVyIgo+IGRlcHJlY2F0ZWQgaW4gZmF2b3Ig
b2YgdGhlIHNob3J0ZXIsIHVuaXZlcnNhbCBmb3JtICJzeXN0ZW0tcG93ZXItY29udHJvbGxlciIu
Cj4gRm9sbG93aW5nIHRoZSB1cGRhdGVzIHRvIHRoZSBib2FyZCBkdHMgZmlsZXMsIFsxXSBtYWtl
IHRoZSBmYXZvcmVkIHByb3BlcnR5Cj4gbmFtZSBjaGVja2VkIGZpcnN0LCB0byBzYXZlIGEgZmV3
IENQVSBjeWNsZXMuCj4gCj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tj
aGlwLzIwMjQxMDA4MTA1NDUwLjIwNjQ4LTEtZGlkaS5kZWJpYW5AY2tub3cub3JnL1QvI3UKPiAK
PiBbLi4uXQoKQXBwbGllZCwgdGhhbmtzIQoKWzEvMV0gbWZkOiByazh4eC1jb3JlOiBDaGVjayAi
c3lzdGVtLXBvd2VyLWNvbnRyb2xsZXIiIGZpcnN0CiAgICAgIGNvbW1pdDogZWJjZWQwNTg3YmFj
ZGNlOWE2OWFkYmMyODllYzFjMzVjMWM2Yjg1YwoKLS0KTGVlIEpvbmVzIFvmnY7nkLzmlq9dCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
