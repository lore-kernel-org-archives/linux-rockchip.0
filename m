Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E604C25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 18:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=krWs2Bf99zjc9EIAm7S7/usA+l6+uDGhZMHwBMdnlig=; b=aSxxVyrydaS91Z
	Zpn7IADM3QWGSM7bGVgXYBCsOowhSbKwTFDo61Zgg3y4ioFyi1JGR9O6u6Q6u3Q6fAtXensW0OMDb
	LJOQoRtFvtxFdGHOfS4mnQf9nyYxGcbjL7erdTMrT9QS9rNGsfvFDRjcQt063qWSTr28OivlFzvLN
	byName/9FCSTDDDkQeWoTLGRZOzgH3A+0P5+Yt9gcd3BUAh1/60XF5Tqu3bmgYBjorQs40y1CGCbF
	hJBTXr+DQCCssGEVOzB1++0i4oTuG0LNTNBU0c7BWwI6c/Ed9MkXHbS8AtpJ2+CQsa3gCAmOwIyMv
	4mPtSGcDHcXByWVDys0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sADcH-0000000749c-2rDt;
	Thu, 23 May 2024 18:56:41 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sADcE-00000007469-2NHc;
	Thu, 23 May 2024 18:56:40 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-35502a992c9so591064f8f.3;
        Thu, 23 May 2024 11:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716490596; x=1717095396; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AvoPPMhrO2hD7dyAxOKf0bPuZdn/lIXtjZ6yK7Xph24=;
        b=iBh1EJPVnFjdbca6ps9gPuDULFQQN3K8ZlaL5pN4uTZsWBcVUpHbvUnJfRye4duyJY
         BaN6IezIcP0LUgl7wLDWkaA2k3SXx6yo3BcllaKbdDOKaGpCtoY+dl6sccD/xJS96B6x
         BsK5GQT1k3gNiVAxrt75qafkmwiMpxkD0FSy2Le6NWMf6HAumnvlhu3pAtwAGQoWx4cp
         es+HgIz+AYadPCzhdISq+YRAwXwo4IRaCMegeUI9B3cbw5hWz2jfYVQcyNwWs55tugX5
         UReRcGGU/6kXKzVNYcBEwshi8bJznSHkqhG4ERPxzNQ8djvEKyc4QhasgxfY8IJWC0RP
         /1Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716490596; x=1717095396;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AvoPPMhrO2hD7dyAxOKf0bPuZdn/lIXtjZ6yK7Xph24=;
        b=KW4OVCNVC+HT9xbDQ674xmulY+8X2Ewz8HHq4YKNkG6KbqVXR0uhYGSFeeWudTiq5y
         FxlkLEw3m+F86hSXZPg5ldt5n1ZtNFiLWs0jInu1VG57TgC+fgZ0lFCPiAKsZvM1mtXh
         +CcHFHllv62rGuNJyPig5rVu4fEbJG6QOTrv3VrFkQU/CBVVvb5ce4HzVLRefrahU4VA
         kVg1XNpExLjgzjmHnuiqJ2vILhsF2aC43jyHMXlkW1mOsQSUOHKC3HmarG/Wj7f2DGPz
         oHqIeIdhOAfNc31k0hRrzN+ci8S89S5vzolasSZju5h1Zey2/gYyq+9SjEsK/AAqnK7L
         JJcA==
X-Forwarded-Encrypted: i=1; AJvYcCVPRKioxWUOe75Btm2l0TGKMXopA4KwGuKdIBred1z9XNIF/MzzxVNTk6U9tzd9hcwVuA5xmOKYEP99NMC4tF3FH1Nl7EPKTrjBM60vPVlTIM+ap+zvQSFX+w4J7F/O3tBYUgijkDiGIF9QxsoGnX9HKXDZ/LSX1/8=
X-Gm-Message-State: AOJu0YzPGKr1+XMCMWJjKKkACg+YVjR3weR/9skK1styLANiM3XrVGpl
	UmRAnfhvNsmjFCClTR6pBHboi3j+Ao4p9zqdpjrRaFp8XRzU7xA=
X-Google-Smtp-Source: AGHT+IFDAmICUJMGqa0dJt54nPZguG3L4s2OBkFBuWtKgRLfaPC9zbKPd41N2wEkKSET7fJJHIYs2A==
X-Received: by 2002:a05:6000:4021:b0:354:df31:6dfc with SMTP id ffacd0b85a97d-354df31706fmr7116512f8f.58.1716490595941;
        Thu, 23 May 2024 11:56:35 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:a453:b45b:e52a:2302])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3550c675581sm3965f8f.13.2024.05.23.11.56.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 11:56:35 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 0/3] Add VPU support for RK3128
Date: Thu, 23 May 2024 20:56:30 +0200
Message-ID: <20240523185633.71355-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_115638_707262_1286CD29 
X-CRM114-Status: UNSURE (   9.90  )
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

Similar to most Rockchip SoCs RK312x have hantro G1 based decoder and a
hantro H1 based encoder with attached iommu.

The existing drivers can be used as-is.

Fluster scores:
  - FFmpeg:
    - H.264: 127/135
    - VP8:    59/61
  - GStreamer:
    - H.264: 129/135
    - VP8:    59/61

Alex Bee (3):
  dt-bindings: media: rockchip,vpu: Document RK3128 compatible
  soc: rockchip: grf: Set RK3128's vpu main clock
  ARM: dts: rockchip: Add vpu nodes for RK3128

 .../bindings/media/rockchip-vpu.yaml          |  4 +++-
 arch/arm/boot/dts/rockchip/rk3128.dtsi        | 24 +++++++++++++++++++
 drivers/soc/rockchip/grf.c                    |  2 ++
 3 files changed, 29 insertions(+), 1 deletion(-)

-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
