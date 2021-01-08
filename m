Return-Path: <SRS0=mPU+=GL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADB9C433E0
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 15:11:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4CBD2238EC
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 15:11:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4CBD2238EC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=55R8cXQYoWn3MwcJqHcb5ZW8ttllUQt/oiCg7M38INg=; b=x31U6KlMB0JQvbJJY1wT6Wksp4
	iXTf7cII7oNBfFlwkAfM4mS7RLJXLMNpa7nQcu/MGLdUEIS/6E6NOw05e1bUwbQ7O/WtSlLzf/rAH
	2npI98HXGnDSkCHxZ/Iktm64zxFaDaCjDJqNDa+CX0RTnRaEkJghOuQAKXISZdT9JQRbbylpEFSKP
	10vxpHa7JkQEYDd7ll98Na+CkNhc7YUIGcaJWS30OkDiJx9OLS1hKyd315K6jeuNupnVsaSbsSylg
	TLARVeJV183dtcmUWzNlNYj/4YbeBN0bY1HIEDqhnwKPBVIIbdMyc6QOqjv2k2at0Tvae8kvd/iNX
	jnoPqpUw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxtQN-0000Hp-Mp; Fri, 08 Jan 2021 15:11:35 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxtPU-0008Qh-VN; Fri, 08 Jan 2021 15:10:42 +0000
Received: by mail-ed1-x532.google.com with SMTP id v26so2552849eds.13;
 Fri, 08 Jan 2021 07:10:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Yv1Cd7yjkWa6SiXfOYc2/ThBFnWGdgOOaqiI+T4YVvU=;
 b=ISM7io9NxWtXYCEJtzD7rih2PcZf6Tj6x7AZQjcYcYbWq7SWTPmFan4+UF/rxApTTY
 5UgYkmt/sIsRaGz/tnXGGnn2HcLGvqlqtWhDDkeQiIqmh/klcBRG4rUDxgEUNPkdr436
 UyylC4fRDqE+5y5uC8DyQVykfkjSl0m58sjot2xy+NZHVg6Ti28gduJ1kBR8nrmitBfa
 lJpebXYagcD8TCwENvbEkHybXRFw5LIYG5+glipe2W+KQhCx/L7nWATxkK06X+3zD0WS
 FBOxgcvlqnk33vJkzrnRUfbb59qod+6TgTgehgjoFX2ZQ7fLiRwtLOuYfLkBMUUGAD5N
 IiuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Yv1Cd7yjkWa6SiXfOYc2/ThBFnWGdgOOaqiI+T4YVvU=;
 b=LyPWFq0Za3YVa0VmGUQvNLJMlhVw5gkQkp7V5IpEvru2ubG1H8wXc5ityoTyq2TIRm
 zXq6d4wJ+lNBP1xhuU1WpaVilEQNzeqjZ3gpUknlHzgO7O2CIfPDZfQX3PlkKKQeaDxB
 kWTSPzcUq1naKEScaEvyTYY2CrSAHxuSHLcAHjSRK76R/WQrWxo1NZf2wGBkWWc+y//g
 yhj64qCX6WepI99n2E2wpXYHjM0I5HCbDYtSVgNyzWcRXa1gaURVNYnRw0xCreVgp0Qh
 fSNIT3gYaNUXczc2VJ9vvEE6pQphGO1qJPuIyUufWUv//L/Vok0K9zZpnIBvYCqmLjSC
 pzlw==
X-Gm-Message-State: AOAM533vb0affzd1FzK2dbziHv/zn68XoejpcZ/6g/LO7OSCegfvqwdQ
 JMw2X5/F2/gKSl9VJ4CWGA==
X-Google-Smtp-Source: ABdhPJxoepKz8v6G+i9nSzXAadPVyX1jnM/Mpr31ibtS4FGr/ETI9yCKbb9OQz28l/TtkW85zUE0CQ==
X-Received: by 2002:a05:6402:404:: with SMTP id
 q4mr5788509edv.295.1610118638748; 
 Fri, 08 Jan 2021 07:10:38 -0800 (PST)
Received: from demetris-TA770E3.lan ([212.50.117.154])
 by smtp.gmail.com with ESMTPSA id oq7sm3669286ejb.63.2021.01.08.07.10.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Jan 2021 07:10:38 -0800 (PST)
From: Demetris Ierokipides <ierokipides.dem@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] ARM: dts: rockchip: minor tweaks for rk3288-miqi.This
 series adds a missing mali GPU node and two additional CPU opp points
Date: Fri,  8 Jan 2021 17:10:34 +0200
Message-Id: <20210108151036.36434-1-ierokipides.dem@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210108_101041_145065_D154040C 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
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
Cc: Demetris Ierokipides <ierokipides.dem@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Ntemis <ierokipides.dem@gmail.com>

Demetris Ierokipides (2):
  ARM: dts: rockchip: add gpu node to rk3288-miqi
  ARM: dts: rockchip: add extra cpu opp points to rk3288-miqi

 arch/arm/boot/dts/rk3288-miqi.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
