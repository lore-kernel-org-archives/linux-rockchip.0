Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF915C25B4F
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 15:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sYb0VNBnY2dv3foFhGZreJBRPg9tg8+0yz5fQcFzIwA=; b=eI/ct7QyLU6fSP
	rBDNMGYI0htYHz9I0tMEUPKevO79yQNEchX4zzZvNJpn8AGRexZ9yjgZf6VfN3RgfBQvxGtqxh5ax
	eEm+rnB7WLL44JEUp5zWW6j+vNkGhbvhbOwhYx2t9O09U2BLd567woLfbCHEYG8Bka4YtAhpVABPr
	xlQXoNccu7KOWwgwotA3jz5m8dTSGSMPffBOzCm61zL37eClXjw6ApO0zfoT5g5sm85dGKbWb7Epi
	SAexcHAov//waDbMC+RpL7/wrTFx4QWmRd1QwwP8TswlamuTIbEbL88VQBeHmzTDhnMx6y0+OPB3W
	/axkddD80c+OxXk/1QPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s40cc-00000007vWQ-16mv;
	Mon, 06 May 2024 15:51:22 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s40cY-00000007vU8-12P9;
	Mon, 06 May 2024 15:51:19 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-51ae2e37a87so2769837e87.2;
        Mon, 06 May 2024 08:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715010673; x=1715615473; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F43+VbbAv63CP/l1KaJY4c5FRRfWXW7a7BiZxJ4p6TM=;
        b=NfqFOGUcirSvkearPnIEnzug7+tdEenr3cZNV7aY2U/EQ7NAYWo2jGi0vpoWbvWY0t
         JkhGMblX+eIwoxKpTVQ0rHx1SKlzyq8L6uN7ILq+ChnFEfrjESYFNCOY2ZGwJQXZlQfX
         UowTtMjTwZEGw55bKOpX4zIWK0mtb458FmFwzJxEciq/G+BnkjlV+cQTs+YBwAWlf8f6
         sDE8h1MLtFvLgP9zVwhYjcJfYnf5PAoa/eh7guOTPOtc6voJgwJm0gwtT9GAfxF0YP1p
         HL6WqRxdZcDfJGibR8QrpBa0xGgATxxiYJdVC9NQWIt1dukKu/3UXQIkBwnP65ovfFyh
         ihpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715010673; x=1715615473;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F43+VbbAv63CP/l1KaJY4c5FRRfWXW7a7BiZxJ4p6TM=;
        b=ihboUdfCkdvJcCujYiIWLB8+sJdGMD+Hsnxf/MuYBYUbD4azJmwZ6kWqqry9yccrte
         bL6On0mjXxEaRAUfYdJbh8HdUpWOmzgnlhW6rjuh73ftodK1GIm4RG8eT+qfE0dqdDbf
         EyrEcjhvI6/NTHmXTvhEFK6L8YM/A90b8lnz8Cj7NsFXP4P/AA/3OaG6Zy9Zwu+GpksL
         iYZTItPXCAJTAz11/e3j/eiIsNVyszRcUE3ygc+kSrf4ui2ewGWfIffyD9GVtkW79nRK
         oELeixsDFb7ajKGVUaTIjG46xz58lfV/TyIt8Gok5E2AEkt+mwml3PcFE9ulcHPZoYd6
         VWOA==
X-Forwarded-Encrypted: i=1; AJvYcCXHIEFyac1eQ29pUQsA2pX57Bs8iUcAOA+tIHGNqtHcUUkr/C6CNhJ/BgKwwW5sZrh80IApz6nMO/GGU37kjQp6rijAeofvVj3y9CFR/wSFDCyUACZ199lK0cACEOqcnrCTMpUp+0iEDYtsR9Jh5cwsdJAmClQp51Q=
X-Gm-Message-State: AOJu0YxLvpdgyPDyKZ20/D/DLSCyo8YaWC9xQeYZcQOg2Z3+q6zf5Hri
	i+s0bXnLFT5Qc3ovy1M0WFwwOobCsYJ1TD/tdj7r2VilYSUKUc8=
X-Google-Smtp-Source: AGHT+IHylqTjWnk3bFeb8qCldzxVbY8wXHbt8BdYQi/hoIsi2Vat6SeNEbpUVpTgcIdugVwGm9wVSw==
X-Received: by 2002:a05:6512:32ac:b0:51e:543c:a45d with SMTP id q12-20020a05651232ac00b0051e543ca45dmr7353602lfe.20.1715010673176;
        Mon, 06 May 2024 08:51:13 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:1c62:e77:6753:5729])
        by smtp.gmail.com with ESMTPSA id y24-20020a170906071800b00a59cec38bf3sm1356230ejb.52.2024.05.06.08.51.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 08:51:12 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 0/2] Add RK3128's sound nodes
Date: Mon,  6 May 2024 17:51:01 +0200
Message-ID: <20240506155103.206592-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_085118_308587_309D23E8 
X-CRM114-Status: UNSURE (   9.93  )
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

RK3128 has two I2S, and one S/PDIF controller. They are already supported
by the drivers and covered by the bindings. All it needs to make use of
them is exposing them in the SoC device tree.

Alex Bee (2):
  ARM: dts: rockchip: Add i2s nodes for RK3128
  ARM: dts: rockchip: Add spdif node for RK3128

 arch/arm/boot/dts/rockchip/rk3128.dtsi | 41 ++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
