Return-Path: <SRS0=EhM5=J4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44B89C433ED
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 May 2021 20:35:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B33EB61449
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 May 2021 20:35:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B33EB61449
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O8OoWDcq2yn3QXsx4kXuNNO1AxmOLGLZpU8ZcFXM8lo=; b=E+h2fFoGcuZxx3NTTEyx5lHJze
	ElJe3uuQwpsBzAkLn0sguemSvCMTOIZeSuc4KVxDTZ/Cxc/acIOfNRdo0lYg6CAlRkhe9xObkreyU
	s8/hCJYCgmEC6qNE4WX1eURQMRZrE4AYishGVezyuF4oB/CbNbT5nnDAHbHAVIUBdJcHLuXbWTuKP
	olIr4kg5uGKsR65Qp9aqkP5qOaoZfEps+z0GTDuKBnOLGYs+1ajFKgiEilKoo4xULDAN1Dgz3T2bi
	X4WgeU2X1JrmbyXrWyn6+ZQPLTdPE+E7x2NXQJhMKaju/8FE7C0DmtAIMuB49qFl871B3LdrBle1x
	5O2HdNGQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcwL7-00AeJm-7M; Sat, 01 May 2021 20:35:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcwKw-00AeIo-KI; Sat, 01 May 2021 20:35:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=lihGSNM/MK5Li+Q6R5o1M4YyP4+yQiLVtLIt/qjFJZU=; b=BlhfELQ8XyMuZST/g38HFPgl8E
 8KXAIW8OdvzxLJ0gqyvMrfY4BMbzCaXJX0V+cR5e5oDFNk7/6eZbqGKlqFVaWMV8CyuwN439jZyGI
 7Y2kCYnziJ+jcwaKec9/HtCJWFEJpy6ySl2GXOgflyiixFiNWR9PD2gq5FU1vDs+jyckcJnT2Ylk0
 67IhgUxuTEc/nQDutF/WnoDyKQkOKT0c5/wudH+s4y15D42RqvVNJgI50KWUJQdwgEeY4v6fp5bLj
 WOsfs/ITPGXHhpUfCbbCQmuOLuJlaPXvDHId8/JHyLlHo3sLzKu6uQUSPuHCyCuFIKBWRRBX2jrJR
 zv1x5IVQ==;
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcwKt-00291g-V5; Sat, 01 May 2021 20:35:37 +0000
Received: by mail-ej1-x636.google.com with SMTP id w3so2161815ejc.4;
 Sat, 01 May 2021 13:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lihGSNM/MK5Li+Q6R5o1M4YyP4+yQiLVtLIt/qjFJZU=;
 b=ej1YiTxIsXvvThZwJuqr06opWozes8XB1/NByI6RR22UWOOVRGjqifemJ6ZkZ6OrqW
 CnwSbQZ2ylaCgsUOh77Mo2Xg80pYQMM5RSRHp8g90hhSGqKj9A3CDBjFnS9kTtA6NUpz
 PGFoWfOhquZajkxt6cqbPwfw3GPSoO0KU+R4OdEttjRKi6RIlcLcXXEkjerpibKzUoBY
 4sT8Y7AHq0IrKBy2S8ylhwGDyoAXonIT8ORpwNNHByMb/QsdhTlwqNrWcy4eo3Cm2z0W
 kLQqh/FUvHxtNHcUUg3rJw1ppoSZHcP1uudIR/uU4E7dRhZ9WGsN7r/132yCCmtdk3Aq
 lfPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lihGSNM/MK5Li+Q6R5o1M4YyP4+yQiLVtLIt/qjFJZU=;
 b=TpXDbgczBkelvHwk+7ZzWT/vrv9lFurP9Pc+CkCFgolq9gXG3p08FEWe9sGBnXgy7j
 vlSvd+BLVvIT2iN8H5e7KZ+7L2yxGbTitJUh0YQqMfeEC3QAynadgW/cMrsAbKWYs8rW
 41NsuCswP6jmVECfzg/sbcnDb2bChkJHCc2HozWJPj8CidjkLEfJg57sFsAXmlVbolv4
 MfFcEDLfGDCnHL0Id5oYHYea4s/pNBG/r35qHanNc7dZI273AJmbUoYt4meGuU1aaEPL
 O5a0bYl7s1S/nAG7RH+xKiO0yy5TP1LNTdmRcPz/vdKl1PYjB1K9PZYxRzt+jS17hplj
 WOyQ==
X-Gm-Message-State: AOAM532wtvE2ifPT3A0Ai6wEECQQanK+7A4A8jn2jSzEmLeaoswnMy9g
 yQozjs/anPQwo+0iSXEnU3c=
X-Google-Smtp-Source: ABdhPJxH69sLzo2KS4iHxStQmHaYmLrWsQBPfikpwxpVjaAYl0ljwzCmShI0ddrv5Lt/zD/SBpYANg==
X-Received: by 2002:a17:906:994f:: with SMTP id
 zm15mr8213057ejb.24.1619901331279; 
 Sat, 01 May 2021 13:35:31 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 9sm6607544ejv.73.2021.05.01.13.35.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 01 May 2021 13:35:31 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: cl@rock-chips.com, jay.xu@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com,
 shawn.lin@rock-chips.com, robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] ARM: dts: rockchip: add grf register compatible for
 rk3066/rk3188
Date: Sat,  1 May 2021 22:35:20 +0200
Message-Id: <20210501203520.5465-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210501203520.5465-1-jbx6244@gmail.com>
References: <20210501203520.5465-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210501_133536_017253_536F568C 
X-CRM114-Status: GOOD (  13.79  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

With the conversion of syscon.yaml minItems for compatibles
was set to 2. Current Rockchip rk3xxx.dtsi file only uses "syscon"
for the grf registers. Add "rockchip,rk3066-grf", "syscon"
compatible for rk3066/rk3188 to reduce notifications produced with:

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mfd/syscon.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3xxx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index 755c946f1..c34bc59c9 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -256,7 +256,7 @@
 	};
 
 	grf: grf@20008000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3066-grf", "syscon";
 		reg = <0x20008000 0x200>;
 	};
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
