Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CAE4C27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 14:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hjs0EjI/koid5wiH4kO6AHU+RaUWREAm3mb0AB9Cuu0=; b=r37l2GC7sa9jXr
	WOc5qKxW/bFZbOR8o2PyU6zJ04JLMq3HpV5D/rcLS2GtVVyZaXKRy1cIBtjceT63z7ZtrOWZvAV14
	B6mJ6UuwTQoFSXYK0T9TuUJG+QKVch88bVCHzcdJTVlmFXDwCwd3XhK2i3WeDeUskKdk06iurtaD0
	be2/CyxQWRc+dTh4hMx7uxK6WRm0vTbkDlQlz8uuBTqrEq+bLviq3ayeRPogsXNdHPvGyUZ/5XZRE
	d+Gj9tCiT8Dm9FA+IWQyGNemHuZww42sKPfnwKzS6B7prLhnv+uAsoQLprFZfsCggIK+2t0zmPFSQ
	agyKexbPjYGdrbkijmrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKIVv-00000005NK2-3epe;
	Thu, 20 Jun 2024 14:11:47 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKIVr-00000005NIh-1YtY;
	Thu, 20 Jun 2024 14:11:44 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-57cf8880f95so1065217a12.3;
        Thu, 20 Jun 2024 07:11:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718892701; x=1719497501; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bLF9zl+L8Mm7lU4AoqgefyMRhZ+wS9MBIn1Wjck2JRM=;
        b=iET0y/lmnfrT8f4i4c4iNGwzPCOtqGIWAVVAWc4GNkfbJwLIHRsGchf8G9tDqtPgt+
         ygq+Bt+T5vrbD/thMou+yNQiEMqQELxwA8C6IKZyUt1TQDo5ccBK48m6SNvZ+h1TbO1m
         qr39/zGIvLSrLfK7dS0gqQmHv1LFUOK7yBcO39NY3AvF1dUgKfCkL3Vym6Tll8W80TGw
         8IOKheYLH5l+J4GQy7EdLTAYX0/U426DAEyBJZgkN7Qo03NsFGl4kqpMMD31WQsfNgAJ
         H6ra1BwbP5RPBxUs2B2/4Os3svl0v5RlOKXylWa513CNIDe6FiYJ7Fk29dSRaIeuEs8t
         PXjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718892701; x=1719497501;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bLF9zl+L8Mm7lU4AoqgefyMRhZ+wS9MBIn1Wjck2JRM=;
        b=MQasg5sB0As4GlQ94XqsTB9hLWw05q31GwssMM9KxdebPQGdiMQKFPxYo9jW2Lu0Ig
         IFSj8d2mkgujc+slDz9VM7PLi7qp/GoNt3nZy2IIdGVvxs6jtNYz3LBr2VSjB8RiIiR+
         OUR52zScD6u8m++K0EZ4A3TADrHZhy16BGHE9KKUVHNsyLFDYeTynECpZ4YHa9SbejUc
         vse4fXLr7oBj6rlmepDUwuGp6lDukaM7YXijLOKmoLsbZBpcxZJ1ZHtOIOvQ+OjFSNIx
         db3XoxeWc4/TRlqWsUqHn9jNhIHrT5h+lwCOkVkU6lcGhlncETlGJPGaEAuyHkXImWry
         oYlw==
X-Forwarded-Encrypted: i=1; AJvYcCVZGgl/5zw0+do7fxbjjp5lpUHsLC0CLdvGTWp+MeO6p+1ZmztkdakWMy5z8qeUQjQH4yCC1oCvM00q2WTyF5Oc9Sqok1K2Attv7fFrJ6DaK4GVcLJsOW9Obi7VsgeMqI0jKwNaMENNqZutz5b6OT/k7GLWrND7Vxw=
X-Gm-Message-State: AOJu0YzGrr89Mez44yzMTRZVGZNgcMOeFvu1CUSUZLHKKQM8Q2lBn3Tu
	qT6x4VrlXUN2sYzfyeKLf3aGVZM55gaeOF4ABKT7QN7SmsbK8HNmuS7wOg==
X-Google-Smtp-Source: AGHT+IErRFRQRmLH+rlW+KU/hVUJABPZ3okIiiRohJA06n+XOlP+9KDc1vb5BXSzerQN3sk+791O5Q==
X-Received: by 2002:a17:906:16ce:b0:a6f:cb3:55cc with SMTP id a640c23a62f3a-a6fab7d6d8emr320883866b.73.1718892701054;
        Thu, 20 Jun 2024 07:11:41 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? (2a02-a449-4071-1-32d0-42ff-fe10-6983.fixed6.kpn.net. [2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56db62e5sm767879266b.84.2024.06.20.07.11.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jun 2024 07:11:40 -0700 (PDT)
Message-ID: <aa79ff87-ea94-4f6d-a81b-5110724243f4@gmail.com>
Date: Thu, 20 Jun 2024 16:11:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] ARM: dts: rockchip: enable hdmi_sound and i2s0 for mk808
 hdmi
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_071143_443218_E1AA5D1E 
X-CRM114-Status: UNSURE (   7.97  )
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

Enable the hdmi_sound node and add i2s0 as sound source
for mk808 hdmi.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3066a-mk808.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3066a-mk808.dts b/arch/arm/boot/dts/rockchip/rk3066a-mk808.dts
index 06790f05b395..4de9a45c4883 100644
--- a/arch/arm/boot/dts/rockchip/rk3066a-mk808.dts
+++ b/arch/arm/boot/dts/rockchip/rk3066a-mk808.dts
@@ -143,6 +143,14 @@ hdmi_out_con: endpoint {
 	};
 };

+&hdmi_sound {
+	status = "okay";
+};
+
+&i2s0 {
+	status = "okay";
+};
+
 &mmc0 {
 	bus-width = <4>;
 	cap-mmc-highspeed;
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
