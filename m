Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB6FCFED9FD
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Mar 2026 18:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BTzxBnJvuZ1vAvJET3io+kl1Jy+Y/NVEi6eBXwJ7z+U=; b=D2MIYOqIoebdJ7
	XOzU8RbQoFSpb9Hc2Zki32AQ5kH/geXCt2gCI7D3wrjIxspCyndQYeI6Qc9qlX3jOploosMyRvPHa
	RVtbokCVGe5YE9Dt/vRNBPqt3z4STNAmGOEhXD16zYw9v+HPbE7V3SmMtwSDBkiWYlDUifHVAqQJa
	B4XwapRN26W1GfguAJitqg/OJhK46GL/ReJeqoB8qKffm3GKO6lVzF/0S/f1jFmgCEmVAav6EcX7x
	iuRYTjYZABiAUZSSf3xaqCWwfJI35PtcIyT7AQz+EyE1XDSdDVkFgWQFbJZ1fXRgnU7JgwhQbNBoL
	o2qsmWwKSGU/fqM4AtoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Yq3-0000000712u-2I57;
	Tue, 17 Mar 2026 18:08:19 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Ypx-000000070yA-4AKk
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Mar 2026 18:08:16 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-43b44c0bcdbso2273260f8f.1
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Mar 2026 11:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773770892; x=1774375692; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S9sCFNxATE1UQcKX1OKooIck8dS1xOFB94Y0TqD1Dbc=;
        b=ChIR8dr4tlaOi21hA4haDy/R2ogFU+C/s+Ryy3xINx5iXhwJw5C2jQVu+2ZqbydvTL
         f/Mz/r/MmVuzonNuDA3wZQpGwiY7hHWe262vDbu45pDP7E0X4OzILr8KVw1cOOcTjAZ+
         Acz7HRQqrQxi4Le0Smp1ShrmlBD1saSa/7Ma+dBxkQhe+6/1tn/54uU6anMmWI1oTQkV
         pTnTJQFJIOvKvDYPSNsAreVBvnWD65/xfKxJl87MSriD8ifqWr4s/ks8BAohRGji9ffU
         JeltDKODow+tFsb9kLX1lgih58KGg1eCSJvCr+ux/znmX2/YF756QezrVN5bjt4qRy2e
         cT0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773770892; x=1774375692;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S9sCFNxATE1UQcKX1OKooIck8dS1xOFB94Y0TqD1Dbc=;
        b=NemWxFW1CKhCnDr5wRy+1kTgJMBTuEtrlBMWi46gIKlXyu0Twhp4zEljt6+1XGHeIK
         +KOUG2s+bmUlKOug6awjlpspXUIpgSQYmkRMwZniEuT6439cCT3T8yiOCqavp+0FTC3b
         JwsPA2pR5OJSOwN27Qrv+ZXFeqYe5FtLtdQThJq7Z33Q9hFDl0cO4fus9eo49J64ntA0
         qgTR+djQE0mBRdbS+1Kry0t3+HPRs+1bDk8YDUm5MnmjLsljiTK7hM1EBgmBcKBHt31l
         UYVIuvu9p9gdD0VNtxzlBJOvuFi98sk2vgjJap0/R05erCKkUwkongb/V517GCYcj2/v
         xlLA==
X-Forwarded-Encrypted: i=1; AJvYcCV6B51ihuvIASrpFo506fY7JZABn20RWm3pCUWyVMWljL6zc7mD1dCiy4QYTtotl+laDqRoVxl3DZJBW8vLrw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzd2Pbfj6+Y3RfB1urth2/rtrfdWaiF3oQKkTdIY1NPoDRl6Zxc
	ldk/RV2bYn8xo7AZC0zFCz+OI5YfmTXfAisXqNCp9cYA8LCxJ8uuDtalXil74mr0FMs=
X-Gm-Gg: ATEYQzwJRN9eM40Sc4i8ywV/e2nTpXM21MoJpY4VzY1afb3RN+iJCOGxJgEzMl2S0Ri
	EAWVDbCc4kx7W2GwDMpmwq1BrTYhpZgDgivzhlqkcIbrDc21m1raA6FXiXZvPgR+E/uCPAkZxA1
	nmVi/SyUeU7DVrE7XvdD4a2dzFE10QmFGaGl6HkIcDv9u+V+6LWTGV1YNL66LhNtOUxmEIKtH/A
	nNg3wl57n80mmG5+RoofxZ6IEPOUzska6934PA2ZjvHN5z4mJWrFY1sZ/sKVafah8pJKvZlcq51
	2f2OF11gVwHaP04uUGOdeo1SdH0tvjYvXZBfe0puTAzJweP9hAUvVNM85nCiTafSEJg9KlP7D5G
	z++x3MkUjs/dhQWnJAdkcS+2Gu4vn5tFdSdZmLF++xuOqkTjDGQzikOa6K8kr91fg3Y2C+OJ0T+
	aWgjvBu9hChdhfH8OYpygwiGXyQJXGLimoPIn2w6/JDwkKDnWG/0LrGBtmUxv7f7xJ5xSN2yoG3
	FyNx+ehZirtey+6
X-Received: by 2002:a05:6000:608:b0:43b:447a:11a6 with SMTP id ffacd0b85a97d-43b527a0871mr372127f8f.8.1773770892007;
        Tue, 17 Mar 2026 11:08:12 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b5184b8b9sm1436536f8f.1.2026.03.17.11.08.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 11:08:11 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 17 Mar 2026 22:07:58 +0400
Subject: [PATCH v2 1/5] dt-bindings: vendor-prefixes: Add Hynetek
 Semiconductor Co., Ltd.
MIME-Version: 1.0
Message-Id: <20260317-husb311-v2-1-03c17c986abe@flipper.net>
References: <20260317-husb311-v2-0-03c17c986abe@flipper.net>
In-Reply-To: <20260317-husb311-v2-0-03c17c986abe@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Gene Chen <gene_chen@richtek.com>, Heiko Stuebner <heiko@sntech.de>, 
 Yuanshen Cao <alex.caoys@gmail.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Alexey Charkov <alchark@flipper.net>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1010; i=alchark@flipper.net;
 h=from:subject:message-id; bh=T+J1OY8trN/7RzkbAWgyzywsuUmbTSqBleeNAx93u6E=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTunNGWxX9hHu/TwgdqBXVCqw4uu3hAfLto+YSe6Y4V/
 iZeR0tOdkxkYRDjYrAUU2SZ+22J7VQjvlm7PDy+wsxhZQIZIi3SwAAELAx8uYl5pUY6Rnqm2oZ6
 hoY6xjpGDFycAjDVdVEM/0NfeRv6vWLZMTvtw74F/0IO1V7YEBDr9utKA/e3c/67I30Z/oesDEj
 NE718LvnIupknltQoM00srGFWk8jRvWsp1/pEjxMA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_110814_074518_6AA42E81 
X-CRM114-Status: UNSURE (   7.42  )
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

Hynetek Semiconductor Co., Ltd. focuses on intelligent energy control
technology, mainly for the intelligent fast charging and digital energy
fields.

Link: https://en.hynetek.com/
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 5a806faf7170..3ffb1a8e24af 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -747,6 +747,8 @@ patternProperties:
     description: Hycon Technology Corp.
   "^hydis,.*":
     description: Hydis Technologies
+  "^hynetek,.*":
+    description: Hynetek Semiconductor Co., Ltd.
   "^hynitron,.*":
     description: Shanghai Hynitron Microelectronics Co. Ltd.
   "^hynix,.*":

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
