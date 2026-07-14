Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A46DC4450B
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 19:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ChUT0LLU0AQLBS01YaV3K9IYtyXkqE32Fmu5mMytCTk=; b=2MyIwy8vnH89FD
	dk/izjnY0jklSGK8peYQ02+vIsghvb9hpHyCFU7zfvlglZ6Vnh6PqZMk0pM9K5v8NknNO+JyRBPBg
	uhKFpnWtFDjoxQSVX+89n3MEsiuiprNbAgnYNltyXQBmIdQ/p7hrnsnT0Mx773NwtcgszlH0hch7t
	zAnwSU9xscvuk4zuIaIV9CRyXWm0apVYbx/5PUE9RVRIVUqXLAaCxAKUfwADJ8V1e8MMtCkIZI6MZ
	yPOO9BAGxIXdpKTVrkeue50dIbxSrxeUVdn1YKdw8BIrwjLBe2OQPhXZ/MyjcgkK0fIAiJujyuN+1
	aGD3yLRd5LKFNNSrVhvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjigR-0000000D1xs-100C;
	Tue, 14 Jul 2026 19:20:47 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjigO-0000000D1w7-3LYt
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 19:20:45 +0000
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-7eb4d8a21a8so865286a34.2
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jul 2026 12:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1784056844; x=1784661644; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=KO2pL/LPzAk6bW0DPdWAZBSTIMWvqbQFEPPgH78ikCE=;
        b=aVy3LdlJlsBVYOBEegaGA+BNivHksMVnIkuZ8QoUazETDNsqSu49SgRoMY3VK+354W
         HSeXeQcicZFAYFpHGKA5gL1ef4bpCDc0Su4GRBbnYQF8RUYlRf5wx9a+iEZGAkCMcpKB
         PQ/nuUV0GcRjxyIxNNUHOz8EQ+ZBzt0TR9B/Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784056844; x=1784661644;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KO2pL/LPzAk6bW0DPdWAZBSTIMWvqbQFEPPgH78ikCE=;
        b=Vvg/GfeCjs2hYfZzQof7hATc9d3mp/MT51j0mpi6g+y5xINTI9itbHQwJJXyxIGPRZ
         q7KtlYqKW2SZA/bGWbEedAZcR3vpK/f3NK5cMpUSygCiqSsyUXhYXMUFb9GTBNq7dkMi
         jNtRWtnOL+YuSCjbnOOxiKQO5gI9ZH9mJVRbA0pGNTdZA37Zo167c4BpvDlazSjUl47c
         aEXHJYp1woH4joHEPiA1nLrAaG2NMG3nNQHxT+4wBvcNFKl6sk5tM7HDgTftark+K1q4
         Bz0uHa1cYsQfz8/BURBbH3nUIyrHFJWoXseK+UuVh9lN8SbuqMFpMExbAg3GGZ+zvnXj
         Ssuw==
X-Forwarded-Encrypted: i=1; AFNElJ9i7INEmADLmj9ClbfCLTKQMr1ATAIM/2c8VKFCNaaNtXf2O3x5VCECPO/kwaKX+ZrYN0FJ6S5Fdbnz4gZ/Eg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxxdD5V1pYAUh/8xnN2jcatQXT5n5+I05FL36fo5d0EdQ3oyPlk
	P2sECFq7k3MZXDB0G0wFIYYO2UZfMmhwpCkDdL5+CfnwfW9XyEuaKf27bigUxyBdaw==
X-Gm-Gg: AfdE7ckdAGzZ/HGEOx/kSm276rvxoW/nxTfU/d+DOMPk3u3gFuDxySe3VyW9sBe24gU
	uu8+tFNE2XDt5ni8XdB/6ROTF7LR0sDQlhoyUfjvIB9BEzwcRrhIRNK4a36oXNmMtCRqivttlBD
	CgUXPDe8xjSUcuSCktSecBdHiCen2RkYfLdHsaJrK/kk9atqydfJm6Q61u2CPe9RyXxcBZ/CfP4
	Lxr+F4QZb8ksxFMuagBXe1DPQlPAEYB2vu/am3vYXQcvTDVLn+HYKNJJ2KCsUuaA+Xgoa7p+JSw
	QEZlWQVGWOdNm7M6wFaKai/NnFYaetGjlrvRwTzMp6I4OfEz97IpchbOBi1fPOjUDBWYNw/Fjz6
	kDGE3jwSpAo8YGIQmniXKMNemfGBjvi43iT5RrD+4TRFlnJz7egDnULzT/9ulvAoDZVjuKc4UjI
	KokH3axGQ=
X-Received: by 2002:a05:6830:4490:b0:7eb:d848:c867 with SMTP id 46e09a7af769-7ec095dba6emr9656696a34.6.1784056843773;
        Tue, 14 Jul 2026 12:20:43 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ebcb3f27besm15476081a34.25.2026.07.14.12.20.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:20:43 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Jiri Slaby <jirislaby@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-serial@vger.kernel.org,
	Simon Glass <sjg@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: serial: snps-dw-apb-uart: Add RV1106 compatible
Date: Tue, 14 Jul 2026 13:20:36 -0600
Message-ID: <20260714132035.v2.1.c1d92213393f49330ec14d0c670a802181b4fcbf@changeid>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_122044_833203_1E5B635F 
X-CRM114-Status: UNSURE (   9.23  )
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

Add the compatible for the UARTs of the Rockchip RV1106, which are
compatible with the Synopsys DesignWare APB UART.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

Changes in v2:
- Split out into its own patch

 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 49f51b002879..c0d0524458c1 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -72,6 +72,7 @@ properties:
               - rockchip,rk3576-uart
               - rockchip,rk3588-uart
               - rockchip,rv1103b-uart
+              - rockchip,rv1106-uart
               - rockchip,rv1108-uart
               - rockchip,rv1126-uart
               - sophgo,sg2044-uart
---
base-commit: 3b029c035b34bbc693405ddf759f0e9b920c27f1
branch: rv1106c2

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
