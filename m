Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 351FFC4452B
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 06:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ixI697hJD317pzPMY0h/s863xX9QMRQLFOTkjKWsWnY=; b=1z5Caw8Imzp27z
	q+IH/2FEQXdoG/ad1YQsEMOpI6evj1ILpRjMavr4RTaX714QNxz5JVsQsO0rUZA+7kv30wLl3nvpy
	i4lY5JJVi1YT2/y5X3lZ7CEBT0lrUdolGDAonGU8SYm2/vaVIesVBHQS185BTCpm1qAWRX6erKWl+
	IlHzTdch87vDtGPu2jdSyEw+X3yGOa5KAaTbxYGq2Vsj9dPG40r6wljB0E/KtBo6tZ7lHuGfoqIJM
	ZDR/LKM7Ys/9r0Di9/TlvGwx8Xz+eVSa1IFYDFkrN5ygxwoxhiAdoGP//oetnO2Ypl5nn6tHDmwQ/
	2VJ1mQya4FefmwSslQJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm4Ab-00000008Y4N-1DvE;
	Tue, 21 Jul 2026 06:41:37 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm4AV-00000008Xzh-3sn8
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jul 2026 06:41:33 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-47f25e3fe44so558649f8f.2
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 23:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784616090; x=1785220890; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=A6arKxt/pKAK4HvJvMnbtdBhQ+d77oJa3U99lYSiiAM=;
        b=abhxboKYTw0deYokzABdj2HhwsLtObNrXA1RSU5l4kN9HtXHl1TTAdAtW6BZ7DrImG
         CMlNQDNDfdROSEsexn8YMTOs+cxw9Idm3039cROYDIKUWkXSmOwozIPe3sMMVQVRTb3k
         sDWIvgf9ncqsSxq8HpvngWwhsoZ0p6tK9PQcVfwUtKgffHcvBA5MgOEZzC3XrcPs22WL
         LJB8M4Qay4Uv4ImzZF0zgENK0ViLeSXIksoZYowm4Io31qq4QggCgCm/PQHcEirH0TyP
         1FXNukzEB367HqBp5JcM6M40IRJBqJucEZPnlZGz3wV/15iEcCPzkShVFktgXGFxeahL
         KxTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784616090; x=1785220890;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=A6arKxt/pKAK4HvJvMnbtdBhQ+d77oJa3U99lYSiiAM=;
        b=IPmLNPSDEz3ltG+xL8Hie6J7nKayRxv4C9bn5anPbWmDhVFgkV46VlK3XNXnWRCMFA
         cX830hFjiUAA9/8+yGrse7XBHw1OD5XduCPB0B66Bs+NQfdHuuiYNR5t+npGN8RLemoj
         GgiIIWDaZDdA0ta+tRJcMSW3FBv61ssdJEMJLtSs553Lj9yxWv8avhoBM51YDT2uOKb0
         Uc0X3tym2Qyh+IajvYczCHkBsQ7Uic0zIaF+6/e24AjijFymTq4HbM8fTRMnKh7HBKri
         040NrZQ4XszRES5SWy5OL9rxRVje3swzNPQVGmTqNmzcHlF7/vIsj14eM6w/oN+Yn7jW
         z6IA==
X-Forwarded-Encrypted: i=1; AHgh+RocaJYJ9SJsJTqt77Bdf6F8p15WkIiWJjbatAeMmoSS2LEeXnhQKMndRGqcaTKfsobqOarRrCYYpcDPdDMaww==@lists.infradead.org
X-Gm-Message-State: AOJu0YzYlpCor+cd6G1WVktwueZ9+G5e8wYVoRYZr0vghZJjZX9v2tra
	l+hgp8XBj2imZ6oE088npFfjp0fqraSI6ykuw4oZ+Q4bCPmSA4O1KNsD
X-Gm-Gg: AR+sD11sLnBUsoyoaBa+nXX3qP+qiuNrJ/wDsGvObIYIAJ3ytV6/MnC7SSnNBvOHx1L
	SOweYH98R+SgxPitCOj9+nG2rb/KOtnvr08ZJQ8dwgfhvWrIbPhFMJmyox7jwbfqAv7PyjEHcOB
	8YcQLv0tmaig04CAMMcx10kR67K8ilE4iMvdykItbEPFMeL0+Mi8i3klto8MYAfF0JcgvqgMgU0
	3PwwCXZXcTMtSQHOGRGW8FDWzoEl2qM5eepdqTyvpjVuf0rhPwpe48OnkrzYRPpvZFLnIrNd8i+
	90HMzZbv/tex2QfVN1i8O/ke6t+GcLX43qIkgXtvtC2wY/ayjd7SKm6WTpGBINVjN5uBBbxmHCT
	ap+rxrMLnVAD5QNeJHZSUDTS6rqO7x4D5/gGzMMZvW592WalvlNeOlFeKJJcE1ZkAk0spWNEFoF
	bKHLXnq30sBOJzUN00VEqC3Mz+cguOqVjwo8Hoc78nU/ihV1+joq3vKOYC7jxgmYmJCFZ6S9ODO
	Qth0OnlgMhXCQiCytiYPw==
X-Received: by 2002:a05:6000:238a:b0:475:3a97:8e2a with SMTP id ffacd0b85a97d-47f6233d4ecmr10721512f8f.7.1784616089904;
        Mon, 20 Jul 2026 23:41:29 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B88AD00DA0BF9DB4519DBD6.dsl.pool.telekom.hu. [2001:4c4e:1b88:ad00:da0b:f9db:4519:dbd6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f63ed1911sm38837951f8f.22.2026.07.20.23.41.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 23:41:29 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH v4 1/4] dt-bindings: media: snps,dw-hdmi-rx: add #sound-dai-cells
Date: Tue, 21 Jul 2026 08:41:12 +0200
Message-ID: <20260721064115.64809-2-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260721064115.64809-1-royalnet026@gmail.com>
References: <20260721064115.64809-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_234131_974156_BB22A768 
X-CRM114-Status: GOOD (  13.92  )
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

The HDMI RX controller can expose the audio embedded in the incoming
HDMI stream as an ALSA capture device. Document the #sound-dai-cells
property so that a sound card can reference the HDMI RX audio DAI.

Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
Changes in v4 (both suggested by Krzysztof Kozlowski):
- reference dai-common.yaml and switch additionalProperties to
  unevaluatedProperties: false
- drop the consumer comment from the binding example

Changes in v3:
- no changes

Changes in v2 (all suggested by Sebastian Reichel):
- reworded the commit message to describe the hardware
- property description now documents the DAI indexes (0 = I2S,
  1 = S/PDIF)
- moved the consumer reference into the binding example
 .../devicetree/bindings/media/snps,dw-hdmi-rx.yaml  | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml b/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
index b7f6c87..b80660d 100644
--- a/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
+++ b/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
@@ -78,6 +78,13 @@ properties:
       The phandle of the syscon node for the Video Output GRF register
       to enable EDID transfer through SDAIN and SCLIN.
 
+  "#sound-dai-cells":
+    const: 1
+    description:
+      The HDMI RX controller has two digital audio interfaces, one for
+      I2S and one for S/PDIF. The DAI cell selects the interface, 0 for
+      I2S and 1 for S/PDIF.
+
 required:
   - compatible
   - reg
@@ -90,7 +97,10 @@ required:
   - pinctrl-0
   - hpd-gpios
 
-additionalProperties: false
+allOf:
+  - $ref: /schemas/sound/dai-common.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |
@@ -129,4 +139,5 @@ examples:
       pinctrl-0 = <&hdmim1_rx_cec &hdmim1_rx_hpdin &hdmim1_rx_scl &hdmim1_rx_sda &hdmirx_5v_detection>;
       pinctrl-names = "default";
       hpd-gpios = <&gpio1 22 GPIO_ACTIVE_LOW>;
+      #sound-dai-cells = <1>;
     };
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
