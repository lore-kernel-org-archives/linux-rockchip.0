Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD381C44529
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 06:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5m1K3d9cVfj0QSws90Vn7OVX48HpI2GkWguE5PNzizs=; b=sYuFjKh5WGbVYE
	lgDGHAQklqw/9SBIEfJ406Grj8lBM3cEkWyWeMlu5z54gjb2Er9jv3uQrZOnJbi11KRCL2EnK/KGE
	Lq+MKrqPW4m/eeFMaC4473FSiPACoejrswRL2Y4bizBknzdQhwKKUuX/V/c2xuTO6j02L2PumYgR8
	pic24ZMZUq7N5uKH59reWZc6mKwogHbRUvBcjImxmYUOWm2BxBUmpC35h+bQcudvQz2IZrG6bpGzd
	hy4/jdJUc4piskGZEdupuXyn/ozzC+QcMrazNAmoKI3wUb2OY74SOy4L+B9K298svoSewI9/JlfUA
	lA3RIuBOuqL7hx6aY/xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm4Ar-00000008YJ5-1zAz;
	Tue, 21 Jul 2026 06:41:53 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm4AZ-00000008Y1i-3UPp
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jul 2026 06:41:37 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-494049206c6so4264725e9.2
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 23:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784616094; x=1785220894; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ulPEDLH/C//NrEG8Ra6a2W7BH2SJyZZBWy1vtB32mys=;
        b=j+TuBicjnvPlLc0Fv93hDY11aR7Vm9YjpVk4MZoYdd6iyqpJrOZAURy7yKphGgh1e7
         BbYskZ8LMxR71h6fhq7ICOEhZYlE1dI7pfCCeQfZvnC0Qcp8fZrKn5nIwy+rdc2q60Rk
         q6ZQcS9eDB1Jlq3wzHuMUvUhvekIJZYK6kARZ+1pmw79ENip48TAleG/kCsUEgKAytPb
         25oSAKtept+xwgynkyCwrQCnZHi63pbui1ZEkIJzdD3YK2DS+9t0UdVMP5fVfW7XiWu5
         sgjiBup8VskWAPo5K1TCc8aG0kmvST7kZ9ZJS503rl3sQ3tp9iPXzvIiWmfeuUdvR977
         waCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784616094; x=1785220894;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ulPEDLH/C//NrEG8Ra6a2W7BH2SJyZZBWy1vtB32mys=;
        b=cS6zyvnPuRRL2S8ppkgwecSx+QOf/Ol6WOq0iyBva+yuaFmB9z44YImiRqq2EknKlQ
         WW49rA5CYZmW5PaGdfGfV/t9OEBfyxS9PZCKqU4eEwSMiuPqpYuWRRxHjTgUTlEqnr93
         eY0rIZWwB8BPge7G9+ITciFyD0LaiVvz5V57+g0Sqf6fUIDDXYLl/ZMby7YPZWGOMAl4
         uXhJ0kllVISoRfhWJBZU8iTvXWgaP4JrdXbK20dgSmJZTeJuQwQX4y7pWCEBiXjGQDKj
         XgiiEDF3ToUBD5+0JyzkTyJAIZg5pBc8+5AekQqVTNFD8TWA/a3DbZfYtS29aZTKFgTv
         7/UA==
X-Forwarded-Encrypted: i=1; AHgh+RqHASZodMReiBAJME+z7DNM0PFgtgQM/QIf8MFhhjfKX4+MQBkewqoPtLxdm0P4KqUR7N1q5wlRsJxef47Wzg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzsSGW1RwaX3G6C3Hh6b7EU5iiJ5BhPVpvWEoG+2XLMhQtxjY4m
	/8f9GYv2+EyjWNZwfbV/7486XrFOj2PnWCBUkbs+pqlyCtZwAu40k6Dg
X-Gm-Gg: AfdE7cnwwGKASNB4ae8amiKIe6OmBNlA5ysZGvPSMvr3sVPrq8LnjxN+jvDdJ/Wx38h
	IJQQiwYIx21iL6DY8K9Sb8z/ZbOffMBh2EPPJdgUOWTootykPyT48TDTeqxr1cFRAtkjRy0ttYn
	uXc4jdpIoc+uq+T5WOArzOUAUwWWgZHeE3NSTTdWdw4qFoMuhtW8mi8eREPLUF7nDu0koPBp3Zn
	pR5VMUN4T/eL3i5yC/WXIL2I+7lV5eMIt8jIq82s199U6dpOeVs4f6Xcmmp+0NAZhaGHbbcsMMi
	X/1FqJn9X7wz8SsMj6YXrCBJc+EfQpzrc/xc1DavWkUnARc6+6cBWZvqmCp3JBwrLaoCojOTs28
	6/cUeaRG/rNiG5bJVaD6V1fYLfUlKIeNyWrnQGKAjwIWZBuVtBld2oZf0Dx1N5urSfFbNbMlpUQ
	aeRczAvrhDxXO0Zb17kGOxbrt0STXCO8XNHKg12C6+Z2bYIvQCfJFnDH+LeM9M405h5/SVUCr7D
	6O2p2L5ikM=
X-Received: by 2002:a05:600c:1911:b0:495:59af:7a5e with SMTP id 5b1f17b1804b1-4956598fb80mr11601215e9.5.1784616093905;
        Mon, 20 Jul 2026 23:41:33 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B88AD00DA0BF9DB4519DBD6.dsl.pool.telekom.hu. [2001:4c4e:1b88:ad00:da0b:f9db:4519:dbd6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f63ed1911sm38837951f8f.22.2026.07.20.23.41.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 23:41:33 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH v4 4/4] arm64: dts: rockchip: enable HDMI RX audio capture on Orange Pi 5 Plus
Date: Tue, 21 Jul 2026 08:41:15 +0200
Message-ID: <20260721064115.64809-5-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260721064115.64809-1-royalnet026@gmail.com>
References: <20260721064115.64809-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_234135_915292_0D7E1ECB 
X-CRM114-Status: GOOD (  12.35  )
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

Enable the shared HDMI RX sound card and the i2s7_8ch interface it
uses. Together with the audio capture support in the snps_hdmirx
driver this exposes a capture-only ALSA card fed by the HDMI input.

Tested on the Orange Pi 5 Plus with multiple HDMI sources: capture
follows the source sample rate and stays in sync via the FIFO-level
clock tracking in the driver.

Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
Changes in v4:
- only enable the shared hdmi_receiver_sound card and i2s7_8ch, now
  that the card definition lives in rk3588-extra.dtsi (Sebastian
  Reichel)

New in v3.
 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index 9950d11..9f9a303 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -171,6 +171,10 @@
 	status = "okay";
 };
 
+&hdmi_receiver_sound {
+	status = "okay";
+};
+
 &hdptxphy0 {
 	status = "okay";
 };
@@ -247,6 +251,10 @@
 	status = "okay";
 };
 
+&i2s7_8ch {
+	status = "okay";
+};
+
 &led_blue_gpio {
 	gpios = <&gpio3 RK_PA6 GPIO_ACTIVE_HIGH>;
 	status = "okay";
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
