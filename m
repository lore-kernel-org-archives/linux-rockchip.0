Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F703C04FF0
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 06:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jp8AQvNXuc8iHv/te1xgdreSBuUhGmlvoJQqIxaU0SA=; b=Npb2kDijw1bGtW
	kTZAE937QV5k2L1zJHXUuSkvUjc4LrTENMAeOyYy7mXCooX8MejolXt6F1FLBkxXzjx8hsyztJN0G
	+/yq8hIjPi+nsQNM5LG3HnTEaBCGbl5xXLJaeJ3SxzrtvobzWMi0TunBUgJq19k8yInEHEGOEdj+u
	UlSmjCiEScPAysG34M4yr5Xaj1iTapGp7dmxXou7K8BFO+t9FJf+yTqIGi35JdCmrMDxUEOpzdIoX
	iyEqPIaj/TivwfCdQQ3kkUZQiqOfHQiJ9Z0pzlw8XEEyHrNu/XNNtcRHNfi+yhc9MZnQ9/vCLGq8M
	+3YuCmFppSnvrBQJrISA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvXAD-00000002ZTh-1nk7;
	Sat, 13 Apr 2024 06:47:01 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvXA2-00000002ZKt-3UZK;
	Sat, 13 Apr 2024 06:46:52 +0000
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-3c6007c6410so269040b6e.0;
        Fri, 12 Apr 2024 23:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712990809; x=1713595609; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xbRqb26QfAthS3CJVq90TpB3Bg3AO5IdQEZJltedfdA=;
        b=Zo1S7Mz+1Lsibn53/cjYy1CUBGDml1DjqD+stKBQFcn5wigHsACV9msnDM/V0Cz9Kg
         acBA3c/psuhEFHOHcdle4oyKuWTMLUFteB0DyU35OiqERPKKeklXOvLwW895ue7hQ0r5
         nHnd+7e7ZKJuu6w2c38onUWm89Y6RYK1R7ufgofshcZOkZfAJpsoVkLl8MDAAouMzhss
         ED1W7hSwtRMn071yEix+4E7+GWI6Ge7xWI6fylV7MdX+Rc9kfkLbzi0+vrJahcFdEmBi
         ctPhqFjjlJWrk2yqJLuvB/if57g5MbJuuzOOGk5dY7Q03rG02p/8Nbglf5qj3wZA5I6d
         pGdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712990809; x=1713595609;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xbRqb26QfAthS3CJVq90TpB3Bg3AO5IdQEZJltedfdA=;
        b=SWV8Xss/+VI62vcsWrcB3tGQAIQ1RT9602NRiYUQ0FhaL0my+IbEOVvPGvA4G5tkyv
         Uf6NhAK5KsPJggwLxEKgVTcMPCXm1O2NR3dJooOAyK7hHtmZVzYy/bFp15mSfwnzB6HY
         zjJmpqYkHr4rI4KYzPpBb4uSAfIdH97O4G49wa0qDmK78+YxLT2Iso/no01azVaOcYEw
         NETgzxQEYM7XCY2pXfxhhaCE0ak+pP6ctLM6zpLTmOLDfTChiQ8AokRh6yk7s1mI8XlF
         HR2ArMhcHTlb6cYYI2bkZP5AETRrYJpClZN0HKImbqiuoh9cPNuW9C88P01SewVW/Leq
         QBPA==
X-Forwarded-Encrypted: i=1; AJvYcCU1GcO606aRrcHpygKI4e9QkxqqJMSWmgtOoW9QFsbZPKD9XX+QIBaWJZ5JmWOxMXgOq97KGWaJlBlU60AsXTq02Gn2wnqpK9J753xN3DlaJK/EEYqOLHjiZkdlMO1BlKQF2fnxUHX2ac0GeVXZtxr2+nyMNJsNons=
X-Gm-Message-State: AOJu0Ywg+OKonhTE59vJLYfVoiKeNCBPfpqso8oq2AhzzDY5tAGvds70
	mXAMOz2p3Vt3JRdpnTpqS0ZlUfWKH/qQJDOhj9BPEAg6O03GyRcu
X-Google-Smtp-Source: AGHT+IErS4TJR2V/CrbkM0Eg5mpkObIhcMcSXT4YWodzpv5E2aaVxsMHBZjnG/n/21SFsqBLpCqNMQ==
X-Received: by 2002:a05:6808:1a82:b0:3c6:f5ca:86f8 with SMTP id bm2-20020a0568081a8200b003c6f5ca86f8mr3908304oib.27.1712990809391;
        Fri, 12 Apr 2024 23:46:49 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.103])
        by smtp.gmail.com with ESMTPSA id p6-20020a170902780600b001e2a7e90321sm4096693pll.224.2024.04.12.23.46.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 23:46:48 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	sfr@canb.auug.org.au,
	liujianfeng1994@gmail.com
Subject: [PATCH v5 2/2] dt-bindings: media: rockchip-vpu: Add rk3588 vdpu121 compatible string
Date: Sat, 13 Apr 2024 14:46:08 +0800
Message-Id: <20240413064608.788561-3-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240413064608.788561-1-liujianfeng1994@gmail.com>
References: <20240413064608.788561-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_234650_948565_78E86A1A 
X-CRM114-Status: UNSURE (   7.55  )
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
