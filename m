Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 130F6C282EC
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Mar 2025 21:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MfWXCrwBx02RwxeAKxkL6oTx1EOV9SXZcyFdvOuCgKA=; b=FOzK33NOndZw5M
	cB9PS80/CzclLZ2gyPi2/Etli+pLuxoogFBSRV3KOvz9pT5vllxslwkZlrqt/kLUGieiDFLFmjlqy
	fwB6VaPoIjg33EtmYXQzwfFNLXWXYxGAVXyKHDIkx4L6Uy3Q39/TQMmccpjx3rx969/Lks7A4vBNA
	wnUGEJbsZ0mqxwHc8MpDOUxQUx9UlbWu8FQjpEm/8PtrhwTVk1N7vVsuLL6UFuMTujwkm7mGajdkK
	CjBGaFrxAgEytwKhYsUVkKyxCmKkxHRFqGemXYFmE2hNb90i/rQA5Itb1j1/RCZDmQaiogH8IIa3S
	bLeaNmqNrXik6a3BtdSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tueEh-000000076C7-1lFE;
	Tue, 18 Mar 2025 21:12:31 +0000
Received: from algol.kleine-koenig.org ([162.55.41.232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tueBK-000000075sd-2rdp;
	Tue, 18 Mar 2025 21:09:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1742332140;
	bh=cyacAfqmvzmGifPcVn2et0hLqOF5XeQd/o4G2u+UMsQ=;
	h=From:To:Cc:Subject:Date:From;
	b=APKiW5A9lGSxNcsdXVAfFOBYot3HPfcuoaaiNjWd5MGPO0rke82qbMypVck8PkZY9
	 te8BGIP4aeX5xFLeOxq3Ej+6VbQIvEc9t1+qoV6FyUcSltc6AoWxRowHOn5Da6Hf4g
	 /GmTG9jKqfT+/5QdlyRQh7T+8GyeVroFQP5dyB5YXDZCSyxb6DyTmOB9IWrJoaRBRh
	 RFjOqUTL+xPWVROJs722gICHnb4siyRGbn4TO50ljBfgmkJ4I/KOWJgrUdTYBzLVVU
	 LK9w0ua0u0bQYPjSMQNDWNBNAwIn8t3Q9bs3uQv9L4IGDoN9YbU/Bc+Oeegi0LblgS
	 Vk3VKSyoBivCQ==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id BD9B5FC59B1; Tue, 18 Mar 2025 22:09:00 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 0/2] arm64: dts: rockchip: Improve gmac phy setup for QNAP-TS433
Date: Tue, 18 Mar 2025 22:08:44 +0100
Message-ID: <cover.1742331667.git.ukleinek@kernel.org>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=815; i=uwe@kleine-koenig.org; h=from:subject:message-id; bh=cyacAfqmvzmGifPcVn2et0hLqOF5XeQd/o4G2u+UMsQ=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBn2eDdq5Iz2G8UD63/OAkq+umAAF9HZzcChXowU cLacVz3FLWJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ9ng3QAKCRCPgPtYfRL+ TuQqB/9XcEvLaGuEWwkeXwRmPJCJKZvGpIH5H2iA0BwBrmxDBTTS4agp7DhRy/sUpzFLyZOj66D brfnZj7Sj7cLzC5Z1qa3dEpz3evfUAA9opEGEP6OotAwXS/wppIa3m/iZ8pBxoMVRYIRAD7A759 IwnjN6ThSd+5XvogjhBfA/Qv670pxh+iP3rlZ+1frTNW57n/0CnwLCF2HhfkVVCL5kglrT3FZQ/ KpyZLp0hVzYvhT4mpOJ6vgwtZjKP2BLEJtHhgWZumOEsfvmC4IP6LhDWy0vAp48SmK1jpHvi3Js hhTqEUJ5tf7Jpd/18zHPW2aH4SsJjTJKQwZEguYl/m4HuyAu
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_140902_864820_456EDEBA 
X-CRM114-Status: UNSURE (   9.09  )
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

SGVsbG8sCgphcyBzdWdnZXN0ZWQgYnkgSGVpa28gSSBzcGxpdCB0aGUgcGF0Y2ggdG8gaW1wcm92
ZSB0aGUgcGh5IHNldHVwIG9mIHRoZQpnbWFjIGV0aGVybmV0IGludG8gdHdvIHBhdGNoZXMuIFRo
ZSBpbml0aWFsIHBhdGNoIGNhbiBiZSBmb3VuZCBhdApodHRwczovL2xvcmUua2VybmVsLm9yZy9s
aW51eC1hcm0ta2VybmVsLzIwMjUwMzE4MTg0NTUwLjQ3NjQyLTItdXdlQGtsZWluZS1rb2VuaWcu
b3JnLyAuCgpIZWlrbyBhbHNvIHN1Z2dlc3RlZCB0byBhZGQgRml4ZXMgdGFncy4gSSdtIHVuc3Vy
ZSB0aGVzZSBhcmUganVzdGlmaWVkCmJlY2F1c2Ugd2hpbGUgdGhlc2UgcGF0Y2hlcyBhcmUgYW4g
aW1wcm92ZW1lbnQgdGhlIG9sZCBkZXZpY2V0cmVlIGlzCndvcmtpbmcgZmluZS4gSSBzdWdnZXN0
IEhlaWtvIHRvIGFkZCB0aGUgdGFncyBpZiBoZSBmZWVscyBzdHJvbmdseQplbm91Z2ggYWJvdXQg
dGhlc2UuCgpCZXN0IHJlZ2FyZHMKVXdlCgpVd2UgS2xlaW5lLUvDtm5pZyAoMik6CiAgYXJtNjQ6
IGR0czogcm9ja2NoaXA6IENvcnJlY3QgZ21hYyBwaHkgYWRkcmVzcwogIGFybTY0OiBkdHM6IHJv
Y2tjaGlwOiBBZGQgZ21hYyBwaHkgcmVzZXQgR1BJTwoKIC4uLi9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMgfCAxNSArKysrKysrKysrKysrLS0KIDEgZmlsZSBj
aGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKYmFzZS1jb21taXQ6IDIw
MTRjOTVhZmVjZWUzZTc2Y2E0YTU2OTU2YTkzNmUyMzI4M2YwNWIKLS0gCjIuNDcuMQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
