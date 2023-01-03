Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65FCCC46467
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Jan 2023 11:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QByB0QbWJdQhBdb7x3I8voOa5QZmwqpUcuyWUUqbR3Q=; b=dOfCTlW9c1lsog
	GSvUot/hJKziDi1Z9UY2m/YzAETroT+loJPDh+xj61KNKdQIMg9ZIXvwQ1HS7a5J+4SF/Z1PN+ud8
	EipCsqPJIH2ypjYAiGBTmU9+ml0BhJlr9xB99OJKFxCRkE8pqj4hHCoHI06zvJv7I4UZ+hBGvVR2A
	0ybBO0ZNzB4LZ7MqaqINM/8y69eFYAXt/aGaDvrrqejNKHO58SlbKuutv0z3ukSl3JisI3IlYuG5o
	vFq5p2B4ij4jaA80lynY8sE6UD7/kDprhc5SerRMZtEaz4EAcpcXy/VgYG4cJtQrZwwwSCYqoIOZQ
	e/m1sDwIHbqiBW4SszAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCf5O-000t0D-5o; Tue, 03 Jan 2023 11:04:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCeh4-000l4U-2o
	for linux-rockchip@lists.infradead.org; Tue, 03 Jan 2023 10:38:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C88CD61227;
	Tue,  3 Jan 2023 10:38:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 454CAC433D2;
	Tue,  3 Jan 2023 10:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672742331;
	bh=c3L9uY7EIC7vpSaHHn/bXVJdBylqPR5p2C8ZK3Etjuo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DgefgNF+4HirWsfutq/MzyV0ZMIyvwlwVnqaxoeHoMf6UtXs7WoAaAZGp9ER9dHtC
	 XdzRqXeOeQRDI1bcM7CJkf66kDOfoWPUQgnOJLR1F/KaMQERZB4I2SCKtWIXqdqZjw
	 4RizqXan3DrRFexxrVx6oiI7nfdfIS8B4fLuPA4uQYb+0xN8w7P3x0B4EyZq+/kEjs
	 UHtGk92bkgerQbFbfqKCdAHjnkncykTAQyqXtlzKc1TEHvAA7a6RyWpLiKHqzp0J0j
	 374oGqzoiGv/Dppzd+xsNC6KYJwefvuO/O3OU7SXC/b8D9Xj4YQhevqnOxfYgSVZlQ
	 qJFHjhA20Jtew==
Date: Tue, 3 Jan 2023 10:38:45 +0000
From: Lee Jones <lee@kernel.org>
To: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Ondrej Jirman <megi@xff.cz>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Martijn Braam <martijn@brixit.nl>,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] mfd: rk808: re-add rk808-clkout to RK818
Message-ID: <Y7QFtQdGaG1h2Kq9@google.com>
References: <20230102111147.2580861-1-tom@tom-fitzhenry.me.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230102111147.2580861-1-tom@tom-fitzhenry.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230103_023854_466288_4C38B263 
X-CRM114-Status: GOOD (  13.43  )
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

T24gTW9uLCAwMiBKYW4gMjAyMywgVG9tIEZpdHpoZW5yeSB3cm90ZToKCj4gRml4ZXMgUks4MTgg
KGUuZy4gb24gUGluZXBob25lIFBybykgdG8gcmVnaXN0ZXIgaXRzIGNsb2NrLCB3aXRob3V0IHdo
aWNoCj4gZGVwZW5kZW50IGRldmljZXMgKGUuZy4gd2lmaS9CVCwgdmlhIHNkaW8td2lmaS1wd3Jz
ZXEpIGZhaWwgdG8gcHJvYmUuCj4gCj4gVGhpcyBsaW5lIHdhcyByZW1vdmVkIGluIGNvbW1pdCAz
NjMzZGFhY2VhMmUKPiAoIm1mZDogcms4MDg6IFBlcm1pdCBoYXZpbmcgbXVsdGlwbGUgUE1JQyBp
bnN0YW5jZXMiKSwgYnV0IG9ubHkgZnJvbSBSSzgxOC4KPiAKPiBDaGFuZ2VzIGluIHYyOgo+IC0g
QWRkIGEgRml4ZXMgdGFnIChKYXZpZXIgTWFydGluZXogQ2FuaWxsYXMpLgo+IC0gQWRkIEphdmll
ciBNYXJ0aW5leiBDYW5pbGxhcydzIFJldmlld2VkLWJ5IHRhZy4KPiAtIEFkZCBOZWlsIEFybXN0
cm9uZydzIEFja2VkLWJ5IHRhZy4KCkNoYW5nZS1sb2dzIHNob3VsZCBsaXZlIHVuZGVyIHRoZSAi
LS0tIiBiZWxvdy4KCkknbGwgc2hpcCB0aGlzIG91dCBmb3IgeW91IHRoaXMgdGltZS4KCj4gRml4
ZXM6IDM2MzNkYWFjZWEyZSAoIm1mZDogcms4MDg6IFBlcm1pdCBoYXZpbmcgbXVsdGlwbGUgUE1J
QyBpbnN0YW5jZXMiKQo+IFNpZ25lZC1vZmYtYnk6IFRvbSBGaXR6aGVucnkgPHRvbUB0b20tZml0
emhlbnJ5Lm1lLnVrPgo+IFJldmlld2VkLWJ5OiBKYXZpZXIgTWFydGluZXogQ2FuaWxsYXMgPGph
dmllcm1AcmVkaGF0LmNvbT4KPiBBY2tlZC1ieTogTmVpbCBBcm1zdHJvbmcgPG5laWwuYXJtc3Ry
b25nQGxpbmFyby5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL3JrODA4LmMgfCAxICsKPiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpBcHBsaWVkLCB0aGFua3MuCgotLQpMZWUgSm9u
ZXMgW+adjueQvOaWr10KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
