Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E722BC54E60
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Mar 2024 07:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jp8AQvNXuc8iHv/te1xgdreSBuUhGmlvoJQqIxaU0SA=; b=mXocTK4mJYGqB3
	xOqBFEPZ8hS1rwRvKlWp3f/Vz/JKjkcw6l6qNz8AwMm9ERTX9E2J0siyOUjGcYM+TpHbOe8jwZZEO
	ebpxQTxf62Mt4FdJWC+x5vUMz0/Xaqh9kkazHP5f6QxjvBCcdvCHG/i9ZSEqYi9e7lI7mOpZyGoyJ
	W4lztgfrBGJIwKduGGuXf1h49VglJ2vr/L2Z8SnScsgnUasJfv2pQ6URpie7PRpWqGQLj3lNcP7t4
	v4AxIuLaYDp1o6zPHZmjpHxMuYD9cYjRpRNlWcMH0YMmMCCTPh4CkzNFyZBL5ALgFgyXgdjnQ3GTY
	sJL+NwIVOeVUvnmm7dug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rlODv-00000002ZgN-407M;
	Sat, 16 Mar 2024 07:12:55 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rlODs-00000002ZcZ-1eQG;
	Sat, 16 Mar 2024 07:12:53 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-6e6ade6a66aso2597027b3a.3;
        Sat, 16 Mar 2024 00:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710573166; x=1711177966; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xbRqb26QfAthS3CJVq90TpB3Bg3AO5IdQEZJltedfdA=;
        b=bR6MNt4pIrzaleH0Vk/5qaVjoZPlgJcv4/KQtyTgP4BYYJ/Sedw21S+tXM++aAAXHQ
         Iusf/hLqLo/yp9EJzue+BsFEd7ZS51oaKpE9dXevEpR+hUcVbICW0yNfSUkJfm9KzcQW
         MM0xWieLOid7Yt63dxye+26E3dZml2WIgzDQ7sDp7RdBN3Sj95ZCECPb0F1Kua/pY+Pu
         PKfctEOcvy5vEZlkC069seoZG6A/DJpFfpDETsY7oc4qSnBYFn7ROAWbpzFxdtGzFY0Q
         HYhBXekoB8awV7mVPF+ZYfsaMMx75ivf061yc3TTDL494q627Uq87jMIGsFVGcOmiHVa
         omEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710573166; x=1711177966;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xbRqb26QfAthS3CJVq90TpB3Bg3AO5IdQEZJltedfdA=;
        b=NsBGTqsRSogA66RIS8NxEtTnovnYmugyEfrHlIiV+z7oHemsjT3ls88YdV6OmMBOei
         ZK9PizSHInXnzpsAPM6UOmgrDGQudJ4aBmhqilSl0j4O3JLgga3Hy1YSCRiDeTIEUIPi
         UW/Esv4fLcFFCO53lEreZN0hEKjx6bkJjqguiftuAr94S/ayEEIRFeysyz0QS9aXO20q
         wU/NJOj4OU9Dokwcc++y8cB3bX19PZ1bmN5PuM9JbjC4QmICEimadErKEFmF/dNr0IiK
         xHITZATg+d0ABr6fBpXKIjbJJektlgJIrARULGyhjrssZMYeE8y9PWErpmYrwkinMV8G
         H96g==
X-Forwarded-Encrypted: i=1; AJvYcCVuQybFwgXZLLSiTmy9T74GyPqyBURtHp7TDSyuZV1uZq5tLJo4CZweGACThhiPz0o9ohjchOgqxgPteRTcH7wJz6E33SQZhSMg8N8HYUBPr+4+81azoachnCO16MEIYJlUAwO3pvsx1yQClwVjO++Ah3AfzpCGD0I=
X-Gm-Message-State: AOJu0YxiGYIpQIs2NZyUz+Tf8cfAiIGJB2Yk5ne8JQ2eS8NSp6VghxA9
	xN1LRAgUeYnBB1TpNgKJCvmnqSzrxrvQSpXseHQM/jUJBGKWwc37
X-Google-Smtp-Source: AGHT+IF92osGMjBCD+MCHjDpfd5vqx22XGS+49u2F24YM0gP/VESBebJfFcTUfO83t7VsmWelMNYrQ==
X-Received: by 2002:a05:6a00:9a4:b0:6e6:98e4:99a1 with SMTP id u36-20020a056a0009a400b006e698e499a1mr8212531pfg.14.1710573166168;
        Sat, 16 Mar 2024 00:12:46 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.103])
        by smtp.gmail.com with ESMTPSA id x18-20020aa784d2000000b006e5a915a9e7sm4574651pfn.10.2024.03.16.00.12.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Mar 2024 00:12:45 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org
Cc: robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au
Subject: [PATCH v4 2/2] dt-bindings: media: rockchip-vpu: Add rk3588 vdpu121 compatible string
Date: Sat, 16 Mar 2024 15:11:00 +0800
Message-Id: <20240316071100.2419369-3-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240316071100.2419369-1-liujianfeng1994@gmail.com>
References: <20240316071100.2419369-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240316_001252_438583_1B6B99FB 
X-CRM114-Status: UNSURE (   7.83  )
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

Add Hantro G1 VPU compatible string for RK3588.
RK3588 has the same Hantro G1 ip as RK3568, which are both
known as VDPU121 in TRM of RK3568 and RK3588.

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---
 Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index c57e1f488..4f667db91 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -31,6 +31,9 @@ properties:
       - items:
           - const: rockchip,rk3228-vpu
           - const: rockchip,rk3399-vpu
+      - items:
+          - const: rockchip,rk3588-vdpu121
+          - const: rockchip,rk3568-vpu

   reg:
     maxItems: 1
--
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
