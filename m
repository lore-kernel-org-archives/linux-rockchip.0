Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C46AEFF8868
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 17:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XDYVa3KSUf4D69oM80ZOnbvsEpiXYugvW4S7sMX2/Bk=; b=M/Kjd6XYriwX1b
	n4Ha344RXwh6x4GYwcJ0LbWiQlq4gWDtFSevx0VC/zvq0NyUTX2kNeMO7UlQpT8J/324cyiu0aLUz
	B+KRiT/7KFTlB3HNfcMwF18NlYZcLvOFFoETqOdqsDwMe6MGWwWvrpPQSM/qXQpvhhR5GRmN1f5K5
	yQPt9lpUWPBxhPr0YEjJisq9wcAdjvoAUiPwTa9GZSA6vm+2eHoc+MigDTkmwTRFbW/S6s4E3DSu7
	Q6pIWsH+ftnAlMa0u6thoJ1ngfQEQJ8ukmrmJWTGByA53Sko7L++YgfJ/Wam1W2bpWNIOAIFJqNZc
	kjWMyPGEBI6Ng6jr/rMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHPUt-0000000HPki-2cGL;
	Mon, 27 Apr 2026 17:11:51 +0000
Received: from mail-oo1-xc35.google.com ([2607:f8b0:4864:20::c35])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHPUq-0000000HPhL-3aSV
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Apr 2026 17:11:49 +0000
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-679b072ed3aso5012780eaf.1
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Apr 2026 10:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777309908; x=1777914708; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GRXPhKIxUEkhfArxTsVmrthzYNjEzyOQR0qGn2CDhHk=;
        b=CasDtGbwAn+R7jPjBA9xx0Ip2mkiTbgQdqfy1NxHVbVuvqJYz51xcRY6sYAorzsuEM
         EG6sUdd7A+sXeRn6rC1spTGHeACQU9xCndqblH6esXfLqdAbrifXj15YShJWOaG8AVBx
         7XAjOrddCgUcpUeLw2mAoYx0W/VKubI4Jr38puwM51/dbKFh6J6/lcG06qzmRfIVIfLf
         +jEwCVH1O5qqJW1/B4RJKLdr0b9JXQ7uGvfGrwNbpY6I5U/T1hgCa+FehkLlITLRVdVi
         RTVzSMcQ8xkBGworqSbseiVRu63HnvfaM9ZToXlCVa93KkRNAKIGgf6EKm547dxDQ2PH
         PckQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777309908; x=1777914708;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GRXPhKIxUEkhfArxTsVmrthzYNjEzyOQR0qGn2CDhHk=;
        b=e/JVtZGIIg8ic9fftegLzvyU2IUYa/LazxCXXt2TsqKar6MDxE3gunKeKfzT+9ZGAB
         wQHgn4W9mJ2QGet7o75/zTItJ4c2IzWObKrIB19ZQJJjPC5VcgdNB8pNsQrPLAKla9nE
         4wVsQvA708jhhn3G0uAAsCnd+eOACBu7kPTaSuCeCg5yDQIr5AmYQVHiVsuRcr5pbPui
         TZx6UUkVfaP3w/Ou9P/CRJ5IVmdhEbNkIAU1LEbSx2kqC8MmSLMIioy2owa+dxGEi+Z/
         eHTHSsnGQILO1ESudGtvZA1HU2TTysGMEx3xNkM0m28Ofa9JYDN4aVCbt891R7ShyIeW
         qDBA==
X-Gm-Message-State: AOJu0YzENXFmsvd5bxmaefHShiU9r/mRKQhKQ8Ynw8SM+cCy4Yw6PxWb
	6frOe+62cBx/merooHQlhaq6O9QmFHwn7LVVrGQYoA5PW64tGPPblZaBIhOVUQ==
X-Gm-Gg: AeBDievSggpKPEhEZj/bdPupKJe/eMdR/ONQ/XNpYQMMnEOEKSZbrf/73NPwv2QB5Fg
	7U+utU8lJEsLQ40kWLQYuqPCCcFq931Sajfsmm+fzcThkhMf+fLkb1oKEG0sxBEQ71m2rEMrfVz
	mEQRvQJ9Waf0M7go+cjSmi1J6z/8OJzB0D6lmlMHm+D3GstKhlm4/v58YAqy6OQ59Quh20m8PHe
	qAMYMpNeMeJZajcYpgqQUZplApOPcfmmCys3Dq9jd9nujL9prk/d2jZIbGvE/1OzcC3MwndTg6H
	MVwtIjl6uLmCQu0ncd+dJyzZU9fOVURokzMtuiK9b/bYQTQfkD/qUw5snhwJRcAk0egfoDlyZqz
	pz4yFEdsHRq7XM8xtXhR7wgGx55fF+MdH5dz7r8fCmBrdGjM3MYhKTI0GOKE4AypMKK5FPtOGK6
	Jchk58xq173Hnmqsww0tfAsAE41mf6pP4=
X-Received: by 2002:a05:6820:f00a:b0:696:1a85:587b with SMTP id 006d021491bc7-6961a856499mr11658167eaf.39.1777309907872;
        Mon, 27 Apr 2026 10:11:47 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6955036558esm10261236eaf.14.2026.04.27.10.11.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2026 10:11:47 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 5/6] dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
Date: Mon, 27 Apr 2026 12:09:13 -0500
Message-ID: <20260427170914.5062-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260427170914.5062-1-macroalpha82@gmail.com>
References: <20260427170914.5062-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_101148_919056_0FEE8B4D 
X-CRM114-Status: UNSURE (   8.43  )
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

Add compatible string for the Anbernic RG Vita-Pro.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..b8babe9d3a26 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -66,6 +66,12 @@ properties:
               - anbernic,rg-ds
           - const: rockchip,rk3568
 
+      - description: Anbernic RK3576 Handheld Gaming Console
+        items:
+          - enum:
+              - anbernic,rg-vita-pro
+          - const: rockchip,rk3576
+
       - description: Ariaboard Photonicat
         items:
           - const: ariaboard,photonicat
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
