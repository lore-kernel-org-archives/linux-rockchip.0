Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F912C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 20:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mwE9phSlzxx+AoPA9hjVbY7n9pF0cm7Cye72HKcCsQ=; b=oawYXzooaEUAC5
	06VAjqs4gIW24t3Rl1F6SWtc/EYx0QHqCiRkCS5VpEGidoylTIH1LHMTFqe+NVodQftU+UQFwDkC8
	GTk7XgLzse+mduUP0atPiuKrwxu8MSqbTS5eZ7ZjhJ3DoDzd5bcfs+NnWt+wR9Ba+TtPVtpTs83zd
	VAEK2bNpMoihnNF59Ro4N/lwxLqNWmUb5NH5X1/Ij7BMY40TcUicylEbyQh9ykumyVERDj5Q5zNyd
	mAORzs4IzG0oUMtxTv+Tpmy0ozrJocReTlscPqLm1VE3XyTk8pKC8qiwRnzMbhO50nVWfF0Cyi1ow
	uaMaXLerHIl3pmBw9/PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFM68-007CVw-97; Sat, 23 Jul 2022 20:51:40 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFLza-0078ej-Rl
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:44:56 +0000
Received: by mail-pg1-x52c.google.com with SMTP id bh13so7090012pgb.4
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QVGUGb8CKotf1INyoHtVPTbvbGHrouTipBeJg0RyviM=;
        b=C952au4kP2fHzBsISV0jnK+fE5GuiDIrWFFUoEqvpJWznM0IKLR9Rx7gdPwT1HoCJX
         yp48lmkuXZ5BliWtOKj5nJSeX1mQq2MvgQPYmIXWwWfGpiBvihqPbRU5fNxNFsRuZw07
         2AumDiKlfswtIKmb7eCkKwIkv/9lbonI/W3tm9mVpsGohMFec0aNXZmFZLkxGNezRxGP
         JX96Yxiaphm1Xn789MYfML8tVk2FJ7AsSZCWtJRPfarRzzzckofzg1Z2bA6V/XMdafsP
         IJesWtpFQas4WAomlLT6C0qy0ySfr9HOekOZVlf3iXbxW3PsKbmCok0WTed3I86Hj8Xy
         q1iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QVGUGb8CKotf1INyoHtVPTbvbGHrouTipBeJg0RyviM=;
        b=Ed5fm3ViIQC8ehOdKeZD4BjR2cvqeGfiY2J/u5TPHIZe7mDRE3xtrYd+QLV8PK+qxh
         a2262JsNSOrM8eyLT+uDBf0mT+Ce2jagT/eHh6ducYjeaVtTPLd3QJgjkviAr8+X39In
         0898hNsxGP7dnIgi8r2eYtxzwL0kXo0Uiot4GU4xxAIWk3hsxfSZMTPnUyBo0ES25bTb
         K6kyjBV+MF9C0+twmUdwyL69LmZ9V8exrDFzLhXJ3WsOHxF/sZEVP23FSc6iGYC0Sxwx
         Px1c1rNXKqwtM7USOXLTp0gKRFgWmE/0pUXVZYcxC0j2qxPBYFCgkI9V4CTeNE4MUgIW
         2r/g==
X-Gm-Message-State: AJIora8qxfQMTNP5eqj3Kh4t81yZqz+Wv2G1NoD7qfT+h7B044RoNscN
	kRTHiJz85T0anuWDBm+xIsKbEv8M1cUu561Zl/4Qlw==
X-Google-Smtp-Source: AGRyM1vnkOdFiFE+GmThkbCNapsdUpE3R0cWy4UyW+Uyxq9LVHEvdVJxEBQ5Nw6N7aZ2mwkXtwjnww==
X-Received: by 2002:a05:6a00:16cb:b0:52b:cc59:9468 with SMTP id l11-20020a056a0016cb00b0052bcc599468mr6058338pfc.46.1658609091313;
        Sat, 23 Jul 2022 13:44:51 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.44.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:44:51 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	linux-serial@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 12/22] dt-bindings: serial: snps-dw-apb-uart: Document Rockchip RV1126
Date: Sun, 24 Jul 2022 02:13:25 +0530
Message-Id: <20220723204335.750095-13-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_134454_925160_B8D4633A 
X-CRM114-Status: UNSURE (   9.13  )
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

Document compatible string for Rockchip RV1126 SoC.

Cc: linux-serial@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 12137fe80acf..4f47d4e4dd94 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -34,6 +34,7 @@ properties:
               - rockchip,rk3399-uart
               - rockchip,rk3568-uart
               - rockchip,rv1108-uart
+              - rockchip,rv1126-uart
           - const: snps,dw-apb-uart
       - items:
           - enum:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
