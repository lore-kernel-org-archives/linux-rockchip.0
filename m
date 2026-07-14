Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8B7EC43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 05:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2VoGakdDEuhz0XscgwNYQq6EgPyVOH/7m8TFf4Czg6g=; b=EDKm8NP7opz458
	negIQRMftzNLFjYyEXA3wHPQ09jRa623h9V5lDZxnVutm/FoqXUMgE9LohVtqF3VztPQpHtQSOfSz
	IynsaiQ8L0F8W3Cq8HsgdCUNYT3bFbr3xJmDUcOHazy+A5Ld78GgE3zfNtwRPGDgIlsqgBgO/V3wL
	Omt3E8jtM71vmMv+ChbaEZU/mF+9oudRisrpeun/Hs7VvtqQXRvCW0mdARZthBGz7MY7xR26ozXZO
	WUnkknwFfhciRGd7pfGaPSkmX0Lj1NH+RcL10JwoAfuEGDtsF6cMOmDzXwiqY6D/JDWfBxXKiHIko
	mVbq9J880+B1DMoEDikA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjVnQ-0000000AxUA-1O50;
	Tue, 14 Jul 2026 05:35:08 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjVnK-0000000AxNr-2cWO
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 05:35:06 +0000
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-c981c2c37cbso2302192a12.0
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 22:35:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784007302; x=1784612102; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SGDV5fSUPAH2Dhpl1lbzAcq8czvypnTHYvjt3Vuz+wI=;
        b=M7Aq2qhggYOxkC7o2LN6YTtVITA7DeQhkUBkxFLPVQhVgcBAT8y/STGw+D8pQj1UKN
         Dyuhvyh4/RWAJSvjFPFTx7yCK/T9A1CxS0vKAXboLNyei1T7V8flVtG48AdueLm390TR
         7J6wagNr4vQvb4BH1NhpmMzrFRsyXOK7jS0qeqPew2E0+qBaB5m7mcd3Jd2n2KNimD57
         3pBa+suFIWsKQ9jilNnfD0dZ18XgLIeG+AeD8jKJ2crFBiYOgslrjfzvW0wvOfkqzrQf
         T9g39zXN08FIZP4K+yQOL8K9w36HQDNmv5YR12P42h0P/BQiRKMIegnk/x97kcEshBZW
         My4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784007302; x=1784612102;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=SGDV5fSUPAH2Dhpl1lbzAcq8czvypnTHYvjt3Vuz+wI=;
        b=Aemoou64pHfqf2FGi4sE7Ggxultxwp3eMKyWIBioMEokuhxEKxKdEm2AMLwPlqbtHD
         8c8Xy3vYN5fJgTEtbfwICfA4NPFwpARsZ2mKsW385C+SYcwYNf8EMeVWmtZekVHARIfm
         qFhTplF9ICV1L7AConidWuGBIvrFzckkyGWK9TCg9FdgZ7qpZTyH8kRUuMgK86Hen5ap
         VuqHCqdYyQOfGVIX2vN5vW58EJOJ7c+6i13t9CRdrC2u+XqTAXnnLWIhxt8Lh2jflM4L
         +H1w0oU2mI+NlzGL4uooiijKqo/Kh1LfMJnpPbtfzkMRqxVEqK4oPQ5YYxQZodqXl+So
         8H3Q==
X-Gm-Message-State: AOJu0YwlL9Czk+LKCA55IIttkSbqEkvOl4bPSsKUu11k0srxhCS0O2hG
	5nrl+O4N/0Bj8a+nH6+SglZjxus3NWwaxXADT4pdBWxH5I4hx1LYUq9EvFT1NBQL
X-Gm-Gg: AfdE7ckYx3TtF8WEyZmBxnjD18U9l4Jk/oT3EoGhlb5AhZ3gwEGRCg5hT9JDBpHPAK3
	bI9kY2Yh4a9nW//oMNssmVkYhI7a5xhKxMrCigYGNhvcXsQWl9S9fbwkOpjoB7f/gKzokx5Mrjn
	WmmUTIoEzEGMy3l2gFu9SDkw46UgAAP9BK7rC8zvYEFv08MzrLijQzdcJMBG1/2J/jBVoxbho1b
	klCQWsIUrpprlaQNOFEqtEHtf1v+P0/441sIE3BwMzFnp2Rybyf5LbVOwWySIgQEnECbWsBXXFZ
	MmwMiXw6CoGN0THWgTUkRMDLVwb3muSsZq+miLaeK7yUHHT0BJ4Gb/hd9jtziwKSS3vuGkcrfI6
	rLimBZC1crH3fpPnjXFX1nFcNVGK+bNTFHEXfdiLtAFMGbgKeOWLpRTDr6GQS2GDh0ZXYGGRpvy
	gjd42eIAeY/owq1xKQvBKQ
X-Received: by 2002:a05:6a20:7284:b0:3c0:9c18:d5ab with SMTP id adf61e73a8af0-3c3572a51f1mr1055366637.72.1784007301547;
        Mon, 13 Jul 2026 22:35:01 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:6882:91b7:8e79:7958])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13b659d8da9sm131882715c88.14.2026.07.13.22.34.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 22:35:01 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>,
	syzbot+6c25f4750230faf70be9@syzkaller.appspotmail.com
Subject: [PATCH v3 1/3] netdevsim: fix use-after-free of ethtool debugfs data
Date: Tue, 14 Jul 2026 11:04:39 +0530
Message-ID: <20260714053442.265587-3-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260714053442.265587-1-hrushirajg23@gmail.com>
References: <20260714053442.265587-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_223502_761289_A338A284 
X-CRM114-Status: GOOD (  17.93  )
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

debugfs files created by nsim_ethtool_init() store raw pointers
directly into the netdevsim struct, which lives in the net_device
private data kmalloc slab.

If the ethtool subdirectory outlives the netdevsim struct, a concurrent
reader can trigger a slab-use-after-free by passing debugfs_file_get()
(which only checks dentry lifetime) and then dereferencing the freed
data pointer in e.g. debugfs_u32_get().

In __nsim_dev_port_del(), nsim_destroy() is called before
nsim_dev_port_debugfs_exit(). nsim_destroy() ends with free_netdev(),
while nsim_dev_port_debugfs_exit() removes the port's debugfs directory
afterwards. This means the slab is freed before the ethtool debugfs
files that point into it are removed.

The same window exists on nsim_create()'s error path: nsim_ethtool_init()
creates debugfs files under ddir with pointers into ns before
nsim_init_netdevsim()/nsim_init_netdevsim_vf(), which can fail. The
err_free_netdev label then calls free_netdev() while those ethtool
debugfs entries are still live.

All other features that create per-port debugfs files (pp_hold,
queue_reset, vlan) already remove their own entries explicitly in
nsim_destroy() before free_netdev(). ethtool is the only one that does
not. Fix this by saving the ethtool dentry in struct nsim_ethtool and
calling debugfs_remove_recursive() on it before free_netdev() in both
nsim_destroy() and the nsim_create() error path. The port ddir teardown
is left to nsim_dev_port_debugfs_exit() as before.

Reported-by: syzbot+6c25f4750230faf70be9@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=6c25f4750230faf70be9
Fixes: e05b2d141fef ("netdevsim: move netdev creation/destruction to dev probe")
Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
v3:
- Instead of removing the entire port ddir before free_netdev(), save
  and remove only the ethtool dentry. All other features (pp_hold,
  queue_reset, vlan) already clean up after themselves; ethtool is the
  only exception. This aligns ethtool with how the other features
  behave, as suggested by Jakub Kicinski.
v2:
- Also fix the same use-after-free window on the error path of
  nsim_create() as suggested by Simon Horman.
- Shorten the code comment in nsim_destroy() to be more concise.
---
 drivers/net/netdevsim/ethtool.c   | 1 +
 drivers/net/netdevsim/netdev.c    | 9 +++++++++
 drivers/net/netdevsim/netdevsim.h | 1 +
 3 files changed, 11 insertions(+)

diff --git a/drivers/net/netdevsim/ethtool.c b/drivers/net/netdevsim/ethtool.c
index 9350ba48eb81..a465f3220a7c 100644
--- a/drivers/net/netdevsim/ethtool.c
+++ b/drivers/net/netdevsim/ethtool.c
@@ -252,6 +252,7 @@ void nsim_ethtool_init(struct netdevsim *ns)
 	ns->ethtool.channels = ns->nsim_bus_dev->num_queues;
 
 	ethtool = debugfs_create_dir("ethtool", ns->nsim_dev_port->ddir);
+	ns->ethtool.ddir = ethtool;
 
 	debugfs_create_u32("get_err", 0600, ethtool, &ns->ethtool.get_err);
 	debugfs_create_u32("set_err", 0600, ethtool, &ns->ethtool.set_err);
diff --git a/drivers/net/netdevsim/netdev.c b/drivers/net/netdevsim/netdev.c
index 27e5f109f933..09d86a591fac 100644
--- a/drivers/net/netdevsim/netdev.c
+++ b/drivers/net/netdevsim/netdev.c
@@ -1165,6 +1165,7 @@ struct netdevsim *nsim_create(struct nsim_dev *nsim_dev,
 	return ns;
 
 err_free_netdev:
+	debugfs_remove_recursive(ns->ethtool.ddir);
 	free_netdev(dev);
 	return ERR_PTR(err);
 }
@@ -1214,6 +1215,14 @@ void nsim_destroy(struct netdevsim *ns)
 		ns->page = NULL;
 	}
 
+	/*
+	 * Remove the ethtool debugfs directory before free_netdev() releases
+	 * the netdevsim struct to prevent use-after-free in concurrent readers.
+	 * Other per-port debugfs files are already removed above, and the port
+	 * ddir itself is cleaned up by nsim_dev_port_debugfs_exit().
+	 */
+	debugfs_remove_recursive(ns->ethtool.ddir);
+
 	free_netdev(dev);
 }
 
diff --git a/drivers/net/netdevsim/netdevsim.h b/drivers/net/netdevsim/netdevsim.h
index 4c9cc96dcec3..c08a01af31e9 100644
--- a/drivers/net/netdevsim/netdevsim.h
+++ b/drivers/net/netdevsim/netdevsim.h
@@ -95,6 +95,7 @@ struct nsim_ethtool {
 	struct ethtool_coalesce coalesce;
 	struct ethtool_ringparam ring;
 	struct ethtool_fecparam fec;
+	struct dentry *ddir;
 };
 
 struct nsim_rq {
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
