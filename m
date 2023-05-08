Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82E96C7EE22
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 May 2023 16:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vs4BK09ZWbhwZhGOyyaSpvZSGZb30eb8lnbPPjiHAcM=; b=i+l3zsR6kb+s5Z
	JYEFQILJ8KiKePqTESsr1ia1EzHTE1BgezjKLyMlnWtwYK5HxnhcE0chuZeIMJcnpNsKRsI4obMJ9
	p8D7DI0+jab2tgCT2RKwEBcWi0BkDQrI6GkVj7cfJMlC3aOdwHouXPcSyDb3j2XdAfxn1HtesBPkq
	YQmkh+T7VVnOG4+1NqqkOPBW4bbatpF3MtteR7ITbkaesGDVaKmIsrxdwgv9z400BNVZhESx+LVlW
	Vr6iDg/OGzQo8kdS3PtX4PZICYcDJqlzLSxf7pMK6EaA9l1I/ALKxhok2Z0CJ6ntS0YPIsRfvNBYB
	7UkIu/ZUNmRfuFvG4+nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pw3PT-000vtK-2E;
	Mon, 08 May 2023 16:08:23 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pw3PQ-000vrr-3C
	for linux-rockchip@lists.infradead.org;
	Mon, 08 May 2023 16:08:22 +0000
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-38de3338abeso2433227b6e.1
        for <linux-rockchip@lists.infradead.org>; Mon, 08 May 2023 09:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683562098; x=1686154098;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=69E6AsuuXwrvkEgAjEjrOIUSbBdHMkfJE23qGTOBaOk=;
        b=hs4+MAQKI5VYFgAmWz5llsM2uWDPDVW6OUsybVZCf3Zi+7YciwPM2APztUHQYCf40U
         j+1JhqRu8tCk5ba0XF4PHOgnGOeva9aUOu9J1W5hWYQ7wpG9JWhV+44y8L8UrTOO8lD3
         RUIghfW+LpkbEmTudEwVxcowPUs7chAwf7V/EF4jY1fTd+7524n2R34v3Tbq56PaEbiu
         1MhuJsH84mpDj9FkLouVNxyCfAqnOUIWTzSX0Ge8Tkt8uzeAkcUi+HTYiIE1vWskKSeO
         FXme/X9TDATQ8Yh70UsFhUC2AtuRZgROrWTojMnHH8k85YHi3pyz3PjVsae3XJ3HoQe4
         rvmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683562098; x=1686154098;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=69E6AsuuXwrvkEgAjEjrOIUSbBdHMkfJE23qGTOBaOk=;
        b=GrPbLX7P/A74hRVg3fhqgcb1dWNHWK+zqUzKaRvD4EiJSWncmjxqBnPNrCLyf4Ycx2
         Dz947Kv4sEkDtKE233rPEaKUT5zfNj8CKGATuDsBNB9TtfUZMjczmH/0hlq86DgEahrb
         WhxZbQ3OfTVy2g99/2ltU148y4cbnMBoDUNnHndMxzVHmpHBYv0+BYmTnV7wKUZ5r0lh
         wJrYgr4KbMHlpbaPmttL8i9mMrJOiIKRMEDQ48fWm6I4SyLKtZHuKvUqp5HsQjh29tOc
         WA9KzXRv0IC9JoPoWsDP8aru4jsuaaLf40p72VEsRUhlBVsEvXyuxek0Nnhbl8+wvpx2
         mFXQ==
X-Gm-Message-State: AC+VfDyQtQeEOwLY3OTelqekBe/uAQ5qEQB2T17zvmlEh6S6Pdz79Nq6
	QPMLFeeXHMeXkwYE08B+itU=
X-Google-Smtp-Source: ACHHUZ5nWw1+Un0d1fFFclW/qIosdXnltPYdfkMiWgP+YdgC7q42WAolQMr83w62ebWBjF5I3yiq3Q==
X-Received: by 2002:a54:488c:0:b0:38b:c4c3:b3ec with SMTP id r12-20020a54488c000000b0038bc4c3b3ecmr4882823oic.3.1683562098038;
        Mon, 08 May 2023 09:08:18 -0700 (PDT)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id v206-20020aca61d7000000b0038c0a359e74sm136391oib.31.2023.05.08.09.08.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 May 2023 09:08:17 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	netdev@vger.kernel.org,
	anarsoul@gmail.com,
	alistair@alistair23.me,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	pabeni@redhat.com,
	kuba@kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Fix compatible for Bluetooth
Date: Mon,  8 May 2023 11:08:11 -0500
Message-Id: <20230508160811.3568213-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230508160811.3568213-1-macroalpha82@gmail.com>
References: <20230508160811.3568213-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_090821_028436_1B8CD0AB 
X-CRM114-Status: GOOD (  12.92  )
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

The realtek Bluetooth module uses the same driver as the
realtek,rtl8822cs-bt and the realtek,rtl8723bs-bt, however by selecting
the 8723bs advanced power saving features are disabled that appear
to interfere with normal operation of the bluetooth module. This
change switches the compatible string to disable power saving. Without
this patch evtest of a paired bluetooth controller fails, with this
patch the controller operates as expected.

Fixes: b6986b7920bb ("arm64: dts: rockchip: Update compatible for bluetooth")
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
index 8fadd8afb190..ad43fa199ca5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
@@ -716,7 +716,7 @@ &uart1 {
 	status = "okay";
 
 	bluetooth {
-		compatible = "realtek,rtl8821cs-bt", "realtek,rtl8822cs-bt";
+		compatible = "realtek,rtl8821cs-bt", "realtek,rtl8723bs-bt";
 		device-wake-gpios = <&gpio4 4 GPIO_ACTIVE_HIGH>;
 		enable-gpios = <&gpio4 3 GPIO_ACTIVE_HIGH>;
 		host-wake-gpios = <&gpio4 5 GPIO_ACTIVE_HIGH>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
