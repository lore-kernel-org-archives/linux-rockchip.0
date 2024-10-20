Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5028FD3C92D
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Oct 2024 17:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pMKBUhUdCMTTQf7NNp3PsRjxq1sEgjqKinh7KD1GwBc=; b=tnQhr8TQkltxc6
	UsszWhLZJzslT7+XVgedFlMP16+TftnFy5YkJCbVOl7xXKvHzvdP0p4ajJKaETwWBfg43QnrJABcV
	MzGQH4hZ66h05qrEj3IiuxG4WuFmkFr8UJVU12+S5Uk0yHAqZi54yHpeJ2uKZRvHJ3wbTfcwB6MXc
	c5Ku2L9XlVzv34XN4fXQ5ftWtcjVqGk1sp2zg27OXQ7Wrt+q6uSytMrp93wFSr3QChpArpPyfyGGn
	NNIG4WTSbejqE/1CSE9FVHZ/6BYh8l9I4UQDe/cs3YhYOecJq1Qz0l0pejqACv0jmVCvpGBDrv1fk
	e9rgCRnSaf/9/KNti8DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2Zvo-00000005BsH-1mdM;
	Sun, 20 Oct 2024 17:41:32 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2ZuJ-00000005Bep-2ZP1;
	Sun, 20 Oct 2024 17:40:00 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-20c70abba48so29187345ad.0;
        Sun, 20 Oct 2024 10:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729445998; x=1730050798; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iCzoy58B728Y9YfdMzrfkv1ULrAnawyYFUq7OsuAFiM=;
        b=H9AlgSUUKe4jaJcXonM6UcDKCurK50iq3DJw+KFsyPtl0A/PAxQr89EWT+wEjW5jit
         XNm8cpJYrTRNeDUpwk4xTMJDjR7bdNLzzCFPJKYGERLtgQ54yv+w9Epb3/QUw205DF0R
         um9yOMGxOr8cI/YNu1FlcjGfvBIl2F7Irhkwl7RiNALbum06kNpJRI752dGtEMdakbR1
         kHOkkeJt5pEm/vKNLLeLrFsGDrjbN05XVgAYaIYD8Xzi+XhFfN+Z8gdYIXeg8kx7vBmx
         e37gJVzuYqQgYBT205eC10iAWA/Fwomi0lYIEi+ekJRAg3ky/R1qj0ZL+fG0DQ4mVlmb
         W5OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729445998; x=1730050798;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iCzoy58B728Y9YfdMzrfkv1ULrAnawyYFUq7OsuAFiM=;
        b=mw8CtPqfxk5vdLSratqJj4hIFG3Ga8ibpn/wO8/+YGjyoAj0IB5lDNlhz11iiZErRH
         j1nzJMnGHCMQLg2oaGZh2JcObfFgdeiTrDkeskGiibEuibl60yxeT6zD6IGuOWnCMp2u
         4Vq08AzGogz3NgZxo3H/4fzRar9ezNL9+x4X75xgrj1opxqydgzSVVgSttiBYnMKO7jR
         eXZUIhIkht3DKZ/q8b6hY+GzbvzWd3KG/XSr5uyEgrYAuLO0DLmVzqhAGdM9JUeBwv0y
         nA1Jpz7SXR7rZ3XFTJhGrk9ORBLuBBzlGdnXODpQcCe4p7F+tdd8SBEON3lz1oiEOvdF
         sRCA==
X-Forwarded-Encrypted: i=1; AJvYcCVGl7ZTyl01lyFQjnH2cgltdjriofPBz2kNVovWkiwpfbyal08wJ8elkzQXYDm9TZVbMuwiMjOyDXCHpUvlQ50=@lists.infradead.org, AJvYcCXWm5YhDALP6s1ixP0xqavlnJTnCNGeLnTLAzsxJ7pp4VFyl/CYEz+92et0vvusBMvOdb3a8gxCbJVPI/dQhKCs@lists.infradead.org
X-Gm-Message-State: AOJu0YyLm79Lm+1c5Z3tKhXKZT9wxFxWf8hB0bwAwyvtoETg4qua/mb7
	rfQr0PRv6yQZ1Ro4Z2ux/rV7lklHcksZ3iB0hyTbeS55sDoxUeik
X-Google-Smtp-Source: AGHT+IER0PkLEfl8SCgcw7azi7ZIdy0Jj2EnoxnllTknGc7m1H1PEoBmWi3QsD899JLxWGBQOXHY/g==
X-Received: by 2002:a17:903:2287:b0:20c:ab33:f8b8 with SMTP id d9443c01a7336-20e5a76da57mr135652535ad.15.1729445997397;
        Sun, 20 Oct 2024 10:39:57 -0700 (PDT)
Received: from CNSZTL-DEB.lan ([2408:8262:245d:5b64:bc4b:53ff:fead:2725])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20e7eee8b94sm12600785ad.4.2024.10.20.10.39.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Oct 2024 10:39:56 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Tianling Shen <cnsztl@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add FriendlyARM NanoPi R3S
Date: Mon, 21 Oct 2024 01:39:45 +0800
Message-ID: <20241020173946.225960-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241020_103959_672528_489CF022 
X-CRM114-Status: UNSURE (   8.44  )
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

Add devicetree binding for FriendlyARM NanoPi R3S.

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 70bd2e4d1195..862cc2982086 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -244,6 +244,11 @@ properties:
               - friendlyarm,nanopi-r2s-plus
           - const: rockchip,rk3328
 
+      - description: FriendlyElec NanoPi R3S
+        items:
+          - const: friendlyarm,nanopi-r3s
+          - const: rockchip,rk3566
+
       - description: FriendlyElec NanoPi4 series boards
         items:
           - enum:
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
