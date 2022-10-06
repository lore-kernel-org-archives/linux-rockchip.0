Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA745C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Oct 2022 17:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KTUemRjG8KJXgaI8ab+AtVBahXrl+j6fafb4OxLyShk=; b=f45u+0L7X6qRuI
	YUaJBejaZTpSvf/rgoztNSoUy4xAWxig4U08cWtzolTyBbikkC4ci564e9alcTgupoV1FTMpc75Wk
	sv8bboDzQSuFT0kwOiEocZCRW97x4h9UJoGwYmUf3lwK9N5KOMtaYu/7XdfXX/ukzFEO0jkMTL9ZA
	F+1Nw1XXBZY3gMve+pYICop4WE5+asyh69ARqvjX5Xpv3sNpPQAKKRM6qhPRfp5TkKr+wRbWcQ1b5
	jICijvj7D3aGyhwNviy6ZPyCsem6z9jDhZm9KEoKZwrVqew5B//9qn/+pwp/6pm0/Z8cBJPNSqQ70
	QC4SrgONHi6QQqv9sJhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogUwb-004G9r-UM; Thu, 06 Oct 2022 17:46:01 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogUwP-004G2E-Ns; Thu, 06 Oct 2022 17:45:51 +0000
Received: by mail-ej1-x62e.google.com with SMTP id qw20so5576941ejc.8;
        Thu, 06 Oct 2022 10:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hbpfxoZfIZvEmo9HZUXMCjJj3tITfSfjkTJqndBvotc=;
        b=Iq98et7q0D2+r9dBIn2TdfilqQSuK9tTRjvK3Z0de37xwORXTMG0GNuYXVGinDXU+m
         hhGidSxH3lkOMVN6dpqJlKSYClb1fwEpUNJ9LL0sQrhkdjCG4Ui/8hVt0E0jvhRs52N7
         2i3b5Jch9YeqJKP7szHB69Yp/zJzpwZVhqXiv6bYPKbX5RHGPDsYcvypHmmo/Oobpu/5
         rAJaCL72WBYkB6GizmF0ElxJ3y95l9T/t+w8fvHwcP2r+iGTzYA0GrFmttp+Iuj+85W9
         Fg065kWEd7x1kUULG9s+Hm1acTAxOtFJ4ZrD84+93zVF2HQqEL36bp4l75QylaMH3lk0
         i4Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hbpfxoZfIZvEmo9HZUXMCjJj3tITfSfjkTJqndBvotc=;
        b=BS+iNFYHIy6k50hKdmonooZlyE21FnNLzNFFX4Xj9Ega/XhgLRpjoR9hJ2mvhr0x0o
         rVXtTcFd6bYC0n/FPemzpvBvE+SONNVIUpeVzoMOE3S2GoRfwLQtI+btPMhHZTKbKGml
         2ZXIJZbP8Igi6jSkXxIbtHjlZrNzkRslaLJkqn16dXEN8wC96cEUqoXGWIIvfE5eLFZj
         fn+Ki6pKjSPtPPIEJGO2bPKcyD3Ik+HyILjhe9t/FCksVgkrjDZZw2KwqRgESSiAqi0e
         3HooxZejx4z0o5Xx7SaTZQVS/dCJyUtm6pQ5SjZbMLD6S4+YkgBKwtMuErK4rwhUi06l
         vH3g==
X-Gm-Message-State: ACrzQf1Y7TxsvR23qmwJZBdoR6j5lI6oZT+VZy/VvnTKa1f5zL4OQTJy
	sJ7awN9eQGNwFMdO+IFy3nw=
X-Google-Smtp-Source: AMsMyM48jCLXj11rWnRSabFH/tGmaDhC9+BIaZ+MW7Hw7hp/XYpPGtUxDNOa0kvohqk4LUUzpwca3Q==
X-Received: by 2002:a17:907:1691:b0:78d:4051:9429 with SMTP id hc17-20020a170907169100b0078d40519429mr840144ejc.721.1665078346886;
        Thu, 06 Oct 2022 10:45:46 -0700 (PDT)
Received: from localhost.localdomain (83.24.77.202.ipv4.supernova.orange.pl. [83.24.77.202])
        by smtp.gmail.com with ESMTPSA id w23-20020aa7cb57000000b00452878cba5bsm6105035edt.97.2022.10.06.10.45.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Oct 2022 10:45:46 -0700 (PDT)
From: Maya Matuszczyk <maccraft123mc@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: macroalpha@hotmail.com,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: arm: rockchip: Add Odroid Go Advance Black Edition
Date: Thu,  6 Oct 2022 19:45:18 +0200
Message-Id: <20221006174519.46161-2-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20221006174519.46161-1-maccraft123mc@gmail.com>
References: <20221006174519.46161-1-maccraft123mc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221006_104549_791602_3F3DA65B 
X-CRM114-Status: UNSURE (   9.27  )
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

Add entry for an updated revision of the Odroid Go Advance.

Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 7811ba64149c..fdd85b0a3b1b 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -432,6 +432,11 @@ properties:
           - const: hardkernel,rk3326-odroid-go2
           - const: rockchip,rk3326
 
+      - description: Hardkernel Odroid Go Advance Black Edition
+        items:
+          - const: hardkernel,rk3326-odroid-go2-v11
+          - const: rockchip,rk3326
+
       - description: Hugsun X99 TV Box
         items:
           - const: hugsun,x99
-- 
2.38.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
