Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 620DCC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 11:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFuALf5MP5WqbXrtC0kJYRyGcegzrEHRndGXM5yIuGI=; b=udiXFkxOesKKST
	WZEKekOgCp1l3KwgqSIeWDe2qH4i3dhd3RsZJUWkZOGnxZ1VczPsKls1yaTXnEeONDUBD2bzCZ1lt
	ycPMwJp49EWtRsdX5xFCX8+cvTH3D+WiwmCNF6eFe4nabkMX636EKpX5uoj1Lfetns94YIp6xlgyK
	JdRrb99BibqhPMFAUhtRAmSN/KZQ6VCdOpAoXjDX/WdT8273rhVOTgwa5ju8iYtBhHPxSlARN69z1
	imkBlE+Ps04I587lVLBWs+LMgAMEW10V8V4BDBOU7AF19cBHVZIO9ybyZKXl8FthVes9cHM+2bwHW
	VpGbFDogLpl2K89te6rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nokco-006Wbv-KL; Wed, 11 May 2022 11:35:26 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nokcm-006WYz-1E; Wed, 11 May 2022 11:35:25 +0000
Received: by mail-qk1-x72d.google.com with SMTP id a22so2030240qkl.5;
 Wed, 11 May 2022 04:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g2dieohjKJl3LRE3v0qEPyCNFBVg0n7LQ+TeFcHI+fU=;
 b=JLISchbWbGmgePFdtjCGDZEIifvBjm7I2Nx32rbSTcMIy3DXwdp6bvLxRowwcaRGxn
 MuqAjFikGzI5MArfUMGNkFDB+2+X8SsHbDKXrl8Fqa30LF75JxCBJ8GG1VPyzPS06YVW
 tO7s4D+AXuTZ/j5s1wNiCeSD5QxVE049VdGgxLTsiX4lP39Zc75M9ThwMYfc2FqEMS5W
 H5BND9luFZHGweAfMY/+GtFaHv+XJLxB4G3cQcLx1qNK/TQ2Wqvz15ZRRT5vCgumwZCD
 7sqo8XL54qD2EHxiQN0K2Ik1MFb1jFKgtuwC2ZQI4Y6AQYBW7RW2vIeKZ0l+FxsaPKcB
 rotw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g2dieohjKJl3LRE3v0qEPyCNFBVg0n7LQ+TeFcHI+fU=;
 b=RPWyCGpY6ZnBReAzC5kUYbOEGF0vxj57cHQaCjW90bIT/nWXnVcAMBWnkMOtX0rr9Y
 bgqXFsbbD6rl7dTtvgkHQ/HKp9HyuC6MAMz2I2Y7UENfjnNRuWLMEh8xYILa8xZkzVUs
 aAtdheR8TTdrj3+5p+bhuX2y2jGpRIjmIaazp96/Uy349eS70eUkbeSlbdTxr4Qo8/+3
 DusUZ2HnN3vgubmn8dzKIgLXpfnt/4GJ1GPbNTagf5xMlPdtva2UfYZzD3z/ARMjrx/T
 0w4L83aEveMJepA6lWz9OX6dU5vUsZLwRoQgyyLCq1P2S4vjquDITJNeQ5edihbi6LmJ
 qf7g==
X-Gm-Message-State: AOAM532xsf84h2gxaE/8cK0YFKLOL8cCSHImeskWfP75aGGSVU2uzlhj
 eOuRx5oXUwNxBCwaRZBTMGSnSp45vU3MnQ==
X-Google-Smtp-Source: ABdhPJzL+T1CaXI7PLHaqwNmp5VdAf/xHGHpPqT6b/rkgiogHkmm9AYlEj1W+JT7TF0qhCvUdXzqqA==
X-Received: by 2002:a37:9ace:0:b0:69f:b424:25b4 with SMTP id
 c197-20020a379ace000000b0069fb42425b4mr18428024qke.250.1652268920787; 
 Wed, 11 May 2022 04:35:20 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 bw26-20020a05622a099a00b002f39b99f6basm953377qtb.84.2022.05.11.04.35.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 May 2022 04:35:20 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v2 1/3] dt-bindings: display: panel: feiyang,
 fy07024di26a30d: make reset gpio optional
Date: Wed, 11 May 2022 07:35:14 -0400
Message-Id: <20220511113517.4172962-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220511113517.4172962-1-pgwipeout@gmail.com>
References: <20220511113517.4172962-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_043524_110984_33164AB0 
X-CRM114-Status: GOOD (  10.84  )
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

Some implementations do not use the reset signal, instead tying it to dvdd.
Make the reset gpio optional to permit this.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../bindings/display/panel/feiyang,fy07024di26a30d.yaml          | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/feiyang,fy07024di26a30d.yaml b/Documentation/devicetree/bindings/display/panel/feiyang,fy07024di26a30d.yaml
index 95acf9e96f1c..1cf84c8dd85e 100644
--- a/Documentation/devicetree/bindings/display/panel/feiyang,fy07024di26a30d.yaml
+++ b/Documentation/devicetree/bindings/display/panel/feiyang,fy07024di26a30d.yaml
@@ -35,7 +35,6 @@ required:
   - reg
   - avdd-supply
   - dvdd-supply
-  - reset-gpios
 
 additionalProperties: false
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
