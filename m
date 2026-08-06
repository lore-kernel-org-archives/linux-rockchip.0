Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ECD3C5AC82
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 17:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V5D8oXYd+g2Gd47xFHva9TH0MP1arMDGMjgpjQbpyb4=; b=GAEa5js0t4LU5e
	KS390Rgq56ebyiCmJou3wE8J83R0xIP0jjgl3hmyn+bU1lmYU+QqLlx/63fgYf0TRN4PjLmaHXZoy
	gEc+GCkfWnjPyQTabWiXfhe2Im9ZG9XHngDZYs1nPKGOj8/Klei2FyrWA2l0DoPDP3FeEIFsvGYzn
	sPDX2gFKkJDH9bNMsIU1Li5ABgkdDMdQHUE1CtMQFjpRZArQ4jWWWv+dPCshktqzVl7Ovr5vzahNE
	0xqnXPZhn1Af3wm+zkM9y5XPRqk4Q9juRsD3ptrsbnph+Qa2HsJwaUXsMhyFBVSR0eReexzXrB2ib
	fTCu/iey++0fbexmDnYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws1qI-00000006Mrd-1WXs;
	Thu, 06 Aug 2026 17:25:18 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws1qB-00000006Ml8-3vYS;
	Thu, 06 Aug 2026 17:25:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1786037109;
	bh=fGsCZxxGE+CFGZbMajWfpEJFezdIOt/iGgKvppUpByE=;
	h=From:Subject:Date:To:Cc:From;
	b=QkCzqZ1qdmTFFxk+KDt3qcuy3ZlZTCFun6WO9rNNCpCFSv+L9ZrdV+xCQCCV8E6eD
	 8zg5g22UzarKCrW6tHarku8JANffSzCl+/K8SI0echsgsuA7mzprnY0HAVcagjvsnc
	 0CuRnSFGYRWIKoJRiAKdF8GbeNKrhMc7Qbh7g/iLokWzZLL+egSeSi8kloOxtZtPQB
	 x02cJe217E+TNpJQ9eFYn/amJzq/mElEUGSt0yR7cyYO2/jvWM3z2U4VN0NDaNqQhR
	 p6xwRweM0amWOKM0uJOAQ4PpruKWhuUzLGee6ncKQ6obNy48SAyOTHbOzOjDt6vglc
	 qvSsHtFyUhwZQ==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C37C917E0A5C;
	Thu, 06 Aug 2026 19:25:09 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 7C056480029; Thu, 06 Aug 2026 19:25:09 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH 0/4] arm64: defconfig: Rockchip RK3588 defconfig additions
Date: Thu, 06 Aug 2026 19:24:55 +0200
Message-Id: <20260806-rockchip-defconfig-additions-v1-0-6b1d8baa0bf5@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMTQqDQAxA4atI1g1Mxx+kVyld2CSjsTAjE1sK4
 t2d1uW3eG8Dk6xicKs2yPJR0xQLrpcKaBriKKhcDN75zvWuw5zoRZMuyBIoxaAjDsy6ls6wltC
 3LTVce4GyWLIE/f7398dpez9nofX3hH0/AK+cntuAAAAA
X-Change-ID: 20260806-rockchip-defconfig-additions-3ef855c4d32e
To: Heiko Stuebner <heiko@sntech.de>
Cc: Detlev Casanova <detlev.casanova@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Michael Riesch <michael.riesch@collabora.com>, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=966;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=fGsCZxxGE+CFGZbMajWfpEJFezdIOt/iGgKvppUpByE=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGp0w3U94qn35JfQSYFCoxf8PFewjxVMSsedj
 ms0BLlGGF5KOIkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqdMN1AAoJENju1/PI
 O/qao+0P/03EM4DffkYoAQp7QNJIl7C9JVIyo+UyRkdJQaJj2mqfpx8TkZxISHbA++GHMbPWoPn
 9ZqZvXFAn9b0dBhrMhUHucLxJoVjEaJaGYPOYcLSXoJIdnClJM8a83sUNTi1QMhqF2ISDpRFwMz
 WJOdJNn2nSuKWldywu5XsrYsS9P3dRkwvVheu7Ua3nJuxwxKeEnFFVUWLAQHtgLabmZGCEGTsvj
 b9n+IZTfl7nzocs4Co8ui8Ixl0j9tkh9RdNXPvUTn0ngIfchfrhhek32jZfLZ3X0gfrULsRXB+2
 a6jb12averL5zYnipdLClP2yvWE2FlCzsqtWDjmVTNS2X9DNtkE6n8mE7zF/udrzN8CDagV9e5Z
 ouFgBsg9Y0JaEdQ9nmCXoqbt440cRCE0dvR8fyG7YtOZuhGCPGVdUMgfr4sdTmH6on8BaNZJmzk
 r40ZZJDl3H0dixIFMhrY9dZGP3gRCCOMmZlQD99n2M5+Trq+nceDo+OmcvQOezXVhicpwj6G3Jz
 H1R+aHUsCt0H1+32FWlHHucmh3kF40H2BqGXNXeeqQcjBAqRwJpQ9hgRuzgsnDkps9I+PK1gqua
 FEKtiM3/Pw9R3ekISXOjAt5uuJSLFK9NZXw1xlu42ctBUtIVyyYesfGeudQItdakJElmJZ1fVUE
 3tQp4eFjCyKaL+ioEm1syPQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_102512_141912_573BFC91 
X-CRM114-Status: UNSURE (   6.81  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The four defconfig patches are basically all independent from each other
and just grouped together for convenience. The Verisilicon IOMMU
defconfig change has previously been sent by Benjamin as part of the
IOMMU series, but did not reach upstream:

https://lore.kernel.org/all/20260415072349.44237-6-benjamin.gaignard@collabora.com/

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
Benjamin Gaignard (1):
      arm64: defconfig: enable Verisilicon IOMMU for Rockchip RK3588

Sebastian Reichel (3):
      arm64: defconfig: enable Rockchip VDEC
      arm64: defconfig: enable Rock 5B camera support
      arm64: defconfig: enable Rockchip NPU support

 arch/arm64/configs/defconfig | 6 ++++++
 1 file changed, 6 insertions(+)
---
base-commit: 2d578cd590adc2133aa24496afcd7c3f7f9ba36a
change-id: 20260806-rockchip-defconfig-additions-3ef855c4d32e

Best regards,
--  
Sebastian Reichel <sebastian.reichel@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
