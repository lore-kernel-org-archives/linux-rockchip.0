Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33F1C109022B
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 13:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:Cc:To:From:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mdaQT9iUVKHlLdZ6uELg5Kr2SZBPYbsBq5NYB8xGZ3U=; b=k0fYlXX09oEb3k
	19xyMocShOgmW2czE2CDN9cZrESZuRLRRkxBolyh0C3nGboTAnKmbNSriDnhS0y2x1nImURMr4t/O
	pAi1PxyV3cpQZpy7NntkOW5uc1/0ql8zRfdQsfzsScRPQJk8PWshmuyQ7IVPVOYCeCJmdwq8ETZt4
	kjCjeGv90LikvEJkRzFaCW+wqieESZH5xRmwci6gwzay8dIaF8CIbFEGvk9H+pMAA3xIKdXMhFjeG
	8/JOK7MQ7GQOV6Zw7yqNvq4gpYJa9dUNWmizFJV81cU2/XeNg0foNlvD41iGRuiXrIBoG1em9RakY
	9RheuQaYrzpT6wtpVmIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Drm-0000000AisQ-3L5Q;
	Thu, 19 Mar 2026 13:56:50 +0000
Received: from out162-62-58-216.mail.qq.com ([162.62.58.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Drj-0000000Airm-3EXP;
	Thu, 19 Mar 2026 13:56:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1773928592; bh=QB0PAHjXJtrNdDodBFe2YFA8Ial1S7MV3yYq3bW3Z6w=;
	h=From:To:Cc:Subject:Date;
	b=OZIuQDm3gsJ6HK/EUYVIO3wMK0ytRSedyWKrnCtPb5CkNhT/8KFr3ylTT5tWlUkXl
	 qv00O8rDSK5qCU5bFxew0+J2cFXVSLGdUfV7LERaH28xB8ocyDriFP/Ylg7DW9+3Gx
	 jwpExommlITWr96++S3IYVuTMjiDPa+MN7wICA98=
Received: from mail.red54.com ([139.99.8.57])
	by newxmesmtplogicsvrszb51-1.qq.com (NewEsmtp) with SMTP
	id E0D89E56; Thu, 19 Mar 2026 21:56:13 +0800
X-QQ-mid: xmsmtpt1773928573t778m5lcy
Message-ID: <tencent_78E7E3F6991FB4403D5ADC9E6A6BC3BF8307@qq.com>
X-QQ-XMAILINFO: MMwjR1C73eIsPYIJmh7X440ZtM80sQDjF5nMcIXzGUvGMjBhReA1DB52+T3lWR
	 QhpCcXdclI30GKKwQJYCZkIwo8dfwpB6L/QUmeYluB8iqtYfSXmy5XkrTAZOO5c5W8vYovS8++jB
	 h6bTkvZtZ2DRpX+jMd2ShguYw60HjMWVTNT+15ZKfuMd9IYwx/iB0Eeu07ijZqCHRKRhlS9WB8M5
	 CZypwXnrr28c0pHMeVSjHb6GRR9JnrCq6GxCP5lQ4icIouxeFfH0aqLzQdhuz5W3WoWGSM51FwSP
	 WwcduP74YJbH1IvUVHwoVAaQVteqItobujcROXy7j2FYQSB4ZuClaGLd56UYrZrtnRsoZ8ufu70x
	 c9zUoufIFbzfavZHZwwjJwyHW/3/r0vb+TJ1u1WsK3Jn8vhWZtI4dZe6U04n2+5uQYC/3h0c3tzb
	 9+sasxJdw658XllPyTPuYhRah0Dhsjwx01Ot4LOmvXhW4IwwOl7v0XUCG4hbdREOIie9Ju2pQYJd
	 XV35BUVCjfVFG+T7gwPyTjY3R7RLMeThYLLGb1C/5HVCua+50dj/2y5yUDgbpk6OePKGe1ccDtJx
	 zoU0CkUdWsEwN6T0QSe5DAasSRFn2RiORcYWIVhNFg3P10vKHvYT711441sMuF0PLSb/hhmMDg5X
	 1C+BWFJ4laxINeG2uujy4GiddwXv5p+AXeXpWSMQf/BMBulG4/aVVg/n6tv5IOxUr3zDoqXgAASw
	 8JKz/nLfH2yrbaNyvPPmOhgdUJ1Onabcq4/MEZN5gdwfvjMcxI4UhqukGn8Ji3jt9IHXYaeGgTGf
	 3NFa5xlrCxUjq9B/mtyBZAcnNFjmCH1gSkglRCL8RbnEkijTxRaE1XIwGptZ5bWL8ZT9ZqrigWnx
	 DVSluNe16zQrIzf1zRN1vqFmaflAX5Qn6oxcwpNTw/ugjl+69SKyEwagfNn4wB6OGdGq54R9Y33q
	 WuKUzotjj6mvYgbNstp1lfvTnKyetNJtt96t/wfgZQUHbozKEcziyWB7xAaLdrarA8zFHL/Lhbz4
	 ruqyz3Q5O0WmvmoRNSQIe9hkpUBWcinIxIOmO9Q3mnxFyKul1LlpDrX1txwJXKoOaDf8wD8I+QH/
	 +oekJ6I3/x1mxXq8/UXZ3XX1nN1iA5o7rvz9GOLZAo0lkPDLxcPJ+/5wCWMX5JLivRCi6X
X-QQ-XMRINFO: NI4Ajvh11aEjEMj13RCX7UuhPEoou2bs1g==
From: =?UTF-8?q?=E8=B0=A2=E8=87=B4=E9=82=A6=20=28XIE=20Zhibang=29?= <Yeking@Red54.com>
To: linux-rockchip@lists.infradead.org
Cc: =?UTF-8?q?=E8=B0=A2=E8=87=B4=E9=82=A6=20=28XIE=20Zhibang=29?= <Yeking@Red54.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Fix RK3562 EVB2 model name
Date: Thu, 19 Mar 2026 13:55:00 +0000
X-OQ-MSGID: <20260319135500.69993-1-Yeking@Red54.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_065648_349440_F2218D1E 
X-CRM114-Status: UNSURE (   9.96  )
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

VGhlIG1vZGVsIG5hbWUgc2hvdWxkIGJlICJSb2NrY2hpcCBSSzM1NjIgRVZCMiBWMTAgQm9hcmQi
LgoKRml4ZXM6IGNlYjZlZjFlYTkwMCAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgUkszNTYy
IGV2YjIgZGV2aWNldHJlZSIpClNpZ25lZC1vZmYtYnk6IOiwouiHtOmCpiAoWElFIFpoaWJhbmcp
IDxZZWtpbmdAUmVkNTQuY29tPgotLS0KUmVmZXJlbmNlOgpodHRwczovL2dpdGh1Yi5jb20vcm9j
a2NoaXAtbGludXgva2VybmVsL2Jsb2IvZGV2ZWxvcC02LjYvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NjItZXZiMi1kZHI0LXYxMC5kdHNpI0wxNgoKIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTYyLWV2YjItdjEwLmR0cyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTYyLWV2YjItdjEwLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTYyLWV2YjItdjEwLmR0cwppbmRleCA2YTg0ZGIxNTRhN2QuLjM4NzA2MmVl
YTUyMCAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjItZXZi
Mi12MTAuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTYyLWV2YjIt
djEwLmR0cwpAQCAtMTMsNyArMTMsNyBAQAogI2luY2x1ZGUgInJrMzU2Mi5kdHNpIgogCiAvIHsK
LQltb2RlbCA9ICJSb2NrY2hpcCBSSzM1NjIgRVZCIFYyMCBCb2FyZCI7CisJbW9kZWwgPSAiUm9j
a2NoaXAgUkszNTYyIEVWQjIgVjEwIEJvYXJkIjsKIAljb21wYXRpYmxlID0gInJvY2tjaGlwLHJr
MzU2Mi1ldmIyLXYxMCIsICJyb2NrY2hpcCxyazM1NjIiOwogCiAJY2hvc2VuOiBjaG9zZW4gewot
LSAKMi40My4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
