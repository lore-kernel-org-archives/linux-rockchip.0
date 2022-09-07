Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53971C38145
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 16:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G4LARG5xe9KjOF+bOftVzVQ06wJOao/NPCCpmE+Kgzc=; b=eTB82xISnyM1q6
	6gW0mp5flhoFYBiMJPO9dJSWVJ+HvxnWJAeY5rLEcWtq9LLh99O5XFLg8m7ZqVa7ON8yuO37S19J9
	GnbmZUSRAEZ9nE7jcNl21PiRIAZErnAzDTOK/Q0b38oZ4RTnOBREG2lY2f0pufX7fsuXjPGiZouVD
	pzN3vRBjkWPM2VYpuqpyzzIQ1Y9R5VViMj7/G7l+Q7jzcDEknda+7COuNKFIEtS5w5ZjJAivhcaqA
	089ijJpuJQ0WU3UTfq3fYdAxLBanPjE85LTUn3HvE4/m/qOMNe5PId89DqHWHvS/DUhqBMppaB4/u
	Rvxe61mlsIQQl/K7fRZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxZE-007asA-46; Wed, 07 Sep 2022 16:06:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxW7-007Z1Y-Q9
	for linux-rockchip@bombadil.infradead.org; Wed, 07 Sep 2022 16:03:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=nZEInlFqw0bnOa6KKOyfF1WpTEi9Ajya48Xykuyb48Y=; b=joQHtVljytn60OZsn/WnYpbG8y
	JX7NdhGkChAO+VIpwwAcLMiFocxClUQZmNtIro3KcagOrBWisRdhOl53rn2/TZLZuVhO7OsShDVmv
	ti3mdsLjtLNXiBUJxZqwW2GGdVDUCoaUJcW2a3XD8n+lLIME1/Q5BBo+q2Li9s12IWOeRtdJuSEv1
	W+OlbZ6K04V35NHmewTDtxihPdEdcZ/e1acXHAlklcMskvttdptgEHEXGIMwz4gvKvLWp+wYDr9NU
	69T02In6mTq94nEzc27zdEZzeZOphFufD2lBulY6Z+WqXNxfM0IRJ3/TKdkJuImLYChAfqt8k3BEN
	FM8Oa/ew==;
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxW3-00ATu0-DS
	for linux-rockchip@lists.infradead.org; Wed, 07 Sep 2022 16:03:05 +0000
Received: by mail-pj1-x102c.google.com with SMTP id m10-20020a17090a730a00b001fa986fd8eeso18828778pjk.0
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Sep 2022 09:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=nZEInlFqw0bnOa6KKOyfF1WpTEi9Ajya48Xykuyb48Y=;
        b=tY+kAuk43w5iAY1SM8lPQWXow2Jv43+OLjMXSNvrFaCSrw6D6S9seYnbNmUXR5iIf3
         SVNPl3C+bZ4G3t0uN63fXNV9DBCsxPz7qMgY3yCWXkG24/saEFBa31CUsfWqmbDfy/ep
         VrAgpjAPAkDMzmffKOeUjD+7sBzy+1EasVAa8en0LMLbb0Cq0QrlYfut415tgmH59+sr
         v/ORDAdquGOZt4rYWIwlRxAk7/68RpF34lJNRcjoY4q+4ou6fg3Q9ouZmq9iJY4LTqEU
         vbDblZyeSyUwemkdlZPzMS16eNdtysm7/oaNDyDPEYycr+VUIIDwfOX599tL/zZhPTCH
         NExg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=nZEInlFqw0bnOa6KKOyfF1WpTEi9Ajya48Xykuyb48Y=;
        b=ITmWHUC7GvgiQfeCczRov9zAcfwyBXL/M7K5mW9U27t+IqXQ/4akWfksACeo3/YHXR
         0P4S7eglwiVBAJDjy3Z3pgvD6vwp/yGvXBaP8+oWPI1R+XJzbj/ibaogydUKL1/FOgV9
         qpdpCtQCcXFbOREP0e3BUPIJ4trTTh57W9oIGt27EJwJGpbuEcpA4zw4Yt+YW0J4WQs9
         SmRhOuUG8OBngat1D5bBbD8Rdr/jQhSfAJ5U3MthHG5IkjD+o1T4+vDpWrSMCJk0JQyl
         uKZ7juw7FChTCwDv0k4zIqlyuOUI9GluFG/XIaFKU47vuZVtUwhyCfGpP4fxsg2ahy3M
         RlIA==
X-Gm-Message-State: ACgBeo2jYyvxuQeyakKyCJplJE+hcsvcrRbPfDkqbfQP6GF3u7wQLtRf
	bX6YFt9ozWyflfBZmenF1OI7Bw==
X-Google-Smtp-Source: AA6agR5rCEzI/3ZE90WpqQdK5pUpfoELinVP9lKodHwDheMqkAWSfUcywA4FJVQa5m7Q2xy14S1aCg==
X-Received: by 2002:a17:902:ec8f:b0:176:ae70:dc98 with SMTP id x15-20020a170902ec8f00b00176ae70dc98mr4133471plg.139.1662566578459;
        Wed, 07 Sep 2022 09:02:58 -0700 (PDT)
Received: from localhost.localdomain ([23.27.44.184])
        by smtp.gmail.com with ESMTPSA id x13-20020a17090a1f8d00b001f510175984sm14919719pja.41.2022.09.07.09.02.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 09:02:58 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v4 07/13] dt-bindings: soc: rockchip: Document RV1126 pmugrf
Date: Wed,  7 Sep 2022 21:32:01 +0530
Message-Id: <20220907160207.3845791-8-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220907160207.3845791-1-jagan@edgeble.ai>
References: <20220907160207.3845791-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_170303_720845_928FB2C2 
X-CRM114-Status: UNSURE (   9.29  )
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

Document compatible string for Rockchip RV1126 pmugrf.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v4:
- rebase on -next
Changes for v3:
- none
Changes for v2:
- collect Rob ack

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 3e8d609fef09..c53f0f5a0b31 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -49,6 +49,7 @@ properties:
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
               - rockchip,rv1126-grf
+              - rockchip,rv1126-pmugrf
           - const: syscon
           - const: simple-mfd
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
