Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D6C606A321
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 19:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tk4bLtJI;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=RbjCupl3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=tCiNzpHyXR3QcXLJyLPAopxyDE3FDOkeITbfQtE9TcI=; b=tk4bLtJIbgQJKU1ymeeBrzvLVG
	PCUfrgsFsDGkO+k6NjGpUj+0zw8ZkFEeFafwIzbTrmhZ8jOXyOqGIwTGJh4k2xz4+6Zh8mAYjcE/X
	Hic97S3gN5YcxNDVhDG6KBR1+AfKozvinVR3HqOsvkzMemG+svTMlOekLJHXURyk/IBJVWW+GrQiu
	6UuHuhec95uZ9ZZCNm4dK2elLgMaDzvSxTBDj36gfhw96+07F7QfD2NFxvw9EqF1CgunCi+rtFhMq
	i+f3k8ha5EgFyAcI/xCRpWStxswqYsc/3H65UTFtArP6rUVxL3nYucVeXkYNdCv3JMw4XoEReL6vG
	e2Ko2hXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVvxi-00000007Zr7-26ef;
	Tue, 24 Nov 2026 19:13:54 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVvxf-00000007ZqA-3sub
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 19:13:53 +0000
Received: by mail-oi1-x235.google.com with SMTP id 5614622812f47-57e468d51b1so579846b6e.3
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 11:13:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795547630; x=1796152430; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=XeNdzIttNMTE0MJO+i5BOMI8/bNW8dsc8julRJQrMKc=;
        b=RbjCupl3gs5jge72ENYkTKLLeEKamZn5TpIPCBYyv+J5qS7wEVus0wAV9L8GZRyo1D
         M7xo0yMPhaVBHUOsxIGWMtKWe6JsX28jEtRya6Cf9HgyIv8PzoFkdSODpk+l2BTrdX7Y
         HgNym0nSA3GOv+6JuqoXsoSYJGXYbikSFjar7F448X+GBXeMTvPG5ymQdfbvMzxV988f
         Hqnv6ie6YvXxma5idDqQ/bAvln/i1nB0yalEck/5pvHYURTYqdDkPnLH8Xn2BRGAQnFu
         kR0Uv4pFxcZ+RAiL70lx4MhDWclUfKIkj7apxTO0eo7lekyBxeyQTkj8J1/m5nurzUwA
         tLyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795547630; x=1796152430;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=XeNdzIttNMTE0MJO+i5BOMI8/bNW8dsc8julRJQrMKc=;
        b=RrZRfwYVyq58V32Y5FIEMenNJcJSPCxxeWGAxUD1mtTidHkJ1sTivaKT2cgutNiQjQ
         klNNegZ+OhFfneOwKVqGjyMRDgrIfCh5dAyUzUbzpJoFIf5H1MFSGunYyMzU8aF1fXf+
         aHxE1zh7HR7rIfK9zTgvGHuXDndxbCH9ipFIg5dadSYYxTzSDpCncJbAl1xAeYQkTSL1
         Tn8OR856MYMhQ7e1wCetfLY03EcpHxfnBkoQocj2fWNUqpLoaPdgBmoG1XctSEqlRtnD
         xb0Q1Snd2ps85rjgpY9kVo2xtCkYXHu8f8IIM9Rhr+Hv+4tHpTqotfoNOBMX/yaP6aKz
         +Q7A==
X-Gm-Message-State: APuU4Z9X+F31g+UNJ3PNKdmGwjb9V78VAGVK6Dys7KvDeTXGyPcxM+M7
	srTXnMcwj83j4u/vdc2jzhiGyK4aHKAvU8U/i0skXIGdXuG24/oTlq5j649hHg==
X-Gm-Gg: AZFdTZcUVU+V4KuAj9P7+QI/HP709qJl66elDYioKCDJ5/ITmTpNmDEM19P+ApNzrJq
	la4MBG7RbaZnTf5latYTfCW2UHuK6sir5pWbEgesVLye9uR1l6oF5EislYWrPXSYW1NcxHGG99O
	35I7lPcPKwXdSEGDak67vYxzo3YR7PiNKZkMVRXWPH4GgANp4Hb2GdS88faCXzweLW29Fhr7obo
	bYsrRqKa4tSVUJEPziK45xXmU3cu60PEvCac+mh/lsAVMhfzlLIXOJ3tie+2hNc4UWAgbGHe52Y
	94GWyGRdhw4rbEU3K9RBwG40EIrSFHx76Dc1HeLv0+6VPY/csNcQFAZT2uYUUg2bdt2vSLDCr0o
	lpNORLgqN5swo6nNm95Pg5K6vDdDB3tKd1mWobaEqQCXsY7k7pwo6VHnp0I4BL5jpA3IObXPkVH
	sWPZTR4ocTYnUmYrSVwg4kuTR7hbvkrXyiLywxOZZzSN8essTmd3HWBbHsgCHQf34TI0lCrwRar
	zk8OvzdS4dZhZWsosduoAerxHhP1FGu3NoUnr8Wf357h/kqqDg7FdeSgQb/mF4pRPqiLc3WAFd2
	k+W/3YBZwAU1ZxiFW+dQbIpwl/UAJfE=
X-Received: by 2002:a05:6808:c1d3:b0:572:f1d1:d6b0 with SMTP id 5614622812f47-57a0c9c5064mr14920907b6e.65.1795547630522;
        Tue, 24 Nov 2026 11:13:50 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-57a362575fbsm12774058b6e.17.2026.11.24.11.13.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 11:13:49 -0800 (PST)
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
Subject: [PATCH V4 0/3] Add Cellwise CW2217
Date: Tue, 24 Nov 2026 13:13:43 -0600
Message-ID: <20261124191346.434143-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_111351_968684_C62E8588 
X-CRM114-Status: GOOD (  16.11  )
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
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

Add the Cellwise CW2217 battery gauge driver. This driver is based on
the sources used for Rockchip's Board Support package [1] but has
been updated to use the regmap API and devm helpers.

[1] https://github.com/rockchip-linux/kernel/blob/develop-6.12/drivers/power/supply/cw221x_battery.c

Changes Since V3:
 - Two more small fixes requested by Sashiko, one trivial fix for the
   to not always write CW2217_CONFIG_RESTART for the cw2217_active
   method and a small fix for the regmap writeable/volatile ranges.

Changes Since V2:
 - Fixed more bugs pointed out by Sashiko.
 - Corrected an integer overflow condition when measuring current.
 - Corrected logic for when we don't have a user specified battery
   profile.
 - Added power supply changed logic in the worker.
 - Updated the Kconfig text to note support for the cw2215 and cw2218.
 - Added a check to ensure polling interval cannot be below 250ms.

Changes Since V1:
 - Added a default value for the shunt resistor in the binding
   documentation, and updated the commit description to note that the
   min and max for the battery profile is now per-compatible string.
 - Fixed bugs pointed out by Sashiko bot, and corrected units for
   temp and shunt resistor values.
 - Corrected include pointed out by kernel test robot.
 - Noted in the commit message the patch is based on original work by
   Xu Shengfei at Rockchip. I did not list him as co-developed or
   signed-off since I did not have his permission (yet) to do so,
   but I have his authorship included in the file itself.

Chris Morgan (3):
  dt-bindings: power: cw2015: add cw2215, cw2217, and cw2218
  power: supply: cw2217: Add support for Cellwise cw2217
  arm64: dts: rockchip: Add Battery Gauge to Anbernic  Vita-Pro

 .../bindings/power/supply/cw2015_battery.yaml |  41 +-
 .../rockchip/rk3576-anbernic-rg-vita-pro.dts  |  21 +-
 drivers/power/supply/Kconfig                  |  11 +
 drivers/power/supply/Makefile                 |   1 +
 drivers/power/supply/cw2217_battery.c         | 878 ++++++++++++++++++
 5 files changed, 945 insertions(+), 7 deletions(-)
 create mode 100644 drivers/power/supply/cw2217_battery.c

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
