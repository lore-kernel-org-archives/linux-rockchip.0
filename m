Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07F31E7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 13:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HO/BLfp+dGgEwg45Zo3Had+KVfTcjhpR1clg7/GzpIc=; b=I6u3I4vuBS7bui
	ziPTDtnIh8+4OvhvlpSOQcm5RXqhnb5d9dB14cws9Ar6uShG7P8wihRGPj+nbyoIAcfYb7SDA2iWr
	rmLjrx1ZHN9Jwz8jMDPpx7RHqVETxNfPRqy2E/aFGGLrUEm5q4LuB2Nhs3a9hbqR32XeduSkgFP5j
	wWozYWbcW4Bw14NGJMW7HYT0qEl05/Muy6WNa0AcgVX7rvvxuq5m8dKxNTeYSdp1qwqgEXqoMBhzX
	k6MGKwcbFU9lQrzGguivh5lbctxozF2XNJKanL4gjZhThzvTSvep8wmFU+tVvV1LkM3kxX+JAsuO7
	ad9veiu53aFoLP4dX5pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRAVC-00000000Is3-390s;
	Fri, 27 Dec 2024 13:35:42 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRAU4-00000000IiB-1lhn
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Dec 2024 13:34:33 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-2ee989553c1so8713909a91.3
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Dec 2024 05:34:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1735306472; x=1735911272; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UDGgaqN+RyNFFUIhBmxwJa3uKb6CA586OOHT4HO6pCo=;
        b=x00TyTpfDss8BX9kDLt0d1IbSV6yzKWNhwyls4+YJyGS/4hxKhvK20O4bIG7k4/hh1
         4y2hMpE++1nPdAYCeuGSRRdvlEOXgmDfDirktHhwL8UWjn7F87MIDGrZzR6tCQIxsVTt
         uaNHn+V53Zg8qDy6fxj1YHRsy4+1e+w9vND/v+dqZUbbFBPgzRZAzQCXoICD7f8ZP7cp
         xgBCtzkyeMyOgfV/LLahLdOIYPrEKWL1mQhzGrwgUnfnodgF7+/uD1NMxBI1aqUM/H6T
         hbTeIhuj058miVJ9gf5b9p7PoxMgs5raitkl8RkehBgFcgt0Rfo57dC9v5HamBQ77uPt
         GtZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735306472; x=1735911272;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UDGgaqN+RyNFFUIhBmxwJa3uKb6CA586OOHT4HO6pCo=;
        b=MLmgpl6p/Vtk/+5GiY/tucZp4mZYGlXyhgH+AFTNWGHQ2dVG/q5a69TwC3NMa0w8GD
         sBCGjNFtZgjYHsOhbjG8Pb8RTwlMG3NnF8C25kmM+AUYB3GoMmxgMFw3p1Vz7yrxg5BN
         Y71wQnEYxoIg5cRKAq3kJXH8dujSvc2xifiaqoggOBii8i4ZS9unwOtshMzOmtBJKkUC
         CQpkqbyOeTLX1VROZbJ6V7khOB8PN5DOQIKmEMnyvrDt+WGHoEsTUY8cA/Zztq2UFuSU
         sOG2O4JyUhyoNjwESIicbKcyzGAerlNOImNQ/Db4mg+ICHY4zjv9grR54bulkIpEuZsJ
         CA/g==
X-Forwarded-Encrypted: i=1; AJvYcCVeA6pnI49e1IIjt2TV5R17mG4XeD3T5+/ggD6loVY693Z6c09GkpDiIljvRtdfeP5zg6XceAK8uLTUTJLCXg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzN3zG4HIuZsKY+zvPkSDaONwSK9fsU6FLK4tAKFPjeAiKa/9pO
	397NViWEvnaGwujwbZhmqeJv8i4RFPSb/AgJAMlXGlCGK+SRad+OuiNnBidi8Q0=
X-Gm-Gg: ASbGncvxXO4Er80egH0H0DVnQUoykuk/WO4iTraGMQpjYtcy0VI0y3IvPL+TAT5TPgr
	ahpaCC4PsQstvj7ev/nYmeFfaJxhcHdUV8szYQJHMtDvjMyzowteOidjxrOIy2zXEVVcMcYLMIA
	OvfY3OOO3qET5ezG6pi+1SLEY0O9IuUy8oPFXSVIcciwAWR0TEWkUQTvbFGlejjNrDa96z96t2M
	r1edfCj16/OBPFlBJl432xaCK3qicPcGJlyVU7buJ+LWMVRl0f0ZjBQ8Ow505b0nXuRHhA=
X-Google-Smtp-Source: AGHT+IFo1pADb4rVMihXewKTUfgIpGRLw2CQ2m9p8MRM9fVgylT7CDtLc2bBkTGmWfrKx/vwilzdkw==
X-Received: by 2002:a17:90b:6cb:b0:2ee:863e:9fff with SMTP id 98e67ed59e1d1-2f452e22560mr40951589a91.10.1735306471825;
        Fri, 27 Dec 2024 05:34:31 -0800 (PST)
Received: from tops-ThinkPad-E14-Gen-5.. ([103.217.239.66])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f4623dbfbfsm11808238a91.48.2024.12.27.05.34.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 05:34:31 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 2/4] dt-bindings: arm: rockchip: Add Edgeble 6TOPS Automotive Edge AI CM
Date: Fri, 27 Dec 2024 19:04:18 +0530
Message-Id: <20241227133420.169714-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241227133420.169714-1-jagan@edgeble.ai>
References: <20241227133420.169714-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_053432_462791_19A33856 
X-CRM114-Status: UNSURE (   8.74  )
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

Edgeble Edge AI CM6C is an Edge AI Accelerator module based on Rockchip
RK3588M.

Edgeble Edge AI CM6 Industrial IO board is an evaluation board that
would compatible with Edge AI CM6.

Add bindings for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923..709a13835c9b 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -132,6 +132,7 @@ properties:
           - enum:
               - edgeble,neural-compute-module-6a        # Edgeble Neural Compute Module 6A SoM
               - edgeble,neural-compute-module-6b        # Edgeble Neural Compute Module 6B SoM
+              - edgeble,neural-compute-module-6c        # Edgeble Neural Compute Module 6C SoM
           - const: rockchip,rk3588
 
       - description: Elgin RV1108 R1
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
