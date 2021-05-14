Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46091C43460
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 17:34:31 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EBFE561350
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 17:34:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EBFE561350
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SEJXI0eY8xfHbfJjkiGwYZTwtvAUSvn9CsXT+Jg7zlI=; b=evmtEcUyzgycgEzpeyWAOETYQ
	zpCdm+bW4Gnt1r2KvOz+aeP+XLYYwSfoA0JLWH4TLu7GMN7OKGov7bF93Vl4URWeuXqCNgzm7Ya0T
	4X8Y3QNOJaN6BSYqmxkJpZbqSZgODwr1yYvsVb+g3MWf+6VnTX8/CSjx62zbxFpYDIaA6HIzsCgz5
	Yip7fMUJ0W8qi5yqi9RcUKMyAPXml+kMDTpsG55On9iPwLiuqNy16RXpYASzw6/pBJXsokZivpHqM
	HpMAGeepJqjqDRdbw48+Te4Smjb2ZnszzhDINOkH6L63vLjf+VJs5C+PLZb8f5y+NLH1PcHOpo62o
	D8NTkIZcg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhbTv-008ZwY-QN; Fri, 14 May 2021 17:20:11 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhbTq-008Zv5-0A
 for linux-rockchip@desiato.infradead.org; Fri, 14 May 2021 17:20:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=CtIozg4TyPmaxagSKodE8olnLW3eEIEko3jxzjbTr90=; b=zla0Knd498jq+oVzJVWxw7CJTf
 6VwjjaSRS2TI5RufxPhSt6Mw/nVp9c5smnfwS/SJ5kx/mRVjQppoe/maz8yox8nN4D6zBa5v99hRq
 s5EEf/u8QP6Do+VHQ6W+Ac6y8UHed+sI6RlscEsQUzNythuGQkBZ760XTXvyowzRFw2pHcE3Z3Ji5
 fDBPHWFxtSRGb7jZG1T8ioz92L3HplKZ512VtdPzuuAETE8KrqrEGimPzoWFndaYQOueWojkSylzP
 ClVmxksliQJ82iClGMG6ovtpXkqgENp9ovIXuelximtB7ZaKyaiGSARoCTmBV0kl5ji4trepAKHiA
 T1q91M2w==;
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhbTm-00C92p-U5
 for linux-rockchip@lists.infradead.org; Fri, 14 May 2021 17:20:04 +0000
Received: by mail-oi1-x235.google.com with SMTP id v22so172669oic.2
 for <linux-rockchip@lists.infradead.org>; Fri, 14 May 2021 10:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CtIozg4TyPmaxagSKodE8olnLW3eEIEko3jxzjbTr90=;
 b=PCVqlSCodPkrGPKgZ1w9KKVkYDhYVW9vrpCZ3xmhVRVmc+9HaSbcCyoCGHszbA0gQm
 PNGLQzkLI9eG667gQmIuHUh22ltAR+V8EgMTvZ6zlDNHAwTpHXL7x2LeiR2+0mSeAyqN
 +zP3jH2Mj9Wu+GMBrecWVgXZe1Ay6k96Q0AQsIQj1dCKTQ+NUWCCz0b6dchdrQLajBNF
 gnsRBkX3yU9MKyyDG7IzMdq1D+fR4jRqE7fOhyd952Cfq0nraZ4A6duqgVLy1HKVz/ZM
 MqkNdq2Ab/ntfn+ad0s68tUHjyNNpObWrFk8W/pCuZx9sKzm5ElAaC99/apKdjYex4DS
 BANw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CtIozg4TyPmaxagSKodE8olnLW3eEIEko3jxzjbTr90=;
 b=BgHHD0XwV+DZ1bh1CLTJt8+vL+0mi847lgsP64m64JBqdXbrjOVVDMvOafzU6LvcqT
 D5HrtcMG7myu1kr0BcVAufAwUuIh/X0Cyqwxf7nTIUyqAgJ/0UUzs83B9Du82Wm9D2GB
 GEbPv5QWlEow6yhR65r24i5u7fYomBQWSrwdhOl10VCOUADHQ+DBG4bcfASvzlRRw36h
 phaW/aG2TM+WZDMhtFMr6dZbcprJH4L+vOIrCwnJWoCfSU7mkiLSwchxLv/g+KuOsx/n
 590yqzORUrImAwKmznGzOgDgAsIEYDnRVmSXXsKuLX6dERCChDaQZqpC+RtskNbYrhO7
 cOuQ==
X-Gm-Message-State: AOAM533vj9/eq4428n/++d8mc5k9QqyuY1RZ8LUhdf3lgRxC8En2W2Hh
 5XW96WojX//DIOBvTKxaQBg=
X-Google-Smtp-Source: ABdhPJytITL4P1navsjFM7xpsEj20HyjcE+F1Bt+xFcaQ52PEKrTicRXH2w1VUfyo+tTxCOEXkArBw==
X-Received: by 2002:aca:c714:: with SMTP id x20mr34029513oif.85.1621012801169; 
 Fri, 14 May 2021 10:20:01 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id x14sm1302547oic.3.2021.05.14.10.19.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 May 2021 10:20:00 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: alsa-devel@alsa-project.org
Cc: broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com, heiko@sntech.de,
 lee.jones@linaro.org, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v10 4/4] arm64: dts: rockchip: add rk817 codec to Odroid Go
Date: Fri, 14 May 2021 12:19:40 -0500
Message-Id: <20210514171940.20831-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210514171940.20831-1-macroalpha82@gmail.com>
References: <20210514171940.20831-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_102003_014948_53E418F1 
X-CRM114-Status: GOOD (  10.63  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add the new rk817 codec driver to the Odroid Go Advance.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Tested-by: Maciej Matuszczyk <maccraft123mc@gmail.com>
---
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   | 36 +++++++++++++++++--
 1 file changed, 34 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index 49c97f76df77..e8c2b5a817a7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -165,6 +165,31 @@ blue_led: led-0 {
 		};
 	};
 
+	rk817-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "Analog";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,widgets =
+			"Microphone", "Mic Jack",
+			"Headphone", "Headphones",
+			"Speaker", "Speaker";
+		simple-audio-card,routing =
+			"MICL", "Mic Jack",
+			"Headphones", "HPOL",
+			"Headphones", "HPOR",
+			"Speaker", "SPKO";
+		simple-audio-card,hp-det-gpio = <&gpio2 RK_PC6 GPIO_ACTIVE_HIGH>;
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_2ch>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&rk817>;
+		};
+	};
+
 	vccsys: vccsys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v8_sys";
@@ -269,11 +294,14 @@ rk817: pmic@20 {
 		reg = <0x20>;
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
+		clock-output-names = "rk808-clkout1", "xin32k";
+		clock-names = "mclk";
+		clocks = <&cru SCLK_I2S1_OUT>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int>;
+		pinctrl-0 = <&pmic_int>, <&i2s1_2ch_mclk>;
 		wakeup-source;
 		#clock-cells = <1>;
-		clock-output-names = "rk808-clkout1", "xin32k";
+		#sound-dai-cells = <0>;
 
 		vcc1-supply = <&vccsys>;
 		vcc2-supply = <&vccsys>;
@@ -432,6 +460,10 @@ regulator-state-mem {
 				};
 			};
 		};
+
+		rk817_codec: codec {
+			rockchip,mic-in-differential;
+		};
 	};
 };
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
