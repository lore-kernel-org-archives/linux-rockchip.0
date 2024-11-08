Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D65B8D5C0E4
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 15:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=07BvP7hJEwKDvcVb2/4abF6RiLqzbA3pL2D8TRGyjok=; b=qr8GoMJIGVIqm1
	HrqsMDf3ud4xWNj76nVXm8W+A7ceC5O17TC8CDZ3MinHhbjmaEy68cG5mDUS3nX9ZutSIwOmLExJ8
	80QZEW646vhfaMwAjr61zQ/1s4kz7ASfHnC3c91LEPczumOXwWZlv2TipDFMGcWsw0GUo3g7hG6G5
	ypDiwNkyQlWwB3e8L0FH9LSNYKDWZhvvObVcRYVAahLxfJrZycKfHBFkbXePuSgtO7N6KqcB5UsHS
	Gk/vSkXemhzYI1D2UrKCtjeU6qpo/vibqzoIg+sQWVnEzN8TUbbFFRTNyKu3OX43yW2v4mSdyIYIG
	bgB/rp8H8iK3WX8nNjBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9QVL-0000000Awi9-2JO5;
	Fri, 08 Nov 2024 15:02:31 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Ppy-0000000ApSx-1vJW
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Nov 2024 14:19:48 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-5cec9609303so2419440a12.1
        for <linux-rockchip@lists.infradead.org>; Fri, 08 Nov 2024 06:19:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731075584; x=1731680384; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VGA9Y6BP3dpROBWYVYwafi2ecYshZ4WbiAsNU+E9Uq0=;
        b=Y1BGKJG2WNl0Nsf2AFx3UbFeRzXq/RQu5f9BbAloe+x1jFPT7Z8S/xJe3EdabLuMvg
         xMmeniPJkndmwMKCmY3NnAgpiqMxGchZCbydEN6o1D0oyPOWqcNw7ZzZkD3VtlVUFZs1
         e3oIgs6GZC1zf5yvdaxa/dhGbFpLEfgoFfBbqoqF9S6Q2wvRi6Tq8PYdTNFaWvF/YsBE
         T2x7a+iGK6894i9zSeRgVVAWqKCxouepJmC4X5iBhJ/J0g5sgbg6HY78G7arLQLoU6+8
         nxEx840uiIPnDjdpzrYS8IobDh/6Oc/KCbv6iQP7stQU7f4KAfS7+yK5N4ZGdPy7sRgL
         WUYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731075584; x=1731680384;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VGA9Y6BP3dpROBWYVYwafi2ecYshZ4WbiAsNU+E9Uq0=;
        b=DEWizn+B1HZbRGM/ZKwrNh289Z5r55lYXQDQ3aZKHnJGTINoUTm6dbVVJHnYbd1ShQ
         sa4T2grok5p8CNsK8gEbzITV2bJds7C6ed//KZZlK35U2Q6S/kmIP9E/Xc0629Y1LRw2
         4K95Elh+ueU+j+n+NzkTP1ywLdhwI2WXeZ9lpcLV2vKJpIA9pS3znlwjH7bqxeKh28/h
         qqIJAuonpEWPNqgEK50RrkAmaM4AL4LSbdlNVL4eB1OPBMr7EHdPInV5GiB2XFPTBQLg
         wZ3DACW+LepLFCopEGxjemTjcAh6u1QtdRrDESC9ek6zYaVLPLxgA/UBsr8WHLHWE7qK
         1Pvw==
X-Forwarded-Encrypted: i=1; AJvYcCVZUFIg8XHrDhzp11ng7aepZBNweqggP455vvIkuauuLEDF8rm70BBCsCoqyKbj1u0CjLM2l6LAs8dRbnSAsA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxGIcavX3nmNPbVbY65H2RjE/X0AudeCkf2/UbmX2mQSj/2/5yX
	mrz/CKKelqEMLiGVMoayDySXyQlvjA/A0r9vPyjjnvvcY4176HailuMsKKsn9sg=
X-Google-Smtp-Source: AGHT+IHmXybQiAHW1OqbfUTN22sas0nIZd7gHqCAPHOaYdpQEeD0jrEFikAP+yhuHydY+dzM1edQDw==
X-Received: by 2002:a05:6402:d0d:b0:5ca:151a:b84c with SMTP id 4fb4d7f45d1cf-5cf0a320706mr2220233a12.18.1731075583567;
        Fri, 08 Nov 2024 06:19:43 -0800 (PST)
Received: from localhost ([154.14.63.34])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cf03bb765asm2025429a12.48.2024.11.08.06.19.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Nov 2024 06:19:43 -0800 (PST)
Date: Fri, 8 Nov 2024 17:19:41 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Shawn Lin <shawn.lin@rock-chips.com>,
	Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v4 4/7] pmdomain: core: Introduce
 dev_pm_genpd_rpm_always_on()
Message-ID: <54ad5572-3ad6-4c8d-80cd-b2f975ad91bf@suswa.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1730705521-23081-5-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_061946_892806_0CEA1BEC 
X-CRM114-Status: GOOD (  13.75  )
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

Hi Shawn,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Shawn-Lin/dt-bindings-ufs-Document-Rockchip-UFS-host-controller/20241104-191810
base:   https://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi.git for-next
patch link:    https://lore.kernel.org/r/1730705521-23081-5-git-send-email-shawn.lin%40rock-chips.com
patch subject: [PATCH v4 4/7] pmdomain: core: Introduce dev_pm_genpd_rpm_always_on()
config: loongarch-randconfig-r073-20241107 (https://download.01.org/0day-ci/archive/20241108/202411080432.5dWP6wRt-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 14.2.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202411080432.5dWP6wRt-lkp@intel.com/

New smatch warnings:
drivers/pmdomain/core.c:898 genpd_power_off() warn: curly braces intended?

vim +898 drivers/pmdomain/core.c

2da835452a08758 drivers/base/power/domain.c Ulf Hansson     2017-02-17  850  static int genpd_power_off(struct generic_pm_domain *genpd, bool one_dev_on,
2da835452a08758 drivers/base/power/domain.c Ulf Hansson     2017-02-17  851  			   unsigned int depth)
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  852  {
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  853  	struct pm_domain_data *pdd;
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  854  	struct gpd_link *link;
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  855  	unsigned int not_suspended = 0;
f63816e43d90442 drivers/base/power/domain.c Ulf Hansson     2020-09-24  856  	int ret;
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  857  
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  858  	/*
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  859  	 * Do not try to power off the domain in the following situations:
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  860  	 * (1) The domain is already in the "power off" state.
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  861  	 * (2) System suspend is in progress.
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  862  	 */
41e2c8e0060db25 drivers/base/power/domain.c Ulf Hansson     2017-03-20  863  	if (!genpd_status_on(genpd) || genpd->prepared_count > 0)
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  864  		return 0;
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  865  
ffaa42e8a40b7f1 drivers/base/power/domain.c Ulf Hansson     2017-03-20  866  	/*
ffaa42e8a40b7f1 drivers/base/power/domain.c Ulf Hansson     2017-03-20  867  	 * Abort power off for the PM domain in the following situations:
ffaa42e8a40b7f1 drivers/base/power/domain.c Ulf Hansson     2017-03-20  868  	 * (1) The domain is configured as always on.
ffaa42e8a40b7f1 drivers/base/power/domain.c Ulf Hansson     2017-03-20  869  	 * (2) When the domain has a subdomain being powered on.
ffaa42e8a40b7f1 drivers/base/power/domain.c Ulf Hansson     2017-03-20  870  	 */
ed61e18a4b4e445 drivers/base/power/domain.c Leonard Crestez 2019-04-30  871  	if (genpd_is_always_on(genpd) ||
ed61e18a4b4e445 drivers/base/power/domain.c Leonard Crestez 2019-04-30  872  			genpd_is_rpm_always_on(genpd) ||
ed61e18a4b4e445 drivers/base/power/domain.c Leonard Crestez 2019-04-30  873  			atomic_read(&genpd->sd_count) > 0)
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  874  		return -EBUSY;
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  875  
e7d90cfac5510f8 drivers/base/power/domain.c Ulf Hansson     2022-02-17  876  	/*
e7d90cfac5510f8 drivers/base/power/domain.c Ulf Hansson     2022-02-17  877  	 * The children must be in their deepest (powered-off) states to allow
e7d90cfac5510f8 drivers/base/power/domain.c Ulf Hansson     2022-02-17  878  	 * the parent to be powered off. Note that, there's no need for
e7d90cfac5510f8 drivers/base/power/domain.c Ulf Hansson     2022-02-17  879  	 * additional locking, as powering on a child, requires the parent's
e7d90cfac5510f8 drivers/base/power/domain.c Ulf Hansson     2022-02-17  880  	 * lock to be acquired first.
e7d90cfac5510f8 drivers/base/power/domain.c Ulf Hansson     2022-02-17  881  	 */
e7d90cfac5510f8 drivers/base/power/domain.c Ulf Hansson     2022-02-17  882  	list_for_each_entry(link, &genpd->parent_links, parent_node) {
e7d90cfac5510f8 drivers/base/power/domain.c Ulf Hansson     2022-02-17  883  		struct generic_pm_domain *child = link->child;
e7d90cfac5510f8 drivers/base/power/domain.c Ulf Hansson     2022-02-17  884  		if (child->state_idx < child->state_count - 1)
e7d90cfac5510f8 drivers/base/power/domain.c Ulf Hansson     2022-02-17  885  			return -EBUSY;
e7d90cfac5510f8 drivers/base/power/domain.c Ulf Hansson     2022-02-17  886  	}
e7d90cfac5510f8 drivers/base/power/domain.c Ulf Hansson     2022-02-17  887  
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  888  	list_for_each_entry(pdd, &genpd->dev_list, list_node) {
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  889  		/*
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  890  		 * Do not allow PM domain to be powered off, when an IRQ safe
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  891  		 * device is part of a non-IRQ safe domain.
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  892  		 */
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  893  		if (!pm_runtime_suspended(pdd->dev) ||
7a02444b8fc25ac drivers/base/power/domain.c Ulf Hansson     2022-05-11  894  			irq_safe_dev_in_sleep_domain(pdd->dev, genpd))

{

1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  895  			not_suspended++;
f0f6da10152fb8f drivers/pmdomain/core.c     Ulf Hansson     2024-11-04  896  
f0f6da10152fb8f drivers/pmdomain/core.c     Ulf Hansson     2024-11-04  897  			/* The device may need its PM domain to stay powered on. */
f0f6da10152fb8f drivers/pmdomain/core.c     Ulf Hansson     2024-11-04 @898  			if (to_gpd_data(pdd)->rpm_always_on)
f0f6da10152fb8f drivers/pmdomain/core.c     Ulf Hansson     2024-11-04  899  				return -EBUSY;

}

1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  900  	}
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  901  
3c64649d1cf9f32 drivers/base/power/domain.c Ulf Hansson     2017-02-17  902  	if (not_suspended > 1 || (not_suspended == 1 && !one_dev_on))
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  903  		return -EBUSY;
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  904  
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  905  	if (genpd->gov && genpd->gov->power_down_ok) {
1f8728b7adc4c2b drivers/base/power/domain.c Ulf Hansson     2017-02-17  906  		if (!genpd->gov->power_down_ok(&genpd->domain))

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
