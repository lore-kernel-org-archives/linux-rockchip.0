Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2409AC2BD09
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jun 2024 08:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yLe8b13cDXUjulOHg1hqtUDGOQWSo/Lki4enLcZEYaE=; b=fqSBFqn+YZSzUw
	jBUtVUY0mvkGhP/vXRhC7dPBqN+WWQ/2A+Xb9VF/ZjUQ5PWJjowXEUCetVs+j4WcU8QqI1ZPC/St6
	xCc/LVxkgqSXfPlRZy69sGLE8D47lQa9jK4QD7qs+cZ0NUFSpt6lgRXDorvbaQtvPOTwKPUh4fbte
	vse+Vw69sv3v5v29wVWrrbpTpRTjC1K6I+k5/ZYey9oVm+SfekmYdmr8dVy/JSaydGHMnxNS3rzIY
	ciF94SGhfXL4vJV0Hpv7jIA8dgSoRRAoEm5mEm/4fXKmA/wrvIcnT3anQyBas7zKYgU6qq56LekPi
	VqyH82Eaqm/N9oNz5Xdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMkWa-00000009kxs-2rmR;
	Thu, 27 Jun 2024 08:30:36 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMkWQ-00000009ktW-1ppy;
	Thu, 27 Jun 2024 08:30:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D4A4FCE19D9;
	Thu, 27 Jun 2024 08:30:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01AF3C2BBFC;
	Thu, 27 Jun 2024 08:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719477023;
	bh=SRxQT/BRSRJL3CvUyHc3/7UJ6jrwQN+2sL5nddh4M/I=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=rg5x8Nd6UWeYUBb6FkNWA5keSE8TJsuZxeHL9Q3U7uAsWo8N1aL9a+CYwKUhNvzrz
	 LWpiPif8Z2J02kZFHc3FhKfq9kDgMqBW1YfyB6aUIuJzJ88zP0Z5LDkwpRTd1T99Xx
	 xHJHXQlmsOELFzkDquwJ7zKVD3lzzpnHtANS4V7bTHR3PqM3zJpYwVcA4FJHQP3ztN
	 Z+8QMXHbX8jNiJzSJLDjikWrdfzBXxzA5qq23V8PVxspeLI/nNHkS/ek+CHBnkuzGk
	 PPx0ke3bL+3hVpECvan4jciv9OxGuy7O8+ka9/jRNfTvXAGwTXOj8xl8HgTSlLWUQL
	 8ucNcKNSuJYWA==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>, 
 Chris Morgan <macromorgan@hotmail.com>, 
 Furkan Kardame <f.kardame@manjaro.org>, 
 Michael Riesch <michael.riesch@wolfvision.net>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240622-rk809-fixes-v2-0-c0db420d3639@collabora.com>
References: <20240622-rk809-fixes-v2-0-c0db420d3639@collabora.com>
Subject: Re: (subset) [PATCH v2 0/5] DT fixes for Rockchip RK809 audio
 codec support
Message-Id: <171947701973.2892686.10620287501091714886.b4-ty@kernel.org>
Date: Thu, 27 Jun 2024 09:30:19 +0100
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_013026_785676_B97242E7 
X-CRM114-Status: UNSURE (   8.04  )
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

T24gU2F0LCAyMiBKdW4gMjAyNCAwMDo1NzoxNyArMDMwMCwgQ3Jpc3RpYW4gQ2lvY2FsdGVhIHdy
b3RlOgo+IFJvY2tjaGlwIFJLODA5IE1GRCBwcm92aWRlcyBhIFJLODE3IGNvbXBhdGlibGUgYXVk
aW8gY29kZWMsIHN1cHBvcnRlZCBieQo+IHRoZSByazgxN19jb2RlYyBkcml2ZXIuCj4gCj4gVGhp
cyBwYXRjaCBzZXJpZXMgZml4ZXMgYSBmZXcgaXNzdWVzIGlkZW50aWZpZWQgYnkgZHRic19jaGVj
ayBmb3IgdGhlCj4gYm9hcmRzIG1ha2luZyB1c2Ugb2YgdGhlIGNvZGVjOiByazM1NjYtcXVhcnR6
NjQtYiwgazM1NjYtcm9jLXBjLAo+IHJrMzU2OC1ldmIxLXYxMCwgcmszNTY4LWx1YmFuY2F0LTIs
IHJrMzU2OC1vZHJvaWQtbTEsIHJrMzU2OC1yb2NrLTNhLgo+IAo+IFsuLi5dCgpBcHBsaWVkLCB0
aGFua3MhCgpbMS81XSBkdC1iaW5kaW5nczogbWZkOiByazgxNzogRml4dXAgY2xvY2tzIGFuZCBy
ZWZlcmVuY2UgZGFpLWNvbW1vbgogICAgICBjb21taXQ6IGU0NzIzNjliZDU2MjRmYTg5OWQwZDFk
ZmJlNjliNTk0ZmQ3ZTZlN2QKWzIvNV0gZHQtYmluZGluZ3M6IG1mZDogcms4MTc6IE1lcmdlIHN1
cHBvcnQgZm9yIFJLODA5CiAgICAgIGNvbW1pdDogYWU2MWZhOWVlMDEwNDlhYmZjYTdhOTU0YTdj
NjJlMTI3NDg1OGQxMAoKLS0KTGVlIEpvbmVzIFvmnY7nkLzmlq9dCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
