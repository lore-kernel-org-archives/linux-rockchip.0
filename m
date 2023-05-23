Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D07D0C7EE29
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 21:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KvBYqYbnKQyx+qc6GRVl789XrKB0Hv4tu2cPowFos/0=; b=V4ZngxQFmshC2m
	KhYZTSn8ILyxnYyC6aiDyaYKgxXwVRSTIN9Ppe5gYOkY6Zl42Q6i8bjnOSDfEhLW8C5zTY+cFRfaQ
	OqEzfIJ2M4+XwoZXRfxW6PCYUnxttf3Zq+u/Fk/TVQOBSJWkiSytKK+n/wrryvR/5Ei8ikVmC5V3+
	j38QdGtxe0ExyL46IhMTyTlc9nf+C/BmNhsZpVE9kwsCtmKoPX6EGgT4zWeG1l3rPQYOjyW5rV5yN
	WdDN4H6dyOwASwo+VbxCcsonxSQ7+B/SRT8N9JNgTBxIhT20HsJo/W+mc7qocTKApsRKD1Nv1tNnu
	l5KXhdjz6Fe9uCpyFtmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1ZiM-00BVUL-1N;
	Tue, 23 May 2023 21:38:42 +0000
Received: from mail-oa1-x2f.google.com ([2001:4860:4864:20::2f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1ZiH-00BVQF-2M
	for linux-rockchip@lists.infradead.org;
	Tue, 23 May 2023 21:38:38 +0000
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-19a16c8d70cso137244fac.2
        for <linux-rockchip@lists.infradead.org>; Tue, 23 May 2023 14:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684877915; x=1687469915;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ix+1iyVwvq5YDYEbZ/aFgQhyfZBXx0DvBnZd+gR5Wcw=;
        b=ikhR7QD/PWZ9AYHLbDesyyyoL21t6ku6E+41m6IIb3rJAyTZa4y97wt1OdHqmM/ThV
         dQNCAVfTtqpH/ur0Wb+768h9L/sIAADrlZX3mccXAGngeKayrYtjU9zNcfWOQ6C+Rrah
         2BQ4Q1uqiJKhlh5ISf7UUQjMpS46akCCq8YUceSJVYEj/GTljoX7zPSE/Ecw85KHwTJX
         ElFjA9JBheP0pXhfqpRKOro/LgIxsgBYO0Wqq2l2aFP4eT/ukIy0Q/3GYBg4rVWfruF3
         wFnd6DlYtg0KKBb+J7/iIO3oxGX3S57WsL4Gl4Oz0tWMop4ljmmrYDPZREebi80HEV6Z
         DPUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684877915; x=1687469915;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ix+1iyVwvq5YDYEbZ/aFgQhyfZBXx0DvBnZd+gR5Wcw=;
        b=ZSqSVBhJ/pI5qPNq0k7NitNDxLlv2dmllPAN0cMmoJJreWkLODZGltKkM7cKw/BLg3
         p7vt7HpTXL9oKQ9S404EG0lQA4svUi/hoLthlk2wC1MBdOfUpE3aMh0Kg992dRP8cI2c
         6QgibMUb7S711roXlmYfWY2P48DgKsZngDNgx//WkO/gHo07ishDWUrIMJCP8BUUE3fz
         y/egYGZBimMKvkrNbzVhaF4dCYQP9wbmv4lKw1ONoxz7AhGeuaoJ0GIHO4UoK5LIRm6n
         g1VT+huCvSjrpd3j057/DwyCPpmJR6516Qdr75Ym2X14xQ9CxTAoaJqNmDpQPCv7pTKo
         FqPw==
X-Gm-Message-State: AC+VfDwSYK0W7HMZO/CIOhQHkJ+RTS1TxtXI9l42/oE982BNJ9Kb3liv
	8Uk4Hqe4gGcJEVNO7Fnkgq26aqApKbJhDA==
X-Google-Smtp-Source: ACHHUZ5MneObFTHYZ+sAb7c/LwLONHBsL0zmQRw5S21Rr5FCtGfmJRScWF1vi/l6oY18WrpSERHDSQ==
X-Received: by 2002:a05:6808:4293:b0:397:fc20:385 with SMTP id dq19-20020a056808429300b00397fc200385mr4226191oib.28.1684877915719;
        Tue, 23 May 2023 14:38:35 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y83-20020acae156000000b0037832f60518sm4442359oig.14.2023.05.23.14.38.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 14:38:35 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	zyw@rock-chips.com,
	sebastian.reichel@collabora.com,
	andyshrk@163.com,
	jagan@amarulasolutions.com,
	broonie@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	lgirdwood@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 5/6] dt-bindings: arm: rockchip: Add Indiedroid Nova
Date: Tue, 23 May 2023 16:38:24 -0500
Message-Id: <20230523213825.120077-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230523213825.120077-1-macroalpha82@gmail.com>
References: <20230523213825.120077-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_143837_779258_A8D57F21 
X-CRM114-Status: UNSURE (   8.60  )
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

Add Indiedroid Nova, an rk3588s based single board computer.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ec141c937b8b..3c5a204bcd81 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -542,6 +542,11 @@ properties:
               - khadas,edge-v
           - const: rockchip,rk3399
 
+      - description: Indiedroid Nova SBC
+        items:
+          - const: indiedroid,nova
+          - const: rockchip,rk3588s
+
       - description: Khadas Edge2 series boards
         items:
           - const: khadas,edge2
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
