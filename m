Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2B1AC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 17:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q57DTAROX1wLBuZWA59Wg0hzzeSvTaVBSG+XeeP6/jo=; b=Flp8/0q04lmOF3
	np3wCiDvBbdazJM92/mpA8J1YcRhxMy8k0Ux1+WIHjr6vpfSvygPmj49mVBpbFD9/DQHSP5/4G/Y7
	bD4zw2oTIU9mb4yEQxk3Yu3VoYHwL+rgVgsPqXquQ4f0dQxfzrIDwGBK1EXmLr3Ejhpj4Hophpgu1
	lE/7b2CV4Xjo0v39p9iA0yFeDMzJ8tJfdb4j1vYICJWOZ7AF4z0xnET67P8brpHpM06lA83b+xY18
	ECPjPDRaXLIzlABtAMC1ItqQ+xPfVKYudRpBHNcncTikagRk589EC3fV+8CEfROZTH99PRO0l0174
	x41PY4eB5tgV4cY0iAjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rACwN-005Dkd-2C;
	Mon, 04 Dec 2023 17:41:07 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rACwI-005DiK-1M;
	Mon, 04 Dec 2023 17:41:05 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-54cc60f3613so1815168a12.2;
        Mon, 04 Dec 2023 09:41:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701711660; x=1702316460; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0YoXgk1fmeGz9Ml7hlpE/8h2Sivb7FXL2iIYJZqnuHo=;
        b=jfQoymvekfGrNbFkEaMl12aCx+5hIBsRbu+0qQ+Jo4zH7Fau1QayS9vWbVxlAbufYK
         YnW0PIYyaZRVNTDghn6slTO2bK2Tz7xPr0BhBq2pFelw0YfdXteWMl+EACFjSsv8OG33
         JHpbQyVn9GVsd/QQtNzImDTats6xkm1WH7uK0iA3VU2ARW7BqaLxB/wgKlHdwWZZ3lcP
         qHS4CZlGiBQBBU23cqXi7WLfcB0fP19UanjaZj8MKe//rZpXECONf3BXklYCK314cqY4
         mSX24sr4DekLUY1ORqgd3GMhUNM3HrwOHDVJ/0eWYB5FWxNq4CMLBiYFW3mhqESNRTAx
         1DEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701711660; x=1702316460;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0YoXgk1fmeGz9Ml7hlpE/8h2Sivb7FXL2iIYJZqnuHo=;
        b=SN/u8pSd4rZ+vW1leqNQfkhtmwHIJSFVcQmfb0z8euPySOjRtFIXm6FQ/M9+ZnEcas
         sGKgxrMePZBBEM++oXOxqS7tIAyw4EQS9AlmsZ8S9JQDyhk5jF1izWkOa37Tnm067XlK
         FEFSK2hgAcq0n9JZq8XdeEqI/uFMMVgbn37q7Cktyythh18OcC0sXg9cqYgGbwIYOJLm
         Imz2ODqRo4QDAE9M9/CgOVkrnkt6vMf7dLpjbWrwBbLjNm7xYwRMImJK/I09GJ6etVAw
         4csDpjvbBkhQJnaH6BEkFIGA8713dPNTMKbnZ1Hi2Q+W7qWb29E4r1E3ZeLxcFbNzyuA
         GxLg==
X-Gm-Message-State: AOJu0YxpL/XdC7PVq4r53n7EFiRaDKa8JAzCpzuyIw3FE3RaVDBc8ue+
	kILPjNJKjS1QKD+a3w76dsU=
X-Google-Smtp-Source: AGHT+IH5CahfTiqAKyTJCwE1ddGA7CrKLTxjhTR6LznurnRE9jPGXs+oBd55rb4exBi9MUScKfvJ5w==
X-Received: by 2002:a17:906:6d52:b0:a19:a19b:55ce with SMTP id a18-20020a1709066d5200b00a19a19b55cemr3477124ejt.94.1701711659945;
        Mon, 04 Dec 2023 09:40:59 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id ub12-20020a170907c80c00b009d268e3b801sm4350577ejc.37.2023.12.04.09.40.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 09:40:59 -0800 (PST)
Message-ID: <f5bc182b-f9b6-26a8-8649-19ce33e3c0e1@gmail.com>
Date: Mon, 4 Dec 2023 18:40:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 3/3] ARM: dts: rockchip: rk3036-kylin: add hdmi-connector
 node
To: heiko@sntech.de, hjc@rock-chips.com
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <49c6afec-022f-02de-99a0-d409b64da198@gmail.com>
Content-Language: en-US
In-Reply-To: <49c6afec-022f-02de-99a0-d409b64da198@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_094102_460236_A1C88659 
X-CRM114-Status: UNSURE (   9.42  )
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

Add hdmi-connector node to comply with the inno_hdmi binding.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3036-kylin.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
index 67e1e04139e7..a213333be011 100644
--- a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
+++ b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
@@ -13,6 +13,17 @@ memory@60000000 {
 		reg = <0x60000000 0x20000000>;
 	};

+	hdmi_con: hdmi-con {
+		compatible = "hdmi-connector";
+		type = "c";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
 	leds: gpio-leds {
 		compatible = "gpio-leds";

@@ -110,6 +121,12 @@ &hdmi {
 	status = "okay";
 };

+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
 &i2c1 {
 	clock-frequency = <400000>;

--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
