Return-Path: <SRS0=K/1+=EY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66966C63697
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2020 13:59:03 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DB61C20731
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2020 13:59:02 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="M2QuvKi6";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fdF8xUVo"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DB61C20731
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HUHi+/OxgICy1BLTlZ0CfnHtS6+o4QmnkG4nwQ0Kbjk=; b=M2QuvKi6Agnpe2k4fyjBisij6l
	ShKf1g3U0iYEnxgHXwcVDReiGoiZo/s9jWnnM21JGZLNURvxkyBDgw+0xHb7oQ7BObPVee8WVWpOG
	ptVWAetmpKvZh9IAMOg1jyTG3efUTJPLfi2DyCb6mqkOkYONQu6yQ31L9fP4laBlJ0sM3V4Rkq9q2
	sZxL+AX6Q/5wc1OHqVo3KBzfzKIM5SwnL/54kYZsd0Y8hcvvxm4bkvaIlvL9Ucp0nTvPcIDeA61mn
	epJWAx92oG6/XckdLI+4QYIdi7nG6T2wmbt/GdTbpj9nmAJYhP4DjnbfojvLOuOpTaxaSZM1v55jX
	K6jIyREA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kfNz7-0001Y3-AX; Wed, 18 Nov 2020 13:58:57 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kfNyk-0001Qe-Us; Wed, 18 Nov 2020 13:58:35 +0000
Received: by mail-ej1-x643.google.com with SMTP id f23so2906239ejk.2;
 Wed, 18 Nov 2020 05:58:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cfXI1Q85bb28+McjuHeu3xbkODr0lp86DQ42QSmzooY=;
 b=fdF8xUVo3uIdHc6YyB775KnYhOIlFrGskqvtuYUq0+H0LEDxRf2FSjmE3MejSgdHTb
 8WJWYId6ImRG9GGecYu1B32uSQt7oWDTxH2x+PqtWNUitn9YCxWI0EEes+tXEV1MP+XU
 8D+YacIFqFcQzMWGR+LX6Mc6ITalnds5Ff3PCpT9y487iyq4fM4+FYc0vNpudn6aT1nA
 f/tKSRmWc1iauHA8/2II7cKUJ/ro4adTzpQmNEnWYqgZZVVWV6vKzi91xqrWu/9Z/Wbk
 IjGH8CQrSMvry7JmgYbGqaLBDpacNYpdVh4K8kq5qc3bN/DiIm8VHGvt37d6TGSFQwVl
 vKaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cfXI1Q85bb28+McjuHeu3xbkODr0lp86DQ42QSmzooY=;
 b=Gu3myOi6usQ8C65tGJ9my+fZX/maIGTxJTyqOFP+L/5RaeXJDtlaSypmAITyp2uN1t
 jkdMtg4Hv7d9696+YbnxZ+lH3pnyHk+dBHOVJwyWbbTqDvIDJTSdVsDzPDneZMSI4F9U
 7G/w5bV/dVwyV0pA7JQL13Huie0X3QmWk9ctHWIytGXV3nlnuQnjCllaBMis7FQHGBSO
 Vxjk7rvpJia4d+fELn0V5KKxXLHH0WXWjhRdDOPV0fgeYep7BSemwgpBU1jzWrmfZdAl
 BUZW4gzI3t0GZ50EwlsslrjTajnw0NetaYbMiynGTTkcIOpeQNqZ6HSG4LA0hWhJ4a3B
 y+1Q==
X-Gm-Message-State: AOAM5332KRmQHmOOEMovz27e6u3doUq1DRy/lE+nqRk+GO5S/nxQgJ4n
 gMBl72rufeAt8yjtAx/N3b8=
X-Google-Smtp-Source: ABdhPJwPUth9fHvvDX++NfqTDXzoOCsJv1H/KeHB1Jjd8310pAuysjnHkPHT+Mln9kBpRXazl3YUgg==
X-Received: by 2002:a17:906:c08f:: with SMTP id
 f15mr23483362ejz.97.1605707913682; 
 Wed, 18 Nov 2020 05:58:33 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id cx6sm13721384edb.61.2020.11.18.05.58.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Nov 2020 05:58:33 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v5 3/7] dt-bindings: display: add #sound-dai-cells property to
 rockchip rk3066 hdmi
Date: Wed, 18 Nov 2020 14:58:18 +0100
Message-Id: <20201118135822.9582-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201118135822.9582-1-jbx6244@gmail.com>
References: <20201118135822.9582-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201118_085835_036272_BD5C2D59 
X-CRM114-Status: GOOD (  13.25  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org,
 airlied@linux.ie, linux-kernel@vger.kernel.org, mturquette@baylibre.com,
 hjc@rock-chips.com, dri-devel@lists.freedesktop.org, lgirdwood@gmail.com,
 sboyd@kernel.org, robh+dt@kernel.org, broonie@kernel.org, daniel@ffwll.ch,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

'#sound-dai-cells' is required to properly interpret
the list of DAI specified in the 'sound-dai' property.
Add it to rockchip,rk3066-hdmi.yaml to document that the
rk3066 HDMI TX also can be used to transmit some audio.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml
index 4110d003c..585a8d3b9 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml
@@ -42,6 +42,9 @@ properties:
     description:
       This soc uses GRF regs to switch the HDMI TX input between vop0 and vop1.
 
+  "#sound-dai-cells":
+    const: 0
+
   ports:
     type: object
 
@@ -101,6 +104,7 @@ examples:
       pinctrl-names = "default";
       power-domains = <&power RK3066_PD_VIO>;
       rockchip,grf = <&grf>;
+      #sound-dai-cells = <0>;
 
       ports {
         #address-cells = <1>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
