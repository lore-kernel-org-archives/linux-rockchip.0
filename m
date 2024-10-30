Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97E90D6B6CF
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Oct 2024 19:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ROvfcRcuY+azs6PVZVC1/njsGkKsJSdg49WN67lkTXY=; b=Kqsc8FDBna2jTw
	3D2UcJ5aZpF2MsFpg5F3oKQR0eOtPdInQGgXcH4OFVnAAsBVdFssc7/o+r3XH8Iw4G0BSr2n/7ds+
	Xcz2un8Wzp25jS6PtvZni1YER7uMySFlJ8WIfem6mjRGaz1LQy+E/ZZPuw8rZo6ft8iM83iXWbwl4
	7tFckwlqsAZDe6d/jb4m2kTgXWOMHOwzd/fcdcTEngN+WXTGhAW7bGt3xv4sRvCBNmLsb07kiMjbi
	a25MOQzDP7nFEqTD4irJHpV8MRTLHwrX/fWnVAT+f3rpLCUjqCoM38TL6IAE4B7F9I2AyFTvMMbAk
	zT3G2oiurnhSxLgIIJ2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6EJW-00000001XWe-2j6w;
	Wed, 30 Oct 2024 19:25:06 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6EJQ-00000001XUP-2wzU
	for linux-rockchip@lists.infradead.org;
	Wed, 30 Oct 2024 19:25:02 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3e600add5dcso142244b6e.2
        for <linux-rockchip@lists.infradead.org>; Wed, 30 Oct 2024 12:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730316300; x=1730921100; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iXZ+CnxjRwYLZttNtH/3TyIsHuu13PbDRaYY5aMWNrI=;
        b=M2DhedAYV6QMArz71iG/7nvCTeCR0/7CIMU4/A3Rj7ZfUKKVrYorL33PmVuxJK/s87
         i4nBkGSsyiHbqwmIxNDvZjcwtRFB9/SvUOkWjOYCa0WZjXF9YZ6DyUXiq8cs2vL4SCNX
         iVFeAelfdkWPKx3gywM3mfoy5Wy3clzj/6M7SvvbzVmz79JDcEmlX8P60IlMG5JDNddg
         fAOt7q8YVZg5DgacqyZU5hOioi6IjMtDN6mhu4ACA/Pceq7wXaxsqyf/4tUF1fGS39er
         8mfDNK/UgKHhRX5krmiPaOkWVhEDB+tad4g9jK7U1f5P3W1CBu5M8JwmC+GxpYrhMU/o
         t7Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730316300; x=1730921100;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iXZ+CnxjRwYLZttNtH/3TyIsHuu13PbDRaYY5aMWNrI=;
        b=OZlMYISYuDOjCyHeZ8aAbMUKQ1/3+SozoSGkTRRjEjt99i81tOucHwmsu+DaNFWPbZ
         D+zm+77LVMcbMZ7OALN9PJ+e8i57HIQTesm1a8VyMftI+YLm2PIbxXnq2p561F7KX4nJ
         3rpOtZXw8pOLOoQenDYM9ny8P9NghDixqC693S8VPkNgPCqOt++HQYiJIDIa8sE4JNq7
         st+X8IwKgalBmGvSetaNXfcDSZXh8I/qgGTOCDF7WezuIQW8uD1nexlggkBP+e0hdBVV
         EAp8G0McbRQ7i/Xc7Wr4aK9W5x5Khf8AGTfy7/Yw+LI5pJf8JzUSeeilv3mcTbxqipuB
         xwkA==
X-Gm-Message-State: AOJu0Yw4v3vOXz10tr2wWPYbahPnaiWVstSgpWMhTUsBPaWufoK/UcuH
	waPlyIm3JPRREWI/xq3zKvZ9CgD6IjtnncuwcQHB8ZFQs5v50hjiGRE0aQ==
X-Google-Smtp-Source: AGHT+IFDQ0CEh2Enk5LTNjaoo6AgUjhho5FDKvpT6sttmjLxwYyclEqm6a/BBrjWCn4uAaX40L0BQg==
X-Received: by 2002:a05:6808:f16:b0:3e6:83:7e38 with SMTP id 5614622812f47-3e6384ce509mr14453893b6e.43.1730316299817;
        Wed, 30 Oct 2024 12:24:59 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e63248d3e0sm2689204b6e.24.2024.10.30.12.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 12:24:59 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	honyuenkwun@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 2/3] arm64: dts: rockchip: Enable GPU on Indiedroid Nova
Date: Wed, 30 Oct 2024 14:22:35 -0500
Message-ID: <20241030192236.839105-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241030192236.839105-1-macroalpha82@gmail.com>
References: <20241030192236.839105-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_122500_764528_2FCCE99E 
X-CRM114-Status: UNSURE (   9.07  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Enable the GPU for the Indiedroid Nova.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index a4b930f6987f..065d44735001 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -242,6 +242,11 @@ &gpio4 {
 			  "", "", "", "";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-0 = <&i2c0m2_xfer>;
 	pinctrl-names = "default";
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
