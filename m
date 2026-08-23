Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 257E2C5DF81
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Aug 2026 19:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7kP28+qOd+Gdn0GMRCql5doiOn6/yO/6PolmBfMTRa8=; b=o4pQzRIGEszBdT
	qtDnEr1CRKSinH44psi9wjDGWVksWRk5aIncxhuMLCXgrKBts4aDOGQTYas1rOizkw3P5LCUie/yr
	ZbExGin1wKbLdT6EEl0O8xmWY7p7hb6nVuYMj+bm8KQyvYNdSMqot6O1LxCc0cgaQcCzC4XDRC5iO
	EIdGn13KiQj+wpKYjtE1cL/TBGdE1YuQrs0AKe7bd0oM8oF1eC/vjji2po79ZIbSWEK1cEneG1qx/
	i6Md69j6bGpYKUsJvJfdezfW8PrKbpy5KxNbf6TFrmzrqx5rypKohHfaiy6t7AV+TiY7nZGE+cHvb
	z0dS3OJ4Ckc8RXIz+7Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyDap-0000000FY6H-3e41;
	Sun, 23 Aug 2026 19:10:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyDan-0000000FY5s-3tIk;
	Sun, 23 Aug 2026 19:10:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=/W6mkeoXvnonMNZUI3njI0qG2gH3SwBOtWLJBh8UHlM=; b=o6pulzMO03REegWhuuub+t8v3d
	fsJQF+E0p8GSd/S95Kwk/5mdjKiT0tPOtr3GvhNT+YDv6MiP6wpgBzKBT9JQjUtvPr0JFQNcnb6ta
	r5cJZQYy7vXGMgiyppwKTAxnTN9wfgUoGNaV9o1NqbAxEU1i66C0thPUmBlS4c5cJ7vQnExVl6mVk
	xPkijEuj3K2TuqXest7lqlNETwhQ6mH+OorjXwNflJek0MQiSy+HXpCQvohTq4ZviqXU9Ji4YL7yh
	npchf11iQcDW46NEXtLXcJHWntRZIPPnLY8ch9lN/wzs6yJuI9m+7mmHA2OmVQSxS2Un3YT9MN3Em
	ZyZ+uCrw==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: hjc@rock-chips.com, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] drm/rockchip: rk3066_hdmi: convert to devm_drm_bridge_alloc()
 API
Date: Sun, 23 Aug 2026 21:10:31 +0200
Message-ID: <9306866.NyiUUSuA9g@diego>
In-Reply-To: <dea8a038-577b-45da-bff3-703e9099b7e1@gmail.com>
References: <dea8a038-577b-45da-bff3-703e9099b7e1@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260823_121054_049359_B01C2C46 
X-CRM114-Status: GOOD (  16.58  )
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

SGkgSm9oYW4sCgpBbSBTb25udGFnLCAyMy4gQXVndXN0IDIwMjYsIDE0OjQ3OjI1IE1pdHRlbGV1
cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgSm9oYW4gSm9ua2VyOgo+IFRoZSBmdW5jdGlv
biBkZXZtX2RybV9icmlkZ2VfYWxsb2MoKSBpcyB0aGUgbmV3IEFQSSBmb3IgYWxsb2NhdGluZyBE
Uk0gYnJpZGdlcy4KPiBUaGlzIGNvbnZlcnNpb24gd2FzIG1pc3NlZCBkdXJpbmcgdGhlIGluaXRp
YWwgY29udmVyc2lvbiBvZiBhbGwgYnJpZGdlcyB0bwo+IHRoZSBuZXcgQVBJLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IEjDvHNleWluIEJJWUlLIDxib29naWVwb3BAZ214LmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBKb2hhbiBKb25rZXIgPGpieDYyNDRAZ21haWwuY29tPgoKdGhlIGF1dGhvcnNoaXAgaXMg
YW1iaWdvdXMgaGVyZS4gRmlyc3QgU2lnbmVkLW9mZi1ieSBzaG91bGQgYmUgZnJvbSB0aGUKcGF0
Y2ggYXV0aG9yLCB5ZXQgdGhpcyBvbmUgbWFrZXMgeW91IHRoZSBhdXRob3IuCgpTbyBlaXRoZXIg
dGhlIGF1dGhvciBuZWVkcyB0byBjaGFuZ2Ugb3IgdGhlIHNpZ25lZC1vZmYtYnkgbGluZQpuZWVk
cyB0byBnby4KCgpIZWlrbwoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JrMzA2
Nl9oZG1pLmMgfCA4ICsrKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9yazMwNjZfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JrMzA2Nl9oZG1pLmMK
PiBpbmRleCBmMjhkNmE4ODNlMDkuLjM5YzY1ZWUwN2NhYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvcmszMDY2X2hkbWkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9yazMwNjZfaGRtaS5jCj4gQEAgLTcwMyw3ICs3MDMsNiBAQCByazMwNjZfaGRtaV9y
ZWdpc3RlcihzdHJ1Y3QgZHJtX2RldmljZSAqZHJtLCBzdHJ1Y3QgcmszMDY2X2hkbWkgKmhkbWkp
Cj4gIAkJCSBEUk1fTU9ERV9FTkNPREVSX1RNRFMsIE5VTEwpOwo+ICAKPiAgCWhkbWktPmJyaWRn
ZS5kcml2ZXJfcHJpdmF0ZSA9IGhkbWk7Cj4gLQloZG1pLT5icmlkZ2UuZnVuY3MgPSAmcmszMDY2
X2hkbWlfYnJpZGdlX2Z1bmNzOwo+ICAJaGRtaS0+YnJpZGdlLm9wcyA9IERSTV9CUklER0VfT1Bf
REVURUNUIHwKPiAgCQkJICAgRFJNX0JSSURHRV9PUF9FRElEIHwKPiAgCQkJICAgRFJNX0JSSURH
RV9PUF9IRE1JIHwKPiBAQCAtNzQ3LDkgKzc0NiwxMCBAQCBzdGF0aWMgaW50IHJrMzA2Nl9oZG1p
X2JpbmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlICptYXN0ZXIsCj4gIAlpbnQg
aXJxOwo+ICAJaW50IHJldDsKPiAgCj4gLQloZG1pID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9m
KCpoZG1pKSwgR0ZQX0tFUk5FTCk7Cj4gLQlpZiAoIWhkbWkpCj4gLQkJcmV0dXJuIC1FTk9NRU07
Cj4gKwloZG1pID0gZGV2bV9kcm1fYnJpZGdlX2FsbG9jKGRldiwgc3RydWN0IHJrMzA2Nl9oZG1p
LCBicmlkZ2UsCj4gKwkJCQkgICAgICZyazMwNjZfaGRtaV9icmlkZ2VfZnVuY3MpOwo+ICsJaWYg
KElTX0VSUihoZG1pKSkKPiArCQlyZXR1cm4gUFRSX0VSUihoZG1pKTsKPiAgCj4gIAloZG1pLT5k
ZXYgPSBkZXY7Cj4gIAloZG1pLT5kcm1fZGV2ID0gZHJtOwo+IAoKCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
