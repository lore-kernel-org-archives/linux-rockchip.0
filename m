Return-Path: <SRS0=fMZx=HL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D267DC433E0
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 19:24:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3D81864ED5
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 19:24:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3D81864ED5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1wYuQSMs/HQj22FodCh/I/7QTsIRB09Jx+k5jfG5yZ0=; b=SdBqC+7z1ZMQX0LPTPJx/GaLBW
	cuRzNO0em4HXqaQ/NR6LtVsOSmvqJOhTpu4iq0EPZAZF8yLOKCqBT5MZthThMfvV+SSSuAn6o9M6v
	q0BLThCrs5uUU6ZqZ97QHMvYtBnxAL01Y6q+Rz6+UWRsUsZCXuTaFh7OPt7noqZsiwM9l3RJc4knC
	7zDOpRWPQWLSDtmlbuztQu8e/aQRSISmNAtnb2CrxLYmZvgMYFvq5vq89nYl38Ncl8G4avwOOSDT7
	IirSqMgli/Zskxtv0ahUuQCT+YWmFJlB2nWFK06LeKIyonDlvY2UjuD6gB82iXdpOjkrEFCY0y7LF
	jZcWuStw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9Ycc-00050Q-J8; Tue, 09 Feb 2021 19:24:26 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9YcI-0004t8-4d; Tue, 09 Feb 2021 19:24:07 +0000
Received: by mail-ej1-x62d.google.com with SMTP id w1so33597623ejf.11;
 Tue, 09 Feb 2021 11:24:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VKpw+TGxcSonBmJvYVbjnLKEXkavUls9cDkglgeREzs=;
 b=HO1rEER2rQ/ib60OX4LykRzzHUV7TK6M7FXnGi0rK0kf7M3lRCrxd5vuud4Y69slyc
 gcJcjDFwAEKBdd+CV7Gdib0WaDgHMbaLMAOqwcG29CQeTgTSv609bh1St5YhZ6hOsqqF
 dDW3AWzG1b8Qti44pryaVZ/3AdrFfSX9D6q0kPADnuf3JVyEBXU0hpDflZXLPyS8FBmP
 HWCk8sOTr0s4EiNvcw9auqxdZnmoi0Qh+y3CnG4UVM7wkkvzxIRJedjelEyYsRDqxzro
 U2O0iq8BSbNG3VEySL8f/ZrCDoLuvevjlzBFvHyeSwKavRzoA4RxaSDNIne33B53yQCr
 U/EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VKpw+TGxcSonBmJvYVbjnLKEXkavUls9cDkglgeREzs=;
 b=p+AfgyPJUVnsOuZanoR5OsE4Qc3k1IH7pV1B30wQZXN7q2gDD9r9LnxkC7AkJ9x7Gr
 bZXPGxgzmPUumnaxPaesrWiS+nViXgOirHaU4t7FuM77mfC/yLU9Lj1p5AIAT5PE3yjR
 PUVz6o43MQ9WfRtms2KY2sM2SJftnCoglI0SuZbmDZzMKrKSROySPXr5cfoN/o6tKX1W
 LMDn1eEd94FrBISgMQursH8CniN082t7BRDrQzlDnWOujHVNWANkXggcVLts4WTajyha
 8njvYNG//hMBs3xk4XzBllTaUhcT3nBYsPPOUvSpPzp+6+AvinyFhfdUWk6lVk8DEmS/
 2gLA==
X-Gm-Message-State: AOAM532hTwIH3H6dArxLprmSZnaYbEONex1pZQZe9Kz8/ALpRF+bkkJP
 6qksYufP+gmVC+724MNGPiLKMn5JaRI=
X-Google-Smtp-Source: ABdhPJw9959wQBn5cvY2Fqpt5Xz+QaWW6YioQ2FYuvburiVrHGpT8oFcjVbVZLt3nDg+4Z/13u4xQA==
X-Received: by 2002:a17:906:b752:: with SMTP id
 fx18mr24723372ejb.17.1612898644828; 
 Tue, 09 Feb 2021 11:24:04 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w3sm11075779eja.52.2021.02.09.11.24.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Feb 2021 11:24:04 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v5 8/8] dts64: rockchip: enable dwc3 usb for A95X Z2
Date: Tue,  9 Feb 2021 20:23:50 +0100
Message-Id: <20210209192350.7130-8-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210209192350.7130-1-jbx6244@gmail.com>
References: <20210209192350.7130-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210209_142406_263235_BE8F485F 
X-CRM114-Status: GOOD (  11.85  )
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
Changed V2:
  remove node wrapper
---
 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
index 30c73ef25..e71870768 100644
--- a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
@@ -357,6 +357,11 @@
 	status = "okay";
 };
 
+&usbdrd3 {
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
