Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 412D8E9272B
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Dec 2025 10:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BN/3b3Lj5m9A2SqdikfMfxGld0P9LhjPYlNG3X/yZYc=; b=fvi/HBCCx4qDAH
	mimTWvStlAXJ1ygGhOqTR0V1ZmwItZGalj5n3RADib+qkTUoblKGlPDpFaxu7e58Zf2gEA8Rwvl7p
	6rDCF+1uKCHKxjPr5TGnxqgBYq16vbygHKX8IYmW9IKJzDevajQwBArOoROKcnv/XsiJYRVNrmp3b
	J8gUsJV0AYKQDTDLbs2b2bwX4fuhyZvt0QIGnZLhOc/0PmqJjSeonoWGyw8dnql5nmRmJhkM80ADD
	QIDtxPkuwJdOrkuB8bep3tZkzi8Lod3pbbD0Ot8WhpEx4ufIvOAAkFivF55Go1L2shhxCQojOq/BD
	IQKDcWvzp0rr6b3N6HAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaAEz-00000003Y2n-0BQO;
	Mon, 29 Dec 2025 10:12:41 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaAEu-00000003XwR-2gOC
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Dec 2025 10:12:37 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-47775fb6cb4so51748425e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Dec 2025 02:12:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767003155; x=1767607955; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VGgTBGcNFuHuI4o3/AyC860PdSUNdaDSZI2EXc9oNpY=;
        b=Rab5QDNHOyY4ID0O0RVeOohaUi6Oby8weFCTf9DwUHtKzO/udkpfP1SLygasValVVk
         +fdFfCB3ulQVUHydRtq17U//khgC+xE9WZdWtTWqNUsiGdKSVtp/54Q8D1rE2W/CcSm7
         USarVGXfwJxE+WrlRQj02ZuVstKI8f1uPAgHHUlFoDcpbK3gPDKlXMU9n9FDAX+bQNJM
         dynQWOOnIkceU/pDGyyqFi+RWJZUtSF+/t5ZgOGFMhXXTYLFi42Gd/PntePt6Xu/Xiu7
         M/PyZjYu1g1eteW2YPYiHa8Ha0gOAv9fL6JETQ21JnpURDSfbGnMgB6+fpsM7WMaU/pl
         t4wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767003155; x=1767607955;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VGgTBGcNFuHuI4o3/AyC860PdSUNdaDSZI2EXc9oNpY=;
        b=ZqU6Rywa5+fwaQ4KArQCXwi7uhUqCm5hwhDLZeiHVsiTROpVupAXDTO99VbtOr02QU
         LvYTAreb9T5dlc0UIWW7ZTsuumUYGS7P3XyctmDJm4BtITxmIt4fcHt3gFmnXDWIQuVf
         bkQdaGMC+0tml7x41BcyKCDDNCbLDks+PBeif6VmCR1qhBAv4/FGuGyGDLxkk583bVQk
         bpYGDXegQKe/QGV2EPEOgjTzrBKs4UbSLOC7azD4Ujmp1yYarsb0j8tak0jCgd5DzGlh
         /7/PiLQ3RhX4TDB0KV4gKFGfiXAKCyeqpSJXj8of3kW8P/Ifus2YmMP0Wwbgz3Jmi/vK
         rDOA==
X-Forwarded-Encrypted: i=1; AJvYcCVW5+A5Uxzun45gPeO0aUqx9Yb4SyEa2qGtuaH02n2d9MZeh5SHXeKzYpsMyGbSxbaNv7LA3kqKQdoHpKU1sg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzLrn03PnFTH0e0OfPGTw0YEB1GIMVIIlrfFBwUpUZTc5k64KYf
	3Lj1nwW1WL59VlzEUMcBLo9dKX334HyUxNIPjtUQ/yuZCLA6VuLB0/6pGdZkB1KO
X-Gm-Gg: AY/fxX7AUcWkc0dc9MAEXLWdldbNp1aE8sApQ6wsQ1VQP2ebF4ZX5nnXaDYnx+NtXW3
	q0aCL0WO5keMCEc8M4HSe4iUkB8snzH7g9BihET4NQtFnDRO4flnPtniKDZn6+ZKMQWgWHYmyV1
	n2QbNfqRVMW6JAfEiVdSfvrNfDk7Ep/AsMJJTktA+Z9X4X1fLo1k2Cl/mWln7EFPRGa7sVo3SJJ
	JnDOOJAkFXGNUCdwg2D32qg8y9PBQ+T35YYJdfb2zYzM169Zzoz+Zvgq0E/12orw4EwWgvL+YIU
	1g44Uwkw1fvKZckwprAjeEfbwRtcUrjHVlNy8t3tZHLGgGcaC3AakLMlnI/1JzY7flfFBPHJd1O
	Ghg8AdkDKav9LhPZ8Wzo4lwUa70iazCItvIL8r2ns/fjW3HvsvEJUK2edEysJy9d8HkgpsjADkn
	+B7XoR5D4bPfIMM3rcPBMNxBvla2tzvPtxyi97TQATiroIEh703qNGQUEu+8MD
X-Google-Smtp-Source: AGHT+IGfXKnZy0mQEglh0zPN1XxzIExkG6slZr7PVYIaEqHddSi3MvL+67igL+BHOkrNg5yaUhVkDw==
X-Received: by 2002:a05:600c:4686:b0:471:9da:5232 with SMTP id 5b1f17b1804b1-47d1954ea05mr393600985e9.15.1767003154809;
        Mon, 29 Dec 2025 02:12:34 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-45-246.alshamil.net.ae. [94.59.45.246])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d583f42dasm19840735e9.6.2025.12.29.02.12.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 02:12:34 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 29 Dec 2025 14:12:03 +0400
Subject: [PATCH 6/7] arm64: dts: rockchip: Enable HDMI sound on RK3576 EVB1
MIME-Version: 1.0
Message-Id: <20251229-rk3576-sound-v1-6-2f59ef0d19b1@gmail.com>
References: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
In-Reply-To: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 John Clark <inindev@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=890; i=alchark@gmail.com;
 h=from:subject:message-id; bh=OooD6fRyFOjS0mO1YMzNXxir06GTfmMqij3dBS4dPBM=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQGhTA9t50ZuV3zREXc1zM7/v5NP3N7QpDLYznOfSfuv
 Lq1RnezasdEFgYxLgZLMUWWud+W2E414pu1y8PjK8wcViaQIdIiDQxAwMLAl5uYV2qkY6Rnqm2o
 Z2ioY6xjxMDFKQBTbbmb4b/bpw3JUv//Fu41Peu++PTDIxYVaYsLHHXiPI0l5/2v35vByLBjOd/
 mtX3xxT8NFnz/U8RuZNA7T/vFvYZjeWfexFwwq+IFAA==
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251229_021236_841497_A9899EEB 
X-CRM114-Status: UNSURE (   9.19  )
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

All RK3576 boards get their HDMI sound from SAI6, which is internally
connected to the HDMI codec. Enable this for Rockchip RK3576 EVB1

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
index db8fef7a4f1b..deab20ff4d97 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
@@ -315,6 +315,10 @@ hdmi_out_con: endpoint {
 	};
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &hdptxphy {
 	status = "okay";
 };
@@ -835,6 +839,10 @@ wifi_wake_host: wifi-wake-host {
 	};
 };
 
+&sai6 {
+	status = "okay";
+};
+
 &sdhci {
 	bus-width = <8>;
 	full-pwr-cycle-in-suspend;

-- 
2.51.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
