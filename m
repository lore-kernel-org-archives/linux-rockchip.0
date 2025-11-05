Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFBEACCFA1C
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 20:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PiW8TzbyUkbZRAbYM6cdKHhviwYzZ62uyHU7LXjIuDE=; b=eSFDaIrrSGwCcy
	w7XbIjV6yMPVVhIjSnPpOH77+JKH35Kro4rOyfgdO90caJ6Q/CfP3Zvnyy9mbWS9r7ZuLVE+Dd1nq
	AxIo4APsN6sWrLKzs6kOPutwyiFKxW2X5P1YNOe3Lp6aNlUVPfYf8FnSgd2+T3vPNlX8ANJswneSx
	NJwzNmkAJLMR5A6BPe6mkFEznAj/U2nUfo0inf49yuv/GeK5x/j6cFG0a4dJnGPccRXuFVllQ33Cw
	XxrCmw5wA8dv8TNazOCsHSdj9y5PExtpQI7E6Dcc+AjKPP86P7CsCovdSWUf8V5c+snjJ+Agze/CD
	Ge3mWHzSGvn2UosRsU2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGkba-0000000EPKw-3a7J;
	Wed, 05 Nov 2025 20:59:46 +0000
Received: from mail-oo1-xc2f.google.com ([2607:f8b0:4864:20::c2f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGkbY-0000000EPJy-2omV
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 20:59:45 +0000
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-6567a0d456bso139302eaf.1
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Nov 2025 12:59:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762376383; x=1762981183; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=s4jUhoO0GloLYwgiRapNRbXTXkxJre8g7HZh0C7uDhE=;
        b=Y99ZcPKqhKJyo1Cx2JJQIH/snxwn47tqZjYiu7TPEB+5qRVgiE0ZtuyxOMvq49n15H
         1wGaXfixSvT8uMGv+r4glZdo3671jDlpT9fqlGUQ5ciSe+j6pBRe1noXefsR4osIniQe
         X3lXya8HK3UHnJo8Yy6Vk2t2/S6MzsjxeK02YcNImytfvNS4mmvNPtZ64EXe15vbnBg3
         AlIYOlHBwoG3Yw0Dq+X2/miX0LJcb5co9rENorXeQ5pzX20GWyh6Wi3lF8454AX3NZVC
         0q07Fd+YXddNBplhKns+5AkrepRM8IrHObdOVHg3UWgX1JGTxAw6QiDYPO66f/1HurKW
         VKow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762376383; x=1762981183;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s4jUhoO0GloLYwgiRapNRbXTXkxJre8g7HZh0C7uDhE=;
        b=eresvB87AdB6kC4fXm9+B19Fc0p0cd4T5zmAWTFpmIg0ZlcO6N1WluejDLAMWUFM9P
         XwE9T58iVrx1QMYEkbjxNsgeT6uQx+jvY02AscmBKVWA0rnS7dqhrqSHVm8blVNV/6Xx
         S0K8kURRC0V6BU4phui1AMNLVMeLbIHDoUTjxEhMcNOY4Wf39GZcwZyeUEgpwQz0N1B7
         /ZhO2rIjOwi7uMyRIonab8wmD9R9BH9Lrax/achN+k2w4GI2Ks8c9gUQ2t7rC9UR+ff0
         AtRcYtVhXImMd24HjCQcedaZk8YI1D+IdNStszhmmPmXSWvqSMDlbULmuB2XfXzCaCTc
         lHNg==
X-Gm-Message-State: AOJu0Yw8vhF6ynIC3jVmMS5UeVzo9mz2VS3cWhDGyapmJR34r20rzsK/
	cR/rIPCIjsYkx74W3bDhoNfVvSBjsyGzwX8ApjhPsauTCK1tW0FKHenAArhpWQ==
X-Gm-Gg: ASbGncv8OcdxAhuaJL5eoGaesWC0EBVzQoDJU8q/1O6yIr57s4JmjhN8J9yafAuJO0W
	0ZHuGvECzUDUBxOW3NjqOqmGj2f7ctflEFC/IybD59ijLPQHGv5kMduh924cJs93Q8PFRrI1FH8
	XdYvwprVstztkzpcJoRWd052fHpfv8aNdMAa2eVOAVY1zBYTvT337kKvlCg9Uge6akwuShuPRg5
	xxjyZBgRgPZzzPO4r0V1MxNBDQyjCZdzugyOgOLxZMdkIBaJXZmL9S7Hf5h44KTnOx3vm5l6+Ne
	ZVHw40iH66YU6ez738ZYZeR7058IzSdESK39rhJm+SQtbQ3vf2oIEgRp1GIOb+hWCLpHBPQoRhV
	TywG7PrrtRY5SXpJIo371dUqA6qTorqzJ4XskDE6u8Expug9UUkjYq9jacPyLS80Sr+hUtm14/t
	PQDNAkmTQo
X-Google-Smtp-Source: AGHT+IHLwYk1NymY2VpKdaaPslZmnlbWunU8Hh0ha8IXu3WsgVgQDBFA1qN4zAcnCQpT0Z0zwq2BIQ==
X-Received: by 2002:a05:6820:2110:b0:656:777d:e689 with SMTP id 006d021491bc7-656bb611158mr1748501eaf.4.1762376383228;
        Wed, 05 Nov 2025 12:59:43 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-656c5713288sm160312eaf.5.2025.11.05.12.59.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 12:59:42 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	damon.ding@rock-chips.com,
	jbx6244@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/5] Indiedroid Nova Devicetree Updates
Date: Wed,  5 Nov 2025 14:57:03 -0600
Message-ID: <20251105205708.732125-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_125944_721347_908599C8 
X-CRM114-Status: UNSURE (   9.08  )
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

This series fixes up a few remaining issues with the devicetree for the
Indiedroid Nova. Namely it adds or updates a few pinctrl definitions,
it removes a few workarounds that no longer appear to be necessary for
eMMC and bluetooth, it adds support for the NPU, and it sets the device
type as embedded.

Chris Morgan (5):
  arm64: dts: rockchip: Add device type for Indiedroid Nova.
  arm64: dts: rockchip: Add Additional pinctrl defs for Indiedroid Nova
  arm64: dts: rockchip: enable NPU on Indiedroid Nova
  arm64: dts: rockchip: Enable HS400 for Indiedroid Nova
  arm64: dts: rockchip: Fix DMA for Indiedroid Nova Bluetooth

 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 85 ++++++++++++++-----
 1 file changed, 65 insertions(+), 20 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
