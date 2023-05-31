Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95048C7EE23
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 May 2023 16:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mDQy5GgFPqH2QBG59RxBtv/KK5YSkUkD9a4woK5eteQ=; b=mxuklU4TX9fGSx
	zLmCyHx+9ODV2myz1hRzCzOI8lS31WXzGZK4Wa8euXM+GXCXeszN8I9QcbwCFJfn0IMnPub4iQwwj
	HRfOCfPJbb6tQ8iV3kuXhTLIIVoJzrJR2fnCNom+JYEiTT5yTTyoVM7kAw+Wjvw9EAqsN2ejDe5xU
	a4Sb5IwAx9dcCLS4bS2nPdo7EQKZkLKV1QA6J+oJWiYYJelU9yGSht8paYy+8ifXAsnRsNQ1GmtZ6
	BO+P2PiDGC/xjPC9HGSWs5CiY6OVzO0JQ6at1544qo0zVbFKd5NbQeEeEPQlpGfLJvX5oYSAo6Gez
	xG0PpuL80DMzGK4EEWyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4ORI-000QZT-0f;
	Wed, 31 May 2023 16:12:44 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4ORC-000QXJ-2G
	for linux-rockchip@lists.infradead.org;
	Wed, 31 May 2023 16:12:42 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-39a55e5cfc0so601274b6e.3
        for <linux-rockchip@lists.infradead.org>; Wed, 31 May 2023 09:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685549557; x=1688141557;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kGplE1nV9lc+LSJw4EDPm/qvRoPFDbe8Tvoz+cEIQPg=;
        b=VZqUdn9Srnc6U2nOhDJ6NyWAWi5f9BiUn77wrKIEVaQMG6SAD+tS53SZutWByGWUtK
         whPvUKzLSzq7dWZIJgNgLt45pV7MC1/g13yAGNb+wnktI69sq7rtzjelG08bmepfnOXv
         V5oF+8Kc7Kpq1vAVkmWDT7ppcHzU+sF5fXFw08599N+WpTuh6XQ90Bx3hkc+EdSWIkol
         dPn/2nz4OUXObKHkSEbvd3zoMeyZ9PnPBRuozEWp64RkvpPJ1yEtx6frVgrXzAAe6TzW
         TgY/g8gceVHzXD1CnuBA+rCc+a6iGihROdheDgZDJ2Og1QKoQV02REErSWY1QiIjstAB
         RyeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685549557; x=1688141557;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kGplE1nV9lc+LSJw4EDPm/qvRoPFDbe8Tvoz+cEIQPg=;
        b=gZvQTvymc0I3l6aIvMdNxCKYgjDnEl5xfEIkcmALChXKlGmriVPC+hnqyq0DNALNWX
         24bPdX/Tzn54Ec636txDcbR6fMFiZ9AT1i4lvYNUQwLCOJiPYwiHv6XnSREFZvRO6Iy7
         9xhLSLeGpz9Rz3qKz1+viwZ0Wyd4b16cx3FYI/78Xa6udKzFDxUtHTU4E8EO+/QVlmUM
         pwbikk3jAfbxAc7g/aaQ1KNO+yz627bBDWsLLp3Sa+lx8WGCt3BQYX96CV5YLItAMESp
         fdxxd/Xj1G2ri+5NYTgNWXlfreMcdvf97kqiOLriLMZia3Tq3jak1dFCsj4pQ546BUKU
         Bang==
X-Gm-Message-State: AC+VfDwBIEC4NqpRsssL7VGVk1CjcwdtPfJsqzP4aEwCH8BJ8UX9JkST
	EaS0k/6dts9+rsYGHnzeTkiYj1E/Cps=
X-Google-Smtp-Source: ACHHUZ5aL5Vg8BBmveNsZWoFtuXkpFvEdUxfX0YWODm6jMdRDvWSoF7WuMjxbIqd27YXY/MxrowyBQ==
X-Received: by 2002:a05:6808:1792:b0:38d:ed6f:536 with SMTP id bg18-20020a056808179200b0038ded6f0536mr5465620oib.42.1685549556782;
        Wed, 31 May 2023 09:12:36 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id c3-20020a544e83000000b0039a21e8c620sm684633oiy.3.2023.05.31.09.12.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 09:12:36 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	lucas.tanure@collabora.com,
	kever.yang@rock-chips.com,
	yifeng.zhao@rock-chips.com,
	sebastian.reichel@collabora.com,
	andyshrk@163.com,
	jagan@amarulasolutions.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	broonie@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 3/5] dt-bindings: vendor-prefixes: add Indiedroid
Date: Wed, 31 May 2023 11:12:18 -0500
Message-Id: <20230531161220.280744-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230531161220.280744-1-macroalpha82@gmail.com>
References: <20230531161220.280744-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_091238_733715_69A17DB5 
X-CRM114-Status: UNSURE (   8.45  )
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
index 82d39ab0231b..580f32086d55 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -617,6 +617,8 @@ patternProperties:
     description: Integrated Micro-Electronics Inc.
   "^incircuit,.*":
     description: In-Circuit GmbH
+  "^indiedroid,.*":
+    description: Indiedroid
   "^inet-tek,.*":
     description: Shenzhen iNet Mobile Internet Technology Co., Ltd
   "^infineon,.*":
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
