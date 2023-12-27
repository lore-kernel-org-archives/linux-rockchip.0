Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 060C0C46CD2
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Dec 2023 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/gBFsicEuX3IWv8wr5JKpfUQic1xOQtq9rEFi3QxJZg=; b=2NeGG5JOAjOW5r
	O2Vd21iJUcDgo9XQ++THlvXrPWI0mPnJ69bXfsfppAeOHZ9GOlorie2B/OeoFy8hygi+byUJHPwor
	RpY5NSOwHFDSWCFIsNg15y4SLrs9A42hZg7zV6BHgAvz0HEjDTuKVsFEKGoeqLPVbpTZA/DJJdzNa
	rjy1fR2BBnZSX9T92nMRJ2PPT34uo2bfUZYPqfmzOGJ/nW1yF9ckpL4NuaQ03I8E5YiOu6qpJxg/1
	ef3ZA8VHw3tMmsCRz8iVuqjBdcl43uyOgYL52hnr5t5+Z3cjItaV0dGN/jI/9RdqxpMEPva8msFSB
	55CUbBir8DG1BBcaY19Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIXtR-00FEG3-1X;
	Wed, 27 Dec 2023 17:40:33 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIXtO-00FEDt-13
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Dec 2023 17:40:31 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-28beb1d946fso4388398a91.0
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Dec 2023 09:40:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703698828; x=1704303628; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XvNJhug4GM8oN3uUr85wWPaav17uENPDOjuSlTTZUGs=;
        b=Rl3hEbFdpsM7B+UY+7R4v79ucGKw0hmHDAhGXXlC9yOTZ8eR0/dMg2r+0CUldg9oqE
         IOSSR0uRFGV+03KpZP2TDzDmlLem6TwwCxgGn7DjMzMLWN3HtZP+kxqQlxrjBqzvuINn
         szTF3cT4dZ+6bWstibsJU8uHB/TVNOtm1jvMIcV3VWPvCc4RMTPOO3rkUjHqe2rH5KU9
         d6pH4W1Ryqk/nNzzLPzkdLIm1JlhupL1sKAOX3hnhbIBFmb71/tgzOoUZrPZseHO6YC8
         x/yOS8kvtdMVkjqcdt+cyUKKhMPobKZCFL8GoR3MFI6ar5KOYwDRqibpD/8JTwZrMtM0
         vq3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703698828; x=1704303628;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XvNJhug4GM8oN3uUr85wWPaav17uENPDOjuSlTTZUGs=;
        b=R8OxgIdqlG/z4aOii9KIVMMloBsPzhLkcggNjUjmVk2JObDagzQZXl/nqshJDUqegX
         gxha60/pvS98BERtMSRk2oK0QdN/l4WKHqhEwRGdojMlzbXYcsSj/FV8aMCxKfj8fJHc
         sY+rKPC17x68qjLGQdFav0F9gSmH/MUHgQMrMt7IUaTh8oqBojAIfPOFyNtvK79zulmP
         NeOMgX8btvjjmFQx+/VairDPJQK5xx2w1Xgm/GD7ggbkn9jBzhblXO9uusgcgYoisIRk
         5fEU8RX9d7sF14WuEroQDuu2yHBsN6rf4G+Y4eSX+tU9rts9nCmNWCIkcHAy19aFzRSU
         /VkA==
X-Gm-Message-State: AOJu0YxzG/LxvIKPynQrlsF3tLFrdoPlvfuANuWjtv9x+p0AGHS8V0JU
	wkUOmx4P+Ova8iwSi19VAaRKAlmz88PosNh1IgAkqQ==
X-Google-Smtp-Source: AGHT+IFv2sl1p1gve97lVFrCK/XsXTux44ghUPif7134R+YMyV3AGp05l5GJEcR1dFRJjyWf8EbNnw==
X-Received: by 2002:a17:90a:ff03:b0:28c:3b32:bab2 with SMTP id ce3-20020a17090aff0300b0028c3b32bab2mr2675616pjb.98.1703698828529;
        Wed, 27 Dec 2023 09:40:28 -0800 (PST)
Received: from localhost.localdomain ([2408:8207:2540:8c00:3708:559:ea20:9883])
        by smtp.gmail.com with ESMTPSA id qb4-20020a17090b280400b0028aecd6b29fsm17240262pjb.3.2023.12.27.09.40.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Dec 2023 09:40:28 -0800 (PST)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: liujianfeng1994@gmail.com
Subject: [PATCH 3/3] dt-bindings: media: rockchip-vpu: Add RK3588 compatible
Date: Thu, 28 Dec 2023 01:39:11 +0800
Message-Id: <20231227173911.3295410-4-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231227173911.3295410-1-liujianfeng1994@gmail.com>
References: <20231227173911.3295410-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231227_094030_361642_3CF94E1A 
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

This patch adds RK3588 compatible in rockchip-vpu dt-bindings.

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---
 Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index c57e1f488..600ad351e 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -24,6 +24,7 @@ properties:
           - rockchip,rk3399-vpu
           - rockchip,px30-vpu
           - rockchip,rk3568-vpu
+          - rockchip,rk3588-vpu
           - rockchip,rk3588-av1-vpu
       - items:
           - const: rockchip,rk3188-vpu
--
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
