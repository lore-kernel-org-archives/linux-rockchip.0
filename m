Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B7AECF2562
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 22:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bfb0/WHSYSFFs6caT5LZMX6KiCoUXHIZWQgtqP0IaSY=; b=Q7H0o5vQ+FVTUP
	8RuBGoRZO/5PXCsArjJMKYbuMKtDT0G5h3cYKhBGTg5I33nh+k6OZ0O4Z+Z+ojzPBzEvKdwbMHGrV
	r0lhm4l44ON3wbnfMMatea6nd1d85uvfk76uvVZ15zgPQD4fno1GWE/ItzdrH0AjequKioNaymSZR
	DXlrBw25cf1+U97kj7jGck45C0ApyuTHiCNOe71C/le/ofWkpMgdCxssHuFAAeiAXbmPL8ZsEhQV9
	43IOH48T0/t/HBzjAYEoH8W8JWmdRG8MNgSrMK9T4erZBEjTLxI6UPcJm/6c/UQEyRQheinx4TxDu
	HH4ImurXnaAesxoKPWgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLUGE-00000001BSo-2hpK;
	Tue, 18 Nov 2025 22:33:18 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLUGC-00000001BRv-0xL7
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Nov 2025 22:33:17 +0000
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-7c77fc7c11bso234441a34.1
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Nov 2025 14:33:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763505195; x=1764109995; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b1i5LMQy57XNEyvnktnwk6NfgYa6TiFuyzzncLbcY+M=;
        b=HxcY64PbAlD5SPjrH+DD259VqO06Tz+5nG9dJv3tWwWrDTV7T3nqE86lMUOVDxB0aT
         2d7I4v0i6oOLsN5l3uIUkcTUVpqyZuSyaF/8aV3b/J8MBnMHPpwhM6cDW2MPRUmtz5sD
         SIcINkEM2EOe480WyIzZ5vaQ96f+1A026It5Z/6kbLe79IPW8J2qqbsH75vsIGyrXh8K
         byaUlEIfqOZ3/SfEM6X+w0eSiu1qxptPO2Kvi9GKnEAnsZLCRTO7p0z39L32csWokHkf
         hYblzgATjjBYBqeHPAwFJEij5hxUC4CEVhOVnoyz9VUKwZJ5UY4OpnENdO5XbDmTb4UO
         ydnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763505195; x=1764109995;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=b1i5LMQy57XNEyvnktnwk6NfgYa6TiFuyzzncLbcY+M=;
        b=DftMYF16JG9B98rxBQ+25FSCGExMYUQHKJfpeM+6F5KAuh5QKm5XHPAQIbeTzKe1ap
         4hOCDWfHl43OzrDCfdVR4aGgecAhKcichVXhOgkLkgiTodZ8FD3MwOPh9Tbwl5fdFRxk
         CfhkYt0TrtymWKIyDKHUq23Prj2BmhN3ObdH3lVgJfS7ELxpshaJ/0r/xnClYek2RUtZ
         TTBGNiWMkZBCyX5qstmUBHjx47cevwLO+OKNwWfvygeIdR7pMCPYM8v8Ggo0gBaJLmnA
         FJI8r0xHJ7aZn6BcR6CGL/eDbilr2bzMOckKfKsh3/AtqyEoWmYRf0TOixf7QUwu89U0
         Hbgw==
X-Gm-Message-State: AOJu0Yw5DRxBmoQFox9U3/v9qyjewHglKDzNPRKFBfvoBEAsgZPTZ6V3
	5pKsi/1j04KfJFBOaReGcmmR+wu/2xS+5ZTBHR+atal/l0VfsadP1NpVKNoKbg==
X-Gm-Gg: ASbGncuU5qVZpHZJ7FC8QRXZnK/Pas9lvIeTsPfZpemcxygPZWUdX3jYxwzsYt6UcXd
	YtBAcMmRHkcRsmFnow8V/2Vtr+gpc34/+echvtD7KNV8K+Kom+4oWPjvJf2TLOSdNKpJHfKOuD/
	ackSO0RLTcLvVlkzhZrKZ/79weza3GHXClxzjbxZA0kWZn5l9x4udSTPCgElP9u0vb5xhhBJKpO
	MZtBpCNFuvzZ80iHUuJAXBLwXh+0d54+ocL/b0UD+oyKLroTkSGeqwdsWRE9NmrOaOApUtHquWS
	DB6S1SJS+NITPEBn/LXEo3OKu4/tWBcncYO1ffWgtXIRuVCTNreIQh0cUjakBV62CwM+TclBNxf
	XFxOmiQ9nzxU7mMk5kOLN2xTydqealmwKx4wOBSpUUYYRN+oAAMoHls8laUJ0bK0y3zpCJKjP5k
	9dF5LUxEt4ArBX+uTQz5E=
X-Google-Smtp-Source: AGHT+IH0VGXvdwT5ardadUJa8286VuWNh/gYR26nwJhtKFC2d8ybKmDA0pOs4zLAie2dNvOtxYqJFw==
X-Received: by 2002:a05:6830:14cb:b0:7c7:538a:c6fd with SMTP id 46e09a7af769-7c782bcd979mr154908a34.12.1763505195086;
        Tue, 18 Nov 2025 14:33:15 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a283b3asm7136960a34.4.2025.11.18.14.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 14:33:13 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 2/4] arm64: dts: rockchip: Define regulator for pcie2x1l2
Date: Tue, 18 Nov 2025 16:30:46 -0600
Message-ID: <20251118223048.4531-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251118223048.4531-1-macroalpha82@gmail.com>
References: <20251118223048.4531-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_143316_266772_883525FD 
X-CRM114-Status: UNSURE (   9.35  )
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

Add the correct regulator defined per the schematics to the PCIE
interface for the Indiedroid Nova.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index d1cef48bcce5..1562d02e85d6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -485,6 +485,7 @@ &i2s5_8ch {
 &pcie2x1l2 {
 	pinctrl-0 = <&rtl8111_perstb>;
 	pinctrl-names = "default";
+	vpcie3v3-supply = <&vcc_3v3_s3>;
 	status = "okay";
 };
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
