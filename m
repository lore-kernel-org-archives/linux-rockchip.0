Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94D22C25B7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 May 2024 12:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BqkxHtj+eWsCNhDzAtYpi13ANeK3sYpZCRzVI5/k9as=; b=S2nsp7RckQAhDV
	tfitTuQUg622L9hJKE7T4gf6o24aR9vdnWgxWmQvB4NR78dXPTYatt5gQ/9IAjYRLa87V8aHWNqJa
	40DfauOXCmJCfYKQVBkZVD0zxJrj6uJPPrgG/yjPamt1MZ1mIRSJJjoh7fPqRsyQ5Lvz1np14iDsS
	7PRANQMKkWv5H71dmiGrW4NOFT3kNOqhR0rq07J23WLz2jkGucRoHphNdxjnLHzAS6vLLFaNK7jfp
	g/0FTyBYNGxUpsN3d9uxVg2ecKJ9G2CouEOa3WF1ZvcRdkeNBBof736kyb5oUu3d1eXK4nyvqSi95
	grKrkEUdXf27VIu1bnmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7DaE-00000001Tq6-0WjK;
	Wed, 15 May 2024 12:18:10 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7DZy-00000001TfQ-1KS7;
	Wed, 15 May 2024 12:17:57 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-51f74fa2a82so8018595e87.0;
        Wed, 15 May 2024 05:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715775464; x=1716380264; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=d0aAEbXdgajt50FIPOAy30WPXnBHXkZn9O/zxN8IbEU=;
        b=F/Qk4VVndp96RP+YK0Ie1lvICzGxKTxOWymYTF+jfl6IcECCdsJiSSs2se5B8NF324
         EtDWQEy1JOks8UsLaodEjr1AnQ7pZ68Hn+LkQt8u/q9ivuCHRFcZsq1vBJyWdnPp9zh3
         qo99Qq7lQbL+9xGzjssICMjIx1PDpr6KIIesNBiJRSM7GoiPkOaXXpMNuVT9r/+qxzZd
         ojZu7MnHWVyiyQTFtGE7ZoIucztCNh+FjMDWKyXVlNx4FbtzPnVd9yJboZ3e81OztS7J
         1LojKVagbDE6LtS5Rzobn9xY19Lq3zGaJyM7U/CXenwlmAQP8FC+iUfCBab3DvlVGBr1
         z/kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715775464; x=1716380264;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d0aAEbXdgajt50FIPOAy30WPXnBHXkZn9O/zxN8IbEU=;
        b=D7bBtC8GRgHZ5h1aluHVMsJuyH9ddsali7qyV/HMFNf7ACUxKd47301H6hSgvdNV6o
         BG4tJBpFQCCaZozBOnfhret1wTHE4d8C/axzNakSxAlbVd+99AEx9GNzXpJcl/M3BTGW
         Qpd5g48N4ODn0v7/eBClohTNJwnhbHJU446B96nZQMWofSbOut2rGne5F2cWlRTo9MdX
         Ab6Lz/p31bU893wl8lVte4zOPGlACLZi7BN/oMLXIl7NXuCeHT6EXnxwKNUJ3XBDs0qn
         zFZOJS5O05EnpK8qdU6bKtuaLiFVnIH7PovjaBpd8HKvGqeYY+b+MvMsPDKZ/HA6Z/il
         O/KA==
X-Forwarded-Encrypted: i=1; AJvYcCX4QZueLdx3KN7In3MfAZwSsT6lmSlAnNXTfqJKbdEdrKoZHg6JNPhqqiNEhfGOjyQDzxl4TdbfazIFV8YpYwUMQ+fwtqyS2sqyqYfRRJGcmLWI+FwpkEypQxdPlLru10JlaxEJSgD44pkBHU8jY0QD3+/f5qBlxTw=
X-Gm-Message-State: AOJu0YytCI+PpRAr6fhzFoi/iTEFcBLfAVX5l74Kzwruju8pPToxCh+i
	VFYIQcPTWZIAB/nzVnkitL0Iij9kM7e5BUn1TK1DJyrsIl1av8TJ
X-Google-Smtp-Source: AGHT+IG4Hkq6991vIoxDDRYmbp1gvzhu/qj+0mxidX62jQ3RMGCze6F96qvW6K5C207sigpd1tp2RQ==
X-Received: by 2002:a05:6512:124d:b0:516:cf23:588 with SMTP id 2adb3069b0e04-5220fc7bef6mr16714600e87.27.1715775464345;
        Wed, 15 May 2024 05:17:44 -0700 (PDT)
Received: from yoga-710.tas.nnz-ipc.net ([178.218.200.115])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f35ad684sm2515614e87.3.2024.05.15.05.17.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 May 2024 05:17:44 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Jianqun Xu <jay.xu@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dmitry Yashin <dmt.yashin@gmail.com>
Subject: [PATCH 0/3] pinctrl: rockchip: add rk3308b SoC support
Date: Wed, 15 May 2024 17:16:31 +0500
Message-ID: <20240515121634.23945-1-dmt.yashin@gmail.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_051754_391365_68B98A90 
X-CRM114-Status: GOOD (  10.34  )
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

This patch series fixes iomux routes on rk3308 and adds support for
pin controller found on rk3308b. According to rk3308b TRM, this pinctrl
much the same as rk3308's, but with additional iomux routes and 3bit
iomuxes selected via gpio##_sel_src_ctrl registers.

Downstream kernel [1] managed this SoC's with rk3308b_soc_data_init,
wich picked configuration based on cpuid. Upstream pinctrl patches
droped soc init function.

The function rk3308b_soc_sel_src_init sets up gpio##_sel_src_ctrl
registers, making SoC to use 3bit iomuxes over some 2bit old ones.

These patches have been tested on Radxa's ROCK Pi S, one based on rk3308
and the other on rk3308b (from the latest batches). For the new boards
fixes broken spi1 clk.

Similar effort [2] was made several years ago, but without keeping base
rk3308 SoC pinctrl support.

[1] https://github.com/radxa/kernel/blob/stable-4.4-rockpis/drivers/pinctrl/pinctrl-rockchip.c#L4388
[2] https://lore.kernel.org/linux-rockchip/20220930102620.1568864-1-jay.xu@rock-chips.com/

Dmitry Yashin (3):
  pinctrl: rockchip: update rk3308 iomux routes
  dt-bindings: pinctrl: rockchip: add rk3308b
  pinctrl: rockchip: add rk3308b SoC support

 .../bindings/pinctrl/rockchip,pinctrl.yaml    |   1 +
 drivers/pinctrl/pinctrl-rockchip.c            | 187 ++++++++++++++++++
 drivers/pinctrl/pinctrl-rockchip.h            |   1 +
 3 files changed, 189 insertions(+)


base-commit: ed30a4a51bb196781c8058073ea720133a65596f
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
