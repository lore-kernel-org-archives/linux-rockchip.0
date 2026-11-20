Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69119606A695
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 21:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yfgfP+9A;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=VOHQZIPG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=QwCdiJ61lfRvmW3i1I2mmSYBiHxN+/y9WeUd46ZVd7g=; b=yfgfP+9AcmMs/OOgJydgtKGXZq
	KSTP8dbI+RfqBnV6dFaDQV7B6tC80/QgKx5Hy8njAXji3GydgPTuZAMu2rLS/MzH8HZf5jiKcuREh
	CZbberJrRaZK0dm9aXiuCJtJf8x4LeTzQYgw7gP+3ttRP0AbsBQR/bmn+0TkI4dRy3rb+1qEPDqX3
	odQtPvpXEZGdwZBSoJUFBuntTWZOkXEMf6pAD3luWvDERfq/wcPokcEXiXRU5FixATLw6s5AiBsDp
	GaGFddruvaczapukScDMssWIz8jwzrTc6Y4Xa3NPgg7ruOOg7SMUYs9uejLKugXARwZ8FFMlP8Eg9
	/C9OxMuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUWAW-0000000GJ9E-1vIW;
	Fri, 20 Nov 2026 21:29:16 +0000
Received: from mail-oa1-x31.google.com ([2001:4860:4864:20::31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUW9h-0000000GJ3e-40tv
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 21:29:10 +0000
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-4ad89c49e0dso493702fac.2
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Nov 2026 13:28:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795210105; x=1795814905; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vtcXd26CBIIDN3LfpX4nHV3TvJWIXKwwyZF0T/tbLeY=;
        b=VOHQZIPG6eU65/5pJIL9oVsfNwGFRvWcZa4lrTj75fTyMgG1ak0psxgAw15m2Nercg
         PaQADB2QV77eFK0I7geo86eOTTMBJCfdcrbXpdso3mMwxTaj7A8dGVnSNcnmnLEDkTSd
         bKAxE6h5pK9NAZHl+rUjVbKbTuRnx9DaW1VIerFHWswOG0BDpwcLsdtdQl8k39rAzurA
         zxHfydXJKfEtkcDKmQKkw+BgXpiSTuS4eZYNp5+VeHwLKzojKyHXG6u5QA+vFrtEkHL3
         jmduQtkGzg6DhpzC+9hgZSSGlYO5IVWvpV8GEMidIrF/97HaIutRCEDWC4dryDF/dX6A
         rVNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795210105; x=1795814905;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=vtcXd26CBIIDN3LfpX4nHV3TvJWIXKwwyZF0T/tbLeY=;
        b=zGLURUZiQn76WPq0yE2RhdTh7byhZTkIbYCMOHjizTv9z1Q4d3RjjFsA9KSlrnfNrZ
         eIk5F8JKqKhbnJ33S/NyNJuLqI3jw9edzvTJX7e+pD2gcTodLsEN2YHH1+hv9oU7l4jr
         JFAdzLy/gLx2oW9V0Df923FMCuwSTkvguADd9jtaP59Gpy6E1KTArAeeolZzYUHvOkcg
         0EFPCUZ/Ktv8XLKY9iW36hsoADL7/kd8b4HDbJcgFedK58JF/kxckmrvx6YyTdyoKJ+o
         hWkFBtBvDyR3A35T5JxZ9Uck/HXkl5lleVhxm4hO2lGDkWO0soxMRqKBa1q82Gz/mxPa
         L6cA==
X-Gm-Message-State: APuU4Z8xq4T7d5SWgHfH/5FWOurTNQSPDmiNqG5kCbQ10vwFDdHzvWcD
	0iIBC//ccLFldEQFTRplW3N1SP4+Wz7WBnl93pH2LEyGTSBodgkALdmrWr3c+OoH
X-Gm-Gg: AYBFou0efG5wQ6rQ8OnXgFIvny4pdrr6JsURmn2vv3LVle4OZsukhnga5sbiNqEHAuX
	GNbUgeu9d0+pi/mPrPb7YTGAMebdaQLzYOuRlG7NdXGzkygbpo5Q3/+paBLdn/FruggbPMFe8eX
	+t9fhc6bJm2jmL8OatqvNqkmjoYYwovhoBqdNuUQXUaRE7/3OTfyPpo8BfxCDSB4aswTOsNwIza
	Fq0OQLLWlosbA1ZKgbFL1SCfH1qzoP34haezP5moe3qaCFjkdPstq5X6cV5WsMadQTA3FS43mgk
	oX9FesnrkKsj+Knfifx4tPCvNJWuBWxEkF1kmpxhxRuII1Ubbyyn3uSiVeAzgal+HsIBdqICB8S
	gJk9p/5VIgbU3ZbRyNTxDW4rnRyzJd64BqxcHw3hrHW6glEbGzQVeu6PQyBLXuyFZr4lIXWID+H
	7CaoKVdSUQIi3cE7Z6LLY8Kc6/5YT1vm0DVPXoyTf7R3O53cTvrzZltll4nlwB3OMOyzAXkYBCx
	QG7Jowee4KxJFG1wxlj55FUb5NUl0dEU2k7BfAheGThAoENG8qRvW1riHBc4iKYV7HIArbOvYxe
	R/vHg9q/eMnQ0DvzYc1Ql1E29fP94Q==
X-Received: by 2002:a05:6870:5b9a:b0:4b4:8c0f:40b6 with SMTP id 586e51a60fabf-4bc821920bcmr4451217fac.20.1795210104791;
        Fri, 20 Nov 2026 13:28:24 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4bc5b07d766sm3774126fac.2.2026.11.20.13.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2026 13:28:23 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	shawn.lin@rock-chips.com,
	linux-pm@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	sre@kernel.org,
	t.schramm@manjaro.org,
	xsf@rock-chips.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 3/3] arm64: dts: rockchip: Add Battery Gauge to Anbernic Vita-Pro
Date: Fri, 20 Nov 2026 15:28:15 -0600
Message-ID: <20261120212815.35663-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261120212815.35663-1-macroalpha82@gmail.com>
References: <20261120212815.35663-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_132825_997561_8790E0F8 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Cellwise cw2217 battery gauge to the Anbernic
Vita-Pro.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../rockchip/rk3576-anbernic-rg-vita-pro.dts  | 21 ++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts b/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
index e66803b5399c..2203e092e8c8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
@@ -954,7 +954,26 @@ hym8563: rtc@51 {
 		wakeup-source;
 	};
 
-	/* cellwise,cw221X battery manager at 0x64 */
+	cw2217: fuel-gauge@64 {
+		compatible = "cellwise,cw2217";
+		reg = <0x64>;
+		cellwise,battery-profile = /bits/ 8 <
+			0x5a 0x00 0x00 0x00 0x00 0x00 0x00 0x00
+			0xab 0xb5 0xae 0xc0 0xa9 0xa4 0xcf 0xaf
+			0x96 0xff 0xff 0xd7 0x9a 0x83 0x70 0x69
+			0x65 0x65 0x65 0xb8 0x81 0xd9 0xaf 0xd9
+			0xd2 0xce 0xcd 0xcb 0xca 0xc7 0xc8 0xc5
+			0xc2 0xba 0xa8 0x96 0x8a 0x85 0x7d 0x7a
+			0x7f 0x88 0x92 0x93 0x94 0xd3 0xff 0x5f
+			0x20 0x00 0xab 0x10 0x00 0x91 0x68 0x00
+			0x00 0x00 0x64 0x3c 0xa0 0x89 0x00 0x00
+			0x00 0x00 0x00 0x00 0x00 0x00 0x00 0xb2
+		>;
+		monitored-battery = <&battery>;
+		power-supplies = <&sgm41542>;
+		shunt-resistor-micro-ohms = <2000>;
+		status = "okay";
+	};
 };
 
 &mipidcphy {
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
