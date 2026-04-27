Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 135D5FF8862
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 11:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=smXFJbKcjUeBsQVk91daNm4qP065p34zNyKK4H6Zwrs=; b=i2ThKxwgA9yc2V
	mfpF4fJ7agy3ADpnmKmrQ3JN7zm7pQONNApO0FfsmtC7aox07cj9At/5J+fbMvwUpGBEMoG++c1Zk
	A7IUf1OAYm5HY9G9rcAN9O2l5Jeu1b+BcsOuYA8TmUP36SdzsTM1i4NxnsUfWNP/ZnfCO8peyIMp9
	+Amci4AcC27TtusDPrzDgGzfO4Sz98H4q0YuesRIMYu101wUlrseavgR3VERCAGDeSnVJpVdXGf/x
	qUOKrjAeXp0Sm0RbgENOFDjSLmZSdzbgyrdbxIhJkhV/hqI/dEqCzI876pyosjR7k15T8SXgL9OnZ
	We9pagffA03IsPlgfXwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHJhx-0000000GkBs-2TNq;
	Mon, 27 Apr 2026 11:00:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHJhu-0000000GkB8-3wGE;
	Mon, 27 Apr 2026 11:00:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=4XRJaWFbqSFsmBGRLBmlvpPymX1vBXalsYhJharnm3k=; b=V4zLCz3ZLjDozLT4o/LAggRxW+
	/7tTwM/7AIduZZExmA/N0ISPGIhudlvQr8OIZLfqqpl3dZzFBMZO1+CHO4S8/p8hIQThRYm7H+6Kw
	qUkz/RARTegoCwhvGlEh1G2dMvmMhgeaxaOhhWF1lOqflCgkHilvK6JFcoBJJcc6z7QZTy5pHVYxG
	W9MKn34IY0Srn89vDSGxcQR1sfCsVcWFb3In1Ti8EhUxZReRvvRM0/7nKkCmR621tabBfYgWvbiql
	WQsl/2EmAYv0jtLQJdv8PT+fJNaOnJl8mfbz3nHEmX1FbNG529k3mzs/2eOoeE1awhg2afR8w/mLW
	oKv+HpAA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Diederik de Haas <diederik@cknow-tech.com>,
 Maud Spierings <maud_spierings@hotmail.com>
Subject: Re: [PATCH v5 02/10] drm/bridge: Add detect_ctx hook and
 drm_bridge_detect_ctx() helper
Date: Mon, 27 Apr 2026 13:00:35 +0200
Message-ID: <11399494.CDJkKcVGEf@phil>
In-Reply-To: <20260426-dw-hdmi-qp-scramb-v5-2-d778e70c317b@collabora.com>
References: <20260426-dw-hdmi-qp-scramb-v5-0-d778e70c317b@collabora.com>
 <20260426-dw-hdmi-qp-scramb-v5-2-d778e70c317b@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_040054_979574_77645D77 
X-CRM114-Status: UNSURE (   7.12  )
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

QW0gU29ubnRhZywgMjYuIEFwcmlsIDIwMjYsIDAyOjIwOjE0IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgQ3Jpc3RpYW4gQ2lvY2FsdGVhOgo+IEFkZCBhbiBhdG9taWMtYXdh
cmUgLmRldGVjdF9jdHgoKSBjYWxsYmFjayB0byBkcm1fYnJpZGdlX2Z1bmNzIGFuZCBhCj4gZHJt
X2JyaWRnZV9kZXRlY3RfY3R4KCkgaGVscGVyIHRoYXQgYWNjZXB0cyBhbiBvcHRpb25hbAo+IGRy
bV9tb2Rlc2V0X2FjcXVpcmVfY3R4Lgo+IAo+IFRoaXMgZW5hYmxlcyBicmlkZ2UgZHJpdmVycyB0
byBwZXJmb3JtIG9wZXJhdGlvbnMgcmVxdWlyaW5nIG1vZGVzZXQKPiBsb2NraW5nIGR1cmluZyBj
b25uZWN0b3IgZGV0ZWN0aW9uLCBzdWNoIGFzIFNDREMgbWFuYWdlbWVudCBmb3IgSERNSQo+IDIu
MC4gIFdoZW4gYm90aCAtPmRldGVjdF9jdHggYW5kIC0+ZGV0ZWN0IGFyZSBkZWZpbmVkLCB0aGUg
Zm9ybWVyIHRha2VzCj4gcHJlY2VkZW5jZS4gIFdoZW4gY3R4IGlzIE5VTEwsIGxvY2tpbmcgaXMg
bWFuYWdlZCBpbnRlcm5hbGx5IHdpdGggRURFQURMSwo+IHJldHJ5Lgo+IAo+IFRlc3RlZC1ieTog
RGllZGVyaWsgZGUgSGFhcyA8ZGllZGVyaWtAY2tub3ctdGVjaC5jb20+Cj4gVGVzdGVkLWJ5OiBN
YXVkIFNwaWVyaW5ncyA8bWF1ZF9zcGllcmluZ3NAaG90bWFpbC5jb20+Cj4gU2lnbmVkLW9mZi1i
eTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4K
CndoaWxlIHRoaXMgbG9va3Mgc2FuZSB0byBtZSwgbXkgZHJtIGluc2lnaHRzIGFyZSBzcG90dHks
IHNvIEkgY2FuCm9ubHkgcHJvdmlkZSB0aGUgbGlnaHRlcgoKQWNrZWQtYnk6IEhlaWtvIFN0dWVi
bmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
