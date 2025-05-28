Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66164C5B543
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 May 2025 22:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tf1tV5YSD1XTavM6ii3qeM7Zck7/9PaC2ezsVZ/KHmQ=; b=jQzrZOTVTYYQ2e
	dwkkjr52Etd8LMy9U2tuPC6v9njppP64CTbNRujrEJvcmzTVsdelhZoV7lKDP3svG8T2ReMGjbObj
	FPYNFlYpQw+/TxYtNY0p1fmqqVE75oGUlSDsNERVhrqcQ7fJVr9BjxUHYm9JeIK+HXuKMzor+ecW2
	7P+tLGEo00sW1ZwO+Fd6CE4M+2IHRimCHW3RzEIuPWsni6F4d/qVCAtlZz3w7Vi0OPhmXTaeKQsXY
	RwH1ExdeU/BAkCnCQLuRbp8GihfjaGSTK+Nsk2bfPHH4YcJgBQoZAZrnN9d3MwOByLBtmm8ZPwnhP
	ANeUHZ3/IJeRdT5RwgsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKP9E-0000000EFW4-1MVE;
	Wed, 28 May 2025 22:21:20 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKP6V-0000000EF8A-3rfu
	for linux-rockchip@lists.infradead.org;
	Wed, 28 May 2025 22:18:34 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-7370a2d1981so137371b3a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 28 May 2025 15:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748470711; x=1749075511; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CtIyFVItmvlb0Qi7zMQtmVP45b6iqhJaWxe6x7y+EyQ=;
        b=TBECB/vwkgTlKVQ5hPU2aa+sTzGtYKiuS1EPsRLrtddLvj2jVFU7adjrlibklvSVlJ
         4N/MSLJP9N5i0Zci7VyP+AEfzheaA75fPVzbHI1on7FO4D8X2ZtlSyu+ISukXzlpH3D0
         gERQMoWMBtWnfWrKjKV0Qj7mjG5m/mU3TjtuG3eob5FTZqZDvK1lsA8tk5M7Xjii2aBc
         qBH12Dat5/FmU9NIEIdHplidUni5g36rCuURaDl+dR3GPMGQ7pUqilTsH/lgpnBGtyPP
         weOeHiZ1J/7x9Lxu1Oriqb5XLPyIkrScJcM9QtOoH6TCGjiDlCIvzhd5pBn69KrVYzNf
         qNKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748470711; x=1749075511;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CtIyFVItmvlb0Qi7zMQtmVP45b6iqhJaWxe6x7y+EyQ=;
        b=EoG2knPYhzf3GcDRCXE16k2g7PnqecdWH5ip4AmcH3DQubiq3SnJZr3Ssnp3dLegRc
         Xz1xjn32Q65KnEH+XJZP0hb9syMaFEfR7jV7s6vlkos7T55/1UHgwHTWlcJotbHbr1HP
         Ponw5uu1w9aYMx5GLZ6krvm5wWqqtkwpbKXqCSKRpWh1GR8ZcS/f5HrblR+i+dnShSzj
         x0o+Vh2rJ92zqeoKT6rpUBDe1FGnS6TzZqcrCm84j0Lxtl767NZ/wk5WXs/9HxT9Y0O8
         xjQ9eI+WKZlBEeUOdvnnb+ABlccQdSWVNBMxZjXgoWZU0SqKvLj4Ks9CaK1mgivGh5rZ
         MOYw==
X-Forwarded-Encrypted: i=1; AJvYcCV9dUcdMGSCsrwGnuD0SgVr1yU+vayFveiMmXVqxpfP6tuzdKErMvNvXgZLl+PLwMHW+Wkb2848xlYaMOglTg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzItqYdL52gOUDktaenWK1wGCsaw9mDP38KMDCGnAuSOt7dsAzn
	Zt3JtKA4m9ySIUPlgiJAlqvX7dkIlCals3SWFEM12C4mxYmWzpOcAc4w
X-Gm-Gg: ASbGnct3SjXRmov5m4BnTHWEeSGk3dYPgO0FD/jXklVSHVkTyiPNDdiqtznlWgdX8LU
	n+3g5es722m9LXazVOel4mB2KBQXr4tOJbyZH540wAaG3p9qatsG3Yji2SzGgfc7vCeYCuEMp5n
	rfWF+Xy+6pU9oZ2LMjqsxhE/88ZxAlhmgkyjCfbVmPqj2GoluekbozpKKIMpVfcko5zcxq3gfzG
	4fKxJRBpH7dWII8JSctpVdBHXWDiBXTir3nZNtRppNZIbXHLDLFeez3GXyLfBeBNTGPaHBjwMIw
	ZAM/+dzgv8fhKeA/qow7VKtjK+fGGFLGo2b0O2AdOz0JwSZTDF3PiYtuaqzOT5qYOg==
X-Google-Smtp-Source: AGHT+IExOjzN75mdxRVjjLLNYQ17bfeHAMYVPsCViF5ldPFzY57HVoLNGSKqiY9sj70xQkkjQ5lIGg==
X-Received: by 2002:a05:6a20:3d8c:b0:1f5:8de8:3b1a with SMTP id adf61e73a8af0-2188c24379emr27000647637.13.1748470710864;
        Wed, 28 May 2025 15:18:30 -0700 (PDT)
Received: from localhost.localdomain ([50.46.184.91])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747afff71fbsm81015b3a.165.2025.05.28.15.18.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 15:18:30 -0700 (PDT)
From: Joseph Kogut <joseph.kogut@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Steve deRosier <derosier@cal-sierra.com>,
	Joseph Kogut <joseph.kogut@gmail.com>
Subject: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO board
Date: Wed, 28 May 2025 15:18:21 -0700
Message-ID: <20250528221823.2974653-2-joseph.kogut@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250528221823.2974653-1-joseph.kogut@gmail.com>
References: <174735136138.1544989.11909422896170025756.robh@kernel.org>
 <20250528221823.2974653-1-joseph.kogut@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_151831_958440_2E9D6A13 
X-CRM114-Status: UNSURE (   8.75  )
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

Add device tree binding for the Radxa CM5 IO board.

This board is based on the rk3588s.

Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 650fb833d96e..64b0a0dfcf12 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -840,6 +840,13 @@ properties:
           - const: radxa,cm3
           - const: rockchip,rk3566
 
+      - description: Radxa Compute Module 5 (CM5)
+        items:
+          - enum:
+              - radxa,cm5-io
+          - const: radxa,cm5
+          - const: rockchip,rk3588s
+
       - description: Radxa CM3 Industrial
         items:
           - enum:
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
