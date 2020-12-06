Return-Path: <SRS0=Jg7J=FK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72BEBC4361B
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Dec 2020 13:34:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E68782310E
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Dec 2020 13:34:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E68782310E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qtyTQK1SxspiYb/fjDD5B4RHMXA6KeqsJz9FYYOa0nA=; b=RdNM4hD5EKDKqS1mip7vlrOrWd
	c/hSMjApRdOk6TZ4lENYC6Kj2eHLGQiJxGDn7N1fPtfs2b2YLJuKm+PVL4UJFZIJLXNO+xJ/H+ykv
	2DPH02IHwuy7zcshCW6bbe/TziHG1YfjEsEZqWLD/NVEcPChEe1ieTdFMB4CjGgh1t6Y9yiDgCVkS
	ZMhJa6DV57W05jjjOh5/dn9Cfo01LktwrYdKqHOCymsjY7J5mF3Uk+5FaAS/Zf0L6X2+kj2B+l5nU
	nGghBX5li+aBDqiEY2P99C+WeQk/8TYFOK4DAULcRDAYIoAa7oDrFwKw0yE/LERaYpGWpfzP/shRf
	uRFXjh2Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kluB5-0003tG-M6; Sun, 06 Dec 2020 13:34:15 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kluAx-0003qf-Nu; Sun, 06 Dec 2020 13:34:08 +0000
Received: by mail-ed1-x544.google.com with SMTP id q16so10778332edv.10;
 Sun, 06 Dec 2020 05:34:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ClADTS0QuKL62E36tFTJGwg2N6O3ikpA70hf73VQQnA=;
 b=CfD7avGjj9/HgOdFJm+Jgte+0mkMn+vGKFsqCQBDCZ50PATgRCsdgmcytM62CytxJC
 rvoAvmj62E3Fr8aYb3+wz3KU0pQ5tky/PGHGKhwth6triY4yAZRF9ayyBvVmA5HAp09P
 GW63o62egMZJHFzOX8EFlLGGbIj9FbCeI/fC99/r3EUs7hnZDLRqHi3fHe3NaYBUvi/L
 nq+BPdt0JUKhyhaUFbnmjY7niejby0WuKHKarxrQiTeI2BEEl1KFyw9cAXSb3CBRKOx8
 yPXMonW2DgspzsUmWeu0dsKjV4AokqjBVObeHzytEsmZF0vAqySZm5Hz0fyTciWeK2TC
 6Uyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ClADTS0QuKL62E36tFTJGwg2N6O3ikpA70hf73VQQnA=;
 b=kymY8shntllnakW/W3hrKzAMOuDNU6h+uixg/78YZgehi21T7OIKCYmHhY+nIlYkdp
 Uqp8ag+aZNUXLysFFioPrcL2RdZ2JUGv/ATrSwwbWqQb2H7q1pJiL6aaFlfcYhIzOgha
 khHpO9mb1IV1HkksjYg2Pn1fVgsfNsD5thT/sFfD4s3PSEFXFhaYqkcaSTPmhuoo6V9Z
 5mOil0bypPL2nhWFGc5n9YgvGp+vmte92MyiatMZimfr+H9f11/SJqCCDQsZCzV/YhOi
 zf4QdAb6uodtdKIoLhe0QUB5Eipkf8ToQ3P+bn6yh31kLV864ghWQokr9/Ufyt18qndf
 8CvQ==
X-Gm-Message-State: AOAM531+bfxW9HM4zxDNx2UNBv7rn3ooZmGP/XE3zrH/l9zzwDxEbABT
 IaB1B24zCKSKt7D47coRS4M=
X-Google-Smtp-Source: ABdhPJwPC3fbAsKPZT91sG3R8CMEf4NtuXxEwAQprJeqKkicBpn3851hCBqQkQzBx3hOuH58dimu0A==
X-Received: by 2002:aa7:db59:: with SMTP id n25mr14352860edt.203.1607261645894; 
 Sun, 06 Dec 2020 05:34:05 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id qh23sm7770129ejb.71.2020.12.06.05.34.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 06 Dec 2020 05:34:05 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v6 0/5] Enable rk3066a HDMI sound
Date: Sun,  6 Dec 2020 14:33:50 +0100
Message-Id: <20201206133355.16007-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201206_083407_816718_0D827E59 
X-CRM114-Status: GOOD (  11.31  )
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, airlied@linux.ie,
 linux-kernel@vger.kernel.org, broonie@kernel.org, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, lgirdwood@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Update the rk3066a HDMI documents with a #sound-dai-cells property.
Include the code for sound in the HDMI driver.
Add a simple-sound-card compatible node to rk3066a.dtsi,
because I2S0 and HDMI TX are connected internally.
And as last enable rk3066a HDMI sound in the rk3066a-mk808.dts file.

make ARCH=arm CROSS_COMPILE=/usr/bin/arm-linux-gnueabi- -j4
cp ./arch/arm/boot/zImage ../zImage-dtb
cat ./arch/arm/boot/dts/rk3066a-mk808.dtb >> ../zImage-dtb
../tools/rkcrc -k ../zImage-dtb ../mk808.img
sudo ../tools/rkflashtool w 0x4000 0x8000 < ../mk808.img
sudo ../tools/rkflashtool b

Changed v6:
  remove patches that are applied to linux-next
  add platform_device_unregister()
  restyle

Changed v5:
  removed unused variable
  fill frame structure

Johan Jonker (4):
  dt-bindings: display: add #sound-dai-cells property to rockchip rk3066
    hdmi
  ARM: dts: rockchip: rk3066a: add #sound-dai-cells to hdmi node
  ARM: dts: rockchip: add hdmi-sound node to rk3066a.dtsi
  ARM: dts: rockchip: enable hdmi_sound and i2s0 for rk3066a-mk808

Zheng Yang (1):
  drm: rockchip: add sound support to rk3066 hdmi driver

 .../display/rockchip/rockchip,rk3066-hdmi.yaml     |   4 +
 arch/arm/boot/dts/rk3066a-mk808.dts                |   8 +
 arch/arm/boot/dts/rk3066a.dtsi                     |  17 ++
 drivers/gpu/drm/rockchip/Kconfig                   |   2 +
 drivers/gpu/drm/rockchip/rk3066_hdmi.c             | 277 ++++++++++++++++++++-
 5 files changed, 307 insertions(+), 1 deletion(-)

-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
