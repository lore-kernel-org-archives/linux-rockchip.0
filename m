Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C7BCC35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 07:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fvcAP49dx5sqt/3Xj/EcxFqGbvF0H17H8H2XUBENNFM=; b=k0zty0dF0vvcrB
	pgMibpoeuN9iBRc8LWccClsuvmS2jvC5BSnfs/gKB73GXWA607f9mPmW1NFs2bNgjeFR1ddToXpBm
	GzDISAu5QVqjtJyJ49hO0r0vzCZzf/t+rd40Kk4svc47UtHzgoHFf2oFAqXnQuzZJg719mzGchVIy
	uBgOic/+hGIc1TgJNPbczAktkTsJ/cAqhPJpZjZI2dPMKdioHAFaH/mm0qJOGMSykocU3KP7zHpY1
	EoizPynEaeNnJFDZDE4dNE2TZGlFsK8kQ+ci93zK2ZZhgAMyMQhwUpXMxLZrq9uVSo4iTwxCSM5Fn
	z61yF0pEwP7k9gSNOizw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rF8SV-009PQY-2k;
	Mon, 18 Dec 2023 07:54:39 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rF8SR-009PP3-2t;
	Mon, 18 Dec 2023 07:54:37 +0000
Received: from [127.0.1.1] (91-158-149-209.elisa-laajakaista.fi [91.158.149.209])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id CBFED57E;
	Mon, 18 Dec 2023 08:53:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1702886021;
	bh=cql4h96dv06hH9CykfpuGnZfzJq+KMy0qwgU5DQIW/g=;
	h=From:Subject:Date:To:Cc:From;
	b=Ndco3uE/vI4r0yJX8AAZ75uRyxCrfM5MPyP/kQ/yL3qZuGoxmtJcDRwPiD8/UMQTJ
	 dQalEThfJAIKR5p27XBxvbbenv3zO/cnR8yI2UpcivAR/jOYUsqM1ReXFyle/QLRt8
	 1CZqxHmp1/KKaMUDInStANY7NDLEvCehMwHOMf2I=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: [PATCH 0/2] media: rkisp1: Fix shared interrupt handling
Date: Mon, 18 Dec 2023 09:53:59 +0200
Message-Id: <20231218-rkisp-shirq-fix-v1-0-173007628248@ideasonboard.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJf6f2UC/x2M0QpAQBAAf+XaZ1vuDuFX5IGz2BRnt6Tk310eZ
 2rmASVhUmjNA0IXKx97ApsZCOuwL4Q8JQaXO2+drVE21oi6spw4841VaGjyY+HqsoRURaGk/2P
 Xv+8H6loVzWEAAAA=
To: Dafna Hirschfeld <dafna@fastmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Mikhail Rudenko <mike.rudenko@gmail.com>
Cc: Kieran Bingham <kieran.bingham@ideasonboard.com>, 
 Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=901;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=cql4h96dv06hH9CykfpuGnZfzJq+KMy0qwgU5DQIW/g=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBlf/qxIB9lMmj1ncHt1yEst2NSWVcnLKBfqBBcY
 DKGLj2np2iJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZX/6sQAKCRD6PaqMvJYe
 9c02EACm9p0tAvZkK0CDtj1+iQWKoGDOaeWaWXi5OGj4pvT+xVUqhvtgfjgC0XU8cZBqJAfUJmF
 0d5HB4wmBLXye/70Szw4S9PR7yYkArKvaeePxd2Y3Wh2JLasbWsZww9tTL1MKsE/H+sn6I4PvlK
 VIXPqU3yIfkZj0RkOowLYmuHaBOjLBLZt0R9n/9UG7H3WRmpKL7PGAQOGOgomT1h09TE3m8gLER
 I7lWzG/Wvs9I8HKyNeIcuVaVoKMCz7/Q3IoluAtokc9kRL8IowQ8N684zZpfNUJ2fMwZJibVbGj
 ppP1nGCmC13zymOWkEcU09SdE3hSP2xntcgS20i4g/YE9MAHP+AtEpC/U6cYr1j8z62Im9JSDii
 qvwi5PtdujD1YJWyHwFqwzz4n3NGc6I1o0LkKt5pmwrxK9Ud/FNiXkZoXWn1hiVEfVRWCkI9wZF
 Dc9NMB+G4xvzbms5bxTBTUkoxFbAKDHYpfrSd7g1fF9rxdTThitwgnRS1hA/lYDgKO1OIGgYUqd
 /FdUcB3V8g0X1Ka3EeNoH5C8vus3HRdloOTokQvz5eoVdqQ1R914b7+9qoDedYdNvX7MZR7PBJO
 lGz8eI9cemHUDRGMnPTKrfPxIO5cQcQSGazTHGclRnKKWnSinVXFHnRUIam2BPitJc/5rhAOHvX
 v6rJz05+4OK8QBQ==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231217_235436_097401_ECD91F54 
X-CRM114-Status: UNSURE (   7.59  )
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

First revert the commit that dropped IRQF_SHARED, as it is required
after all. Then fix the driver to handle shared irqs.

 Tomi

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
Tomi Valkeinen (2):
      Revert "media: rkisp1: Drop IRQF_SHARED"
      media: rkisp1: Fix IRQ handling due to shared interrupts

 .../platform/rockchip/rkisp1/rkisp1-capture.c      |  3 +++
 .../media/platform/rockchip/rkisp1/rkisp1-common.h |  2 ++
 .../media/platform/rockchip/rkisp1/rkisp1-csi.c    |  3 +++
 .../media/platform/rockchip/rkisp1/rkisp1-dev.c    | 24 +++++++++++++++++++++-
 .../media/platform/rockchip/rkisp1/rkisp1-isp.c    |  3 +++
 5 files changed, 34 insertions(+), 1 deletion(-)
---
base-commit: 02d4e62ae2452c83e4a3e279b8e4cb4dcbad4b31
change-id: 20231218-rkisp-shirq-fix-6c9ed3b42855

Best regards,
-- 
Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
