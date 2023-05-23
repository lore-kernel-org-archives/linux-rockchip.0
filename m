Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 685C7C7EE26
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 21:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TUqvm7Utnr6A6zq0vYbDWhg8ALlsjJGYNhbxTOT2ibw=; b=1zFFRpBg0c+b8h
	0Lyw+wr64MWGlKFk7SQyWv/0uZ1x1spuLTF1JFxlhcLZCWwat+Nbs14ZnmMhaoRuGrfsAdatfhJkR
	14cbprjU+dHAWHCBK/yd2lxXm3xC1178XeUrAuobOL59tYP+RxPfQ3FZlE03UXuSlNWM4RjstEo9Q
	7xiha535vnLMDqCrw7WQFzGWgtZB8oaGyhbzeGuqwDh31+WrcDRERTIJyPCpIt3WygtjaXyXEJH7k
	Lyk0H4M5yPt2eEMVSyu0hsTsd1ZDB8m5d4k7y4cM7q1N3rcWI5gw1gSFPg0DYd+349SrAx5i8xCZs
	Q8OZJtvNRX5d61+jzMEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1ZiI-00BVRd-0Z;
	Tue, 23 May 2023 21:38:38 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1ZiE-00BVOs-33
	for linux-rockchip@lists.infradead.org;
	Tue, 23 May 2023 21:38:36 +0000
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-3943fdc59f9so214073b6e.0
        for <linux-rockchip@lists.infradead.org>; Tue, 23 May 2023 14:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684877913; x=1687469913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VI4om0ZWAsAxPDpD0mRnXUe2apysOtTyxuri6O2D2jQ=;
        b=IxRFm84jrNoDiWcn5yW738bsCP5iCB0+EmH3a0i5BluwYlfXaNm4/LO8GY3bKEzmJk
         aCUSC36WK9GhGYMwwepdNTbFoMHV+9TH1Ejv1JYzw5H3OvwuyM24dFrcbPcCDReJJ6Kr
         8cvW4zgnlcdef4f+/ud0PKulsS+offM0b4j5G/PpjSgQvaMfFsEU1iSRwDnvXhDXcRTe
         46yPBK/3n5BC8K/XM8nT30CAWlpnUdlK4IHeL9973nRjPXGsjhek9YbZ+zWCLD1/L+ew
         iHluVRTd64DZ++VBCcP8GyEJxneQgfoWmLWDH2UJdk4ZZDp6zVOqV7imaCV51v09G+Cr
         f/kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684877913; x=1687469913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VI4om0ZWAsAxPDpD0mRnXUe2apysOtTyxuri6O2D2jQ=;
        b=iixeXplLUrwLxh4M2STrgK9DgE9Zl2bPhVr5J+XcPMZ0feXK/6XXfq/ppHK6/InboQ
         bDTTmIa0/CxNFhDln6kgZpTvJgps7Xq54bU/e5ke0LhYw7NG9qDPMpZV3WhRHVkw7F1f
         rK2+oNnKliBsLVBBdYBhkyPx0k3Yriw2x/r4rfelYNMn+WoZsxOk0N12Yfo3pBkjO6I4
         aKejbJ0xLCTxAr6t8I3PuSQFj4WZ6IHBxsacgYNGePltT7wpRU51wNxFq7l6bbx0rY0f
         qkGXbaPM7FzW1AlETlPi0yh8nzRYNdRTpptVhav6cJpNE+wTuVj9K/HxqwWt6EzGhQXJ
         zqVA==
X-Gm-Message-State: AC+VfDyIfHtk+98eummq2aTe4sPyf3vDfABxLsJ8yKuRu+KEf7zuSN0Q
	9LWc4f7n4cqHZ4gxrsraVMDFUIqVd4SlOA==
X-Google-Smtp-Source: ACHHUZ49snHGywQm22s3ZruIpUwwW0LIO0zG7T/h5lkdyPqari17yoPFvSZJS3L1hb8wzc7tjabbWQ==
X-Received: by 2002:a05:6808:4043:b0:398:9ae:50cc with SMTP id cz3-20020a056808404300b0039809ae50ccmr4312004oib.41.1684877912654;
        Tue, 23 May 2023 14:38:32 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y83-20020acae156000000b0037832f60518sm4442359oig.14.2023.05.23.14.38.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 14:38:32 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	zyw@rock-chips.com,
	sebastian.reichel@collabora.com,
	andyshrk@163.com,
	jagan@amarulasolutions.com,
	broonie@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	lgirdwood@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/6] ASoC: es8328: Enabling support for 12Mhz sysclk
Date: Tue, 23 May 2023 16:38:20 -0500
Message-Id: <20230523213825.120077-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230523213825.120077-1-macroalpha82@gmail.com>
References: <20230523213825.120077-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_143834_982563_E5999645 
X-CRM114-Status: GOOD (  11.31  )
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

Enable support for 12Mhz sysclk on es8328. This sysclk value is used on
the Indiedroid Nova rk3588s based single board computer.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Chris Zhong <zyw@rock-chips.com>
---
 sound/soc/codecs/es8328.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/sound/soc/codecs/es8328.c b/sound/soc/codecs/es8328.c
index 160adc706cc6..3918be5fc3f1 100644
--- a/sound/soc/codecs/es8328.c
+++ b/sound/soc/codecs/es8328.c
@@ -36,6 +36,16 @@ static const struct snd_pcm_hw_constraint_list constraints_12288 = {
 	.list	= rates_12288,
 };
 
+static unsigned int ratios_12000[] = {
+	8000, 11025, 12000, 16000, 22050, 24000, 32000, 44100, 48000,
+	48000, 88235, 96000,
+};
+
+static struct snd_pcm_hw_constraint_list constraints_12000 = {
+	.count = ARRAY_SIZE(ratios_12000),
+	.list = ratios_12000,
+};
+
 static const unsigned int rates_11289[] = {
 	8018, 11025, 22050, 44100, 88200,
 };
@@ -577,6 +587,13 @@ static int es8328_set_sysclk(struct snd_soc_dai *codec_dai,
 		es8328->sysclk_constraints = &constraints_12288;
 		es8328->mclk_ratios = ratios_12288;
 		break;
+	case 24000000:
+		mclkdiv2 = 1;
+		fallthrough;
+	case 12000000:
+		es8328->sysclk_constraints = &constraints_12000;
+		es8328->mclk_ratios = ratios_12000;
+		break;
 	default:
 		return -EINVAL;
 	}
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
