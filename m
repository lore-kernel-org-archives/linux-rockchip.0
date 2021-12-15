Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48EADC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Dec 2021 21:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11lvNoyfvj0ZwKXeRAGeZhEyQ/+gN9jkypHmDBz8cbo=; b=QGwBNTFgQuxJpB
	AImNBAHKwlhnRSZu2/hmmTnvqe1cCqVtfA3cA3/sh/UO/p9LmgNY0JW9ZTvWAnoiT1+vIk9JxQkr5
	VtVK59IJzHbgG/KgwQn15VVd9+09ibZ2LSkEQUTEIaqE+b+HCZrU7/PMHP/obxxE9/nuhBRGyGsmu
	/a1/9v/h3oNLGC/vNf3UQRJhxtsD+XJccE7T1FHRrt2wdw3HbC24hQJujMOrYB7kx8Xpoxb9q9Y2A
	Lid80F5QdCvBvp0YQZ7D5vGrycnphJIX36sCRW4XoF4CEzck+FR+65LocWQpNld7dGJ6V60y8+C90
	GhJVDjwfbqCzVnMuJTeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxbQr-002igN-2s; Wed, 15 Dec 2021 21:03:25 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxbQT-002iVw-3B; Wed, 15 Dec 2021 21:03:02 +0000
Received: by mail-qt1-x833.google.com with SMTP id p19so23199193qtw.12;
 Wed, 15 Dec 2021 13:02:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QDf8L1xIrFciKx4PVgYUU1gFjdk1Lld2RBueXaQLg24=;
 b=hlHDC1W1PZGMkes3FOWjFsTerhBsRWGAMo82E/tZA8QxUEY/oxGrMeq92vwH2MzORG
 9IjPH7v6txbgQZXLB6nnWw2QiVJROEP0o3po6q213oYMZo7/33ptQ1jpQ2dHrmzKUcD0
 6NyIH4iE1IDVYSZxC8SBoCE4UUV928G5o3zLwDbYv/fBL5RdjlWlHMSt8yBHFUUca/AJ
 frNKexNrjxd80RqceR4MTmaOW6neT7YT/bxkdRi1AHWXgSfVc3M3mNDOfETpI1nRylrq
 pivxliDDXXfE3NOLTVHu5h2ciz2pi9VCYpSQyRt0RXNh+UAo0zoFrZ7ez8cQ/u0tioPG
 YgGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QDf8L1xIrFciKx4PVgYUU1gFjdk1Lld2RBueXaQLg24=;
 b=Zn10kVonZp8VSTv2wcKoKbZaWs1u+Zwa3OP8XrFw3Wt0cCr53CHJxrAuncP7HWDoCz
 AuMJeD8cJ4EbOwtNOFYsJx1J4vCXyyxjT4mOdz2SuyzlxaZItExnt9WQaavqPLwKy9ZY
 p8NwYVGZkvf3bPn/Ch4FcuJEFt5Gn2wVc0p4n4Zbqwim6DdJsGycHoR7lri691kQQHVg
 G7HNKqWZYUgJafoL/OrU0HePCXz29joPsUmMRooFJMSfdg8MUC+OY1d2MrVloUqKJqv/
 cP8fgPIfsVFoJ7FBXN+8GuTGUBuWGD3knZj4kgHyKU8G6L5tl4CWIkj0PI1gqUdrZ226
 jb4Q==
X-Gm-Message-State: AOAM532vM2FKqoHhaOGqC9myaowPgJVz8COYybmjoA8YwoXfxywOvtKD
 57XdMTEcZo3kFhDtCmTCxTY=
X-Google-Smtp-Source: ABdhPJxNYLQhbWh35a7CkPw2Na7K1M2NsaZIjwG3yQXzNQsAU5+ZkhqlljxeFjs5C0WH7q1XUh0ZQQ==
X-Received: by 2002:a05:622a:1389:: with SMTP id
 o9mr14135725qtk.109.1639602178832; 
 Wed, 15 Dec 2021 13:02:58 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.md.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id a20sm1644356qkh.63.2021.12.15.13.02.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 13:02:58 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/8] dt-bindings: soc: rockchip: add rk3568-usb2phy-grf
Date: Wed, 15 Dec 2021 16:02:45 -0500
Message-Id: <20211215210252.120923-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211215210252.120923-1-pgwipeout@gmail.com>
References: <20211215210252.120923-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_130301_154333_AC532484 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Add the documentation for the rk3568-usb2phy-grf node, which is separate
from the usb2phy node on this chip.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index dfebf425ca49..b2ba7bed89b2 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -15,6 +15,7 @@ properties:
       - items:
           - enum:
               - rockchip,rk3288-sgrf
+              - rockchip,rk3568-usb2phy-grf
               - rockchip,rv1108-usbgrf
           - const: syscon
       - items:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
