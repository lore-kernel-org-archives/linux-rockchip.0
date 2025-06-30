Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2663CC83029
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jun 2025 16:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Message-Id:Date:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tSj89Xvk563kRBU7W3rknBQL79FZwFCX3HvnMegN3eA=; b=raiaGFqWu0LP3i
	Wu7iMqiHUG/fcYqLTgXQLTNGSMJhPgas452YypOHAaFEUhhx7WoPgb+UUrH406oXQjH1bhofyGSKD
	YB9/3cWsIGyf6COL9576jjoZRXycXUDw/JWidxIN/VWyw5FQMik7aRoDnQsIK/cPvXFL4d0Ry5Ld2
	bdwFIpILNCEZhCyuCH/h9ZB/ShdqGCmkFDxfwvQ3cA6EShdqWy3xkfP6J/f7Fq3C9Catt+aGaieWl
	rpn4p84jwbsDOOemuerXFfaUdababMaecZShf3o4I9RoMNNWQpMvvvXx+xzaHcdPSzGaWB0n52EGe
	moIUOw3OqjiyhUtbPuQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWHAa-00000002rXA-26iR;
	Mon, 30 Jun 2025 16:15:48 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWGYx-00000002ly2-3Rem;
	Mon, 30 Jun 2025 15:36:56 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1751297803; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=RpN4bPtZ/jvsadHm2DKR3O92hYxkU+pZGr4rL83hBf+iD9+QAa8btMKs1hoNQFAepghj/6nIT0r9DGuBnDGmYhc/Z8rhY+n/qXdgikB13Et2nWz53YxBw4fVkzSBb+USnpJSCuKx/sDsAm1T3bIR2BL5GWTkW8j+hUGNuZnDppw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1751297803; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=oEjLrRG0kfXtUXwN04MYTgoasYE6yNyZK3tKgOletsA=; 
	b=Sq0vdmUvI8ggfRtRuc51NIcpYBdvItCxeRr/IZvDCsCe5+UIzHkiD6mBnnTVKtpHWVsIPWYkRxxkInN3T1paUsvg7M5CVeqyZOjTekhWys3lyjFYxEbMNF2iwbU1ikIOXhj+nWGr64HciexHGZIpIxbPgGwIMmQcdAoSC2DGSko=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1751297803;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Subject:Subject:Date:Date:Message-Id:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding:To:To:Cc:Cc:Reply-To;
	bh=oEjLrRG0kfXtUXwN04MYTgoasYE6yNyZK3tKgOletsA=;
	b=BPFW+RRTOEgl/Bc4viTeOL0Fb2yzea9PwpJpvydHK0if3G0chFgdyAYbmC7z5Rv8
	+4JBJgmDO/2NrlW6U0QOxB1bx1Wr2hkVfu5mUCsWoT8z6c7C9FDI8+M2BY8vc4UwkPk
	86EM7+fWT+KmlFIa8B3hro9QPL33p4lsoLobotaI=
Received: by mx.zohomail.com with SMTPS id 1751297801452461.69521897601544;
	Mon, 30 Jun 2025 08:36:41 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: [PATCH 0/3] ROCK 4D DT additions: regulators, usb, rfkill
Date: Mon, 30 Jun 2025 17:36:32 +0200
Message-Id: <20250630-rock4d-reg-usb-wifi-v1-0-1057f412d98c@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAGvYmgC/zWNQQqDMBBFrxJm3YEk2hK9SnFh4miHYtIm0Qri3
 RsqXb4H//0dEkWmBK3YIdLKiYMvoC4C3KP3EyEPhUFLfZW3SmIM7lkPGGnCJVn88MiolKkaoxt
 pagtl+Yo08var3ruTI72XEs+nBNsnQhfmmXMrPG0Z/wfQHccXh/DjQpYAAAA=
X-Change-ID: 20250630-rock4d-reg-usb-wifi-11839829084b
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_083655_923314_9CF5FD82 
X-CRM114-Status: UNSURE (   7.84  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Turns out the ROCK 4D DT in mainline right now is neither accurate nor
complete.

These changes should quell the fires a little, since at least we now get
two additional working USB ports, plus the Wi-Fi chip shows up (even if
it doesn't have a driver right now).

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
Nicolas Frattaroli (3):
      arm64: dts: rockchip: adjust dcin regulator on ROCK 4D
      arm64: dts: rockchip: complete USB nodes on ROCK 4D
      arm64: dts: rockchip: theoretically enable Wi-Fi on ROCK 4D

 arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts | 83 ++++++++++++++++++++++---
 1 file changed, 75 insertions(+), 8 deletions(-)
---
base-commit: c6a68d8f7b81a6ce8962885408cc2d0c1f8b9470
change-id: 20250630-rock4d-reg-usb-wifi-11839829084b

Best regards,
-- 
Nicolas Frattaroli <nicolas.frattaroli@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
