Return-Path: <SRS0=U2ba=CK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE959C433E2
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2020 22:58:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BB3772071B
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2020 22:58:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="aZRZ1nPT";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J6cVX8w3"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BB3772071B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:MIME-Version:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fyMNJuwEsQFdB1VUiaUl/B4BElY3bvFDrxQWbSwU+YU=; b=aZRZ1nPTTnZNtO
	oOoiE32veKbjV43SgEGHBVkIwtnrOU/LHMRm0GhP/QaYQHIHD6cLHXTh/s8Ai5nErqm4wVY3oAx6A
	lyq7yLuTlaz+AG0eMZUx5IvmhaBD8XH89UYlvBN1QgZNHcv5cRE9GZ81jdwe1Xe8UwtnkBlnUnZEO
	45d6/5I0ihrAk0eXUWHLRwB2LNWul4DHwyCJJePe/g5VhZAwQihBhLsJ1rHHNSnmYw3WWcOdMcCl+
	berBPd1Lf457FN5a90I86ebn+fsodbkchI0HWVFhgP2zy0qiJfvh+28PaXMtgGmHVBs1CPhp6TBer
	imxoR9vUj9udiIBQdvRA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDFEg-0004LT-S2; Tue, 01 Sep 2020 22:58:42 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDFEe-0004L1-6x
 for linux-rockchip@lists.infradead.org; Tue, 01 Sep 2020 22:58:41 +0000
Received: by mail-wm1-x330.google.com with SMTP id e11so1907275wme.0
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Sep 2020 15:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:mime-version:message-id:user-agent
 :content-transfer-encoding;
 bh=ey+C60wtHHAHbZ6zoVTh1ZhtqHRumXFaCsSHGOI2Dy4=;
 b=J6cVX8w3sdIOP2QqiQvdbEZ5BwzqLnACJdVURTXXd/0tae5/EjZ3DyK1SJt7u/D067
 gOVq5Zz7em2kzvHLpnLCZ9bhMEojKp11+RWswhEogZmaZIXslDU1/ri1GvGzZHdak9f+
 rJPoHMDe4KwP9g2ioBBCO741o4jtle2dGWJ3KsEjDd+rvKxCfWAHj85e4txlD2FAVgz4
 rttfyerSfvsJz5IRWqhfQ96/Edmvs/2p7eJFgu5ZZuLiK6ANOQLBA6hg0Y2yul/Q17Q0
 3ASNs+dkPQUouCrJPxgR9tRoPjUTtNonYiUdaOwSz0w5U//O08ZDkZ0Iz+wDYoxkCVCk
 rcjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:mime-version:message-id
 :user-agent:content-transfer-encoding;
 bh=ey+C60wtHHAHbZ6zoVTh1ZhtqHRumXFaCsSHGOI2Dy4=;
 b=Gb8daOBj7QDTGzlaYQl/4uq6IHpEHCNyxjoE3Y59E5p1ZbdNOoD2EN09qDgTQZ/OLE
 ePvxC+pv/pMwixKmpJlVozZqioACs/MvNwtWkaBTe9aCBYzzSttCde29WZgFJxzgsAuy
 WuJR+grzs9hky5LOWeQrSRcq4dxDtuQL4U+Sql+n9dOuIvpOAICdH/YG2rboae+OiMMI
 9Y34rTLvDM1lMAWDYR1DBfli1h2BIALozbuj/5mshuU2+VedRPbo9bh/yRk66wbDRSCV
 o5eRW+6nF1QLFklICtb4kWP4gHbgPtUt0aDDEZ7l4ECeANQGyBlWTkhuZOs0MDsE4ZXp
 bp8A==
X-Gm-Message-State: AOAM532q4C6gZRX4CMPnrhEFP5il1BeNBSg+YpuuSpUFl3D6jbb16m0X
 Kg/SltiD1HK4z/zrxhmzkPNqN/o8RLyLww==
X-Google-Smtp-Source: ABdhPJzz9yp3PGP4TZDMzcf1MTg0RDUIeUOHG8LLtnUXHSoYnf7+ODrvwBdxscJQ8iDQ0CvsttNQmg==
X-Received: by 2002:a7b:c0c8:: with SMTP id s8mr3720074wmh.72.1599001117791;
 Tue, 01 Sep 2020 15:58:37 -0700 (PDT)
Received: from localhost ([170.253.38.159])
 by smtp.gmail.com with ESMTPSA id c205sm3656253wmd.33.2020.09.01.15.58.36
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Sep 2020 15:58:37 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: <linux-rockchip@lists.infradead.org>
Subject: [BUG] drm: rockchip:
 =?iso-8859-1?Q?vop=5Fcrtc=5Fmode=5Ffixup_is_breaking_clock_configuration?=
Date: Wed, 02 Sep 2020 00:58:36 +0200
MIME-Version: 1.0
Message-ID: <5a8fac40-123e-4104-8868-1931426ab598@gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200901_185840_301370_EDF25EBD 
X-CRM114-Status: UNSURE (   6.79  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

I've recently installed U-boot to boot a Sapphire board with the HDMI 
display, before i was using Linux + kexec as bootloader.
Since then, linux fails to re-initialize the HDMI display giving the 
following error message:
dwhdmi-rockchip ff940000.hdmi: PHY configuration failed (clock 148501000)
which comes from drivers/gpu/drm/bridge/synopsys/dw-hdmi.c:1522

The clock frequency 148500000 is 'rounded up' to 148501000 in 
vop_crtc_mode_fixup from which comes from 
drivers/gpu/drm/rockchip/rockchip_drm_vop.c:1184

So far i've found two workarounds: remove the vop_crtc_mode_fixup function 
or unplug and reconnect the HDMI cable.
From my point of view, not having a display is a regression, although not 
in Linux itself, is in its environment.

U-boot is configuring the display at 2560x1440, which proves the HW is 
capable of running at such resolution.
Linux instead is configuring it at 1920x1080, resolutions above that are 
not even supported.
Please, can this situation be improved?

Any feedback is welcome and i am willing to help!

Regards,
  Vicente.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
