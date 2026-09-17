Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E345C88E72
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2026 12:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+qa7tSIMMKHliYyMn4DVa4GLX7gcBLJAqWTGVYLKTKU=; b=UVT/kyqM2eSntg
	EzQthYUnvPl4sS3/dDrHZnhZmC70kURVNzt9xmXkRYzgJetuboHrnrY3IZGquy21Vj0hHbYKHbCAR
	x2WTEsO+AKsh9P4avVrBMxFTqFKjqQfdkJHtPBi0Z8S6EXy2zdqgIapXu9Oia1FMV0ZvHx4Bwobgc
	pyUQ7wY1RH29Zn9MQLGLfokuDn6vv+L6iNjR62wrbBOfki5RBMeG5coFfHpEh9/HW5NZ751fYqzMx
	ThuuzNxqgJx897+SbyyY2/SWb+7iyVVKtn3BJttE9zpsFI23h+xqbZWXCZa00FQV2PHW5Dhq8jeHV
	PjoLzKetsCdYPaSCuUoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7B7Z-0000000BHE1-1wse;
	Thu, 17 Sep 2026 12:21:45 +0000
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7B7W-0000000BHCM-2Qh7
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Sep 2026 12:21:43 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49e7bcb94d3so5440845e9.2
        for <linux-rockchip@lists.infradead.org>; Thu, 17 Sep 2026 05:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1789647699; x=1790252499; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=hBTjOuIbpjCrSgc+53G/q1SlCRXTaO4XMWMEj7JJEBM=;
        b=1y1Jn8tE+UlAyo6W7731Pc7GX0fB3kXK6KdDg+uFGSDt21r7KXQ1kGZBmCRMhvS9BZ
         QLTLj3wkG8Q9uahicHD0J+MYSDlCvgEZz36m0JMBjN2HHh4EcYv+JH0/bvHRSCj1a5ZF
         vNv3VT2AfxlZQfBTXMViJ9XPma+3C8wKVLmCLklRgp9n2HaZxDCnihod0/hwuTDUEQQF
         jdaJWe+7tUMobHNrtxNETFjLoVqFUOy+Q/RGy7EyW7UV8CNWsh6ajuejImoWQCOSkes4
         mV4ITtAhxDYFvLI7H7I6seWvGZQ28dYDoZSjdliC/MfDo849iDKgiPaFaVwO++rCNDuF
         6ANw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789647699; x=1790252499;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=hBTjOuIbpjCrSgc+53G/q1SlCRXTaO4XMWMEj7JJEBM=;
        b=uygXg/ItaX+x35W35HZGPO51BSpvzzrUTNoH6iXex56QtWSukfVjgiG/Oywjy23IUX
         ZaAEp5EAHBZx95qtw2KvFFZP5cwKQbsKabEFFDvkvkMddRw9GlpV82Z9eA5jYSchmeB2
         l/EcwpqRnApc2AZ84BhHn727GDuYgGqSWxyT6KddKM4jqIp8mhkHnFtiRfdJ19nVTZ9N
         FLEH6LW9JFIhC9vEkAmq8QPXI5gokbnAS/GFMtuVK+9sfJlcUZOMrVkfNzkVg6WPXXZy
         325OiK+rXvZ6vZI/S6KRsPx/pVZxFg7yCDU3/tkPlp1RfUuetp5MmHgjr0vfS/NXfDl4
         DQKA==
X-Forwarded-Encrypted: i=1; AKwUvByFRxH8WXSISkOuMKQeeQlRvQQPWMYzj1d0oBNc40mqD9Oahx+4l9HwMMDA6+yqQePYaCg3y3L6psTdGS2XwQ==@lists.infradead.org
X-Gm-Message-State: AFuF++mO8HeDlIV1/ebNcjSLcV1c0qfx8z0EdXsB8i8KZ1tioWsPHFV1
	UtAVPUFvln0COPLL6OJZAq8XA9+fw0hilMbisXKdeMXNg/SYDDE4Wu8TQKjegdzYy9o=
X-Gm-Gg: AYBFou35ZHFDGxvfRM2bVfxmcgOS0oIGNUzHMGvesrGEs8Iloi7Y2PmZ8UwlpLpwlOL
	ngt/n/+n1BWo7Y3AYy0jxu2XYSfX0q7yrxA2UAy7jDtb6qKhzRTgRQgK9QcXmmVrI+xB8akmlg7
	NwZzQisHhP0vULZlk9OgJ/aFY7bb6xuHSr4GETCxocy9RZrLOPmjUwJVQ/ZfhwftAEsVfP/Me9v
	+XwqQDzxojOqLoh7A8BaUUqMvM3SMzxK9e54OfYJAnnue3NZCrw5DKn2yu/xXGJEb+I3CP3H+N3
	xmGBr/wlCkQn0ObKM3A5rXC2KSeADV8XBRAKI/e6d+Uf6wGArnrK4IqeZjKknaCUBKzxnqg4BVW
	AaNHh+inVR2Ni3Rgy74zI4RpHVc4hycECDmHlEl8hFnJypbLURBlNML1NkB58Pkr8VtcjDGnLzW
	mehD+bod7BWjv/pcPmvuxXIUSK5xS6esm869zbh78mR4eiBNngaW52/RHzfjLST7yGdM6CNLhi/
	uEHMyPPHnRuLORCBKA16GoCpk6U9yu8HnhbrvrQbXVDi2TB/qE=
X-Received: by 2002:a05:600c:190e:b0:49c:f4ff:e872 with SMTP id 5b1f17b1804b1-49eb7314d54mr75624565e9.5.1789647698761;
        Thu, 17 Sep 2026 05:21:38 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-2-51-220-108.alshamil.net.ae. [2.51.220.108])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fbd1ce79csm81949715e9.0.2026.09.17.05.21.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 05:21:38 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Thu, 17 Sep 2026 16:21:30 +0400
Subject: [PATCH] i2c: rk3x: Do not dispatch stale pending bits after a NAK
MIME-Version: 1.0
Message-Id: <20260917-rk-i2c-stop-v1-1-e6ad83d8c888@flipper.net>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQ5AMBBA0avIrE3SdqHhKmJBTRkSpINIGndXL
 N/i/whCgUmgyiIEOll4XRJ0noEb22Ug5D4ZjDKFKrXFMCMbh7KvG3qvSNuOlLY9pGIL5Pn6bnX
 zW45uIre/C7jvB3WgLmlvAAAA
X-Change-ID: 20260917-rk-i2c-stop-ff0e17be017d
To: Heiko Stuebner <heiko@sntech.de>, Andi Shyti <andi.shyti@kernel.org>, 
 Max Schwarz <max.schwarz@online.de>, Wolfram Sang <wsa@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2125; i=alchark@flipper.net;
 h=from:subject:message-id; bh=p+IXiJ+EE2Fjypax+gxoHE3ZHGysplGrD9n927sEoQk=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWStvu3LHF2g33ulsnL7R2OZ6QF3zs/u2rRTOGtz+CQ5D
 +u+vQ0yHRNZGMS4GCzFFFnmfltiO9WIb9YuD4+vMHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oZGOsY4RAxenAEx19WGGf8aTBR7cs2K0+fjW/3j61vLEVw2u+pzG1kl7Wldc/L2TR5uR4ZyJlmP
 y/9DXb1hK9Ex+x3sE7VGaU2tq+W3m/nmP3aU4mAA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_052142_630287_D6DB69DE 
X-CRM114-Status: GOOD (  14.17  )
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

A read that gets NAKed raises NAKRCV alongside the spurious START flag
which the controller sets on every read. The NAK branch acks NAKRCV and
calls rk3x_i2c_stop(), moving the state to STATE_STOP, but the leftover
START bit survives the REG_INT_ALL mask, so the state machine below runs
once more and dispatches it into rk3x_i2c_handle_stop().

That path finds no STOP bit, reports a bogus "unexpected irq in STOP",
replaces -ENXIO with -EIO and calls rk3x_i2c_clean_ipd(), which clears
the pending bit of the STOP that rk3x_i2c_stop() has just started. The
completion interrupt is lost, so the transfer only ends when the 1s
timeout expires, holding the adapter lock and stalling every other client
on the bus.

Return from the handler once the NAK has been acted upon.

Fixes: c41aa3ce938b ("i2c: rk3x: add driver for Rockchip RK3xxx SoC I2C adapter")
Cc: stable@vger.kernel.org
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/i2c/busses/i2c-rk3x.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index fcede9f6ed54..7629ea7b6ac2 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -507,8 +507,18 @@ static irqreturn_t rk3x_i2c_irq(int irqno, void *dev_id)
 
 		ipd &= ~REG_INT_NAKRCV;
 
-		if (!(i2c->msg->flags & I2C_M_IGNORE_NAK))
+		/*
+		 * rk3x_i2c_stop() moves us to STATE_STOP and arms the STOP
+		 * interrupt. The remaining pending bits belong to the state we
+		 * just left, so stop processing them here: dispatching them
+		 * into rk3x_i2c_handle_stop() would report a bogus "unexpected
+		 * irq in STOP", replace -ENXIO with -EIO and clear the pending
+		 * bits of the STOP we are waiting for.
+		 */
+		if (!(i2c->msg->flags & I2C_M_IGNORE_NAK)) {
 			rk3x_i2c_stop(i2c, -ENXIO);
+			goto out;
+		}
 	}
 
 	/* is there anything left to handle? */

---
base-commit: 0d9d0dbf2fddcff5859d623e90ca73c4054276e1
change-id: 20260917-rk-i2c-stop-ff0e17be017d

Best regards,
--  
Alexey Charkov <alchark@flipper.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
