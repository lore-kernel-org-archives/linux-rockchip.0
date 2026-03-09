Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FD63FCA16A
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Mar 2026 18:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vQ0jwFqhZ3E2Cy0+6Et49vAOq/iOLwgAGLA9EDLgCTU=; b=QqNWjW0i/YpuER
	d4ouqdxQvc4uJwtHzRicoICtZUVwzSWySrf9fzW1HeWsieOYz41AWK1dDw+kKBBMFIKfzmPvkaVIU
	+zU089mZZ5V+FfKb7PIQlOLQwdcWfzv6UVatpyY5QrLTR8uciDC6cs77IQ8JtieQfbSipclCbjnj5
	gD5KaGCPiPcURvyos+LZYAizDiimy+cVz05KZeUlnUSDhRa02DfHOPrhCM/jmYvK0gMDS0+WCwfr2
	w0pn47k5GB1TZ/4kU3ORwJcdoVZJD1JKZvc3oZ7715NGrm8FFMDjfki60FBjFdIuAWmmTNWsG2Y1M
	NSyedF2rlJ1pfK2D48zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzevH-00000007ri8-20df;
	Mon, 09 Mar 2026 18:01:43 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzevE-00000007rgt-3K0s
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Mar 2026 18:01:42 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-2ae88e16485so16998905ad.0
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Mar 2026 11:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773079300; x=1773684100; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=e5ipli13t1o4xLS734cGrlylkoQC1n3PL8/KZ9gjCPQ=;
        b=Yw9PLH3Lye/sflYbTpVTkZGtpntmi43b1qN2CP8SPIyFm5Fau15uDhUbnsKJr/THy9
         egcMCSt1rqap4hMpvbl8v7XUbI9bA3KPFWt0lyvjzRduPWkC707jtiG2lqTNpbyMj/3c
         fyKaHkV4Y/2tSWCzCKn6Pn69S+nkVY4wr3IbTW1Qh8WPUWdnqaDw+Awao/u8mkEQGG3O
         TMFQAVUUEGGg0vkhayubYcfKQzBR+4tdU0IZe06XNSfEYZ84ewud0lq5T5zJ4i5F2Yz4
         Z2wq+fJrLhv+XzW2QobguByHovZw+HpmCCR3TkdS4ywxDc5gIbCCuhoHbGRf7uzuMXPy
         n9tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773079300; x=1773684100;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e5ipli13t1o4xLS734cGrlylkoQC1n3PL8/KZ9gjCPQ=;
        b=JlyuQw67S84mRQnEJ0I3EqMm7d/txAK38E5g3zSJK+XPaRtneYozfOx3l/wCDKM19O
         X1LpHGadFYDuPMdhIawQautuLzlkSpf8dTuyCFEkDsb2T4/PspLzibThLI0bdl2nqPh6
         JsNE8/mTA8oBwtQAQu7+vfBl3Mt5SZaVSp7KrdD3+2FGKKOlSQjgGn/7NxKDY48hnvsj
         0ok0UiD3kux10HtCn67KHkC0g/tcXOtmlstUNMgMwqI3g1m8fS5/2tYNeud7fBt2jOgF
         MztHc21UsAyvkgvY7LfO+ldna5VGKtthmhH7Rygq3oB8ZAI/t9M6u7bFCsBx9cB/7yWZ
         RGug==
X-Forwarded-Encrypted: i=1; AJvYcCVskiaAEusXeOM0wYBuGGXByjGXUujbvf+h3Ju3zbo3M93lLupUmdJM9ox8HA36SF4vBUHHO1acn2hw33h9+w==@lists.infradead.org
X-Gm-Message-State: AOJu0YyY7l+2iztz03psM4nNtL2GrZt1x2r6e+4Tlsv/8+8grfaOgVVb
	WZmtWSOYrk7vBcMqRrak5EY0iD5Lb/IfTopzYUXilzQMN0yqa8E5McNU
X-Gm-Gg: ATEYQzySI96hTMHQcy2fNkqDvz9pzhjOLpjtQRH+QJ3Q/YXkjVbMJMfZSnzmR7zMkkB
	Kv7jrfhBP+H2y5bEUTc3WmkQB2a+nLxjW5zwdfcbmKHl9lLpCyg3PwJBXvHEqXRcqMRVpqbRIMz
	PzLa/chk6akdwidc2pMuAOhKlBnBFVLicYm/Vb4+xmWsSdZmjC4iorQwNMhctLOrStrRZGOpd2h
	6ALKQUV2ljhDx9FSTr5WPitePkvzSbaG/N7G3xbz2dIF6OLURH/EVx6BxzHEhBtDl9Ua9PRXCRg
	53hBSGYYLz9DTYcmUi2t8tCZU04UdSKSilViTMQ5XqITRIl58UKex8WGAe8kCinJQDcy5TsCBcp
	MfTaE8v38J3D1E1ZgTXzDgLIGEO1ZMFn9zlvH5hI63A2hwEF9I0fqtHyivZkYj4zQroprhHYrsY
	KCsiE+4GjFHM/hGxGczssTyWjuWVq9DUXpKYiRpXOgl9WRpA0=
X-Received: by 2002:a17:902:e549:b0:2ae:6d9e:ed5a with SMTP id d9443c01a7336-2ae82439431mr111745765ad.13.1773079299326;
        Mon, 09 Mar 2026 11:01:39 -0700 (PDT)
Received: from junjungu-PC.localdomain ([2408:820c:9009:3f2:a816:d74a:dc19:1ab8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83e57b1fsm163828605ad.12.2026.03.09.11.01.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 11:01:38 -0700 (PDT)
From: Felix Gu <ustc.gu@gmail.com>
Date: Tue, 10 Mar 2026 02:01:34 +0800
Subject: [PATCH v2] spi: rockchip-sfc: Fix double-free in remove() callback
MIME-Version: 1.0
Message-Id: <20260310-sfc-v2-1-67fab04b097f@gmail.com>
X-B4-Tracking: v=1; b=H4sIAP0Kr2kC/1WMyw7CIBBFf6WZtZiBRiiu/A/TRYWhncQ+AoZoG
 v5d7M7lubnn7JAoMiW4NjtEypx4XSqoUwNuGpaRBPvKoFBpbPEiUnCiRWOwI+udNlCfW6TA76N
 y7ytPnF5r/BzRLH/rv5+lkEKHR9A+IHXW3sZ54OfZrTP0pZQv5jq+npYAAAA=
X-Change-ID: 20260305-sfc-307708e9dc67
To: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jon Lin <jon.lin@rock-chips.com>
Cc: linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773079296; l=1288;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=maxlVA4oxzDMZWxd7ftlkv5zJkOpC9hH0WTm1wcE8xY=;
 b=fNA/SvWU8RLkVmDt2uPXlgA30FSBSbY7QUvh1H2Ow5wXz38XGvEZs8Vw6XrRUMUi1rV6Zv5HI
 iR762V88B/FCeskYwi/m6NmJ2m6uoE1uY7cO43K8C75RhUrG8Wr8isl
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_110140_837224_7E88B242 
X-CRM114-Status: GOOD (  12.67  )
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

The driver uses devm_spi_register_controller() for registration, which
automatically unregisters the controller via devm cleanup when the
device is removed. The manual call to spi_unregister_controller() in
the remove() callback can lead to a double-free.

And to make sure controller is unregistered before DMA buffer is
unmapped, switch to use spi_register_controller() in probe().

Fixes: 8011709906d0 ("spi: rockchip-sfc: Support pm ops")
Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
Changes in v2:
- Fix Mark's comment.
- Link to v1: https://lore.kernel.org/r/20260305-sfc-v1-1-6fbf6df0e899@gmail.com
---
 drivers/spi/spi-rockchip-sfc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-rockchip-sfc.c b/drivers/spi/spi-rockchip-sfc.c
index 2990bf85ee47..174995042f53 100644
--- a/drivers/spi/spi-rockchip-sfc.c
+++ b/drivers/spi/spi-rockchip-sfc.c
@@ -711,7 +711,7 @@ static int rockchip_sfc_probe(struct platform_device *pdev)
 		}
 	}
 
-	ret = devm_spi_register_controller(dev, host);
+	ret = spi_register_controller(host);
 	if (ret)
 		goto err_register;
 

---
base-commit: 3f9cd19e764b782706dbaacc69e502099cb014ba
change-id: 20260305-sfc-307708e9dc67

Best regards,
-- 
Felix Gu <ustc.gu@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
