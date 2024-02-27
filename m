Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F113C54E51
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 23:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m45ZdYl2s0QJ/JvzN5TfHph+yGeCQIDN0QKMDhzJeYY=; b=x4vri2mlR+aihw
	6FzYGLgC422ZhZGss3XRpoIPt5o4f6VrnwQ/lX42jopNzZvIJFRKEOSc0kIMxySk5pbDtwWT1y5GK
	JNH3UivHdVHLAAiURykhVAMa0/+LVObrpIlw+46tJ1S+4af1Uengd0Y61VWSYSyhpRcf3d8G02YfE
	k9U65zzS1l1JjJx8J2mHXYGLXO7ahfPjfeQnzyETbooYCYsiYA8qdf5asucvssgna38Prw5tSjMc/
	Kdy9j0M7WywtzG8nGCqh+F5cuMB0O/8rECCvPDEBx94z4T1gZ1mOH191O8KpAyAlJdadxLWnqqYKz
	WscuMGDgww2Vi+Vtst/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf6dj-00000007C1A-2QDO;
	Tue, 27 Feb 2024 23:13:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf6dd-00000007Bxx-3Vdw;
	Tue, 27 Feb 2024 23:13:31 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rf6dW-0002LS-Qq; Wed, 28 Feb 2024 00:13:22 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
	=?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
Cc: Heiko Stuebner <heiko@sntech.de>,
	"open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	Michael Turquette <mturquette@baylibre.com>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] clk: rk3399: Allow to set rate of clk_i2s0_frac's parent
Date: Wed, 28 Feb 2024 00:13:18 +0100
Message-Id: <170907558758.800427.1636847983598079220.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240217193439.1762213-1-megi@xff.cz>
References: <20240217193439.1762213-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_151329_920154_EE54A314 
X-CRM114-Status: GOOD (  10.08  )
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

T24gU2F0LCAxNyBGZWIgMjAyNCAyMDozNDozOCArMDEwMCwgT25kxZllaiBKaXJtYW4gd3JvdGU6
Cj4gRnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4gCj4gT3RoZXJ3aXNlIHdoZW4g
d2hlbiBjbGtfaTJzMCBtdXhlcyB0byBjbGtfaTJzMF9kaXYgd2hpY2ggcmVxdWlyZXMKPiBzZXR0
aW5nIGhpZ2ggZGl2aWRlciB2YWx1ZSBvbiBjbGtfaTJzMF9kaXYsIGFuZCB0aGVuIG11eGVzIGJh
Y2sgdG8KPiBjbGtfaTJzMF9mcmFjLCBjbGtfaTJzMF9mcmFjIHdvdWxkIGhhdmUgbm8gd2F5IHRv
IGNoYW5nZSB0aGUKPiBjbGtfaTJzMF9kaXYncyBkaXZpZGVyIHJhdGlvIGJhY2sgdG8gMSBzbyB0
aGF0IGl0IGNhbiBzYXRpc2Z5IHRoZQo+IGNvbmRpdGlvbiBmb3IgbS9uID4gMjAgZm9yIGZyYWN0
aW9uYWwgZGl2aXNpb24gdG8gd29yayBjb3JyZWN0bHkuCj4gCj4gWy4uLl0KCkFwcGxpZWQsIHRo
YW5rcyEKClsxLzFdIGNsazogcmszMzk5OiBBbGxvdyB0byBzZXQgcmF0ZSBvZiBjbGtfaTJzMF9m
cmFjJ3MgcGFyZW50CiAgICAgIGNvbW1pdDogMTM2MWQ3NTUwM2ZjY2MwZTZiM2VjYmNkNWJiNTNi
YmRmZGM1MmYwYQoKQmVzdCByZWdhcmRzLAotLSAKSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVj
aC5kZT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
