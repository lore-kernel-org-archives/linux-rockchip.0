Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F1B3D0BB4B
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Oct 2024 01:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9i8h7QQeZYogC/WkMrNUfHI+zLMMQCjhFYjiDS2hN3E=; b=Wzr0nQ3iT3rCjI
	Hf5bHKq0lcI+dQa8Mr0t6j89mWXwfNsUQri+EP1fZXQSZcJ6YYEYtubq/b4Hu21u8f8eJJO+LG6xl
	SnEE+TcNURahZrUNZ7CXwCHW3WkrxjHI8AWCjZQePWscsI4ZA8XMXMSZM+BO7YNDjngTAhvE9XF2x
	FtTdJycmRIWkM19qR94efs+OQNqdKGVVu3T5cZHXmuKgXzgJSIvzMQykY2EEJwuFD816optY9sv2L
	eRzseaZEurlTYq0cQUOPRyNnUyxxq9EIV1Zfej05CwdOWBASvSszc6/MnkcR6+3mtlASl4uOTmpC3
	4bcQVuAzj1OobXfxo48Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3mRJ-0000000GOss-13zu;
	Thu, 24 Oct 2024 01:15:01 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3mRG-0000000GOsO-2f0o
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Oct 2024 01:14:59 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-3e6104701ffso292860b6e.0
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Oct 2024 18:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729732497; x=1730337297; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ME0p3OiIOK68ps8RV3ywN8O06ajMLsAXH5P911hYUsE=;
        b=U+OdNwwQR7OhUNd8TmTzknKP1fWv3hgr4WQ+rIHmKbNeQuwOSU3R9dzJTAiL7OH05I
         lnRUaYIhoiTCK2eOKU06PZdBiAPIUTDHJBt6oT96GOCQezOyX5KENqa4SQBV93lsOIwD
         uYqve/wpp9KmramEEs6g2La5L3yXIWGpDDkDZLjaxkMS4pY6CmQgtXqiVBAjQsfDss2b
         TnbcQntt1sQLsfvdCCCqIWMFExBumH0Hrflj6robqx6B/Y8Gt2+M2nQrI/FJBWI59LiG
         xyx2XBfigvwEWmantFb5BSMfsUSQm9uw+c7YYH8a0mcHa3TIW6G1/S8zqbLTdXabk9hE
         Hr0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729732497; x=1730337297;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ME0p3OiIOK68ps8RV3ywN8O06ajMLsAXH5P911hYUsE=;
        b=pbm3h5sgo/Lt1GNStvzX08w7u1u2bL0N1x5vV1Dj2T3TIVoEV2rRU6UVpl/hqjjMrj
         3O0OpG+pA6Zsf6+5PXQEd4H/L8ENA254VvzRL9+vIlWPUkioytbkEYwjq2NDKiUcpEgz
         RvskenV2iOG44YVWodEfoTs6L9P/mkTrEV1Z3OUP4oaL2e27ecO9biUu9xRCWYaIHqLz
         Zwhcn/cuvC0jpeQfX8aCv9hDEjMIPlgDXnS1d/mPF4vIjcb8rlZ9xzb+DmfSKFYvJcT8
         FiQKJS6th5pzvYaUVTk/TXVacyWcmwmjojX6nQwZio8JgKlggusfv7sEmsWnVXBaNzDP
         9vpg==
X-Gm-Message-State: AOJu0YxvUKMZrHUfsKYEGurFwQWdTm6ApsjU7sSds9Sh56eujnA5BPf1
	/TMNmIemPlMjbyjMu3vKhj8g2YAL/e1lJ5DGBbC9hxQUQZkGObscUI+YeQ==
X-Google-Smtp-Source: AGHT+IHWQa7NPata85Z+k/w79iTw2sXLFp6FAVyq6DVrAD3YJZ/I5zPVLK8hZ/ew+9TmEuw2xjbheg==
X-Received: by 2002:a05:6808:3a15:b0:3e5:fbdd:e33a with SMTP id 5614622812f47-3e62cbb31e7mr194344b6e.13.1729732497006;
        Wed, 23 Oct 2024 18:14:57 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:a8b5:55db:99cd:f335])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e6102fa91dsm2062848b6e.26.2024.10.23.18.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 18:14:55 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Enable HDMI0 and GPU on Indiedroid Nova
Date: Wed, 23 Oct 2024 20:14:54 -0500
Message-ID: <20241024011454.1611-1-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241023164104.66282-3-macroalpha82@gmail.com>
References: <20241023164104.66282-3-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_181458_691549_8B4BFE44 
X-CRM114-Status: UNSURE (   6.42  )
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

>+	hdmi0-con {
>+		compatible = "hdmi-connector";
>+		type = "c";
This should be type d, the Nova has a micro HDMI port, not a mini HDMI port.


>+
>+&hdmi0 {
>+	pinctrl-0 = <&hdmim0_rx_hpdin>, <&hdmim0_tx0_scl>,
>+		    <&hdmim0_tx0_sda>, <&hdmim0_tx0_hpd>,
>+		    <&hdmim0_tx0_cec>;
>+	pinctrl-names = "default";
>+	status = "okay";
>+};
Why is the additional hdmim0_rx_hpdin needed? Is it supposed to represent
HDMI0_TX_ON_H? I'm curious why this board needs it, when the other boards
do not.

Jimmy


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
