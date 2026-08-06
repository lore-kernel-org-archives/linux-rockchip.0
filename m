Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC30CC55838
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 05:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sxR9U1gxjF03/oqXLzS1yNGAQo+jf0Eip0EvR0aFI0o=; b=MA0oIJsZVsEktK
	mbW4jlCrBe+X/cweGd4lSDUVdf73/A3tcLfA5DvZcZAqb87am8ytoSmxgbGIwQsQQtE93N0GueMpm
	HWyB+DP5d0Vxl0PmQM0PB7oYS8NrynPqjZ1xjpo1ZjHbgbf9uq1C3qj/0DL+9r66F9EbHtWvnAppL
	hFYa+x6RslIqo1rvLfufZlXpiDiKrbcz7WPQHaN1fydq98+wn+3KFcjwYdQru4a5J81qk4pNNIRjb
	CsllBCmALumKGsVdGHgVmug9dCxnHQTE0SirXx5l3cvpdO47fr8dz78+IktO/eL3b+7ck7nh+Kx/v
	aLRAGaJzOZKclZrjMc3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqYP-00000004wuY-20FH;
	Thu, 06 Aug 2026 05:22:05 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqYN-00000004wsP-0fIK
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 05:22:04 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-84a652535dcso1203910b3a.3
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 22:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785993722; x=1786598522; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=eVcxW4CrMFPdiaxkpRl6bL+HxVIt7TtpKeqoh/VcgyE=;
        b=OmSMTIBuNR1rmzALk1fkRD6H85phdbeNu98V12YOrUxxvcMZZtDM7mRr2S1iKFJeyH
         DpvftCssCghhLrpQ8jYRKZcDtgZjL8OADzdpymSgRy4rh7T/eCJtPBy7vqdnG3mCuYPA
         RG3TiaOGTZ5oZE+kCvQxDQUrmkH8aaZHLYugC1R6KWZydQFqEullLcHneTN1sF/dhMwp
         sDOWwghMHjUo8vOes7nBKouPLUy0OsIRiehuq3MC3EsGF2zubKEuX98OhThC2z/ewOmC
         AwRMlHOphsOddeEGzkLzqrtUwjL7tv9Kjip7FI3pIMXjLe17QZXGV0hFjFMfYr7RJYNv
         Eaug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785993722; x=1786598522;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=eVcxW4CrMFPdiaxkpRl6bL+HxVIt7TtpKeqoh/VcgyE=;
        b=liqSWXu+xOcKUTiYGqcaSjA1cTvdI2aJI9ncd4RQHLBJWKqKs7LDgZSul5CiOiAMTs
         XXA6IDW3vzyzCsd6RH35FGyq0mGUJA7hjR34r+L0aLShRgka5sWPSlCxB+KcF/5aPIRY
         pPvwrV0VjCLsCO40ovkQ07r2KbyTDjIiPxaqyOQ3bHZoj4jeNQ9sVBk2+Z+QfK/XdZS3
         KcO55t6YsFcD9WDqLh28Zlk4w4rp3LIQT1TXgWXDQT8o6KWbkge1v2IAikgYe3MUc6wa
         qxQo7XGTWNm2a0PBgK6MJeZYE3PGvRgjTGh1aKNUdmYLE+giHNz9SVrs0aGmtqBmMRhp
         gHmg==
X-Forwarded-Encrypted: i=1; AHgh+RpimqEzNDl5pSWojFPtyrtgfubMJ+SGJCMyZw871IApuwOeUC2f0HweHKjqFimrEQye8GX7UPZe0wcJpWFJaA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4C22KaKSF4UpuG1/BCrXqjs7ufK7LHnc9nNx977mZjuXM4ShW
	ap3asTMhPFiwdFF1yMYnl8y0e1Yy/Rt/UMxVQ2tfdn/N0JCaiwjHiyKP
X-Gm-Gg: AR+sD12F5ej6LqYpWriB4Q6arZSkFpMWiQb5/IOCZcApjHY3f7sHVpujxUyr0kt2Pxj
	WE7UoQv4Trfq3PZcLSljPh0xT+BZRY4A7aG9YDGZqTVOj1WJ3b5kWjiolzaE4WvufHWzT+HK2PR
	jW7noP0mTpzQShc3LeiteYl2YG8erxnZfwxqUA+OwH94IXXF+vvvyJUxvasM5pL7/LOi6an5/Zm
	Qol9bIQSc9MdFrwtXE9pOfZTZw62w3cXl+oy1O5L5SpgoNmtLWBdVFSQFiqZkXi9xCGapBzSc6A
	r4/LNsrHWf6Fg+5S0lcfp2RCitTOL5Se9Q7agkcy993RxHpaF5hd4ndI9wh9+JYChmX9p6CjaTR
	QBWCTe/sihWZYlw+FtisNHJ2yWIo1M0YzgtczuBSTkFycf1EZ61vLFyy18x0ROe4QSm5StpN8hq
	dKtUuevT90t0RTwkp6WXmrk0OCeXZoZ5GwszH/t0WdDMZOC0+FVsCsixoKsVWnmeEFlqWReI55J
	YjRmVJ8+ot1jEsEufCDHdjSvcoAObVglKp3o42DfgjOXcAcrHcuQ3oDKZmi7nvqznJQDBUZKUCP
	phdu
X-Received: by 2002:a05:6a00:14d3:b0:848:63c9:ee38 with SMTP id d2e1a72fcca58-84f2e13adafmr13246503b3a.39.1785993722219;
        Wed, 05 Aug 2026 22:22:02 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f45bc9cffsm554279b3a.59.2026.08.05.22.21.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 22:22:01 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Mark Brown <broonie@kernel.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH 01/14] ASoC: rockchip: rk3288_hdmi_analog: Drop redundant probe error messages
Date: Thu,  6 Aug 2026 12:21:23 +0700
Message-ID: <20260806052136.21034-2-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260806052136.21034-1-phucduc.bui@gmail.com>
References: <20260806052136.21034-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_222203_193339_1BA886EF 
X-CRM114-Status: GOOD (  10.80  )
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

From: bui duc phuc <phucduc.bui@gmail.com>

Remove the probe error messages to avoid duplicate error reporting,
since the error is already reported by the called functions.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/rockchip/rk3288_hdmi_analog.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/sound/soc/rockchip/rk3288_hdmi_analog.c b/sound/soc/rockchip/rk3288_hdmi_analog.c
index cf642a23c38a..d88d5ccfcdb2 100644
--- a/sound/soc/rockchip/rk3288_hdmi_analog.c
+++ b/sound/soc/rockchip/rk3288_hdmi_analog.c
@@ -185,10 +185,8 @@ static int snd_rk_mc_probe(struct platform_device *pdev)
 	gpiod_set_consumer_name(machine->gpio_hp_en, "hp_en");
 
 	ret = snd_soc_of_parse_card_name(card, "rockchip,model");
-	if (ret) {
-		dev_err(card->dev, "SoC parse card name failed %d\n", ret);
+	if (ret)
 		return ret;
-	}
 
 	rk_dailink.codecs[0].of_node = of_parse_phandle(np,
 							"rockchip,audio-codec",
@@ -223,11 +221,8 @@ static int snd_rk_mc_probe(struct platform_device *pdev)
 	rk_dailink.platforms->of_node = rk_dailink.cpus->of_node;
 
 	ret = snd_soc_of_parse_audio_routing(card, "rockchip,routing");
-	if (ret) {
-		dev_err(&pdev->dev,
-			"Unable to parse 'rockchip,routing' property\n");
+	if (ret)
 		return ret;
-	}
 
 	snd_soc_card_set_drvdata(card, machine);
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
