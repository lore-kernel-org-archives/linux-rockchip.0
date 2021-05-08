Return-Path: <SRS0=55oq=KD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70367C433B4
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 May 2021 12:38:10 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E9CFB61468
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 May 2021 12:38:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E9CFB61468
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OosLIokdRl6C5ErmKk9loh+LX/LzRiOLHypl4UGA5j0=; b=WC7a25NaNptYIRUVGmk3bpC9Lk
	GcqN92jQYns5kKXWKa+T1oPrUH2CCFKVsRI0Y56ClXTo112rKBEfVQdkA6voxIJwNQEEo1AVgD9hy
	ohyQHEQW3ocpCgBhIgvcr6kV/z9ZgjOqNpa2m53o4Js7KgSsHqGISt+9LQHpWN3p7Dey06GuCTjEf
	UIpf/hbYxEyRo7s69Oi7b55Mn2agxVeO1RrJGle0d6w/SvLBWj6qbnFZ8n7WaG2jTxJaFIVikvz+f
	aTbtSzl+DTt0kYPyNHTM750H/gUH8MBB5Q5QH9YxFVc3KOh/o+AwzxOCgs0kDd5ZhwZ7SMmd3rSMY
	Muy1GN4w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfMDY-009YHK-FP; Sat, 08 May 2021 12:38:00 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfMDV-009YF0-Jh; Sat, 08 May 2021 12:37:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=V6aLRfOO1B1ohRWCDcHhmocgBoD4D8Oa0X2F/UWU3rg=; b=E0nXb+7kl9bGGlBoRoo9BEuriX
 FwIlorZKb06N/DPJAYH6kLKcInEtVKhWrvloc5gze+k2AdLarJrDOcKcoFevRVjQEJYy+wLvKHE+6
 rkvDGi8wldrq0IQhsq+gSB+MdMQsY8Q0j/HZOVbgDbcmKj+bhtURE0QuNIdA2GYF3lGsYSZ0F1x97
 hFq0iwwm/TL+i65AHuOt26d8J5EasDMIVe2lBs2+RP6OdW2aBMOxVasgbZHe+t80PD22mCLG3apwy
 Kg18MKWdn/a/v15DCDjMY4fRIHdiy7T9CWDTH+NFfQ9793YtIKgGCaXBpOZIAHtX7tMYSjAWFHVD+
 L4trpzsA==;
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfMDT-007XoA-08; Sat, 08 May 2021 12:37:56 +0000
Received: by mail-ed1-x531.google.com with SMTP id s7so8706608edq.12;
 Sat, 08 May 2021 05:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=V6aLRfOO1B1ohRWCDcHhmocgBoD4D8Oa0X2F/UWU3rg=;
 b=e6vYdC/0tscyHByuE3PCugLPodyufEVoohEe8tWabjuvxLsrJOlZJsdxxstc8Fgx3p
 5GGkqGNvbtwI18/vU7HcmnX8+aQa8phYb7zLsD0e9CNZzhGdTm7jnJkAdm+7d/+Kbkm7
 XtObigQmeel0O1v23gc7yfmM0nkJXV63U0XNdQeW8z6c0Gt20haFrbgjGDH/xDQO9oN6
 u7J5QD4JWa2iqVdziUsTfyI6031Mq90RNt6cxudV4sSOqi7TSSIYTeMcveq+E7KX+qsz
 3uYOkFS2nPWrzluwDaYz4xSOEj2fhsKahB3jV/cTBT5a5c+rFA3QqoGWMPj91eYGO2qV
 4COg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=V6aLRfOO1B1ohRWCDcHhmocgBoD4D8Oa0X2F/UWU3rg=;
 b=lRO2QFtNcG1zV7lMUIN8vCFEsWW45pf/Qt3ct3S6/i3UE4+7OyxBS1ERB7b9urVUGP
 ZmIwI7g8Gj0Ut/QYN14J+c2myArUx1Xd1e4pqUSVXvge6yiv2YuIX8Fv9x+BIOtRjOfo
 Ew1Nxo0ObSzpWM7eIdYGZq/625kIWJSqlOmdg5m/tAWfq2U5J18ii1zapLS4whVqXCtq
 hUpL2GYwCau53T2SBqq30YL7b+2YAzv9tCwtgOIk66pcnmmPoSoUoBMxf/swTNT3QIYM
 l2VvJby13QOmRD3TsUuk6UrS9Jynz8FQPRrNAv+ERtGXyEb+rhVOaCBRUuWh/8uekOb9
 lskQ==
X-Gm-Message-State: AOAM532JW1oH2x1vsD2gGXylPzMxhCmKyBMRGmsRixAQBHeyKZ40TKlT
 //GKMuwUg+m5eavQ/03pSck=
X-Google-Smtp-Source: ABdhPJyF86hB2/UGwESN0ylhg/ap4N2xW8De3BKKYA3uoVLX4r1aWDcy9BGzrUVY5z+4mnfQmyUndg==
X-Received: by 2002:a50:9990:: with SMTP id m16mr5042430edb.292.1620477472996; 
 Sat, 08 May 2021 05:37:52 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q25sm6262618edt.51.2021.05.08.05.37.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 May 2021 05:37:52 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 jay.xu@rock-chips.com, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com, cl@rock-chips.com,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/4] convert grf.txt to YAML
Date: Sat,  8 May 2021 14:37:39 +0200
Message-Id: <20210508123743.18128-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210508_053755_061335_876F652F 
X-CRM114-Status: GOOD (  10.25  )
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

Changed V3:
  remove select
  change unevaluatedProperties
  add separate schemas for each 'if' subset

Changed V2:
  add rockchip,rk3328-grf-gpio.yaml
  rename grf-gpio nodename

Johan Jonker (4):
  dt-bindings: gpio: convert rk3328-grf-gpio.txt to YAML
  dt-bindings: soc: rockchip: convert grf.txt to YAML
  ARM: dts: rockchip: add grf register compatible for rk3066/rk3188
  arm64: dts: rename grf-gpio nodename in rk3328.dtsi

 .../bindings/gpio/rockchip,rk3328-grf-gpio.txt     |  32 ---
 .../bindings/gpio/rockchip,rk3328-grf-gpio.yaml    |  51 ++++
 .../devicetree/bindings/soc/rockchip/grf.txt       |  61 -----
 .../devicetree/bindings/soc/rockchip/grf.yaml      | 262 +++++++++++++++++++++
 arch/arm/boot/dts/rk3xxx.dtsi                      |   2 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |   2 +-
 6 files changed, 315 insertions(+), 95 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.txt
 create mode 100644 Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml
 delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.txt
 create mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.yaml

-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
