Return-Path: <SRS0=K/1+=EY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D25D5C63697
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2020 13:59:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5F99A2078D
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2020 13:59:51 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="XKMdwXIp";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WzfS5ftW"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5F99A2078D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=16gS6jjmYi2GTyyTwGt2V+tBmHCbfgjxVBgcxsqyQhw=; b=XKMdwXIpJq7aePBT9ALkyVikq7
	tsIHPx0Sk613amj09GXbZyWUki/GyS9IM2pj7QgILLjd2CebUGNgIbxwPy6F25x7KxSgPC7ma/gl5
	LsgtTpbnVI+qr4b7L0+5/igNNxTuTXOH4jBU1NHia1Li4ZxGPhzf7q9iUW92TZ2lYZWANAuXQVEts
	pJTSBFbWWj3dU3ZKkxEunNjUoRAqSJgTd9OQ0quacDuLTfv8JlsXazZyi/2PqU/WZwqaX9+aYeyC4
	HrT8iv5KLXgFOdRiBAFYlTxB6xbKm59sqlYIG4EuMHL6N22qFA0a/8AF815q2LVOgIN2r/QSQQYRd
	KgW9levw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kfNzs-0001w8-Hy; Wed, 18 Nov 2020 13:59:44 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kfNyr-0001Ry-P1; Wed, 18 Nov 2020 13:58:42 +0000
Received: by mail-ej1-x641.google.com with SMTP id dk16so2829224ejb.12;
 Wed, 18 Nov 2020 05:58:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/M45YtMWBHvWX7HJgiaCX3duzycDxACgeh25TxK15Eg=;
 b=WzfS5ftWkRMUzolpSh5HCyN4cmp70soK14s87h+2M08gwqkRfSM1li/SeATS7MA8CA
 n/sY36cmWUjV1SvmUdcnwVr88B4NjXCBd+xogRlmqDnN7DqOLXdQuISdhL57o6jwPxee
 IawguAG9hPu0NW7aAXvvmQ1fW4WTfO8oOP7dScEJdK0PnNfDMu27k9qRigi+sJu4VF3b
 Bxoik+iaaYnm1yT8K2F4x8HHZKjjlkbPX0lbLt7LpEQvd0TKi3Me4dyadjHW11Onb46M
 xYjT0zw3/9G6+6KLQJwPFviF+W9Sf6NNTpaw0SBLiN2PLCWcq6h5hvUlWV8NfZRGOh+h
 YOPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/M45YtMWBHvWX7HJgiaCX3duzycDxACgeh25TxK15Eg=;
 b=rRZp88HW/DbReQoEx+vbtmJmPxtzKHIP2ZAFZYnzyBxRFdTl6+6svOpUWyqEF65c0q
 ae89lQoORzcJSFT0TpDMJxVoW0QKDUoTdejvP3nHQbL5pWFnARBLKoDhoVc36j3E6AwC
 Cdw/Uu1k3TTrhj0bZ6zTxrnqXRGbRK12htvfzEhAqaedcSLf+JFEibXEOaU9snkaS5Hc
 F+TCH1e2jBMyGv/ckcLGnz7iYGrMJFUJuXqYWuqPLoq66LBor2aqmYomKoYeRfQPvg6t
 pWCBRDO2xL7+srY8Aft8HQAErOxahf9V8ubLa8X1vQE5wF3XDTwIS8WIqIwJBupgecQY
 JeOA==
X-Gm-Message-State: AOAM533tZxDp0yA3KW0+N3yxdA+iZsB5YH9YnaOYhBO+En1ehLSuDIrS
 fCg0Voj8Ny247rJ6EazE+Z0=
X-Google-Smtp-Source: ABdhPJzjtTA6aSJDvhbh3mZRYc7KQzylCh451tX0U9bpOnGQQ2ddCN9W+I66OX1Z3ial8hqeM8QM/w==
X-Received: by 2002:a17:907:4335:: with SMTP id
 ni5mr20187759ejb.459.1605707917128; 
 Wed, 18 Nov 2020 05:58:37 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id cx6sm13721384edb.61.2020.11.18.05.58.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Nov 2020 05:58:36 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v5 6/7] ARM: dts: rockchip: add hdmi-sound node to rk3066a.dtsi
Date: Wed, 18 Nov 2020 14:58:21 +0100
Message-Id: <20201118135822.9582-7-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201118135822.9582-1-jbx6244@gmail.com>
References: <20201118135822.9582-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201118_085841_853487_6733C373 
X-CRM114-Status: GOOD (  12.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org,
 airlied@linux.ie, linux-kernel@vger.kernel.org, mturquette@baylibre.com,
 hjc@rock-chips.com, dri-devel@lists.freedesktop.org, lgirdwood@gmail.com,
 sboyd@kernel.org, robh+dt@kernel.org, broonie@kernel.org, daniel@ffwll.ch,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add hdmi-sound node to rk3066a.dtsi, so that it
can be reused by boards with HDMI support.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index 67fcb0dc9..f91ce3054 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -49,6 +49,22 @@
 		ports = <&vop0_out>, <&vop1_out>;
 	};
 
+	hdmi_sound: hdmi-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "HDMI";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,mclk-fs = <256>;
+		status = "disabled";
+
+		simple-audio-card,codec {
+			sound-dai = <&hdmi>;
+		};
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s0>;
+		};
+	};
+
 	sram: sram@10080000 {
 		compatible = "mmio-sram";
 		reg = <0x10080000 0x10000>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
