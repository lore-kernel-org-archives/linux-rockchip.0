Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF0EDC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 21:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DUfA3/d7pYaC0ctEH7cXa2yprATU60+BjybnarpMbxI=; b=KOuAQPmsTy0TbB
	NH892O7RXOSxavTq5c2CveI6DlhSmMUKAPtF5KPqiL8Di1f6yiCY2GkSLnDI/u74XKtbwZBJ5sbaX
	0vFMBmqTlXGHcfdF2zEyunw3zUcmcX+7jtjde9fKOmglSE02RXIRNoUthDmtNkkKYAOEAZglmwSj4
	xPE5ttNGC3dq3RvKZMU16bIifLBDH8JqB29T7PX2dOQN+oGrzXVlg9Mwj4+DtDORq2XZmpxJ1+NNv
	JRdLxYa2G5STKLq21LhbtaarlP07FA5gh9U4zxEtGzzeAVuUFJGl1B1HpUuHeZtNLTyAXhXhk+1yl
	mA2Cf49dH1K1sIZpbx0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFMET-007Gup-TC; Sat, 23 Jul 2022 21:00:17 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFM06-0078qD-GN
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:45:28 +0000
Received: by mail-pj1-x102c.google.com with SMTP id f3-20020a17090ac28300b001f22d62bfbcso5668480pjt.0
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DmKFb/vDMt19Sbfna2/3+U25r5gYc39kz41HAg/4dMQ=;
        b=5UN5LO1RtsnqeSWqyDZAhec1gN/rt2Q/I/sL8e79+tBIXNQIoKy33ZIFKeb1wd7Yrs
         O87aki/5YULMiGhfjCGqQ5bQcy/PCW7a0OtY1W+b7bPmRc24VUEOucavAqy7cxal0qTh
         ixZUb/7TsppHba35/11JABGd8KYG7wfRdzR5YW/EdxmBNZp1j5qu14OPVE29ZuKyqUpy
         +6MiwaiNwbCMH6cYPDOAPfi6JGrt7/h8D0Snyit56pm1o+5IC/NtpYEe6au4m7Gh3ZJ8
         z/NAYbJc+daTaek8wk5xlXopvsVW0oTc4WgKA6heXBWywwHkPopUnZP9MzXFSur3B+xf
         nAnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DmKFb/vDMt19Sbfna2/3+U25r5gYc39kz41HAg/4dMQ=;
        b=66t9SxJzbGGhkC4TKWRwQTm5vPe3pEe/3sW+34onJ8W8Nt8dzhOGKa9YyhsLUAwGzm
         1TTKyd0zOuMX+N5d5BE0qgKB4AmkmUNkEucHpmmu8KueJ+tZWF47HhLxZ/U/D3Mf0/ct
         cMEzXEBwe4lgs/Ro+/uSnE2JsEy1lk43pjQvE3WhVlDGJ5bEUPWfI3bZuL/BfGCy46SJ
         FmcHWXC1JMzFZzsUXvr7yE58XJB0Uq2GBTuUhBsenEzOSMlBAEdCLIQVoq+vG4mA+pIX
         UKiHMbcjnARUXMTmCTPhcAH1vZ1RnXCbyuPaFhYTJUW7gNMY7f/MBCdG3PrnwBKY0G0z
         Wj4Q==
X-Gm-Message-State: AJIora+FlixW5GDbnd/Ex5c8+5whhTeBWJicVgGJaFTBRdNM/FUsfg8R
	Ke8Ha3MoZAfcNz2VcRVxLnBn7g==
X-Google-Smtp-Source: AGRyM1tOS5gXY6Wdcb/OlvTG3T6KCahHwsireSmsGLQsOcR9R7xdqqVx00aolT7vl7ntSpkHc8XqPg==
X-Received: by 2002:a17:903:189:b0:16c:375e:42b3 with SMTP id z9-20020a170903018900b0016c375e42b3mr5516831plg.91.1658609126147;
        Sat, 23 Jul 2022 13:45:26 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.45.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:45:25 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 18/22] dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
Date: Sun, 24 Jul 2022 02:13:31 +0530
Message-Id: <20220723204335.750095-19-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_134526_607864_2894CF99 
X-CRM114-Status: UNSURE (   9.33  )
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

Edgeble AI is an Artificial Intelligence company with a focus
on deploying Neural Acceleration principles at the Edge.

Add vendor prefix for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 0496773a3c4d..d2b8ef2e1ea5 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -356,6 +356,8 @@ patternProperties:
     description: EBV Elektronik
   "^eckelmann,.*":
     description: Eckelmann AG
+  "^edgeble,.*":
+    description: Edgeble AI Technologies Pvt. Ltd.
   "^edimax,.*":
     description: EDIMAX Technology Co., Ltd
   "^edt,.*":
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
