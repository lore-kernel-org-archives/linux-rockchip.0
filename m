Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF57DC61DC2
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Aug 2026 13:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KnGBTLNxbH0/Q3ti0+HBokATJzJNQg4CttZPvk549Xg=; b=1hsHSqUOB+JSrQ
	g3DG3B/KUhkqwKg1ZhPKQyldAzD6G1M9r3fAEwnL2NL7NkGup8kMRoQPa/VEWV+4UVliCJxm5XOfn
	t6akn3Zh2hIU5Xy/68uxsUoW6XoXepxH/3v/41AVP4NZALw7kx0hLXUSh7TRybfS5+NSAKa2jLfo4
	jqvm4P/yD2pCuX0AdOr+UaHaVwrpQ58BOyV/jnsWpyY/AQToIbKxhmW+xwEK+hzMOa+DZhRW7qrC0
	IyrSKDG8gCdwFcrQ/tFcdsektox+CP68UMhwkWGJ46edVFUb+qElqD0wjfEuYiO7bu7LkGb61Sk52
	H1i+w2/tTOdy0mIs5JJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzaEN-000000043s6-3QDL;
	Thu, 27 Aug 2026 13:33:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzaEL-000000043rN-2GyN;
	Thu, 27 Aug 2026 13:33:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=HI1REH23XVWiYYS5WUaJv/I0DtwaxBfUHe8yR5QlNpU=; b=rB74hpKjBvmLYM4d0hMaHp97lO
	ayX3p4+tvbS5YtfZLvz+5qZcztElPRkCKnLvdrC0DZE1nGbZh8FZVICpk0mmL8hkuJMznNE+KZ9PY
	c+lXICC2trG/aatvbdgIkZuoPnUVZSIcYKTs3fnqSKEQT7gGt7RteKMlBMOvhfePTAZBjPd51zZLK
	2hQTyv+87Y6tVUwWSNviQSNR7BIyGcfp6UARuE+RFT7zmphDyqzNgpsl9ZDTgGMAxw5d6pEPUnmEB
	4Bh8uBGL1DaZnPw2kHjMLWpyvt9T7XlAasDBNy169BpfKkDEmWSUYdvuwiQlssz9SLtQcWFQcrtjJ
	prAtSEzQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH 2/2] phy: rockchip: Make sure clk_init_data is fully initialized
Date: Thu, 27 Aug 2026 15:33:16 +0200
Message-ID: <3434874.44csPzL39Z@phil>
In-Reply-To: <adb5bd47343dd31661748d5de14cb28a2bae2d17.1787240165.git.geert+renesas@glider.be>
References: <cover.1787240165.git.geert+renesas@glider.be>
 <adb5bd47343dd31661748d5de14cb28a2bae2d17.1787240165.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260827_063321_581278_200A1CA8 
X-CRM114-Status: UNSURE (   8.11  )
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

QW0gRnJlaXRhZywgMjEuIEF1Z3VzdCAyMDI2LCAxMjowODo0MCBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIEdlZXJ0IFV5dHRlcmhvZXZlbjoKPiBUaGUgY2xrX2luaXRfZGF0
YSBzdHJ1Y3R1cmUgY29udGFpbnMgc2V2ZXJhbCBtdXR1YWxseS1leGNsdXNpdmUgbWVtYmVycwo+
IGZvciBkaWZmZXJlbnQgbWV0aG9kcyB0byBzcGVjaWZ5IHRoZSBwb3NzaWJsZSBwYXJlbnRzIG9m
IGEgY2xvY2ssCj4gcHJvbXB0aW5nIGRyaXZlcnMgdG8gaW5pdGlhbGl6ZSBvbmx5IHRoZSBtZW1i
ZXJzIHRoZXkgbmVlZC4gIEhvd2V2ZXIsCj4gbm90IGluaXRpYWxpemluZyBhbGwgbWVtYmVycyBt
YXkgY2F1c2Ugc3VidGxlIGlzc3Vlcywgd2hpY2ggYXJlIG9ubHkKPiBleHBvc2VkIHdoZW4gQ09O
RklHX0lOSVRfU1RBQ0tfQUxMX1BBVFRFUk4gb3IgQ09ORklHX0lOSVRfU1RBQ0tfTk9ORSBpcwo+
IGVuYWJsZWQuCj4gCj4gTWFrZSBzdXJlIGFsbCBtZW1iZXJzIGFyZSBmdWxseSBpbml0aWFsaXpl
ZCwgdG8gYXZvaWQgc3VjaCBidWdzLCBhbmQgdG8KPiBwcmV2ZW50IGZ1dHVyZSBicmVha2FnZSB3
aGVuIGNvbnZlcnRpbmcgZHJpdmVycyB0byBhIGRpZmZlcmVudCBtZXRob2QKPiBmb3Igc3BlY2lm
eWluZyB0aGUgcGFyZW50cy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4g
PGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxo
ZWlrb0BzbnRlY2guZGU+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
