Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 453D8CC6B34
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 14:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fjiph3ibQRbJGsqpbFMy4yjUwnaVr68Iuvl0Torvplc=; b=cWK+lkDB8LIzaX
	SY7MjhN99rUlmI8QVl5nC4DQWQS2084t6H2FcujNZANuw+GOlS+jfmDFrXdmz46I4YS93Rdtn+9tI
	KG5ijM2tXL2eje97VB2lj2BtoRwFdIVJ9fEcuOMqTBDNZPAlOEHeUYe5umTvXoK4WlQFVj3m/Iz+d
	z4jDklbwLOcDjUu5/jy8X/Vo0UbT1O3Qfm8OuGvEiO2OvS9VX10OJx7mqn6U6Ee/6utaJzoSgvIYp
	iaMjqxzcjvW5ScLT0f52Y8puAYWLmX16WnA/q1YwjXCcvT0jYbk4OEjyIEVcdkvlyjD4PaU6oTRwf
	7ZDAY0R5IMQXl5ZE6+PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHM0m-00000000JXQ-14sM;
	Thu, 15 Oct 2026 14:00:48 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHM0j-00000000JVb-1GET
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 14:00:46 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4a180fbeef5so48595745e9.1
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2026 07:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1792072842; x=1792677642; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=IjZ5GoX8cufqsMSGcZxUhgcFDrYZWhJP2v9qR94LpCw=;
        b=NYz4lNFwQ0ERL8FCbuVyf4uNMkKFr4nRF6tnJWj1WOtjtMQRRa7GiEQ7GdV+ksrtFt
         V4nDWqQVFijphlaQoMgB8RqHZeZh3khpxZvJaGFeTpBu0ETWguh3jT2cpazlWsD0v17d
         dGkYUObrsfCS5Fe8r+bVbIv3AVilmbK/7ugW58Oz4ftCdpLHfnDOHkANtQpe4QyTdSij
         XvhgsL/jsqBnhPFVwyOtYwMclwX6nae0SUE8XDyaPpDNm875tJs7dZCUZdeKGHrIaQ+5
         n0mBm6Swj9zxxazuyaWcjvPs8ERsKAZe6FO9UEcICwQ/0FUsT4cTnMP2Tv5zr8bzn+KJ
         DS7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792072842; x=1792677642;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=IjZ5GoX8cufqsMSGcZxUhgcFDrYZWhJP2v9qR94LpCw=;
        b=oUjiZHu7dmfUcpwaVg4UMiGAs1hBrV0aEwB4ztTHc9qBEMLcyok4xA3poZhl/79m22
         s/krS38HmDqVCL5r2j24Z1OipMxZoyEx+bTD7Kh9I00uTKtK0E7YCUPrZCBMzLepsclg
         SYsRblZX/REvt2oQxCc7j77ZEuMsRYjvG3yCed8AwbEz5xzHmmv5AAY0UFfdkNhTk0hn
         OE16i3HveTRCrOPHUVXle/t/9oUOeYVwJZ984C2Ukrs8C22+gpgKrjtzsC6ZpgbkT0PX
         az59GFr2CIZQ+e7ttdyXBfoYx+jEsmH3kQGdBwtZF7kmJzBCvyionbuoEUIO8YNCSbJv
         mEBA==
X-Forwarded-Encrypted: i=1; AKwUvBx4ggDFVvSgGbZ+Lbp50hk1bMYC5fmdoOV17gBnQhMR9JSSofMsds1n8Mk1L1WbM6i9oQxppRDkX3GDZC1waQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYJnTLmCJ6wZEekBaDMrcUdOabH7EYe/aiV+iiEkvzN1kUdATWCc
	476ZsqP1xz4GiKV7t73lZRStgNCLpq2hnaKTF2YhTKfFugIm8pSmuLyixyPGytjBw1I=
X-Gm-Gg: AYBFou1prvVANByvWAvt9HCwRLNnjh0xdxoDRMMTKmOCseI3VQZq80eT2OBuAZeAcgs
	uNbpRUKx9E3FgqTjt4rdGMiba8WhnNKtp2OaTFbG8vHwvm1vQpWGYjd//nbC1rZOZZC4Zv3udq+
	qBxOWbI1zzE01Uie4zDhtoo5lRJqnuZzS5r+LEoQvpGwZZbZ+YgunbwmDa3MGL9//SaqqAhkDv6
	ioHHip4mlKmrEM8LUzJq3/VxXaEhVdVJ0APO8qJCDFhmxHJHWks414lDZ9LYPBiaxsNbObEb1PQ
	OmKIV/Z1xNcjIIqtWWMp6Oq3TbQ706ixuPOqT/sRNF8dxrKh8xF1P1Ldzqsz8w7mI6mNNQCYMaz
	EluAW7ogUr0TtkvVSw945qNeo9HOC8/uV385+lShQWFLC+Qv6IUnDN3/dOY3K6wn+WhVh34QPlO
	LyBCui2+U8nVviz/UGa30veDWzqM4MGizQ41yTwq+gx2TFdazB9y6VBZDjdEgoxDw5oiFjYTjJx
	umDLyUMuyekSHF53G7ZPyhzcA0m+dZaRqTtBtvuWITBkbXXs/Qcpjn4XEVcMPZ+1w==
X-Received: by 2002:a05:600c:1553:b0:49f:e8bf:8f9b with SMTP id 5b1f17b1804b1-4a18e443ea6mr372999995e9.4.1792072842052;
        Thu, 15 Oct 2026 07:00:42 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-194-229.alshamil.net.ae. [86.98.194.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1bdbace19sm76448915e9.14.2026.10.15.07.00.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2026 07:00:40 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Thu, 15 Oct 2026 18:00:34 +0400
Subject: [PATCH] i2c: rk3x: Disable the controller between transfers
MIME-Version: 1.0
Message-Id: <20261015-i2c-rk3x-disable-v1-1-81625845c175@flipper.net>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMTQqDQAxA4atI1gac+Fd6FXHhzESNFlsmWgTx7
 p3q8lu8d4ByEFZ4JgcE/orKe4kwaQJu7JaBUXw0UEaVyUyJQg7DnO/oRTv7YqSiqskXff6wFmL
 2CdzLfi2b9rZudmK3/j9wnj+BZc+7dAAAAA==
X-Change-ID: 20261015-i2c-rk3x-disable-24672d4f38bb
To: Heiko Stuebner <heiko@sntech.de>, Andi Shyti <andi.shyti@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1742; i=alchark@flipper.net;
 h=from:subject:message-id; bh=0MyRWputcyymbn9GnSoejC1ng4GIi49RK59WG2Bqlzk=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRduNO+qsfyNUfr68zvNveOzHwVd8p2lcn3aw61j1/Y8
 P3OOni0uGMiC4MYF4OlmCLL3G9LbKca8c3a5eHxFWYOKxPIEGmRBgYgYGHgy03MKzXSMdIz1TbU
 MzTSMdYxYuDiFICpnv6c4Z9NTaSB50vO9RNM1/QdezxLxeSf3LuLjHGVEc/Pv9r+Ysp9hv9BjC6
 +si9XhKxUS/wW/eCUm9xE//td62X/t2byne+fx84BAA==
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_070045_449310_C2CAE4C2 
X-CRM114-Status: GOOD (  10.11  )
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

The driver leaves the controller enabled once a transfer completes, and
an enabled controller keeps tracking the bus. If the lines collapse under
it while idle, as happens when a target's supply is switched off while
its bus pull-ups stay powered, its state machine wedges driving SDA low.
Every later transfer then times out, since the timeout path only requests
a STOP and never disables the controller, and the stuck state even
survives a kexec.

Clear the enable bit once each transfer is done, successful or not, so
that the controller does not watch an idle bus and starts every transfer
from a clean state.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/i2c/busses/i2c-rk3x.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index fcede9f6ed54..dbf1ed30fda6 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -1125,6 +1125,16 @@ static int rk3x_i2c_xfer_common(struct i2c_adapter *adap,
 		}
 	}
 
+	/*
+	 * Do not leave the controller enabled between transfers. It keeps
+	 * tracking the bus while enabled, and if the lines collapse under it,
+	 * e.g. as an unpowered target clamps them, its state machine wedges
+	 * driving SDA low until it is disabled. This also gets it out of
+	 * whatever state it was stuck in when a transfer timed out.
+	 */
+	val = i2c_readl(i2c, REG_CON) & REG_CON_TUNING_MASK;
+	i2c_writel(i2c, val, REG_CON);
+
 	clk_disable(i2c->pclk);
 	clk_disable(i2c->clk);
 

---
base-commit: d419d682257d813f6cb7a28e42b35d0edf4ad038
change-id: 20261015-i2c-rk3x-disable-24672d4f38bb

Best regards,
--  
Alexey Charkov <alchark@flipper.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
