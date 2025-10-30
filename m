Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47EF0CCF9F0
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Oct 2025 17:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YtkQCO1wHx+e9/42/MgovkVMyYxSuGwcRUHozsQMjLQ=; b=iKAlZRd5D1FHvs
	PO1okUsH7vt16VKLklmySmtbFj6H6PYenlK8fr6jkPbzF3LlZyCZ9iOxZmTnsx+y1umOvpsTXQ/2O
	jA4OEtXvzMCV5L9xBTRC5GMzFEdUhWPPq0X1IrK1jGqcGG0wRDsTo9nDlQcST6mktTeYVI0G5VDi0
	r6ff1fHTYoB3Ts5AibZS/jLxdKR1ipzU1f17B4Mf/Ix1antbofD3h0UzkUhaUQX/NvTbMVPkprp1C
	/5BqagFz13MAhUIEH9U0ywywDkUFaMtgH9a+nxG7O7uuPnLeGhcLPd/1j46I+nQBjTuLsQ10NvKgs
	0Lh2JN7Dl77qOf/Yc9+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEWpF-00000004Ype-1CH3;
	Thu, 30 Oct 2025 17:52:41 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEWpC-00000004Yow-1EKs
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Oct 2025 17:52:39 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-b6d4e877915so19819166b.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Oct 2025 10:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761846756; x=1762451556; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=njsjO4VFZqA7R0pPo1P10WkBD8Q9L5cVjM6fjzkdhIU=;
        b=GDdEvmqjULohlyQMuzk10RInXCfMfkQsAA3YLdXqKuR4rB5mrsSEq9AKmB32isFBW4
         qeUrKLTAIipVLu70K1HgpUwEqVtxq1XzcU+fbKXQ5qJfPfts3q3twbF7UwVUzWoOB6uK
         zjP1cFQKwfTG01+FRg7hcyTMiz8JvcXe/h2Y/qPSaWE3nWRYmI37sC4UdYxik2byy4vl
         P43Zeh1tDCmmqiUr7ljt01T5nEPA6oH0W8gIm6Xr4yZIg9+BX9CrYjjCfaKp390RkAOO
         p//BsmFfmnaubpKeCfyr8TFy97YWqmncRzzzl4eHNP9qyDLEwSF0m9DEhtlm6XQD5ba7
         vhug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761846756; x=1762451556;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=njsjO4VFZqA7R0pPo1P10WkBD8Q9L5cVjM6fjzkdhIU=;
        b=o7hQg8o99t5X95+YggyKWx+hBo01R74XynzI4jOHlh+cAV22HtS1UaHBcisHSBj2vC
         q469P4WOerAm6SmL6GUl/X7ThwNO2HcvjDFCEp2HcwQ8uGw+4EpKmv01Ke4q5qXYJY7h
         ig18HL77sSd7oOB2l+8nyUeZ8j4LR8kr99E2WimpKWz5kuB0Jh1qo0lLSOPoi8kmQ2uX
         fWj3OoYZyKLf17H2mFMiRLs2UfZDAqtuQoXtIxUq7U7dlFHKEvzDzou7SZ1kafJjVd18
         mZ0phaxhBLDcKbOtbM46zGOhpbxQ9CXGjgNbWfgR9P64AkW5TiumVq98I50hlXNmIkOO
         8o2Q==
X-Forwarded-Encrypted: i=1; AJvYcCX31QgSVmeT9aQ2PWPeAxcYtpZGGc6FVnccjUu6iKhzcgV8UBBCqUvKePXa3JO1A1GaOoWmQekWzWQQ4zta9g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxyt4OIlkE++tp5qVMCQbG9mctR4A9KvFMYkNdXYaeQWYLXfOF4
	rxABjmTq0T/xZ02SahcAmp7IOSP8kyQQvlOqk4/nxbtvTGgaqAyZ92Dn
X-Gm-Gg: ASbGncuN+3xLlrRePGfHe85cramutSy/X01AslOtEiyZCFbmpfAu/Xzfk1THkv85EDq
	YKJmgVMBZVbM9ZYtai8swMaMNH9cywtNM0leIzkJIClcHqqSQ3mps+DEbZUcT/2EAFFreuGRmvI
	X5kWwcqfkqEEvyqXrEVIhAUSZ46w6lCwE9XRA869gKZvBrinIPIv6yIP5k8ByekqdcxPB2jVlpo
	yxbW33WOXtATMm7PQdGBwZRIjBf3fdZub7dOHRyksJTLKYcTYg73sx1tVIPYdpJhm2XNCGP0reu
	qvCAvJIF37OXHoRkrTEzAXvqVzrlF5e2ISy1WOMxmY+61Ly3S/+p9Vu6azho4OOEmGaujSf9F1F
	2k1+6pS+O5c7kFZ6+z48OmwuzCmSlaiPnWj6PENZnr1Tz9RMD63M163MEkhxPnz+dawdwZRQyAY
	tg1kHXV64pqh4BtnhQSuPnLuneH3KruAA8PpNNHFdGME+ZVJ90HQ==
X-Google-Smtp-Source: AGHT+IHEjrjKgjCwmL8TWuOerIFvVWufwSPMm4yYLEbgFtGVI/ku0NlxLVuGe2f+k6tpzEbHXAXZQA==
X-Received: by 2002:a17:907:3e0c:b0:b6d:6d44:d255 with SMTP id a640c23a62f3a-b70700af393mr23224166b.1.1761846756003;
        Thu, 30 Oct 2025 10:52:36 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:0:32d0:42ff:fe10:6983? ([2a02:a449:4071:0:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85398444sm1778908866b.35.2025.10.30.10.52.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 10:52:35 -0700 (PDT)
Message-ID: <8a423a6f-bfdc-4947-aef9-35ee7c4f6ca2@gmail.com>
Date: Thu, 30 Oct 2025 18:52:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] arm: dts: rockchip: rk3288-veyron: add spi_flash label
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_105238_328742_D4574906 
X-CRM114-Status: GOOD (  10.15  )
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

The u-boot,spl-boot-order property requires a label at a boot
device node. In order to migrate to OF_UPSTREAM more easier
add a spi_flash label to the rk3288-veyron.dtsi file.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

https://gitlab.com/u-boot/u-boot/-/blob/master/arch/arm/dts/rk3288-veyron-u-boot.dtsi#L10
https://gitlab.com/u-boot/u-boot/-/blob/master/arch/arm/dts/rk3288-veyron.dtsi#L267
---
 arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi b/arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi
index 260d6c92cfd1..2d6cf08d00f9 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi
@@ -388,7 +388,7 @@ &spi2 {

 	rx-sample-delay-ns = <12>;

-	flash@0 {
+	spi_flash: flash@0 {
 		compatible = "jedec,spi-nor";
 		spi-max-frequency = <50000000>;
 		reg = <0>;
--
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
