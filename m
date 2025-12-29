Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78340E8FDB1
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Dec 2025 10:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5taD9VujT1W+PozhTWlwg1DbK2a79UjEcpnjNGamM0g=; b=J3n9tjEH3E+5hY
	E83xFMlPmONc/aP8oNETONqkSMLCh8zInxWTKTu4NGb42s7jMo30sQIkhA0HSEf2Np4SsLg8Jgbp3
	gBd3Jo6Odza8P8Z62R8GtVCo2uA9nqM+SwIgtn4WzrXwTt+IJehOZuOkWKNiWzlUpUc2oFDDljGFt
	0SH1dcatgdceLKer/Ws8rYIvVtMOg3H2wOSdmJV9dThe4KkJZF/jMgge4NxijcjW/m1qGk31TGUfG
	I52BO9ghUB26OU27RQDymm347MIuX90l1kRzmxJ4h/0uROW9LL0uVTEJDX9fb+j/l+ZEgsOSsI6dA
	4jklKVxSdi9MSEjK7jww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaAEx-00000003Xz5-0JT8;
	Mon, 29 Dec 2025 10:12:39 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaAEq-00000003Xsp-1Cmn
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Dec 2025 10:12:33 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-477aa218f20so52891285e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Dec 2025 02:12:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767003150; x=1767607950; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LYrFpC2ukouvpetm9VHioumxJHutUQ8FiBmLFt+Ed7o=;
        b=Nqb/0Nda8ud8pe7ltiSUDpOKEFzavQ4ZUr+NB3nfMmFkv7/SxC/mD+n7aoSbC54wzP
         mL2ku7mxLpm8S99kf8L4q/mf/FKOvAsGQkgnn9DMLV1ifVlPPCCz2yUfkliHkMLnIK0B
         WiMnLHJtUK7Udbqyurpw2XQ4BbN4HtQsCCx35s9mW3zcxEzSXwnYtjhs1GGUV+8lGUCQ
         CHcAKDwRHKeLzVNHsz+WHsHHJ50a2vVnGtGU4AXl5XKzUqNKPU7OYtEgSURZXM0SghJD
         KR4X/yppwpuNJtGRhSJ80Tujdl0a3vEMqHYdPpt7UM36asLnaU8I3tzndEeyv7ozZ03O
         tZTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767003150; x=1767607950;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LYrFpC2ukouvpetm9VHioumxJHutUQ8FiBmLFt+Ed7o=;
        b=RKuejkzUophOiTrqPaTY4TbknXrH4+/JgkHbWRIJnTR4d8XoabZzcut2xsi6/VcDMG
         A88TsFiShsIPLkD1ORThWGnSBmJJHkqcpXpCgq/guhQ3WxbO+hYaS8ZuuZ1OKZccRu8F
         y5dkrOj+iFeaQSCoUAOTdcmFtKylWMNsM1MoHkIKi5u3I9BW0ldPigGyBBo5i59y59G3
         vwGlbCxqO9YE5mhXmKQiH6Dx2zHLNw0zU5ZtieVT113kfI0yTB24TMdOsGXODlN76phz
         vB7H7NpojQ0/h9roinu8FZbgymyCTuYerhV+0jy/4BLrjlv8mH/1srM6evFqrh9Zg8CA
         SZig==
X-Forwarded-Encrypted: i=1; AJvYcCW+4FDYUPItsdUCnILPoNEHGMYZDGkxSSCojLBgH6LCtUcqNSe8lvALYIwV3yubCJrF414Z7VkiVLvoPpsjDw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzOc7BCVgYR4dpaaRizvpfvgRRU7z8aGg06j0vVF31bynq4LMET
	akdA//31SyZJsfq1Q6cxSTqFe06OE+Pfs8vuiDWNnOOKaMd/hyfiQfmh
X-Gm-Gg: AY/fxX7QZtwZe0KKPReZBioacXSoOJD6RU6UbiLUiK9fr92sevPeCthaaq6niUk8DXK
	i0kBChYP5j/OWmb/wV6EWVDQHJcclzY3jMxpcuRaBvWHv9gu69GEdBMhWXJ18ZddPpQ0AD8p2B6
	05Ann0idJj85PW6xWQep/nK7nihc3FKA12UMuc6exzVI6VGtC8BEh6vPffp8HIz3C9mPxW1h8B1
	uMfts6ZWguOk0W3oUfDQBaLf2FcNKsRH8mt4ZL9dPdUlFPDgK/hPIm/8yNJ8IwY0XMWQjvFdq0t
	bP2dDAkvTHsnQ4kBi+geSZ0u/T+IebGOu9YtLbmOPt3B0SdhJxLyDucLAaLNLU2upMIoMdKZfG3
	49mIqwsV9RuuTxmnMFT2EG7f97s+WMmUKF+MrU4xpLBTNj6wvgqpi20HPwMZkYOkSASyq8mjTeH
	Loglt1l3BfwXNnhdzFJ6Dar+gfZyayo7E42OF4IRAWYPyUBwmp53L4KqH5iBIS
X-Google-Smtp-Source: AGHT+IEK9wJeAIDWOF3Sw54bLCDElC2BlMNbmR+47Ws5pcx9oZ1NKI4nDjnxIV8nnoav+VbJjIoLzg==
X-Received: by 2002:a05:600c:4fc6:b0:477:333a:f71f with SMTP id 5b1f17b1804b1-47d19576cc6mr336403925e9.17.1767003150205;
        Mon, 29 Dec 2025 02:12:30 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-45-246.alshamil.net.ae. [94.59.45.246])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d583f42dasm19840735e9.6.2025.12.29.02.12.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 02:12:29 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 29 Dec 2025 14:12:01 +0400
Subject: [PATCH 4/7] arm64: dts: rockchip: Enable HDMI sound on
 FriendlyElec NanoPi M5
MIME-Version: 1.0
Message-Id: <20251229-rk3576-sound-v1-4-2f59ef0d19b1@gmail.com>
References: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
In-Reply-To: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 John Clark <inindev@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=891; i=alchark@gmail.com;
 h=from:subject:message-id; bh=kYAQqntJ0UXrsY5dbZYI5NCwHltAh46+MWIeaf74zUc=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQGhTAlrL/HlxIvv+jr7lvJ6773vVpr/2ThZIYjM+9s/
 XJ+6UI2nY6JLAxiXAyWYoosc78tsZ1qxDdrl4fHV5g5rEwgQ6RFGhiAgIWBLzcxr9RIx0jPVNtQ
 z9BQx1jHiIGLUwCm2juN4b/jkmzbDSE/oq9PjZ77zbU6Rqh7/6vawM0xW5/Vbf6oa3yU4X/kcqU
 536sfbnz5+fDF2za/l2ttj20WcsxqOVzRlXe3rIgTAA==
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251229_021232_366285_FA68AA57 
X-CRM114-Status: UNSURE (   9.52  )
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
connected to the HDMI codec. Enable this for FriendlyElec NanoPi M5.

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
index f350e96de1f0..41d352994892 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
@@ -326,6 +326,10 @@ hdmi_out_con: endpoint {
 	};
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &hdptxphy {
 	status = "okay";
 };
@@ -852,6 +856,10 @@ &sai2 {
 	status = "okay";
 };
 
+&sai6 {
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&vcca_1v8_s0>;
 	status = "okay";

-- 
2.51.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
