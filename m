Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6C3FC9831E
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 04:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jegsW2OIFSOdQpyUUS6OynNpdncHbxcLhqIVyjmyrk8=; b=kLDa8xGP3lk0OR
	RPHuHyYc4FD2w8LWVdvQcj4VCB/upcfUpn0keoK8Ph/ikt2uP2vZBJCNa5Hu4QS70wss3KTvi/ATg
	iwpCeHaJTlubO/QcIaterquxHXRedirNYPe4FMFq0JnrnzPMspVGi9cSb1/kPYYcKSvQcoppDckjM
	dg0JWzeEI5zaAKWD5O61/KP5pXPT4BD7LMVwx8ppsv37MQ9snMjnlUb/1LOueNiMMD5dOLvrBcG+/
	Cg0t/fOZzmQf6C1OPEJVH3965JFgd7O46gkXNXl0v6UziABtd5i7KhDzZfm1NdCCpgWF6DvgF68tF
	fbLyE5xI4Wm0lLXOMb/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJgS-0000000EwCI-1RoT;
	Sat, 26 Sep 2026 04:06:44 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJgQ-0000000EwBx-1jLu;
	Sat, 26 Sep 2026 04:06:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1BEDD434F9;
	Sat, 26 Sep 2026 04:06:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 745B61F000FF;
	Sat, 26 Sep 2026 04:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790395602;
	bh=nxfWuHGoS4AD08RES316n80ZMluVFGGsrpPDIgi9EWI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=XJu+a058PFy9AuXoNx2lJIIXcpKT3fHF6QBAJj/v0wp5P+Nz0JRMJbldY9RWwFrIK
	 oKVn3VZuRorua0NW1T5FZqDwSDJuuq0MMlCjkqEgspsvOl0thUe8+adh+IAHHR0tWJ
	 Kghwxgyjyy7S/93Vu8sKh2FK8UPE2Hdk4LKg14j2SW7x1FbK/r6dk6RNJixi5JtHbN
	 PsZuu47kxAJ6vXgRz/76JZ3rVQH4/ZLpsynTmse6449dxcksS+1a4f1rSGcyCKnOjW
	 FFDfbdKFBEXdtqwa0ynHpSYxaiFzH/vy0T3wKx8PHJVTNOS0HaqY4tz7HT25ux3NjX
	 0KbaAplpZfkpQ==
Date: Sat, 26 Sep 2026 06:06:27 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Frank Wang <frank.wang@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Yubing Zhang <yubing.zhang@rock-chips.com>, 
	Alexey Charkov <alchark@flipper.net>, Igor Paunovic <royalnet026@gmail.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v15 13/16] phy: rockchip: usbdp: Rename DP lane functions
Message-ID: <btcylnhxrbd5ks7wt437ddisiiktlqmr3zuwt43otydzd2vse2@7ydv5pircguh>
References: <20260915-rockchip-usbdp-cleanup-v15-0-80e2c11d1ce8@collabora.com>
 <20260915-rockchip-usbdp-cleanup-v15-13-80e2c11d1ce8@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-v15-13-80e2c11d1ce8@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDM6NTA6MDBQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gVGhlIGNvbW1vbiBwcmVmaXggZm9yIERpc3BsYXlQb3J0IHJlbGF0ZWQgZnVu
Y3Rpb25zIGlzIHJrX3VkcGh5X2RwXwo+ICh3aXRoIGEgZmluYWwgXyksIHNvIHVwZGF0ZSB0aGUg
dHdvIERQIGxhbmUgZnVuY3Rpb25zIHRvIGZvbGxvdyB0aGF0Cj4gc2NoZW1lLgo+IAo+IFJldmll
d2VkLWJ5OiBOZWlsIEFybXN0cm9uZyA8bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZz4KPiBUZXN0
ZWQtYnk6IElnb3IgUGF1bm92aWMgPHJveWFsbmV0MDI2QGdtYWlsLmNvbT4gIyBPcmFuZ2UgUGkg
NSBQbHVzCj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWlj
aGVsQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxt
YW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCu
o+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
