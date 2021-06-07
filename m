Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F538C47094
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 11:32:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E3F7060FDC
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 11:32:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E3F7060FDC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ClLKzrQ1l2caznrBA6N8U30a+zAY0flXTLfwFSP2afc=; b=T45VwNdnOW4eQU
	a36pSQ5WFao2+rq3pUiQ3fYY/22S6Pa8x3Lm+sDI8jTQCpLv6paUUzW8Ls/2EGtg6tO4e7zgBky9b
	ZBWotQWg0zqlMrZsklj3eIooxWuCZpw+/prYOkj0lrOtk4+gybkPLsNh25WOvwnGJv/1hRAPX0HVe
	XVMzHM+ZwH2oGUejCfRZhgnMcTRinWeeowMhrGW8J/gZvRJ3DtoyrfeMc5yRiBG4DExI9Qja80Asr
	QB18ngEd14a38nQC3O6EVsOK+6OUiadL8BFQhcu0fsZgRudXUgV3DK5LzlOc9f283KuclsQorJUaL
	AYwaZIPvevhyMlNtFZWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqDU5-003MzH-5F; Mon, 07 Jun 2021 11:31:57 +0000
Received: from mail-pl1-f174.google.com ([209.85.214.174])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqDSF-003MJG-1o; Mon, 07 Jun 2021 11:30:04 +0000
Received: by mail-pl1-f174.google.com with SMTP id h1so822612plt.1;
 Mon, 07 Jun 2021 04:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s2L4tYN9T2oQX4O1kr58WBVXgDkzYtStMb3pXHicmtE=;
 b=hw1jcRVoZfd8OCg2rNy1L04fHgqFfCamU2TaDAyBteW1Uk48qkDn4Bv3Vlt8xJhFHm
 TEItYgqZuY1UzhOl+6bGjrwQXGqN+uhfZHHUhYdrYfauzFBBci/TCFrNIO4ft6/I38JS
 izSQdMjuvJoN+4HMkYBadqAcY/Zyqmnk3So5CzMuXuDxAi3YrMgaC12UFkHdwNltGLKN
 iuvANy880xa4Aaa6AkeeGkD64FAfAC494/VUnO8yR9fXZYICLO9CqdIrJGj6wFKdbUU8
 PJWIO79xVVHmwVjpsbf2JxqOVYpTzDlqPuCULsCWJP7Q8BLihsmvrfSr4alRTEEKsdhm
 YjVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s2L4tYN9T2oQX4O1kr58WBVXgDkzYtStMb3pXHicmtE=;
 b=Sz3QGZbK6OYbQ6VHU9uBwq4OrkdRFxJI3Fh3WBMXoTpkqsA8vF/BpYNKvpIvjQmgd7
 aS449BmPTQ+/hJxKMI27V3WvBXS80tDSPhWFm+g35S6xGFI3plHpx5V/TTkmrXTh0J/V
 wP55HKdkC2e+9B6GpetFxET2s4S2r78H4mQt9uMcHqsqEfHbgG2/8BwTrvDBd0mZM9La
 5wKpfpK80sJMiNeXs5NM7Gg11zV3KhfgHLGCVKeZyLiz2dE8eNjK5mBzOBTTv9m1egbg
 q/kWYD9Q8dB18MRD7cFW5KPvaSOvX5pW2HvNexBreA+YXDfkq41dcQbvcN9B/L+XMIhz
 Y2fw==
X-Gm-Message-State: AOAM531Ka4ng1dIDywZ/A+H5U1+vynGVo/gOlokfdLSzKE+9H8XqgIKi
 XSN8qMfvJXzTThFVR7m5jUo=
X-Google-Smtp-Source: ABdhPJzO65vTHb75QGy1Uo3TQ6gGFz3uqNg849yGqzhCnOb+mkkqAalUvxzKttOrbVxACJ4ONOkqeQ==
X-Received: by 2002:a17:902:b58a:b029:fe:735f:ddbf with SMTP id
 a10-20020a170902b58ab02900fe735fddbfmr17056776pls.68.1623065341806; 
 Mon, 07 Jun 2021 04:29:01 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id k6sm1576398pfa.215.2021.06.07.04.29.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Jun 2021 04:29:00 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: helgaas@kernel.org,
	robh+dt@kernel.org
Cc: Punit Agrawal <punitagrawal@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, alexandru.elisei@arm.com, wqu@suse.com,
 robin.murphy@arm.com, pgwipeout@gmail.com, ardb@kernel.org,
 briannorris@chromium.org, shawn.lin@rock-chips.com
Subject: [PATCH v3 0/4] PCI: of: Improvements to handle 64-bit attribute for
 non-prefetchable ranges
Date: Mon,  7 Jun 2021 20:28:52 +0900
Message-Id: <20210607112856.3499682-1-punitagrawal@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_043003_137388_ADC1870B 
X-CRM114-Status: GOOD (  12.04  )
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

Hi,

This is the third iteration to improve handling of the 64-bit
attribute on non-prefetchable host bridge ranges. Previous version can
be found at [0][1].

This version is a small update over the previous version - changelog
below. If there is no futher feedback on the patches, please consider
merging them.

Thanks,
Punit

Changes:
v3:
* Improved commit log for clarity (Patch 1)
* Added Tested-by tags

v2:
* Check ranges PCI / bus addresses rather than CPU addresses
* (new) Restrict 32-bit size warnings on ranges that don't have the 64-bit attribute set
* Refactor the 32-bit size warning to the range parsing loop. This
  change also prints the warnings right after the window mappings are
  logged.


[0] https://lore.kernel.org/linux-arm-kernel/20210527150541.3130505-1-punitagrawal@gmail.com/
[1] https://lore.kernel.org/linux-pci/20210531221057.3406958-1-punitagrawal@gmail.com/

Punit Agrawal (4):
  PCI: of: Clear 64-bit flag for non-prefetchable memory below 4GB
  PCI: of: Relax the condition for warning about non-prefetchable memory
    aperture size
  PCI: of: Refactor the check for non-prefetchable 32-bit window
  arm64: dts: rockchip: Update PCI host bridge window to 32-bit address
    memory

 arch/arm64/boot/dts/rockchip/rk3399.dtsi |  2 +-
 drivers/pci/of.c                         | 17 ++++++++++++-----
 2 files changed, 13 insertions(+), 6 deletions(-)

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
