Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 593B4C7EE26
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 May 2023 16:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xi2nwTWKrzGyPZutaaxR/gO4qZFT6mO0rVbNtzHNVM=; b=iJ0B6ZadDDQYyO
	OlvJOc96/QPLNUn8SANdYgz6g+7YfjIgxag/pUXejidJT6Tmql0ytsMOROMpRheVyfVUgbL4HjMEd
	bGYX2pKdtijZ1Ul7N9MViZbcGhZ6LH4gTh4rYmLXj2r9+5QNNvc0prlz3cPt/Itior3kU5LhAsMP/
	nf6cKQoC8J1xsFYdlNZMIjNzMLESdKG9/x9MTfbDKUhcvSIC4SrGAUNDN7DojHwOqeq4ZdcK65cl5
	iB+eACYnN9PmmLRLGqRTQ7a6R9t+mPn5M9gWEST2Hnl9OJoJVR3LWFi5yT1b6rjFc2yNlFcAf/y28
	ueGO5bTfFzhLk/tp+JTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxVVo-00CTNA-0j;
	Fri, 12 May 2023 16:20:56 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxVVl-00CTLX-1c
	for linux-rockchip@lists.infradead.org;
	Fri, 12 May 2023 16:20:54 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-55a2cb9788dso147654667b3.2
        for <linux-rockchip@lists.infradead.org>; Fri, 12 May 2023 09:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683908450; x=1686500450;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+u/Q2BQN9a7YozVknL12KsnGjDJPaozy74q2a85XcJo=;
        b=pBhAiTMTnAZBJUgUDPOx7fnBrB5rAoB8S7WJhzqPKojku1Y5KbKba5aYY95NznlrgH
         EiNUGI8/JJSV6G83+nKyKwsZKBelWKcImmdtniSkOZfG6kDAOEG0vxtNKAfq4LRxkO/V
         OKgN52DF0LTt/tTVgKJTsK/GUiAbwse9j55bt/K9t6DRvH26x5XsIJFXAievPbG1hwFa
         CS/oyZKpViFY6Uiq1akDHbr7lcb2AKSjmirO9NEkTwUrJQGhlTJGnmm/c5Yz3eBudRf0
         8YsPJ37NdpwM1AF8SNyVFJiIsVU8BZE1f/AKBvOdsohG/9vXhNZhcp1S2ZCwlg2t4k3E
         6DjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683908450; x=1686500450;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+u/Q2BQN9a7YozVknL12KsnGjDJPaozy74q2a85XcJo=;
        b=jd+kSMnjBANVxHEmND9pVquLHr6+o6OGR8xREjfpabCULRIZv5FVLiIoAuHG1ypzGx
         nVqKkxBcCMNJ1EStdygJn+NaoOCtM9z0pphrYYMia3xXjlkwLYxt9QPvBkIWnidk8Y5a
         03My/VG/fs8QK2erXuDRd0r4c72budy5TexSiefdE5irhe6IQikoTpnKSiAfNu4YbiHx
         qM8Hq4juTg346U32zkX+gg3HZ8K/cw8osNq1kq1NaukZ7AX44BSv11kcBTl4xPAYVdc2
         CyROFiJMG98rusXWT78Yo02i5bmh+Gy5Du8SZGavxy7uuZRAp7ttX0OOufRcpQ0pDj49
         7uPQ==
X-Gm-Message-State: AC+VfDxP+ESFHq0+uXd5UnYdbPCrxUhSTGup2wQEX+T3RO+SU1YcWScL
	q5PQ6rSkrCRpjCJMtTJTl/yb0wHKY3FCGA==
X-Google-Smtp-Source: ACHHUZ4eQeBfZ9WUdXqu6q7U271Y+ob2Jn+mu3kLqsC7EKMmD3/BGSeNNy3eshcvYF1RYCbRFS3K0g==
X-Received: by 2002:a25:e78a:0:b0:b8f:2047:181a with SMTP id e132-20020a25e78a000000b00b8f2047181amr21552185ybh.24.1683908449968;
        Fri, 12 May 2023 09:20:49 -0700 (PDT)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id s19-20020a257713000000b00ba71e594cafsm340129ybc.62.2023.05.12.09.20.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 May 2023 09:20:49 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	maccraft123mc@gmail.com,
	sebastian.reichel@collabora.com,
	jagan@amarulasolutions.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: add Anbernic RG353PS
Date: Fri, 12 May 2023 11:20:38 -0500
Message-Id: <20230512162039.31132-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230512162039.31132-1-macroalpha82@gmail.com>
References: <20230512162039.31132-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_092053_537577_F1E5C762 
X-CRM114-Status: UNSURE (   9.83  )
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

Add devicetree binding for Anbernic RG353PS. This device is identical
to the RG353P, except it does not have a touchscreen, does not have
an eMMC, only includes 1GB of RAM, and ships with only the 2nd
revision panel based on a Sitronix ST7703 controller. Support for the
panel has been added in a separate commit.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ec141c937b8b..362df3f2a037 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -40,6 +40,11 @@ properties:
           - const: anbernic,rg353p
           - const: rockchip,rk3566
 
+      - description: Anbernic RG353PS
+        items:
+          - const: anbernic,rg353ps
+          - const: rockchip,rk3566
+
       - description: Anbernic RG353V
         items:
           - const: anbernic,rg353v
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
