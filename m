Return-Path: <SRS0=290H=HD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2747C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Feb 2021 19:41:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 96F6C64E50
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Feb 2021 19:41:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 96F6C64E50
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LxlxqZ+Iyiw3DFMg5ppOiBEBwAS+IsPE9oCSDfzX1PE=; b=YeT9Y5hTR32EiXw+WMKV1SlTxO
	eIr7UT9KJcAgDYiUS5y6oN7uXQDVwRwdN0MeATqLo+vARaKCvHuQwOQl8vhjBj6GV1BSbaRe5Lluf
	NcziizPZsHttJQDKQA6XdhyclT3YKTSBtMfLxujE16+EA5CwUpQvE2x50B0AlrJ5u9oG9Kyp28A/9
	pdsN4lq+yXjB2K92yCVk81KzOiV0GoP51z/xnqtf6CjDKx5QYirmrnA7TGgsh0F+vdLN/IHBlrgoG
	QKz/kp5gcP4JiADc3BGwZp7BKSg26v91503aaUFAb8qM7VzC4JnoQkcHn1mCMvL/3M0JOWVAlHWSQ
	78rz39Qg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l6f4n-0000li-CD; Mon, 01 Feb 2021 19:41:33 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6f4b-0000hH-Gq; Mon, 01 Feb 2021 19:41:22 +0000
Received: by mail-ed1-x52a.google.com with SMTP id s5so7394317edw.8;
 Mon, 01 Feb 2021 11:41:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mllDDoFqrKsaQ7KlxScyjYXTToCMmRRcsUF13aNpIwo=;
 b=lOq2v9Lwl5m1ENUAEOwokF4SpIw39mkXEtSS3xvZQt9PTK8ta89rTe4PBQbsZ+1K2d
 DA7GGQISOUJMllrvPP5H5VbogNvgccK2OMJsUzr4NCgoNg3pNM8k0SGe+HRI8ttTVNRH
 LZlK6nRYuj/Bk8mvyaqPEduEYzgv9Vdfy8Seta5HjZXOydQEStn68fVG/QVtRhjVRmL0
 sqN8AB4o0ndeL5qczfEq5827rQTijdZmfblpnV3iCm+pJg+dHMNx2ML7unBR7fHa4Ebb
 YpCoO5mtYRvneAXajWTTNuBt3UETAsXfqkWKszKElZKvLbSSrFmixl3+izQzyswgNXn+
 xbzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mllDDoFqrKsaQ7KlxScyjYXTToCMmRRcsUF13aNpIwo=;
 b=FpFmUXzbuYVODeCXzJCNs28ZoCqPZ83+2XajqDLL5l3bDp6aveMa1zQkDmYWt0a07g
 VaLaBkNUf9tu4c97K9v9Nbc81nNosgxJBLKlJBSdZZ7ApfuoNuN2ODQU0TFx9HRq1lwR
 z+OPcULpem78uLPY8RqzPYbx9XpbyT863Lb8fWOAxkHK7xukAfTn/jzujFaQGwlbLRKP
 OCdOu4Oy1QRp3tw+w83v/SH8tLqSn7u7gWT2a5BSZ+qIACshum342Hx68d+476BxSiX6
 x1x2kz6u0eJ15/H5A5qILHOEm9xlMkZTMa0eCQ0PaZhmUAAPby0zMt6D8oVHjaphnKmv
 mNkw==
X-Gm-Message-State: AOAM530ZBZnCAEFJ9pd2kP+37Je9Z9WvVIxzu5yOxSwiAKViXw2uuahP
 nKPapYR0BXMFUTkdtVAbJx8=
X-Google-Smtp-Source: ABdhPJzflGvb9KJYZGMytp1I8l3QpW1wrHny5906kgyPSsIc4FpU96o1x39WcYNA3eK15Jfh5c97ZQ==
X-Received: by 2002:a05:6402:11d3:: with SMTP id
 j19mr20525720edw.314.1612208480752; 
 Mon, 01 Feb 2021 11:41:20 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id du6sm6702799ejc.78.2021.02.01.11.41.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Feb 2021 11:41:20 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 5/5] dts64: rockchip: enable dwc3 usb for A95X Z2
Date: Mon,  1 Feb 2021 20:41:05 +0100
Message-Id: <20210201194105.32673-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210201194105.32673-1-jbx6244@gmail.com>
References: <20210201194105.32673-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210201_144121_668379_E9DBF3A0 
X-CRM114-Status: GOOD (  12.02  )
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
Cc: devicetree@vger.kernel.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Enable dwc3 usb for A95X Z2.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
index 30c73ef25..b26c653c6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
@@ -357,6 +357,15 @@
 	status = "okay";
 };
 
+&usbdrd3 {
+	status = "okay";
+};
+
+&usbdrd_dwc3 {
+	dr_mode = "host";
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
