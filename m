Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48B8CCDB47E
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Oct 2023 22:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5GpjpM2MKCUBwrPv+AD64TxuvJEP1ud58EgCPqz7A9c=; b=ACjeV3u634sCbV
	9qIJF9ZBzJ+zGW/BHMU1/KAcE2YWM9hjPg2l4sUvnOv8AIzZWCNmkeGW2wtY4Xo5AZccaLdU50VlI
	G9k0PknsHjVw4HUgu2wkCLIVKfPflwFkGOVBsoQizhs8HNI+Oo72B/1S7mzhAqJcXhxBTrOhUXywr
	6C9dWvTwDHDPhq0CQ1LwW42zsgJKPoCjfgCaVFWOe7vciT3C19Nqkff5+wFoUDdIlcjMvLZRsPRjH
	EIIGFhwph0ChGHrjdbPXsUiz0k2YQB/nYzSaVSXdSFCpsk8ycV4f9ERjspM4fXk0DkEWNt4SxkxrV
	oG57eDjunNUj2vIVygow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqhpG-00Gqht-1a;
	Wed, 11 Oct 2023 22:37:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqhpD-00Gqgk-0E;
	Wed, 11 Oct 2023 22:37:08 +0000
Received: from i53875b94.versanet.de ([83.135.91.148] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qqhou-0005Ma-RZ; Thu, 12 Oct 2023 00:36:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-arm-kernel@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 0/2] Add support for Pine64 QuartzPro64
Date: Thu, 12 Oct 2023 00:36:45 +0200
Message-Id: <169706370544.498990.15767954270891425478.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231011215856.2082241-1-megi@xff.cz>
References: <20231011215856.2082241-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_153707_106313_A489356F 
X-CRM114-Status: GOOD (  15.54  )
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

T24gV2VkLCAxMSBPY3QgMjAyMyAyMzo1ODo0MyArMDIwMCwgT25kxZllaiBKaXJtYW4gd3JvdGU6
Cj4gRnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4gCj4gVGhpcyBzZXJpZXMgYWRk
cyBhbiBpbml0aWFsIHN1cHBvcnQgZm9yIFBpbmU2NCBRdWFydHpQcm82NCBTQkMuCj4gCj4gVGhl
IHNlcmllcyB3YXMgdGVzdGVkIGFnYWluc3QgTGludXggNi42LXJjNC4KPiAKPiBQbGVhc2UgdGFr
ZSBhIGxvb2suCj4gCj4gWy4uLl0KCkFwcGxpZWQsIHRoYW5rcyEKClsxLzJdIGR0LWJpbmRpbmdz
OiBhcm06IHJvY2tjaGlwOiBBZGQgUGluZTY0IFF1YXJ6UHJvNjQKICAgICAgY29tbWl0OiBhNmZh
MGQ0YTcwNGQ3YWY1MWE1ZDAyZjc2YzczMDQ2Y2Y5NTdjMWI1ClsyLzJdIGFybTY0OiBkdHM6IHJr
MzU4OC1xdWFydHpwcm82NDogQWRkIFF1YXJ0elBybzY0IFNCQyBkZXZpY2UgdHJlZQogICAgICBj
b21taXQ6IDgxNTJkM2QwNzBhOWNhNGY0ODAyMGQxMTkyNTcxOGYxNzA3ZGI0ZjEKClRoYW5rcyBh
IGxvdCBmb3IgZm9sbG93aW5nIGFsb25nIG15IGNoYW5nZXMuCgpXaGlsZSBJIGRpZCBwbGFuIG9u
IGRvaW5nIHRoZSBzYW1lIGZvciB0aGUgb3JpZ2luYWwgUXVhcnR6UHJvNjQKc2VyaWVzLCBJIGhh
ZG4ndCBmb3VuZCB0aGUgdGltZSB5ZXQgYW5kIHRoaXMgbWFrZXMgZXZlcnl0aGluZwpzbyBtdWNo
IGVhc2llciA6LSkgLgoKCkJlc3QgcmVnYXJkcywKLS0gCkhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
