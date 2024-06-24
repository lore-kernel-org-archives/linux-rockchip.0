Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E2EFC2BD09
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 17:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WTZThH/IBWUv5LoJ9D1h0zuYhSLNfCje8hh9/TqI3+A=; b=qWG1oAf1RwBXvK
	fuOlEFb/J8HD363Ecuk5wC+WVCs9jqxo92ld5vNnwYuyMUK7/CYRVJg78/61+tGUilXAcZQuHoWAK
	cwzA6Mhy+QPNYxbeowlaJdZ1OV/msQ4SHC0Cg5Asx1uzqub3oqr9lJ4HdZ2oi+tjoIeUFiJD72cNW
	PO+0rg2/71E6FmPv03RDSYHsz8LbwVks3V69ujQr+VL8MunNyICfRDKo8/vfjIh8NHZGjZ0P0LHvh
	bfJD+gqbVrdexvCpYKQQQlMGnVe4Xgi0kYeaDqk1eGVr9I+RMyGMp5a1xGgnFAx3dbCeasZP4EdcC
	NvTWbVQtOVtd1NT+F6QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLnT0-000000005It-0aoP;
	Mon, 24 Jun 2024 17:26:58 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLnSt-000000005Fo-3mTf;
	Mon, 24 Jun 2024 17:26:53 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-57d2fc03740so3119248a12.0;
        Mon, 24 Jun 2024 10:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719250010; x=1719854810; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fMhCaw3FpByMJNvnQY01X2wp+sz/RDm+M0TSHAnlKH4=;
        b=WFdgxCnX+CNnK9P94M+PduWRLIYHZMb4KKUqMVk1Ose7dKBX2kx/JhA/QUrW0c3Xoj
         8UB4l5RA0Xh+s4rR2fE5Wypu7ZkuUsc51zwDsjl59oOjPPns6FlvJgQCbFitsm7bD45Y
         LG1q2cpxCoeK55gdCPiGi4tluhroZiFcaJNJvqlCqPSbSWreWtV1XgK0ZQJksPJzKOgi
         yRmoZUEP3lC1q8f9iB8jcre9nISpLuQmp//HsqRuzViZn/TMBly9KUhyP0x1V7NRg39q
         iLypWRD3W9RoKKDUfK/x2MgFX9dqmYUKbSyXk1m0l9qtnyB+aGB2T81Fa3xch/vNGECg
         eJ9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719250010; x=1719854810;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fMhCaw3FpByMJNvnQY01X2wp+sz/RDm+M0TSHAnlKH4=;
        b=fdTpj88knqG0wjNCp5oKBUJk8zd3YxOtVdK6u3RQ8C0S/LcCl5Vf1v0+DO9l6YjRRD
         RBd/poyALnuvopt12Jogmiucb6plPWKRPjImTkoBNiVigVWaeg2Nn+wWGhKE9nBIXlL1
         l84r1v4QDTLwF9YY/71WVQCMKwcDGd18Nn05xQjPmkwtrSC1JFRKiSAZhUAYdiyIrWDP
         KltXhG484xYUjsLB17argR+XtCWg9JCc8rm3Efqj2tQ8F9zRLSUDWI9g9k2ffVuleBMI
         WYgUYaAFOwxLqUW6g6ZebS0GnfMDVlXlj1EVNalT1ioRdegTZr6Uxnz33qub9W3K6Gx1
         MH+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXn/g0ACqCWRNnNMcAetBF/y3c+9YadtOQK7Dj8316LkmAwt4N34cMl0Z3Vro5yEZtGkBSD3LSehuig86nX/K22TOvspmIBT0p9stLTTge8lwEhA4p8amNZERUP1cv44dXNBmh0Z1Mv9iV+nLQsJlyMw4uCrpWkxQ0=
X-Gm-Message-State: AOJu0Ywfkh1NqtYjm5ma+Ld0sSz14YRo9wAsXcrlEaykK7l73wwqfXo5
	QBe8jXJ4aww5PMqrohHE/hYO1YJ94M8fmDZ6U9Q96edTQsapUnfXl/bDeA==
X-Google-Smtp-Source: AGHT+IEctqdpyD/6asugdeUtrjUcC7fGFEroCRUJjXXqW/q+2UnnPdeJVSdtfws/qsJO8AUPr+WWYg==
X-Received: by 2002:a50:8e52:0:b0:57c:ff70:5429 with SMTP id 4fb4d7f45d1cf-57d4bd56495mr3207759a12.8.1719250009867;
        Mon, 24 Jun 2024 10:26:49 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? (2a02-a449-4071-1-32d0-42ff-fe10-6983.fixed6.kpn.net. [2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57d3048b923sm5064209a12.55.2024.06.24.10.26.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jun 2024 10:26:49 -0700 (PDT)
Message-ID: <9d0fabb0-70b0-4b4b-ac7c-389b1c7afe20@gmail.com>
Date: Mon, 24 Jun 2024 19:26:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] ARM: dts: rockchip: rk3128: add #sound-dai-cells to hdmi
 node
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_102651_990464_401531F4 
X-CRM114-Status: UNSURE (   8.24  )
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

'#sound-dai-cells' is required to properly interpret
the list of DAI specified in the 'sound-dai' property,
so add them to the 'hdmi' node for 'rk3128.dtsi'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 41feb121bd84..e956c9cdd02b 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -566,6 +566,7 @@ hdmi: hdmi@20034000 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&hdmii2c_xfer &hdmi_hpd &hdmi_cec>;
 		power-domains = <&power RK3128_PD_VIO>;
+		#sound-dai-cells = <0>;
 		status = "disabled";

 		ports {
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
