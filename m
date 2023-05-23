Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C246C7EE29
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 21:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3c2dGHiq7NixGammjEx+3xNav0g5RLvTZF/1mYmfq7U=; b=eZsO2WQ8ftAFAr
	HClwAlQ/UwODSuY4aMzGW7T0kUmtqUyA07PVSPK/8BmypkQAmEbCqlp/XmrPbltH6D27a+az98TB7
	okqXsdJGLh5Z9ZS25cmvhFIX8Bbb9ELHcHTlbEgfamW9K4oXiRpEG4+eFnjnPDUIRzjbrVGlmQhxV
	+xmQsPgtagG/JgmXz9puDHBTnJuQtFBiDUdzUh4mZiP1gfd0IUGMtrbzqknIU6AXhsH389DyyDUgF
	OHvm/XWvROSakLq/+Dnf1ki9Mege0PhHwiY2vjaPN7O+KaaaOSNTZlvw7IGjRtHPOrgxh38k68bw2
	fEycSN8ECQINDv2ILXWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1ZiM-00BVU9-0C;
	Tue, 23 May 2023 21:38:42 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1ZiG-00BVPt-37
	for linux-rockchip@lists.infradead.org;
	Tue, 23 May 2023 21:38:38 +0000
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-38e3228d120so195964b6e.3
        for <linux-rockchip@lists.infradead.org>; Tue, 23 May 2023 14:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684877915; x=1687469915;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pZeG6tAZK19WtgOFcLJKr3rNEIZEgwi3vgrLkaNzhIA=;
        b=GoE+EJIIvySDiSJjK0WywYB9BUPC2Tr7tGgL3PQJ+xEsyp3a0K8+GDMpfCj9qjMbHn
         Xnw7V8+6MqrsjHloKTYHoZkmIu2QKwdK984nShCQnXmaWNSND0zdUCkYu5V8iEIk2T1m
         QNDfBLASJzoi/1dsqEPEPr5xSrQ256FRl5u/AKdgfgnSK4HBkofBfUhI4rjAbIz7rrd6
         V7enz6iWWftX3T7a52AVqqhUESxkmj0PjWfNIRqfLhZXderkr3+ghw9A7Y0RHUNcjoS+
         yq4PIK6Of/ucaJhl4+kScI18GnhZT0OIuHsDZuiNxUB1H+ah66q+hH/2bY9fiT9RBPH1
         GVtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684877915; x=1687469915;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pZeG6tAZK19WtgOFcLJKr3rNEIZEgwi3vgrLkaNzhIA=;
        b=E9h9mdniqogVJgRwm7uV5t2AdgY4bOnxk/6lIZ1neGpgGS+bmVe1dJiY9LN8SIkuRj
         f9StfoMmyZZiNdv5m8zJpSyYVUrovCbQNsW0+gzVNIoZsUgvXjuXhHQdTdef29rTt78s
         e1AlTnkgKLDw6SxVLLboH9pLsRkqa7fOuuvkMKHFFPq4HyIodU03ORaCra52yA7rT8e7
         MC+B5u1Cc1o/YnL+pVxX04ruy4lk8a+uUuLOnsdOmKNMjajJJtd8EZ4dDrjMHrdOE8Gu
         J/8E3MR93u+jcoAxNrRgB1syxHLh0FCASco5mABZbAB8OEb+2T41Tp4gXkNQbuxDKZJx
         uhGA==
X-Gm-Message-State: AC+VfDw/s3rrqIS7sjJQE/yJCIdjNlbeTvXcqmlcOCUl7E692H1Coqdk
	VSmuzH8LaDz/Jlw6YxxbptOVKZq83t21iA==
X-Google-Smtp-Source: ACHHUZ65eLkVCgnWkP/23kS62FqwAKgfThDB9Z/OSIkWJe/DFkubys9nClKGd0Sk0PSjMQgOZqCRBQ==
X-Received: by 2002:aca:d0e:0:b0:398:2db1:dc2e with SMTP id 14-20020aca0d0e000000b003982db1dc2emr1861840oin.26.1684877914903;
        Tue, 23 May 2023 14:38:34 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y83-20020acae156000000b0037832f60518sm4442359oig.14.2023.05.23.14.38.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 14:38:34 -0700 (PDT)
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
Subject: [PATCH 4/6] dt-bindings: vendor-prefixes: add Indiedroid
Date: Tue, 23 May 2023 16:38:23 -0500
Message-Id: <20230523213825.120077-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230523213825.120077-1-macroalpha82@gmail.com>
References: <20230523213825.120077-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_143837_000387_0BB686A7 
X-CRM114-Status: UNSURE (   9.00  )
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

Indiedroid is a sub-brand of Ameridroid for their line of single board
computers.
https://indiedroid.us/

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 82d39ab0231b..632662be6e65 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -655,6 +655,8 @@ patternProperties:
     description: Iron Device Corporation
   "^isee,.*":
     description: ISEE 2007 S.L.
+  "^indiedroid,.*":
+    description: Indiedroid
   "^isil,.*":
     description: Intersil
   "^issi,.*":
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
